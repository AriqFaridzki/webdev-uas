<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\cred;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Http\Resources\CredCollection;
use App\Http\Resources\CredResource;

use App\Filters\V1\CredFilter;

use App\Http\Requests\V1\cred\StoreCredRequest;
use App\Http\Requests\V1\cred\UpdateCredRequest;

use App\Helpers\jsonResponseHelper;


class CredController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        
        try {  

            $filter = new CredFilter();
            $queryItems = $filter->transform($request);
        
            $cred = cred::where($queryItems)->paginate();
            // echo var_dump($queryItems);


            return (new jsonResponseHelper(true, 200, 'Berhasil Menambah Data'))->jsonResponseWithData( new CredCollection($cred->appends($request->query())));
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menambah Data", [], $e))->jsonResponse();
        }


        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCredRequest $request)
    {
        try {  
            new CredResource(cred::create($request->all()));
            return (new jsonResponseHelper(true, 200, 'Berhasil Menambah Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menambah Data", [], $e))->jsonResponse();
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(cred $cred)
    {
        try {   
            return (new jsonResponseHelper(true, 200, 'Berhasil Menampilkan Data'))->jsonResponseWithData(new CredResource($cred));
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menampilkan Data", [], $e))->jsonResponse();
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCredRequest $request, cred $cred)
    {
        try {
            $cred->update($request->all());     
            return (new jsonResponseHelper(true, 200, 'Berhasil Update Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "Berhasil Update Data", [], $e))->jsonResponse();

        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(cred $cred)
    {
        try {
            $cred->delete();  
            return (new jsonResponseHelper(true, 200, 'Berhasil Hapus Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "Gagal Hapus Data", [], $e))->jsonResponse();

        }
    }
}
