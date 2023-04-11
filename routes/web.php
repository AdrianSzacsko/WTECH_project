<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionController;

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

Route::get('/admin/add_product', [AdminController::class, 'add_product']);
Route::resource('admin', AdminController::class);
Route::resource('index', IndexController::class);
Route::resource('cart', CartController::class);
Route::post('/register', [RegisterController::class, 'register']);

Route::get('/login', [SessionController::class, 'create']);
Route::post('/login', [SessionController::class, 'store']);
Route::delete('/logout', [SessionController::class, 'destroy']);

Route::get('/', function () {
    return redirect('index');

});

Route::get('/shop', [ShopController::class, 'view']);
Route::get('/shop/{order_direction}', [MainController::class, 'view'])->name('shop');

//TODO delete before submission
Route::get('/phpinfo', function () {
    //return view('welcome');

    return phpinfo();

});
