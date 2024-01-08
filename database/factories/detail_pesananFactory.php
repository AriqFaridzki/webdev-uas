<?php

namespace Database\Factories;

use App\Models\harga_wisata;
use App\Models\pesanan;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class detail_pesananFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_pesanan' => pesanan::factory(),
            'id_harga_wisata' => fake()->numberBetween(61,85),
            'qty' => fake() -> numberBetween(1,3),
        ];
    }
}
