<?php


namespace App\Filters\V1;

use Illuminate\Http\Request;
use App\Filters\ApiFilter;


class LokasiFilter extends ApiFilter {

    protected $safeParams = [
        // 'idLokasi' => ['eq', 'like'],
        'namaLokasi' => ['eq'],
        'alamat' => ['eq'],
        'keterangan' => ['eq'],
        'mapLink' => ['eq'],
        'jenisLokasi' => ['eq', 'ne'],
    ];


    protected $columnMappers = [
        'namaLokasi' => 'nama_lokasi',
        'mapLink' => 'map_link',
        'jenisLokasi' => 'jenis_lokasi',
    ];
}



