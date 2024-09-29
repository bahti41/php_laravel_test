<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Home\BannerController;
use App\Http\Controllers\Admin\KategoriController;
use App\Http\Controllers\Admin\AltkategoriController;
use App\Http\Controllers\Admin\UrunController;
use App\Http\Controllers\Home\FrontController;
use App\Http\Controllers\Admin\BlogkategoriController;
use App\Http\Controllers\Admin\BlogicerikController;
use App\Models\Blogkategoriler;

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
    Route::get('/kategori/hepsi', 'KategoriHepsi')->name('kategori.hepsi');
    Route::get('/kategori/ekle', 'KategoriEkle')->name('kategori.ekle');
    Route::post('/kategori/ekle/form', 'KategoriEkleForm')->name('kategori.ekle.form');
    Route::get('/kategori/duzenle/{id}', 'KategoriDuzenle')->name('kategori.duzenle');
    Route::post('/kategori/guncelle/form', 'KategoriGuncelleForm')->name('kategori.guncelle.form');
    Route::get('/kategori/sil/{id}', 'KategoriSil')->name('kategori.sil');
});


// Alt Kategory Route
Route::controller(AltkategoriController::class)->group(function () {
    Route::get('/altkategori/liste', 'AltKategoriListe')->name('altkategori.liste');
    Route::get('/altkategori/ekle', 'AltKategoriEkle')->name('altkategori.ekle');
    Route::post('/altkategori/ekle/form', 'AltKategoriEkleForm')->name('altkategori.ekle.form');
    Route::get('/altkategori/duzenle/{id}', 'AltKategoriDuzenle')->name('altkategori.duzenle');
    Route::post('/altkategori/guncelle/form', 'AltKategoriGuncelleForm')->name('altkategori.guncelle.form');
    Route::get('/altkategori/sil/{id}', 'AltKategoriSil')->name('altkategori.sil');
    Route::get('/altkategoriler/ajax/{kategori_id}', 'AltAjax');
});


// Ürünler Route
Route::controller(UrunController::class)->group(function () {
    Route::get('/urun/liste', 'UrunListe')->name('urun.liste');
    Route::get('/urun/durum', 'UrunDurum');
    Route::get('/urun/ekle', 'UrunEkle')->name('urun.ekle');
    Route::post('/urun/ekle/form', 'UrunEkleForm')->name('urun.ekle.form');
    Route::get('/urun/duzenle/{id}', 'UrunDuzenle')->name('urun.duzenle');
    Route::post('/urun/guncelle/form', 'UrunGuncelleForm')->name('urun.guncelle.form');
    Route::get('/urun/sil/{id}', 'UrunSil')->name('urun.sil');
});


// Blog Kategory Route
Route::controller(BlogkategoriController::class)->group(function () {
    Route::get('/blog/kategori/liste', 'BlogListe')->name('blog.liste');
    Route::get('/blog/kategori/durum', 'BlogKategoriDurum');
    Route::get('/blog/kategori/ekle', 'BlogkategoriEkle')->name('blog.kategori.ekle');
    Route::post('/blog/kategori/form', 'BlogKayegoriForm')->name('blog.kategori.form');
    Route::get('/blogkategori/duzenle/{id}', 'BlogKategoriDuzenle')->name('blog.kategori.duzenle');
    Route::post('/blogkategori/guncelle', 'BlogKategoriGuncelle')->name('blog.kategori.guncelle');
    Route::get('/blogkategori/sil/{id}', 'BlogKategoriSil')->name('blog.kategori.sil');
});


// Blog İcerik Route
Route::controller(BlogicerikController::class)->group(function () {
    Route::get('/blog/icerik/liste', 'IcerikListe')->name('icerik.liste');
    Route::get('/blog/kategori/durum', 'BlogKategoriDurum');
    Route::get('/blog/icerik/ekle', 'BlogicerilEkle')->name('blog.icerik.ekle');
    Route::post('/blog/icerik/ekle/from', 'BlogIcerikEkleFrom')->name('blog.icerik.ekle.form');
    Route::get('/blogicerik/duzenle/{id}', 'BlogicerikDuzenle')->name('blog.icerik.duzenle');
    Route::post('/blogicerik/guncelle', 'BlogIcerikGuncelle')->name('blog.icerik.guncelle.form');
    Route::get('/blogkategori/sil/{id}', 'BlogKategoriSil')->name('blog.kategori.sil');
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


// Front Route
Route::get('/urun/{id}/{url}', [FrontController::class, 'UrunDetay']);
Route::get('/kategori/{id}/{url}', [FrontController::class, 'KategoriDetay']);
Route::get('/altkategori/{id}/{url}', [FrontController::class, 'AltDetay']);
