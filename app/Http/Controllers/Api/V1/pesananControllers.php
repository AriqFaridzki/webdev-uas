<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Resources\pesananCollection;
use App\Http\Resources\pesananResource;
use App\Models\pesanan;
use Illuminate\Http\Request;

use App\Filters\V1\PesananFilter;
use App\Helpers\jsonResponseHelper;
use App\Http\Requests\V1\pesanan\pesanan_store;

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
                $user = $user->with('detail_pesanans');
            }

            $data = new pesananCollection($user->paginate()->appends($request->query()));
            // $data = UserCollection::make($user->paginate()->appends($request->query()));


            return $data;
        } catch (\Exception $e) {
            // return (new jsonResponseHelper(false, 400, "gagal Menampilkan Data", [], $e))->jsonResponse();
        }
        // return new pesananCollection(pesanan::paginate());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(pesanan_store $request)
    {
        return new pesananResource(pesanan::create($request->all()));
    }

    /**
     * Display the specified resource.
     */
    public function show(pesanan $pesanan, Request $request)
    {
        try {   

            // echo var_dump($queryItems);
            // return new pesananResource($pesanan);
            $includeDetail = $request->query('includeDetail');

            if($includeDetail){
                $pesanan = $pesanan->load('pesanan');
            }

            return $pesanan;

            // return (new jsonResponseHelper(true, 200, 'Berhasil Menampilkan Data',new UserResource($users)))->jsonResponseWithData();
        } catch (\Exception $e) {
            return response()->json([
                'false'
            ]);
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
