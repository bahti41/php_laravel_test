<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();

        $request->session()->regenerate();
        // toaster Bildirim

        $mesaj = array(
            'bildirim' => 'Giriş İşlemi Başarılı...',
            'alert-type' => 'success'
        );


        // toaster Bildirim

        return redirect()->intended(RouteServiceProvider::HOME)->with($mesaj);
    }

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        // toaster Bildirim

        $mesaj = array(
            'bildirim' => 'Çıkış İşlemi Başarılı..',
            'alert-type' => 'info'
        );

        // toaster Bildirim

        return redirect('/login')->with($mesaj);
    }
}