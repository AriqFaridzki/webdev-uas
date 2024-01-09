<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class harga_wisata extends Model
{
    use HasFactory;

    public function lokasis():HasOne{
        return $this->hasOne(lokasi::class, 'id_lokasi', 'id_lokasi');
    }

    public function relatedJenisOrang():HasOne{
        return $this->hasOne(jenis_orang::class, 'id_jenis_orang', 'id_jenis_orang');
    }

    public function detailPesanans():BelongsTo{
        return $this->belongsTo(detail_pesanan::class, 'id_harga_wisata', 'id_harga_wisata');
    }


    protected $fillable =[
        'id_lokasi',
        'id_jenis_orang',
        'harga',
    ];

    protected $primaryKey = 'id_harga_wisata';

    protected $with = ['relatedJenisOrang', 'lokasis'];


}



// $table->foreignId('id_lokasi')->constrained(
//     table: 'lokasis', column: 'id_lokasi', indexName: "id_lokasi_on harga_Wisata"
// );


// $table->integer('harga');