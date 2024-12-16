<?php

namespace App\Enums;

enum Bidang: string
{
    case KONVEKSI_ABAH_ANAM = 'Konveksi - Abah Anam';
    case KONVEKSI_ALEX = 'Konveksi - Alex';
    case SEPATU_ABAH_HASAN = 'Sepatu - Abah Hasan';

    public static function getValues(): array
    {
        return [
            self::KONVEKSI_ABAH_ANAM->value,
            self::KONVEKSI_ALEX->value,
            self::SEPATU_ABAH_HASAN->value,
        ];
    }

    public static function getCases(): array
    {
        return [
            self::KONVEKSI_ABAH_ANAM,
            self::KONVEKSI_ALEX,
            self::SEPATU_ABAH_HASAN,
        ];
    }

    public static function searchSlug(string $slug): string
    {
        return match ($slug) {
            'konveksi-abah-anam' => self::KONVEKSI_ABAH_ANAM->value,
            'konveksi-alex' => self::KONVEKSI_ALEX->value,
            'sepatu-abah-hasan' => self::SEPATU_ABAH_HASAN->value,
            default => '',
        };
    }
}
