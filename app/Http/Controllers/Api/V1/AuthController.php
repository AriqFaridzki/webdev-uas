<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

use App\Models\User;
use App\Models\cred;

use App\Http\Controllers\Api\V1\CredController;

use App\Helpers\jsonResponseHelper;
use App\Http\Resources\CredResource;
use App\Http\Requests\V1\cred\StoreCredRequest;


class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    public function login(Request $request){
        $request->validate([
            'id_user' => 'required|numeric',
            'username' => 'required|string',
            'password' => 'required|string',
        ]);
     
        $credentials = $request->only('id_user','username', 'password');
    
        // Change 'api' to 'creds' to use the creds table for authentication
        $token = Auth::guard('api')->attempt($credentials);
        
        if (!$token) {
            return response()->json([
                'message' => 'Unauthorized',
            ], 401);
        }
     
        $user = Auth::guard('api')->user();
     
        return response()->json([
            'user' => $user,
            'authorization' => [
                'token' => $token,
                'type' => 'bearer',
            ]
        ]);
    }

    public function register(Request $request)
    {

        // $request->validated($request->all());

        // return $request;

        return cred::create([
            'id_user'=> $request->id_user,
            'username'=> $request->username,
            'password'=> $request->Hash::make($request->password),
            'roles'=> $request->roles
        ]);
    }

    public function logout()
    {
        Auth::logout();
        return response()->json([
            'message' => 'Successfully logged out',
        ]);
    }

    public function refresh()
    {
        return response()->json([
            'user' => Auth::user(),
            'authorisation' => [
                'token' => Auth::refresh(),
                'type' => 'bearer',
            ]
        ]);
    }

    
}
