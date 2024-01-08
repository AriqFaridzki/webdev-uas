<?php

namespace Database\Seeders;

use App\Models\detail_pesanan;
use App\Models\pesanan;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class pesananSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        pesanan::factory()
        ->count(25)
        ->has(detail_pesanan::factory()->count(5), 'pesanan')
        ->create();
    }
}
