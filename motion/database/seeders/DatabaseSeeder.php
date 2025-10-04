<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        // ---- Seed Brands ----
        DB::table('brands')->insert([
            ['id' => 1, 'name' => 'BMW',    'admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'name' => 'Audi',   'admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'name' => 'Porsche','admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'name' => 'Mercedes-Benz','admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
        ]);

        // ---- Seed Categories ----
        DB::table('categories')->insert([
            ['id' => 1, 'name' => 'Headlights', 'admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 2, 'name' => 'Tail Lights','admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'name' => 'Fog Lights', 'admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'name' => 'Daytime Running Lights','admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
        ]);

        // ---- Seed Products ----
        DB::table('products')->insert([
            [
                'name' => 'BMW 3 Series G20 LED Headlights',
                'price' => 1200.00,
                'amount_value' => 2,
                'country_origin' => 'Germany',
                'image' => 'images/front/bmw-g20-headlights.png',
                'description' => 'Original BMW LED Headlights for G20 3 Series. Adaptive lighting with daytime running function.',
                'storage_conditions' => 'Store in dry place',
                'admin_id' => 1,
                'brand_id' => 1, // BMW
                'category_id' => 1, // Headlights
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Audi A6 C8 OLED Tail Lights',
                'price' => 1500.00,
                'amount_value' => 2,
                'country_origin' => 'Germany',
                'image' => 'images/front/audi-a6-tail.png',
                'description' => 'Audi A6 C8 original OLED dynamic tail lights set with sequential indicators.',
                'storage_conditions' => 'Keep sealed, avoid moisture',
                'admin_id' => 1,
                'brand_id' => 2, // Audi
                'category_id' => 2, // Tail Lights
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Porsche 911 992 LED Matrix Headlights',
                'price' => 2800.00,
                'amount_value' => 2,
                'country_origin' => 'Germany',
                'image' => 'images/front/porsche-911-headlights.png',
                'description' => 'Genuine Porsche 911 992 LED Matrix Headlights with automatic high-beam assist.',
                'storage_conditions' => 'Keep in original packaging',
                'admin_id' => 1,
                'brand_id' => 3, // Porsche
                'category_id' => 1, // Headlights
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Mercedes-Benz E-Class W213 LED Fog Lights',
                'price' => 450.00,
                'amount_value' => 2,
                'country_origin' => 'Germany',
                'image' => 'images/front/mercedes-fog.png',
                'description' => 'OEM LED Fog Lights for Mercedes E-Class W213 facelift model.',
                'storage_conditions' => 'Avoid direct sunlight',
                'admin_id' => 1,
                'brand_id' => 4, // Mercedes-Benz
                'category_id' => 3, // Fog Lights
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Audi Q7 LED Daytime Running Lights',
                'price' => 350.00,
                'amount_value' => 2,
                'country_origin' => 'Germany',
                'image' => 'images/front/audi-q7-drl.png',
                'description' => 'Original DRL lights for Audi Q7 with white LED signature.',
                'storage_conditions' => 'Keep sealed until installation',
                'admin_id' => 1,
                'brand_id' => 2, // Audi
                'category_id' => 4, // DRL
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
