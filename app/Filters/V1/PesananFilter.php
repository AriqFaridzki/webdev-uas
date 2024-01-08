<?php


namespace App\Filters\V1;

use Illuminate\Http\Request;
use App\Filters\ApiFilter;


class PesananFilter extends ApiFilter {

    protected $safeParams = [
        'idUser' => ['eq', 'gt', 'lt', 'gte'],
        'tglPesan' => ['eq', 'gt', 'lt', 'gte'],
        'tglSelesai' => ['eq', 'gt', 'lt', 'gte'],
        'statusPesanan' => ['eq', 'ne'],
        'totalHarga' => ['eq', 'gt', 'lt', 'gte'],
        'fotoBuktiPembayaran' => ['eq'],
    ];


    protected $columnMappers = [
        'idUser' => 'id_user',
        'tglPesan' => 'tgl_pesan',
        'tglSelesai' => 'tgl_selesai',
        'statusPesanan' => 'status_pesanan',
        'totalHarga' => 'total_harga',
        'fotoBuktiPembayaran' => 'foto_bukti_pembayaran'
    ];
}



