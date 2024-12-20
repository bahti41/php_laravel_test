 @extends('frontend.main_master')


 @php
 $seo = App\Models\Seo::find(1);
 @endphp

 @section('title') {{$seo->title}} | {{$seo->site_adi}} @endsection
 @section('author') {{$seo->author}} @endsection
 @section('aciklama') {{$seo->aciklama}} @endsection
 @section('anahtar') {{$seo->keywords}} @endsection


 @section('main')

 <main style="margin-bottom:-400px;">

     <!-- banner-area -->
     @include('frontend.anasayfa.banner')
     <!-- banner-area-end -->

     <!-- about-area -->
     @include('frontend.anasayfa.anasayfa_hak')
     <!-- about-area-end -->

     <!-- services-area -->

     @include('frontend.anasayfa.random_kategori')

     <!-- services-area-end -->

     <!-- work-process-area -->
     @include('frontend.anasayfa.surec')

     <!-- work-process-area-end -->

     <!-- portfolio-area -->

     @include('frontend.anasayfa.coklu')

     <!-- portfolio-area-end -->

     <!-- partner-area -->
     <!-- <section class="partner">
         <div class="container">
             <div class="row align-items-center">
                 <div class="col-lg-6">
                     <ul class="partner__logo__wrap">
                         <li>
                             <img class="light" src="{{asset('frontend/assets/img/icons/partner_light01.png')}}" alt="">
                             <img class="dark" src="{{asset('frontend/assets/img/icons/partner_01.png')}}" alt="">
                         </li>
                         <li>
                             <img class="light" src="{{asset('frontend/assets/img/icons/partner_light02.png')}}" alt="">
                             <img class="dark" src="{{asset('frontend/assets/img/icons/partner_02.png')}}" alt="">
                         </li>
                         <li>
                             <img class="light" src="{{asset('frontend/assets/img/icons/partner_light03.png')}}" alt="">
                             <img class="dark" src="{{asset('frontend/assets/img/icons/partner_03.png')}}" alt="">
                         </li>
                         <li>
                             <img class="light" src="{{asset('frontend/assets/img/icons/partner_light04.png')}}" alt="">
                             <img class="dark" src="{{asset('frontend/assets/img/icons/partner_04.png')}}" alt="">
                         </li>
                         <li>
                             <img class="light" src="{{asset('frontend/assets/img/icons/partner_light05.png')}}" alt="">
                             <img class="dark" src="{{asset('frontend/assets/img/icons/partner_05.png')}}" alt="">
                         </li>
                         <li>
                             <img class="light" src="{{asset('frontend/assets/img/icons/partner_light06.png')}}" alt="">
                             <img class="dark" src="{{asset('frontend/assets/img/icons/partner_06.png')}}" alt="">
                         </li>
                     </ul>
                 </div>
                 <div class="col-lg-6">
                     <div class="partner__content">
                         <div class="section__title">
                             <span class="sub-title">05 - partners</span>
                             <h2 class="title">I proud to have collaborated with some awesome companies</h2>
                         </div>
                         <p>I'm a bit of a digital product junky. Over the years, I've used hundreds of web and mobile apps in different industries and verticals. Eventually, I decided that it would be a fun challenge to try designing and building my own.</p>
                         <a href="contact.html" class="btn">Start a conversation</a>
                     </div>
                 </div>
             </div>
         </div>
     </section> -->
     <!-- partner-area-end -->

     <!-- testimonial-area -->

     @include('frontend.anasayfa.yorumlar')


     <!-- testimonial-area-end -->

     <!-- blog-area -->
     @include('frontend.anasayfa.anasayfa_blog')
     <!-- blog-area-end -->


 </main>

 @endsection