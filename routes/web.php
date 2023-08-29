<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\TransactionController;
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

Route::get('/', [AuthController::class, 'login'])->name('login');
Route::post('login', [AuthController::class, 'loginAction'])->name('loginAction');
Route::get('register', [AuthController::class, 'register'])->name('register');
Route::post('register', [AuthController::class, 'registerAction'])->name('registerAction');

// dashboard
Route::middleware('auth')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
    Route::get('dashboard', function () {
        return view('dashboard.index');
    })->name('dashboard');

    // products
    Route::resource('product', ProductController::class);

    // transaction
    Route::get('transaction', [TransactionController::class, 'index'])->name('transaction');
});
