<?php

use App\Http\Controllers\Frontend;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/',[Frontend::class,'index'])->name('index');
Route::get('cart',[Frontend::class,'cart'])->name('cart');
Route::get('/single',[Frontend::class,'single'])->name('single');
