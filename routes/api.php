<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\PresensiController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\LogRemoteMobileSwapController;
use App\Http\Controllers\ProfileController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
// Route::middleware('auth:api')->group(function () {

// });

Route::post('/login', [AuthController::class, 'login']);
Route::group(['middleware' => 'jwt.auth'], function () {
    Route::post('/change-password', [AuthController::class, 'changePassword']);
    Route::post('/submit-presensi', [LogRemoteMobileSwapController::class, 'submitPresensi']);
    Route::post('/profile', [ProfileController::class, 'update']);
    Route::post('/update-notif', [ProfileController::class, 'updateNotif']);
    Route::post('/update-email-notif', [ProfileController::class, 'updateEmailNotif']);
});

Route::get('/presensi', [PresensiController::class, 'list']);
Route::get('/presensi/{id}', [PresensiController::class, 'detail']);
Route::post('/presensi/search', [PresensiController::class, 'search']);
Route::get('/notifications', [NotificationController::class, 'list']);
Route::get('/notifications/{id}', [NotificationController::class, 'detail']);