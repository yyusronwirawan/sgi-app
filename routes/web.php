<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\EstimasiProduksiController;
use App\Http\Controllers\KonveksiController;
use App\Http\Controllers\LaporanVendorController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/api/chart-data', [DashboardController::class, 'chartData']);
Route::middleware('auth')->group(function () {
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::resource('estimasi-produksi', EstimasiProduksiController::class);
    Route::post('estimasi-produksi/update-catatan', [EstimasiProduksiController::class, 'updateCatatan'])->name('estimasi-produksi.update-catatan');
    Route::get('estimasi-produksi/{id}/cetak-pdf', [EstimasiProduksiController::class, 'cetakPDF'])
        ->name('estimasi-produksi.pdf');

    Route::resource('konveksi', KonveksiController::class);

    Route::resource('laporan-vendor', LaporanVendorController::class);
    Route::post('laporan-vendor/{id}/progress', [LaporanVendorController::class, 'storeProgress'])->name('laporan-vendor.progress');
    Route::delete('laporan-vendor/{id}/progress', [LaporanVendorController::class, 'destroyProgress'])->name('laporan-vendor.progress.destroy');
});

require __DIR__ . '/auth.php';
