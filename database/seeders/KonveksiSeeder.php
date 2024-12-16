<?php

namespace Database\Seeders;

use App\Models\Konveksi;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class KonveksiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Konveksi::factory(50)->create();
    }
}
