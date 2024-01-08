<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\pesananCollection;
use App\Http\Resources\pesananResource;
use App\Models\pesanan;
use Illuminate\Http\Request;

use App\Filters\V1\PesananFilter;
use App\Helpers\jsonResponseHelper;

class pesananControllers extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {

        try {  
            
            $filter = new PesananFilter();
            $queryItems = $filter->transform($request);

            // echo var_dump($queryItems);

            $includePesanan = $request->query('includeDetail');

            $user = pesanan::where($queryItems);
            
            if($includePesanan){
                $user = $user->with('pesanan');
            }

            $data = new pesananCollection($user->paginate()->appends($request->query()));
            // $data = UserCollection::make($user->paginate()->appends($request->query()));


            return $data;
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menampilkan Data", [], $e))->jsonResponse();
        }
        // return new pesananCollection(pesanan::paginate());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(pesanan $pesanan, Request $request)
    {
        try {   

            // echo var_dump($queryItems);

            $includeDetail = $request->query('includeDetail');

            if($includeDetail){
                $pesanan = $pesanan->load('pesanan');
            }

            return $pesanan;

            // return (new jsonResponseHelper(true, 200, 'Berhasil Menampilkan Data',new UserResource($users)))->jsonResponseWithData();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menampilkan Data", [], $e))->jsonResponse();
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
