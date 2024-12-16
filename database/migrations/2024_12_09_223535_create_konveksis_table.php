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
        Schema::create('konveksis', function (Blueprint $table) {
            $table->id();
            $table->string('no_po', 100);
            $table->string('customer', 100);
            $table->timestamp('date')->default(now());
            $table->string('nama_pesanan', 100);
            $table->string('bidang', 100);
            $table->string('status', 50)->default('now');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('konveksis');
    }
};
