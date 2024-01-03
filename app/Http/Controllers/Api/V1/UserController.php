<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Filters\V1\UserFilter;
use App\Http\Resources\UserResource;
use App\Http\Resources\UserCollection;

use App\Http\Requests\V1\StoreUserRequest;
use App\Http\Requests\V1\UpdateUserRequest;
use App\Http\Requests\V1\BulkStoreUserRequest;
use Illuminate\Support\Arr;

use App\Helpers\jsonResponseHelper;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        

        try {  
            
            $filter = new UserFilter();
            $queryItems = $filter->transform($request);

            // echo var_dump($queryItems);

            $includeCreds = $request->query('includeCreds');

            $user = User::where($queryItems);
            
            if($includeCreds){
                $user = $user->with('cred');
            }

            

            return (new jsonResponseHelper(true, 200, 'Berhasil Menampilkan Data'))->jsonResponseWithData(new UserCollection($user->paginate()->appends($request->query())));
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menampilkan Data", [], $e))->jsonResponse();
        }
        
       
    }

    public function bulkStore(BulkStoreUserRequest $request)
    {
        

        try {  
            $bulk = collect($request->all())->map(function($arr, $keys){
                return Arr::except($arr, ['namaDepan', 'namaBelakang', 'noTelp']);
            });
    
            User::insert($bulk->toArray());

            return (new jsonResponseHelper(true, 200, 'Berhasil Menambah Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menambah Data", [], $e))->jsonResponse();
        }

        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreUserRequest $request)
    {


        try {  
            new UserResource(User::create($request->all()));
            return (new jsonResponseHelper(true, 200, 'Berhasil Menambah Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menambah Data", [], $e))->jsonResponse();
        }


    }
    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        try {   
            return (new jsonResponseHelper(true, 200, 'Berhasil Menampilkan Data'))->jsonResponseWithData(new UserResource($user));
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "gagal Menampilkan Data", [], $e))->jsonResponse();
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateUserRequest $request, User $user)
    {

        try {
            $user->update($request->all());     
            return (new jsonResponseHelper(true, 200, 'Berhasil Update Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "Berhasil Update Data", [], $e))->jsonResponse();

        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {


        try {
            $user->cred()->delete();
            $user->delete();  
            return (new jsonResponseHelper(true, 200, 'Berhasil Hapus Data'))->jsonResponse();
        } catch (\Exception $e) {
            return (new jsonResponseHelper(false, 400, "Gagal Hapus Data", [], $e))->jsonResponse();

        }



    }
}
