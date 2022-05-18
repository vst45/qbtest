<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use App\Http\Requests\OrderStoreRequest;
use App\Models\Order;
use App\Services\ServiceHttp;

class OrderController extends BaseController
{

    public function store(OrderStoreRequest $request)
    {
        $input = $request->validated();

        $data = $this->serviceOrder->prepareInputOrderData($input);
        $order = $this->serviceOrder->createOrder($data);

        if (!$order['result']) {
            return ServiceHttp::sendError('Ошибка сохранения', [], 404);
        } else {
            return ServiceHttp::sendResponse('Заказ создан', $order['data'], 201);
        }
    }
}
