<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\MatchController;
use App\Http\Controllers\ShowController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index']);
Route::get('/match', [MatchController::class, 'index']);
Route::get('/show', [ShowController::class, 'index']);
