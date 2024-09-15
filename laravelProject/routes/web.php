<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Home\BannerController;
use App\Http\Controllers\Admin\KategoriController;

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
    return view('frontend.index');
});


// Banner Route
Route::controller(BannerController::class)->group(function () {
    Route::get('/banner/duzenle', 'HomeBanner')->name('banner');
    Route::post('/banner/guncelle', 'BannerGuncelle')->name('banner.guncelle');
});


// Kategory Route
Route::controller(KategoriController::class)->group(function () {
    Route::get('/kategori/hepsi', 'kategoriHepsi')->name('kategori.hepsi');
    Route::post('/banner/guncelle', 'BannerGuncelle')->name('banner.guncelle');
});


// Admin Panel
Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth', 'verified'])->name('dashboard');


// Admin Panel Profile
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
