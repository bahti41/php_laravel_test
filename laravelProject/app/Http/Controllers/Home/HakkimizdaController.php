<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Hakkimizda;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class HakkimizdaController extends Controller
{
    public function Hakkımızda()
    {
        $hakkimizda = Hakkimizda::find(1);
        return view('admin.anasayfa.hakkimizda_duzenle', compact('hakkimizda'));
    }


    public function HakkimizdaGuncelle(Request $request) //
    {
        $hakkimizda_id = $request->id;  // Gelen id $banner_id atama yaptık
        $eski_resim = $request->onceki_resim;


        if ($request->file('resim'))   // Type File veya resim Olana Uygula
        {
            $resim = $request->file('resim'); //Resim Degişkeni Resmi Atama
            $resimadi = hexdec(uniqid()) . '.' . $resim->getClientOriginalExtension();  // Resime Verilen adın benzersiz olmasonı saglar


            Image::make($resim)->resize(523, 605)->save('upload/hakkimizda/' . $resimadi);

            $resim_kaydet = 'upload/hakkimizda/' . $resimadi;

            // Eski Resim Sil
            if (file_exists($eski_resim)) {
                unlink($eski_resim);
            }
            // Eski Resim Sil

            Hakkimizda::findOrFail($hakkimizda_id)->update(
                [
                    'baslik' => $request->baslik,
                    'kisa_baslik' => $request->kisa_baslik,
                    'kisa_aciklama' => $request->kisa_aciklama,
                    'aciklama' => $request->aciklama,
                    'resim' => $resim_kaydet,
                ]
            );


            // toaster Bildirim

            $mesaj = array(
                'bildirim' => 'Resim İle Güncelleme Başarılı...',
                'alert-type' => 'success'
            );


            // toaster Bildirim

            return Redirect()->back()->with($mesaj);
        } // }  end if
        else {
            Hakkimizda::findOrFail($hakkimizda_id)->update(
                [
                    'baslik' => $request->baslik,
                    'kisa_baslik' => $request->kisa_baslik,
                    'kisa_aciklama' => $request->kisa_aciklama,
                    'aciklama' => $request->aciklama,
                ]
            );


            // toaster Bildirim

            $mesaj = array(
                'bildirim' => 'Resimsiz Güncelleme Başarılı...',
                'alert-type' => 'success'
            );


            // toaster Bildirim

            return Redirect()->back()->with($mesaj);
        }
    }
}
