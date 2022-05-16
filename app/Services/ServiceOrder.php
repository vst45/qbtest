<?php

namespace App\Services;

use App\Models\Order;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ServiceOrder
{

    public $volumeBlock = 2; // объем блока м3
    public $priceBlock = 12; // цена за сутки одного блока

    // whereIntegerNotInRaw
    /**
     * Busy blocks for ordering
     */
    public function getNotAllowBlocksOrders($data)
    {
        $blocksNotAllow = DB::table('orders')
            ->join('block_order', 'block_order.order_id', '=', 'orders.id')
            ->join('blocks', 'blocks.id', '=', 'block_order.block_id')
            ->join('sections', 'sections.id', '=', 'blocks.section_id')

            ->where('orders.location_id', $data['location_id'])

            ->where(function ($query) use ($data) {
                $query
                    ->whereBetween('begin', [$data['start_date'], $data['end_date']])
                    ->orWhereBetween('end', [$data['start_date'], $data['end_date']])

                    ->orWhere(function ($query) use ($data) {
                        $query
                            ->where('begin', '<', $data['start_date'])
                            ->where('end', '>', $data['end_date']);
                    });
            })

            ->whereBetween('sections.temperature', [$data['temperature_min'], $data['temperature_max']])
            ->pluck('blocks.id');

        // dump($blocksNotAllow);

        return $blocksNotAllow;
    }


    /**
     * Prepare Input Data for ordering
     */
    public function prepareInputOrderData($data)
    {
        if ($data['temperature'] > -2) {
            $data['temperature_max'] = 0;
        } else {
            $data['temperature_max'] = $data['temperature'] + 2;
        }
        $data['temperature_min'] = $data['temperature'] - 2;

        $start_date = $data['start_date'];
        $data['end_date'] = Carbon::createFromFormat('Y-m-d', $start_date)->addDays($data['period'] - 1)->toDateString();

        // echo $data['temperature_min'] . '#' . $data['temperature_max'];

        $data['need_blocks'] = ceil($data['volume'] / $this->volumeBlock);

        return $data;
    }


    public function createOrder($data)
    {
        // занятые блоки на даную дату
        $notAllowBlocks = $this->getNotAllowBlocksOrders($data);


        // выбираю секции где есть подходящие блоки, сортирую по количеству свободных блоков в них,
        // чтобы потом орендовать сначала секции с максимальным количеством свободных блоков
        // а не где-попало частями в разных помещениях локации
        // можно еще придумать выбор первее по более подходящей температуре - все зависит от логистики
        $allowedSections = DB::table('blocks')
            ->join('sections', 'sections.id', '=', 'blocks.section_id')
            ->join('locations', 'locations.id', '=', 'sections.location_id')
            ->where('locations.id', $data['location_id'])
            ->whereBetween('sections.temperature', [$data['temperature_min'], $data['temperature_max']])
            ->whereIntegerNotInRaw('blocks.id', $notAllowBlocks)
            ->groupBy('sections.id')
            ->orderBy('block_count', 'desc')
            ->select(DB::raw('count(*) as block_count, sections.id'))
            ->get();
        // dump($allowedSections);

        $numFreeBlocks = $allowedSections->sum('block_count');
        if ($numFreeBlocks < $data['need_blocks']) {
            return [
                'result' => false,
                'msg' => 'Нету свободных блоков'
            ];
        }


        // определю из какого помещения сколько я беру блоков (с учетом прошлой
        // выборки - сначала брать из того помещения где больше свободных блоков)
        $need_blocks = $data['need_blocks'];
        $blocksOfSections = [];
        foreach ($allowedSections as $sectionInfo) {

            if ($need_blocks < 1) {
                break;
            }

            if ($sectionInfo->block_count < $need_blocks) {
                $useNumBlock = $sectionInfo->block_count;
            } else {
                $useNumBlock = $need_blocks;
            }

            $need_blocks = $need_blocks - $useNumBlock;
            $blocksOfSections[$sectionInfo->id] = $useNumBlock;
        }
        // dump($blocksOfSections);

        // выбираю все свободные подходящие блоки
        $allBlocksIds = [];
        foreach ($blocksOfSections as $section_id => $quantity) {

            $blocks = DB::table('blocks')
                ->join('sections', 'sections.id', '=', 'blocks.section_id')
                ->join('locations', 'locations.id', '=', 'sections.location_id')
                ->where('locations.id', $data['location_id'])
                ->where('blocks.section_id', $section_id)
                ->whereBetween('sections.temperature', [$data['temperature_min'], $data['temperature_max']])
                ->whereIntegerNotInRaw('blocks.id', $notAllowBlocks)
                ->limit($quantity)
                ->pluck('blocks.id')
                ->toArray();

            $allBlocksIds = array_merge($allBlocksIds, $blocks);
        }
        // dump($allBlocksIds);

        $order = false;
        $orderBlocks = false;
        DB::transaction(function () use ($data, $allBlocksIds, &$order, &$orderBlocks): void {

            // создаю заказ и потом к нему добавляю блоки
            $order = Order::create([
                'user_id' => auth()->user()->id,
                'location_id' => $data['location_id'],
                'amount' => $this->priceBlock * $data['need_blocks'],
                'begin' => $data['start_date'],
                'end' => $data['end_date'],
                'code' => Str::random(12),
            ]);
            $orderBlocks = $order->blocks()->sync($allBlocksIds);
        });

        if (!$order || !$orderBlocks) {
            return [
                'result' => false,
                'msg' => 'Ошибка сохранения'
            ];
        }

        return [
            'result' => true,
            'data' => [
                'order_id' => $order->id,
                'amount' => $order->amount,
                'begin' => $order->begin,
                'end' => $order->end,
                'code' => $order->code,
            ],
            'msg' => 'Заказ создан'
        ];
    }
}
