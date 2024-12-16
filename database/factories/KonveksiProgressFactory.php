<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\KonveksiProgress>
 */
class KonveksiProgressFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'konveksi_id' => \App\Models\Konveksi::inRandomOrder()->first()->id, // Mengambil ID acak dari tabel Konveksi
            'progress' => $this->faker->numberBetween(0, 100), // Progress acak antara 0 hingga 100
            'desc' => $this->faker->sentence, // Deskripsi acak
            'photo' => $this->faker->imageUrl(), // PIC acak, bisa diganti dengan nama
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
