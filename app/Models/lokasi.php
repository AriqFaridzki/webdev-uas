<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class lokasi extends Model
{
    use HasFactory;


    public function relatedJenisLokasi():HasOne{
        return $this->HasOne(jenis_lokasi::class, 'id_jenis_lokasi', 'jenis_lokasi');
    }

    public function hargaWisata():BelongsTo{
        return $this->belongsTo(harga_wisata::class, 'id_lokasi', 'id_lokasi');
    }

    protected $fillable =[
        'nama_lokasi',
        'alamat',
        'keterangan',
        'map_link',
        'jenis_lokasi'
    ];

    protected $primaryKey = 'id_lokasi';
}
