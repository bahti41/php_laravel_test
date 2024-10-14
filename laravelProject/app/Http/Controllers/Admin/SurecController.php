<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Surec;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class SurecController extends Controller
{

    public function SurecListe()
    {
        $surechepsi = Surec::latest()->get(); //latest Eklenen ürünün en son ekleneni en başa alır

        return view('admin.surec.surec_hepsi', compact('surechepsi'));
    }
}
