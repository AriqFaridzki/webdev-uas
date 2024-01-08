<?php

namespace Database\Factories;

use App\Models\detail_pesanan;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\pesanan;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\pesanan>
 */

class pesananFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

   

   
    public function definition(): array
    {

        $status = fake()->randomElement(["pending", "booked","on_tour","finished"]);


        // $pesanan = pesanan::factory()->create();
        // $total_harga = $pesanan->detail_pesanans->reduce(function ($carry, $detail_pesanan) {
        //     return $carry + ($detail_pesanan->qty * $detail_pesanan->harga_wisata->harga);
        // }, 0);

        return [
            'id_user' => User::factory(),
            'tgl_pesan' => fake()->dateTimeThisDecade(),
            'tgl_selesai' => $status == "finished" ? fake()->dateTimeThisDecade() : null,
            'status_pesanan' => $status,
            'total_harga' => fake()->numberBetween(10000,300000)
        ];
    }
}


// 'id_user',
// 'tgl_pesan',
// 'tgl_selesai',
// 'status_pesanan',
// 'total_harga',