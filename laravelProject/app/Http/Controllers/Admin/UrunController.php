<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Urunler;
use App\Models\Kategoriler;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class UrunController extends Controller
{
    public function UrunListe()
    {
        $urunliste = Urunler::latest()->get(); //latest Eklenen ürünün en son ekleneni en başa alır

        return view('admin.urunler.urun_liste', compact('urunliste'));
    }



    public function UrunDurum(Request $request)
    {
        $urun = Urunler::find($request->urun_id);
        $urun->durum = $request->durum;
        $urun->save();

        return response()->json(['success' => 'Başarılı...']);
    }


    public function UrunEkle()
    {
        $kategoriler = Kategoriler::latest()->get();
        return view('admin.urunler.urun_ekle', compact('kategoriler'));
    }
}
