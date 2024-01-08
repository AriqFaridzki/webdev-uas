<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class detail_pesanan extends Model
{
    use HasFactory;

    public function pesanan():BelongsTo{
        return $this->belongsTo(pesanan::class, 'id_pesanan','id_detail_pesanan');
    }

    public function harga_wisata():HasOne{
        return $this->hasOne(harga_wisata::class, 'id_harga_wisata', 'id_harga_wisata');
    }

    protected $fillable = [
        'id_pesanan',
        'id_harga_wisata',
        'qty',
    ];

    protected $with = ['harga_wisata'];

    protected $primary_key = 'id_detail_pesanan';


}

