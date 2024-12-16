<?php

namespace App\Models;

use App\Enums\Bidang;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Konveksi extends Model
{
    use HasFactory;
    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'date' => 'datetime',
        'bidang' => Bidang::class,
    ];

    public function progress()
    {
        return $this->hasMany(KonveksiProgress::class);
    }
}
