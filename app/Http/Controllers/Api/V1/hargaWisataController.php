<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\harga_wisata;
use App\Http\Requests\V1\harga_wisata\harga_wisata_update;
use App\Http\Resources\harga_wisataCollection;
use App\Http\Resources\harga_wisataResource;
use App\Http\Requests\V1\harga_wisata\harga_wisata_store;

class hargaWisataController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return new harga_wisataCollection(harga_wisata::paginate());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(harga_wisata_store $request)
    {
        return new harga_wisataResource(harga_wisata::create($request->all()));
    }

    /**
     * Display the specified resource.
     */
    public function show(harga_wisata $harga_wisata, Request $request)
    {   

        return $harga_wisata;
        // return new harga_wisataResource($harga_wisata)? response()->json(['exist' => $harga_wisata] ) : response()->json([$harga_wisata]);
        // return new lokasiResource($lokasi)
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
