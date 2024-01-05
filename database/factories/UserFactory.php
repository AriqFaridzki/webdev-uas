<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * The current password being used by the factory.
     */
    protected static ?string $password;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nama_depan' => fake()->firstName(),
            'nama_belakang' => fake()->lastName(),
            'alamat' => fake()->address(),
            'email' => fake()->unique()->safeEmail(),
            'no_telp' => '62'. fake()->unique()->numerify('###########'),
            'gender' => fake()->randomElement(['laki', 'perempuan']),
            'roles' => fake()->randomElement(['admin', 'pelanggan']),
            'username' => fake()->userName(),
            'password' => fake()->password(6, 20),
            'umur' => fake()->numberBetween(15, 70),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     */
    // public function unverified(): static
    // {
    //     return $this->state(fn (array $attributes) => [
    //         'email_verified_at' => null,
    //     ]);
    // }
}


// $table->id('id_user');
// $table->string('nama_depan', 100);
// $table->string('nama_belakang', 100);
// $table->text('alamat');
// $table->string('email', 70);
// $table->string('no_telp', 16);
// $table->enum('gender', ['laki', 'perempuan']);
// $table->smallInteger('umur');
// $table->date('created_at');