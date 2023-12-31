<?php


namespace App\Filters\V1;

use Illuminate\Http\Request;
use App\Filters\ApiFilter;


class CredFilter extends ApiFilter {

    protected $safeParams = [
        'idUser' => ['eq'],
        'username' => ['eq'],
        'password' => ['eq'],
        'roles' => ['eq', 'ne']
    ];


    protected $columnMappers = [
        'idUser' => 'id_user'
    ];
}



