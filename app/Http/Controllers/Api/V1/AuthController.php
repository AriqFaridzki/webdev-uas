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

        $token = Auth::attempt($credentials);
        
        if (!$token) {
            return response()->json([
                'message' => 'Unauthorized',
            ], 401);
        }
        $user = Auth::user();

        // $user->load('creds');

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
        // $request->validate([
        //     'idUser' => 'required|numeric|min:1',
        //     'username' => 'required|string|max:255',
        //     // 'email' => 'required|string|email|max:255|unique:users',
        //     'password' => 'required|string|min:6',
        //     'roles' => 'required|string',

        // ]);
        $user = cred::create([
            'id_user' => $request->id_user,
            'username' => $request->username,
            // 'email' => $request->email,
            'password' => Hash::make($request->password),
            'roles' => $request->roles,
        ]);

        $responseMsg = [
            'cred' => $user
        ];

        // return (new jsonResponseHelper(true, 200, 'User created successfully')->jsonResponseWithData());
        return (new jsonResponseHelper(true, 200, 'Berhasil Membuat Cred', $responseMsg))->jsonResponseWithData();
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
