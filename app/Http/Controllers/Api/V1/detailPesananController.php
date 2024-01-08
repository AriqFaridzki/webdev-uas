<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\detail_pesanan;
use App\Http\Resources\detail_pesananCollection;
use App\Http\Requests\V1\detail_pesanan\detail_pesanan_store;
use App\Http\Requests\V1\detail_pesanan\detail_pesanan_update;
use App\Helpers\jsonResponseHelper;
use App\Http\Resources\detail_pesananResource;

class detailPesananController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
    //    return detail_pesanan::with('harga_wisata')->get();
    return new detail_pesananCollection(detail_pesanan::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {  
            new detail_pesananResource(detail_pesanan::create($request->all()));
            return (new jsonResponseHelper(true, 200, 'Berhasil Menambah Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menambah Data", [], $e))->jsonResponse();
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(int $id)
    {
        
        // try {  
        //     return new detail_pesananResource(detail_pesanan::findOrFail($id));
        // } catch (\Exception $e) {
        //     return response()->json([
        //         'status' => 'not found',

        //     ],400);
        //     // return (new jsonResponseHelper(false, 400, "gagal Menambah Data", [], $e))->jsonResponse();
        // }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, detail_pesanan $id)
    {
        try {
            $id->update($request->all());     
            return (new jsonResponseHelper(true, 200, 'Berhasil Update Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "Berhasil Update Data", [], $e))->jsonResponse();

        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(detail_pesanan $id)
    {
        try {
            $id->delete();  
            return (new jsonResponseHelper(true, 200, 'Berhasil Hapus Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "Gagal Hapus Data", [], $e))->jsonResponse();
        }
    }
}
