<?php

namespace App\Enums;

enum ProgressProduksi: string
{
        // Deskripsi tahap progres produksi
    case BELI_BAHAN = 'Beli Bahan';
    case POTONG_KAIN = 'Potong Kain';
    case JAHIT = 'Jahit';
    case BORDIR = 'Bordir';
    case PACKING = 'Packing';

    /**
     * Mendapatkan semua tahap progres produksi dalam bentuk array
     *
     * @return array
     */
    public static function getAllValues(): array
    {
        return [
            self::BELI_BAHAN->value,
            self::POTONG_KAIN->value,
            self::JAHIT->value,
            self::BORDIR->value,
            self::PACKING->value,
        ];
    }

    /**
     * Mendapatkan semua case enum tahap progres produksi
     *
     * @return array
     */
    public static function getAllCases(): array
    {
        return [
            self::BELI_BAHAN,
            self::POTONG_KAIN,
            self::JAHIT,
            self::BORDIR,
            self::PACKING,
        ];
    }

    /**
     * Mendapatkan label dalam bentuk lebih deskriptif
     *
     * @return array
     */
    public static function getLabels(): array
    {
        return [
            'Beli Bahan' => self::BELI_BAHAN->value,
            'Potong Kain' => self::POTONG_KAIN->value,
            'Jahit' => self::JAHIT->value,
            'Bordir' => self::BORDIR->value,
            'Packing' => self::PACKING->value,
        ];
    }
}
