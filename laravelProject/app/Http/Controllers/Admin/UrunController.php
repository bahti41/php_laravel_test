<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Kategoriler;
use App\Models\Urunler;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class UrunController extends Controller
{
    public function UrunListe()
    {
        $urunliste = Urunler::latest()->get(); //latest Eklenen ürünün en son ekleneni en başa alır

        return view('admin.urunler.urun_liste', compact('urunliste'));
    }
}
