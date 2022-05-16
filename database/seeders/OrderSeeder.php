<?php

namespace Database\Seeders;

use App\Models\Block;
use App\Models\Location;
use App\Models\Order;
use App\Models\Section;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $locations = Location::all();

        foreach ($locations as $location) {
            $location_id = $location['id'];

            for ($i = 0; $i < 4; $i++) {

                $order = Order::factory()->create(
                    ['location_id' => $location_id]
                );

                $sections = Section::where(array('location_id' => $location['id']))->get()->random(2);

                foreach ($sections as $section) {

                    $blocks = Block::where(array('section_id' => $section['id']))->get()->random(2);

                    foreach ($blocks as $block) {
                        DB::table('block_order')->insert([
                            'order_id' => $order['id'],
                            'block_id' => $block['id']
                        ]);
                    }
                }
            }
        }
    }
}
