<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Http\Resources\lokasiResource;
use App\Http\Resources\lokasiCollection;
use App\Http\Requests\V1\lokasi\lokasi_update;
use App\Http\Requests\V1\lokasi\lokasi_store;
use App\Filters\V1\LokasiFilter;
use App\Models\lokasi;

class lokasiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return new lokasiCollection(lokasi::paginate());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(lokasi_store $request)
    {
        return new lokasiResource(lokasi::create($request->all()));
    }

    /**
     * Display the specified resource.
     */
    public function show(lokasi $lokasi)
    {
        return new lokasiResource($lokasi);
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
