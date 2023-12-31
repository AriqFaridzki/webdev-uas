<?php


namespace App\Filters\V1;

use Illuminate\Http\Request;
use App\Filters\ApiFilter;


class UserFilter extends ApiFilter {

    protected $safeParams = [
        'namaDepan' => ['eq', 'like'],
        'namaBelakang' => ['eq'],
        'alamat' => ['eq'],
        'email' => ['eq'],
        'noTelp' => ['eq'],
        'gender' => ['eq', 'ne'],
        'umur' => ['eq', 'gt', 'lt', 'gte'],
    ];


    protected $columnMappers = [
        'namaDepan' => 'nama_depan',
        'namaBelakang' => 'nama_belakang',
        'noTelp' => 'no_telp'
    ];
}



