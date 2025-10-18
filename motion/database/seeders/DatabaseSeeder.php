<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        // ---- Seed Brands ----
//        DB::table('brands')->insert([
//            ['id' => 1, 'name' => 'BMW',    'admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
//            ['id' => 2, 'name' => 'Audi',   'admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
//            ['id' => 3, 'name' => 'Porsche','admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
//            ['id' => 4, 'name' => 'Mercedes-Benz','admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
//        ]);
        $now = Carbon::now();
        $brands = [
            // German Brands
            ['id' => 5, 'name' => 'Volkswagen', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 6, 'name' => 'Opel', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // American Brands
            ['id' => 7, 'name' => 'Ford', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 8, 'name' => 'Chevrolet', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 9, 'name' => 'Cadillac', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 10, 'name' => 'Jeep', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 11, 'name' => 'Tesla', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 12, 'name' => 'Dodge', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 13, 'name' => 'Chrysler', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 14, 'name' => 'Lincoln', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 15, 'name' => 'Buick', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // Japanese Brands
            ['id' => 16, 'name' => 'Toyota', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 17, 'name' => 'Honda', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 18, 'name' => 'Nissan', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 19, 'name' => 'Mazda', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 20, 'name' => 'Subaru', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 21, 'name' => 'Mitsubishi', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 22, 'name' => 'Lexus', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 23, 'name' => 'Infiniti', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 24, 'name' => 'Acura', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 25, 'name' => 'Suzuki', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // Korean Brands
            ['id' => 26, 'name' => 'Hyundai', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 27, 'name' => 'Kia', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 28, 'name' => 'Genesis', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // French Brands
            ['id' => 29, 'name' => 'Renault', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 30, 'name' => 'Peugeot', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 31, 'name' => 'Citroën', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 32, 'name' => 'Bugatti', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // Italian Brands
            ['id' => 33, 'name' => 'Ferrari', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 34, 'name' => 'Lamborghini', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 35, 'name' => 'Maserati', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 36, 'name' => 'Alfa Romeo', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 37, 'name' => 'Fiat', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 38, 'name' => 'Lancia', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // British Brands
            ['id' => 39, 'name' => 'Land Rover', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 40, 'name' => 'Jaguar', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 41, 'name' => 'Mini', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 42, 'name' => 'Bentley', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 43, 'name' => 'Rolls-Royce', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 44, 'name' => 'Aston Martin', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 45, 'name' => 'McLaren', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 46, 'name' => 'Lotus', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // Swedish Brands
            ['id' => 47, 'name' => 'Volvo', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 48, 'name' => 'Saab', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // Other European Brands
            ['id' => 49, 'name' => 'Skoda', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 50, 'name' => 'Seat', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // Chinese Brands
            ['id' => 51, 'name' => 'BYD', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 52, 'name' => 'Geely', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 53, 'name' => 'Great Wall', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],

            // Additional Premium Brands
            ['id' => 54, 'name' => 'Maybach', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 55, 'name' => 'Pagani', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
            ['id' => 56, 'name' => 'Koenigsegg', 'admin_id' => 1, 'created_at' => $now, 'updated_at' => $now],
        ];

        DB::table('brands')->insert($brands);

        // ---- Seed Categories ----
//        DB::table('categories')->insert([
//            ['id' => 1, 'name' => 'Headlights', 'admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
//            ['id' => 2, 'name' => 'Tail Lights','admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
//            ['id' => 3, 'name' => 'Fog Lights', 'admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
//            ['id' => 4, 'name' => 'Daytime Running Lights','admin_id' => 1, 'created_at' => now(), 'updated_at' => now()],
//        ]);
//
//        // ---- Seed Products ----
//        DB::table('products')->insert([
//            [
//                'name' => 'BMW 3 Series G20 LED Headlights',
//                'price' => 1200.00,
//                'amount_value' => 2,
//                'country_origin' => 'Germany',
//                'image' => 'images/front/bmw-g20-headlights.png',
//                'description' => 'Original BMW LED Headlights for G20 3 Series. Adaptive lighting with daytime running function.',
//                'storage_conditions' => 'Store in dry place',
//                'admin_id' => 1,
//                'brand_id' => 1, // BMW
//                'category_id' => 1, // Headlights
//                'created_at' => now(),
//                'updated_at' => now(),
//            ],
//            [
//                'name' => 'Audi A6 C8 OLED Tail Lights',
//                'price' => 1500.00,
//                'amount_value' => 2,
//                'country_origin' => 'Germany',
//                'image' => 'images/front/audi-a6-tail.png',
//                'description' => 'Audi A6 C8 original OLED dynamic tail lights set with sequential indicators.',
//                'storage_conditions' => 'Keep sealed, avoid moisture',
//                'admin_id' => 1,
//                'brand_id' => 2, // Audi
//                'category_id' => 2, // Tail Lights
//                'created_at' => now(),
//                'updated_at' => now(),
//            ],
//            [
//                'name' => 'Porsche 911 992 LED Matrix Headlights',
//                'price' => 2800.00,
//                'amount_value' => 2,
//                'country_origin' => 'Germany',
//                'image' => 'images/front/porsche-911-headlights.png',
//                'description' => 'Genuine Porsche 911 992 LED Matrix Headlights with automatic high-beam assist.',
//                'storage_conditions' => 'Keep in original packaging',
//                'admin_id' => 1,
//                'brand_id' => 3, // Porsche
//                'category_id' => 1, // Headlights
//                'created_at' => now(),
//                'updated_at' => now(),
//            ],
//            [
//                'name' => 'Mercedes-Benz E-Class W213 LED Fog Lights',
//                'price' => 450.00,
//                'amount_value' => 2,
//                'country_origin' => 'Germany',
//                'image' => 'images/front/mercedes-fog.png',
//                'description' => 'OEM LED Fog Lights for Mercedes E-Class W213 facelift model.',
//                'storage_conditions' => 'Avoid direct sunlight',
//                'admin_id' => 1,
//                'brand_id' => 4, // Mercedes-Benz
//                'category_id' => 3, // Fog Lights
//                'created_at' => now(),
//                'updated_at' => now(),
//            ],
//            [
//                'name' => 'Audi Q7 LED Daytime Running Lights',
//                'price' => 350.00,
//                'amount_value' => 2,
//                'country_origin' => 'Germany',
//                'image' => 'images/front/audi-q7-drl.png',
//                'description' => 'Original DRL lights for Audi Q7 with white LED signature.',
//                'storage_conditions' => 'Keep sealed until installation',
//                'admin_id' => 1,
//                'brand_id' => 2, // Audi
//                'category_id' => 4, // DRL
//                'created_at' => now(),
//                'updated_at' => now(),
//            ],
//        ]);
    }
}
