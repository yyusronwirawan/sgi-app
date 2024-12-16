<?php

namespace Database\Seeders;

use App\Models\KonveksiProgress;
use Illuminate\Support\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class KonveksiProgressSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        KonveksiProgress::factory()->count(100)->create();
    }
}
