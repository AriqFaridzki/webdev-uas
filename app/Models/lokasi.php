<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class lokasi extends Model
{
    use HasFactory;


    public function lokasi():HasOne{
        return $this->HasOne(jenis_lokasi::class, 'id_jenis_lokasi');
    }

    public function harga_wisata():BelongsTo{
        return $this->belongsTo(harga_wisata::class, 'id_lokasi');
    }

    protected $fillable =[
        'nama_lokasi',
        'alamat',
        'map_link',
    ];

    protected $primaryKey = 'id_lokasi';
}
