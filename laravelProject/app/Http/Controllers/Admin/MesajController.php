<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Mesaj;
use Illuminate\Support\Carbon;


class MesajController extends Controller
{
    public function Iletisim()
    {
        return view('frontend.mesaj.iletisim');
    }


    public function TeklifForm(Request $request)
    {

        $request->validate([
            'adi' => 'required',
            'email' => 'required|email',
            'telefon' => 'required|digits:11|numeric',
            'konu' => 'required',
            'mesaj' => 'required'
        ], [
            'adi.required' => 'Ad SoyAd Boş Olamaz...',
            'email.required' => 'Mail Boş Olamaz...',
            'telefon.required' => 'Telefon Boş Olamaz...',
            'telefon.digits' => 'Telofo  Numarası Boşluksuz 11 Karakter olmalıdır...',
            'konu.required' => 'Konu Boş Olamaz...',
            'mesaj.required' => 'Mesaj Boş Olamaz...'
        ]);

        Mesaj::created($request->all());

        return view('frontend.mesaj.iletisim');
    }
}