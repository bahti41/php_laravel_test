<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Seo;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class SeoController extends Controller
{

    public function SeoDuzenle()
    {
        $seo = Seo::find(1);
        return view('admin.anasayfa.seo', compact('seo'));
    }
}
