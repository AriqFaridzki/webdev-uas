<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\cred;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\CredCollection;
use App\Http\Resources\CredResource;
use App\Filters\V1\CredFilter;
use App\Http\Requests\V1\StoreCredRequest;

class CredController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $filter = new CredFilter();
        $queryItems = $filter->transform($request);

        // echo var_dump($queryItems);

        if(count($queryItems) ==  0){
            return new CredCollection(cred::paginate());
        } else {

            $result = cred::where($queryItems)->paginate();
            return new CredCollection($result->appends($request->query()));
        }


        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCredRequest $request)
    {
        return new CredResource(cred::create($request->all()));
    }

    /**
     * Display the specified resource.
     */
    public function show(cred $cred)
    {
        return new CredResource($cred);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, cred $cred)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(cred $cred)
    {
        //
    }
}
