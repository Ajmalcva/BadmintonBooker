<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/bookSlots/{courtID}', [App\Http\Controllers\HomeController::class, 'bookSlots'])->name('bookSlot');
Route::get('/bookSlotsProcessView', [App\Http\Controllers\HomeController::class, 'bookSlotsProcessView'])->name('bookSlotsProcessView');
Route::post('/bookSlotsProcess', [App\Http\Controllers\HomeController::class, 'bookSlotsProcess'])->name('bookSlotsProcess');


Route::get('/getcourts/{month}/{year}', [App\Http\Controllers\HomeController::class, 'getCourts'])->name('getCourts');
