<?php

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

Route::middleware(['auth:api','check.token.expiry'])->group(function () {
    Route::post('lead', [App\Http\Controllers\Api\V1\CandidatoController::class, 'store'])->middleware('role:manager');
    Route::get('lead/{id}', [App\Http\Controllers\Api\V1\CandidatoController::class, 'show']);
    Route::get('leads', [App\Http\Controllers\Api\V1\CandidatoController::class, 'index']);
});