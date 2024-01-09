<?php

use App\Http\Controllers\Api\V1\CredController;
use App\Http\Controllers\Api\V1\UserController;
use App\Http\Controllers\Api\V1\AuthController;
use App\Http\Controllers\Api\V1\detailPesanansController;
use App\Http\Controllers\Api\V1\hargaWisataController;
use App\Http\Controllers\Api\V1\lokasiController;
use App\Http\Controllers\Api\V1\pesananController;
use App\Http\Controllers\Api\V1\pesananControllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/


//api/v1
Route::group(['prefix' => 'v1', 'namespace' => 'App\Http\Controllers\Api\V1'], function(){
    Route::apiResource('user', UserController::class);
    Route::apiResource('cred', CredController::class);
    Route::apiResource('detailPesanan', detailPesanansController::class);
    Route::apiResource('pesanan', pesananControllers::class);
    Route::apiResource('lokasi', lokasiController::class);
    Route::apiResource('hargaWisata', hargaWisataController::class);
    // Route::apiResource('jenisLokasi', jenisLokasi::class);
    // Route::apiResource('jenisOrang', hargaWisataController::class);
    Route::apiResource('cred', CredController::class);

    // Route::post('userBulk', ['uses' => 'UserController@bulkStore']);
});

Route::post('/login', 'App\Http\Controllers\Api\V1\AuthController@index');
Route::get('/logout', 'App\Http\Controllers\Api\V1\AuthController@logout');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
