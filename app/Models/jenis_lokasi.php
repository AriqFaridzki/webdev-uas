<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class jenis_lokasi extends Model
{
    use HasFactory;


    public function lokasi():BelongsTo{
        return $this->belongsTo(lokasi::class, 'id_jenis_lokasi');
    }

    protected $fillable =[
        'jenis_lokasi',
    ];

    protected $primaryKey = 'id_jenis_lokasi';
}
