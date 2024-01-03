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
        $filter = new UserFilter();
        $queryItems = $filter->transform($request);

        // echo var_dump($queryItems);

        $includeCreds = $request->query('includeCreds');

        $user = User::where($queryItems);
        
        if($includeCreds){
            $user = $user->with('cred');
        }
            
        return new UserCollection($user->paginate()->appends($request->query()));
       
    }

    public function bulkStore(BulkStoreUserRequest $request)
    {
        

        try {
            $bulk = collect($request->all())->map(function($arr, $keys){
                return Arr::except($arr, ['namaDepan', 'namaBelakang', 'noTelp']);
            });
    
            User::insert($bulk->toArray());
            
            return response()->json([
                'status' => true,
                'message' => 'berhasil menambah data'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'gagal menambah data'
            ], 400);
        }
        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreUserRequest $request)
    {
        try {
            new UserResource(User::create($request->all()));
            
            return response()->json([
                'status' => true,
                'message' => 'berhasil menambah data'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'gagal menambah data'
            ], 400);
        }
    }
    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        return new UserResource($user);
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
            return (new jsonResponseHelper(false, 300, "Berhasil Update Data", null, $e))->jsonResponse();

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
            
            return response()->json([
                'status' => true,
                'message' => 'berhasil hapus data'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'gagal hapus data',
                'because' => $e
            ], 400);
        }


    }
}
