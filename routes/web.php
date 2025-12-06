<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\MatchController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index']);
Route::get('/match', [MatchController::class, 'index']);
