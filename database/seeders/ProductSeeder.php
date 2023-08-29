<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        foreach (range(1, 50) as $index) {
            DB::table('products')->insert([
                'name' => $faker->name,
                'price' => $faker->randomNumber(5, true),
                'stock' => $faker->randomNumber(2, true),
                'description' => $faker->sentence(3),
            ]);
        }
    }
}
