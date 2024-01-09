<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\detail_pesanan;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Http\Resources\detail_pesananCollection;
use App\Http\Requests\V1\detail_pesanan\detail_pesanan_store;
use App\Http\Requests\V1\detail_pesanan\detail_pesanan_update;
use App\Helpers\jsonResponseHelper;
use App\Http\Resources\detail_pesananResource;
class detailPesanansController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return new detail_pesananCollection(detail_pesanan::paginate());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(detail_pesanan_store $request)
    {
        try {  
            return new detail_pesananResource(detail_pesanan::create($request->all()));
            // return (new jsonResponseHelper(true, 200, 'Berhasil Menambah Data'))->jsonResponse();
        } catch (\Exception $e) {
            // return (new jsonResponseHelper(false, 400, "gagal Menambah Data", [], $e))->jsonResponse();
        }

    }

    /**
     * Display the specified resource.
     */
    public function show(detail_pesanan $detail_pesanan)
    {
       return new detail_pesananResource($detail_pesanan);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, detail_pesanan $detail_pesanan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(detail_pesanan $detail_pesanan)
    {
        //
    }
}
