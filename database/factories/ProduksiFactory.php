<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Produksi>
 */
class ProduksiFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'model' => $this->faker->word(),
            'bahan' => $this->faker->word(),
            'jumlah_order' => $this->faker->numberBetween(10, 100),
            'detail_aksesoris' => $this->faker->sentence(),
            'indent_bahan' => $this->faker->numberBetween(1, 30),
            'estimasi_produksi' => $this->faker->numberBetween(1, 60),
            'konveksi_id' => null, // Akan diisi oleh seeder
        ];
    }
}
