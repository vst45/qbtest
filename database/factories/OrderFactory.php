<?php

namespace Database\Factories;

use App\Models\Location;
use App\Models\User;
use App\Models\Status;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    // $table->foreignId('user_id')->constrained();
    // $table->foreignId('location_id')->constrained();
    // $table->integer('amount');
    // $table->date('begin');
    // $table->date('end');
    // $table->string('code', 12);


    public function definition()
    {
        $begin = time() - random_int(3600 * 24 * 30, 3600 * 24 * 300);

        return [
            'user_id' => User::get()->random()->id,
            'location_id' => Location::get()->random()->id,
            'status_id' => Status::get()->random()->id,
            'amount' => random_int(12000, 25000),
            'begin' => date('Y-m-d', $begin),
            'end' => date('Y-m-d', $begin + random_int(3600 * 24 * 4, 3600 * 24 * 23)),
            'code' => random_int(111111111111, 999999999999)
        ];
    }
}
