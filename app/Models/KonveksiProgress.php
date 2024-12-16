<?php

namespace App\Models;

use App\Enums\ProgressDesc;
use App\Enums\ProgressProduksi;
use Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KonveksiProgress extends Model
{
    use HasFactory;
    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = ['photo_url'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'progress' => 'integer',
    ];

    public function konveksi()
    {
        return $this->belongsTo(Konveksi::class);
    }

    public function getPhotoUrlAttribute()
    {
        if ($this->photo) {
            if (substr($this->photo, 0, 4) == 'http') {
                return $this->photo;
            }
            return asset('storage/' . $this->photo);
        }
    }
}
