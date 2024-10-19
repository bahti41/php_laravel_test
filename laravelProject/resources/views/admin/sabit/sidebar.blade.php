        <div class="vertical-menu">

            <div data-simplebar class="h-100">

                <!-- User details -->
                <div class="user-profile text-center mt-3">
                    <div class="">
                        <img src="{{ (!empty(Auth::user()->resim)) ? url('upload/admin/'.Auth::user()->resim): url('upload/resim-yok.png')}}" alt="" class="avatar-md rounded-circle">
                    </div>
                    <div class="mt-3">
                        <h4 class="font-size-16 mb-1">{{Auth::user()->name}}</h4>
                        <span class="text-muted"><i class="ri-record-circle-line align-middle font-size-14 text-success"></i> Online</span>
                    </div>
                </div>

                <!--- Sidemenu -->
                <div id="sidebar-menu">
                    <!-- Left Menu Start -->
                    <ul class="metismenu list-unstyled" id="side-menu">
                        <li class="menu-title">Menu</li>

                        <!-- <li>
                            <a href="index.html" class="waves-effect">
                                <i class="ri-dashboard-line"></i><span class="badge rounded-pill bg-success float-end">3</span>
                                <span>Dashboard</span>
                            </a>
                        </li> -->

                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-mail-send-line"></i>
                                <span>Banner</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{route('banner')}}">Banner Düzenle</a></li>
                            </ul>
                        </li>


                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-mail-send-line"></i>
                                <span>Hakkımızda</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{route('hakkimizda')}}">Hakkımızda Düzenle</a></li>
                                <li><a href="{{route('coklu.liste')}}">Coklu Resimler</a></li>
                                <li><a href="{{route('coklu.resim')}}">Coklu Resim Ekle</a></li>
                            </ul>
                        </li>


                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-layout-3-line"></i>
                                <span>Kategoriler</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">

                                <li>
                                <li><a href="{{route('kategori.hepsi')}}">Hepsi</a></li>
                                <li><a href="{{route('kategori.ekle')}}">Kategoriy Ekle</a></li>
                            </ul>
                        </li>


                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-layout-3-line"></i>
                                <span>Alt Kategoriler</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">

                                <li>
                                <li><a href="{{route('altkategori.liste')}}">Liste</a></li>
                                <li><a href="{{route('altkategori.ekle')}}">Alt Kategoriy Ekle</a></li>
                            </ul>
                        </li>



                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-layout-3-line"></i>
                                <span>Ürünler</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">

                                <li>
                                <li><a href="{{route('urun.liste')}}">Ürün Liste</a></li>
                                <li><a href="{{route('urun.ekle')}}">Ürün Ekle</a></li>
                            </ul>
                        </li>



                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-layout-3-line"></i>
                                <span>Blog</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">

                                <li>
                                <li><a href="{{route('blog.liste')}}">Liste</a></li>
                                <li><a href="{{route('blog.kategori.ekle')}}">Kategori Ekle</a></li>
                            </ul>
                        </li>




                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-layout-3-line"></i>
                                <span>Blog İcerikler</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">

                                <li>
                                <li><a href="{{route('icerik.liste')}}">Liste</a></li>
                                <li><a href="{{route('blog.icerik.ekle')}}">İcerik Ekle</a></li>
                            </ul>
                        </li>


                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-layout-3-line"></i>
                                <span>Sürec İcerikler</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">

                                <li>
                                <li><a href="{{route('surec.liste')}}">Liste</a></li>
                                <li><a href="{{route('surec.ekle')}}">İcerik Ekle</a></li>
                            </ul>
                        </li>


                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-layout-3-line"></i>
                                <span>Yorumlar</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">

                                <li>
                                <li><a href="{{route('yorum.liste')}}">Liste</a></li>
                                <li><a href="{{route('yorum.ekle')}}">Yorum Ekle</a></li>
                            </ul>
                        </li>


                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="ri-layout-3-line"></i>
                                <span>Footer</span>
                            </a>
                            <ul class="sub-menu" aria-expanded="true">

                                <li>
                                <li><a href="{{route('footer.duzenle')}}">Güncelle</a></li>
                            </ul>
                        </li>







                    </ul>
                    </li>













                </div>
                <!-- Sidebar -->
            </div>
        </div>