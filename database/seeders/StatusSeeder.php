<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $list = array(
            'Active',
            'Deleted'
        );

        foreach ($list as $item) {
            DB::table('statuses')->insert([
                'name' => $item,
            ]);
        }
    }
}
