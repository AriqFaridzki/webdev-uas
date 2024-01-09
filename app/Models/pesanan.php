<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class pesanan extends Model
{
    use HasFactory;


    public function detail_pesanans():HasMany{
        return $this->hasMany(detail_pesanan::class, 'id_pesanan');
    }

    protected $fillable =[
        'id_user',
        'tgl_pesan',
        'tgl_selesai',
        'status_pesanan',
        'total_harga',
        'foto_bukti_pembayaran'
    ];

    protected $primaryKey = 'id_pesanan';
}


// $table->foreignId('id_user')->constrained(
//     table: 'users', column: 'id_user', indexName: 'id_user_pesanan'
// );

// $table->date('tgl_pesan');
// $table->date('tgl_selesai');
// $table->enum('status_pesanan', ['pending', 'booked', 'on_tour', 'finished']);
// $table->integer('total_harga');