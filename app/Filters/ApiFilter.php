<?php


namespace App\Filters;

use Illuminate\Http\Request;


class ApiFilter {

    protected $safeParams = [
    
    ];


    protected $columnMappers = [

    ];

    protected $operatorMappers = [
        'eq' => '=',
        'lt' => '<',
        'lte' => '<=',
        'gt' => '>',
        'gte' => '>=',
        'ne' => '!=',
        'like' => 'LIKE',
    ];


    public function transform(Request $req){
        $eloQuery = []; //the url is going to be passed to eloquent services

        foreach ($this->safeParams as $params => $operators) {
            $query = $req->query($params);

            if(!isset($query)){
                continue;
            }

            $column = $this->columnMappers[$params] ?? $params ;

            foreach ($operators as $operator) {
                if(isset($query[$operator])){
                    $eloQuery[] = [
                        $column, 
                        $this->operatorMappers[$operator],
                        $query[$operator]];
                }
            }
            
        }


        return $eloQuery;
    }
}

?>

