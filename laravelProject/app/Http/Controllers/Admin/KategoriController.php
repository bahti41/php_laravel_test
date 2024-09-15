<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\Kategoriler;
use Illuminate\Http\Request;

class KategoriController extends Controller
{
    public function kategoriHepsi()
    {
        $kategorihepsi = Kategoriler::latest()->get(); //latest Eklenen ürünün en son ekleneni en başa alır

        return view('admin.kategoriler.kategoriler_hepsi', compact('kategorihepsi'));
    }

    //
}
