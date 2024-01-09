<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class jenis_orang extends Model
{
    use HasFactory;

    public function hargaWisatas():BelongsTo{
        return $this->belongsTo(harga_wisata::class, 'id_jenis_orang', 'id_jenis_orang');
    }

    protected $fillable =[
        'jenis_orang',
    ];

    protected $primaryKey = 'id_jenis_orang';
}
