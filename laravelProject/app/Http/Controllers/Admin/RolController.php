<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Carbon;


class RolController extends Controller
{
    public function IzinListe()
    {
        $izinler = Permission::all();
        return view('admin.rol.izin_liste', compact('izinler'));
    }


    public function IzinEkle()
    {
        return view('admin.rol.izin_ekle');
    }



    public function IzinEkleForm(Request $request)
    {

        $request->validate([
            'name' => 'required',
            'grup_adi' => 'required',
        ], [
            'name.required' => 'Kategori Adı Boş Bırakılamz...',
            'grup_adi.required' => 'Anahtar Kısmı Boş Bırakılamz...',
        ]);
        $rol = Permission::create(
            [
                'name' => $request->name,
                'grup_adi' => $request->grup_adi,
            ]
        );


        // toaster Bildirim

        $mesaj = array(
            'bildirim' => 'İzin Yükleme Başarılı...',
            'alert-type' => 'success'
        );


        // toaster Bildirim

        return Redirect()->route('izin.liste')->with($mesaj);
    }
}
