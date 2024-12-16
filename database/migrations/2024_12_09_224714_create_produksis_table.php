<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('produksis', function (Blueprint $table) {
            $table->id();
            $table->foreignId('konveksi_id')->nullable()
                ->constrained('konveksis')
                ->cascadeOnDelete();
            $table->string('model');
            $table->string('bahan');
            $table->integer('jumlah_order');
            $table->string('detail_aksesoris');
            $table->integer('indent_bahan')->default(0);
            $table->integer('estimasi_produksi')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('produksis');
    }
};
