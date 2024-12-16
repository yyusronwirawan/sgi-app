<?php

namespace Database\Seeders;

use App\Models\Konveksi;
use App\Models\Produksi;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProduksiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $konveksis = Konveksi::pluck('id')->toArray();

        if (empty($konveksis)) {
            $konveksis = \App\Models\Konveksi::factory(5)->create()->pluck('id')->toArray();
        }

        Produksi::factory(100)->create([
            'konveksi_id' => function () use ($konveksis) {
                return $konveksis[array_rand($konveksis)];
            },
        ]);
    }
}
