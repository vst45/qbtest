<?php

namespace Database\Seeders;

use App\Models\Location;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $list = array(
            'Уилмингтон (Северная Каролина)',
            'Портленд (Орегон)',
            'Торонто',
            'Варшава',
            'Валенсия',
            'Шанхай'
        );

        foreach ($list as $item) {
            DB::table('locations')->insert([
                'name' => $item,
            ]);
        }
    }
}
