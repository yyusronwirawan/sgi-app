<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Konveksi>
 */
class KonveksiFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'no_po' => $this->faker->unique()->word(),
            'customer' => $this->faker->company(),
            'date' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'nama_pesanan' => $this->faker->word(),
            'bidang' => $this->faker->randomElement(['Konveksi - Abah Anam', 'Konveksi - Alex', 'Sepatu - Abah Hasan']),
            'status' => $this->faker->randomElement(['now', 'next']),
        ];
    }
}
