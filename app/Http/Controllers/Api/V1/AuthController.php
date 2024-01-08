<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

use App\Models\User;



class AuthController extends Controller
{
    public function index(Request $request){
        $request->validate([
            'username' => 'required|string',
            'password' => 'required',
        ]);


        $user= User::where('username', $request->username)->first();
        
            if (!$user || !Hash::check($request->password, $user->password)) {
                return response()->json([
                    'success'   => false,
                    'message' => ['These credentials do not match our records.']
                ], 404);
            }
        
            $token = $user->createToken('ApiToken')->plainTextToken;
        
            $response = [
                'success'   => true,
                'user'      => $user,
                'token'     => $token
            ];
        
        return response($response, 201);
    }
    
    public function logout()
    {
        auth()->logout();
        return response()->json([
            'success'    => true
        ], 200);
    }

    public function register()
    {

    }
}
