<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\cred>
 */
class credFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_user' => User::factory(),
            'username' => fake()->userName(),
            'password' => fake()->password(6, 20),
            'roles' => fake()->randomElement(['admin', 'pelanggan']),
        ];
    }
}


            // $table->string('username');
            // $table->string('password');
            // $table->enum('roles',['admin', 'pelanggan']);
            // $table->timestamps();