<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
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



        $izin = Permission::create(
            [
                'name' => $request->name,
                'grup_adi' => $request->grup_adi,
                'updated_at' => Carbon::now('Europe/Istanbul'),
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


    public function IzinDuzenle($id)
    {
        $izinler = Permission::findOrFail($id);
        return view('admin.rol.izin_duzenle', compact('izinler'));
    }



    public function IzinGuncelleForm(Request $request)
    {


        $izin_id = $request->id;

        Permission::findOrfail($izin_id)->update(
            [
                'name' => $request->name,
                'grup_adi' => $request->grup_adi,
                'updated_at' => Carbon::now('Europe/Istanbul'),
            ]
        );


        // toaster Bildirim

        $mesaj = array(
            'bildirim' => 'Güncelleme Başarılı...',
            'alert-type' => 'success'
        );


        // toaster Bildirim

        return Redirect()->route('izin.liste')->with($mesaj);
    }



    public function IzinSil($id)
    {

        $izin_id = Permission::findOrFail($id);

        Permission::findOrFail($id)->delete();

        // toaster Bildirim

        $mesaj = array(
            'bildirim' => 'Silme Başarılı...',
            'alert-type' => 'success'
        );
        return Redirect()->back()->with($mesaj);
    }



    //******************    ROLLER     **********************




    public function RolListe()
    {
        $rol = Role::all();
        return view('admin.rol.rol_liste', compact('rol'));
    }



    public function RolEkle()
    {
        return view('admin.rol.rol_ekle');
    }



    public function RolEkleForm(Request $request)
    {

        $rol = Role::create(
            [
                'name' => $request->name,
                'updated_at' => Carbon::now('Europe/Istanbul'),
            ]
        );


        // toaster Bildirim

        $mesaj = array(
            'bildirim' => 'Rol Yükleme Başarılı...',
            'alert-type' => 'success'

        );


        // toaster Bildirim

        return Redirect()->route('rol.liste')->with($mesaj);
    }



    public function RolDuzenle($id)
    {
        $roller = Role::findOrFail($id);
        return view('admin.rol.rol_duzenle', compact('roller'));
    }



    public function RolGuncelleForm(Request $request)
    {


        $rol_id = $request->id;

        Role::findOrfail($rol_id)->update(
            [
                'name' => $request->name,
                'updated_at' => Carbon::now('Europe/Istanbul'),
            ]
        );


        // toaster Bildirim

        $mesaj = array(
            'bildirim' => 'Güncelleme Başarılı...',
            'alert-type' => 'success'
        );


        // toaster Bildirim

        return Redirect()->route('rol.liste')->with($mesaj);
    }


    public function rolSil($id)
    {

        $rol_id = Role::findOrFail($id);

        Role::findOrFail($id)->delete();

        // toaster Bildirim

        $mesaj = array(
            'bildirim' => 'Silme Başarılı...',
            'alert-type' => 'success'
        );
        return Redirect()->back()->with($mesaj);
    }


    // ***************** Role İzin Verme ******************



    public function RolIzinVerme()
    {
        $roller = Role::all();
        $izinler = Permission::all();
        $izin_gruplari = User::IzinGruplari();

        return view('admin.rol.rol_izin_ver', compact('roller', 'izinler', 'izin_gruplari'));
    }
}
