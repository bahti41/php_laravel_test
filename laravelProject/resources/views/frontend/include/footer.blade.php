@php

$footer = App\Models\Footer::find(1);

@endphp

<!-- contact-area -->
<section class="homeContact" style="margin-top:190px;">
    <div class="container">
        <div class="homeContact__wrap">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section__title">
                        <span class="sub-title">07 - Say hello</span>
                        <h2 class="title">Any questions? Feel free <br> to contact</h2>
                    </div>
                    <div class="homeContact__content">
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form</p>
                        <h2 class="mail"><a href="mailto:Info@webmail.com">{{$footer->mail}}</a></h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="homeContact__form">
                        <form method="post" action="{{route('teklif.form')}}" class="contact_form form-group" id="myForm">
                            @csrf

                            <input type="text" name="adi" placeholder="Ad Soyad">
                            @error('adi')
                            <span class="text-danger">{{$message}}</span>
                            @enderror

                            <input type="email" name="email" placeholder="Email Adresiniz">
                            @error('email')
                            <span class="text-danger">{{$message}}</span>
                            @enderror

                            <input type="text" name="telefon" placeholder="Teleofon">
                            @error('telefon')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                            <input type="text" name="konu" placeholder="Konu">
                            @error('konu')
                            <span class="text-danger">{{$message}}</span>
                            @enderror

                            <textarea name="mesaj" id="message" placeholder="Mesajınız"></textarea>
                            @error('mesaj')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                            <button type="submit">Send Message</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- contact-area-end -->




<footer class="footer">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-lg-4">
                <div class="footer__widget">
                    <div class="fw-title">
                        <h5 class="sub-title">{{$footer->baslikbir}}</h5>
                        <h4 class="title">{{$footer->telefon}}</h4>
                    </div>
                    <div class="footer__widget__text">
                        <p>{{$footer->metin}}</p>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="footer__widget">
                    <div class="fw-title">
                        <h5 class="sub-title">{{$footer->baslikiki}}</h5>
                        <h4 class="title">{{$footer->sehir}}</h4>
                    </div>
                    <div class="footer__widget__address">
                        <p>{{$footer->adres}}</p>
                        <a href="mailto:noreply@envato.com" class="mail">{{$footer->mail}}</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="footer__widget">
                    <div class="fw-title">
                        <h5 class="sub-title">{{$footer->baslikuc}}</h5>
                        <h4 class="title">{{$footer->sosyal_baslik}}</h4>
                    </div>
                    <div class="footer__widget__social">
                        <p>{{$footer->aciklama}}</p>
                        <ul class="footer__social__list">
                            <li><a href="{{$footer->facebook}}"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="{{$footer->tiwitter}}"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="{{$footer->linkedin}}"><i class="fab fa-linkedin-in"></i></a></li>
                            <li><a href="{{$footer->instagram}}"><i class="fab fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright__wrap">
            <div class="row">
                <div class="col-12">
                    <div class="copyright__text text-center">
                        <p>{{$footer->copy_right}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>