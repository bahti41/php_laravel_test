<!doctype html>
<html lang="tr">

<head>

    <meta charset="utf-8" />
    <title>Admin Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="{{asset('backend/assets/images/favicon.ico')}}">

    <!-- jquery.vectormap css -->
    <link href="{{asset('backend/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css')}}" rel="stylesheet" type="text/css" />

    <!-- DataTables -->
    <link href="{{asset('backend/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css')}}" rel="stylesheet" type="text/css" />

    <!-- Responsive datatable examples -->
    <link href="{{asset('backend/assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css')}}" rel="stylesheet" type="text/css" />

    <!-- Bootstrap Css -->
    <link href="{{asset('backend/assets/css/bootstrap.min.css')}}" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{asset('backend/assets/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{asset('backend/assets/css/app.min.css')}}" id="app-style" rel="stylesheet" type="text/css" />

    <!-- bildiri -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css">
    <!-- bildiri -->

    <!-- Tag -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css">
    <!-- Tag -->


</head>

<body data-topbar="dark">

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

    <!-- Begin page -->
    <div id="layout-wrapper">


        <!-- Header -->
        @include('admin.sabit.header')
        <!-- Header -->

        <!-- ========== Left Sidebar Start ========== -->
        @include('admin.sabit.sidebar')
        <!-- Left Sidebar End -->



        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">



            <!--  Page-content -->
            @yield('admin')
            <!-- index e Taşındı sabit kodlar -->
            <!-- End Page-content -->



            <!-- footer -->
            @include('admin.sabit.footer')
            <!-- footer Bitiş -->

        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->


    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>
    <!-- {{asset(('backend/'))}} -->
    <!-- JAVASCRIPT -->
    <script src="{{asset('backend/assets/libs/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('backend/assets/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('backend/assets/libs/metismenu/metisMenu.min.js')}}"></script>
    <script src="{{asset('backend/assets/libs/simplebar/simplebar.min.js')}}"></script>
    <script src="{{asset('backend/assets/libs/node-waves/waves.min.js')}}"></script>


    <!-- apexcharts -->
    <script src="{{asset('backend/assets/libs/apexcharts/apexcharts.min.js')}}"></script>

    <!-- jquery.vectormap map -->
    <script src="{{asset('backend/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js')}}"></script>
    <script src="{{asset('backend/assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js')}}"></script>

    <!-- Required datatable js -->
    <script src="{{asset('backend/assets/libs/datatables.net/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('backend/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js')}}"></script>

    <!-- Responsive examples -->
    <script src="{{asset('backend/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('backend/assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js')}}"></script>

    <script src="{{asset('backend/assets/js/pages/dashboard.init.js')}}"></script>

    <!-- App js -->
    <script src="{{asset('backend/assets/js/app.js')}}"></script>

    <!-- Datatable init js -->
    <script src="{{asset('backend/assets/js/pages/datatables.init.js')}}"></script>

    <!-- Required datatable js -->
    <script src="{{asset('backend/assets/libs/datatables.net/js/jquery.dataTables.min.js/')}}"></script>
    <script src="{{asset('backend/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js')}}"></script>



    <!--Silme Sweet -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="{{ asset('backend/assets/js/sweet.js') }}"></script>
    <!-- Silme Sweet -->

    <!-- Bildirim js ile --->
    <script src="{{ asset('backend/assets/js/validate.min.js') }}"></script>
    <!-- Bildirim js ile --->

    <!-- Tag Alanı -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.min.js"></script>
    <!-- Form editör Text Editör -->

    <!--tinymce js-->
    <script src="{{asset('backend/assets/libs/tinymce/tinymce.min.js')}}"></script>

    <!-- init js -->
    <script src="{{asset('backend/assets/js/pages/form-editor.init.js')}}"></script>
    <!-- Form editör Text Editör -->

    <!-- bildiri -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script>
        @if(session('bildirim'))

        var type = "{{ session('alert-type', 'info') }}";
        switch (type) {
            case 'info':
                toastr.info("{{ session('bildirim') }}");
                break;

            case 'success':
                toastr.success("{{ session('bildirim') }}");
                break;

            case 'warning':
                toastr.warning("{{ session('bildirim') }}");
                break;

            case 'error':
                toastr.error("{{ session('bildirim') }}");
                break;
        }
        @endif
    </script>
    <!-- bildiri -->

    <!-- Aktif Pasif Durum Alanı -->
    <!-- ÜRÜNLER -->
    <script>
        $(function() {
            $('.urunler').change(function() {
                var durum = $(this).prop('checked') == true ? 1 : 0;
                var urun_id = $(this).data('id');
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '/urun/durum',
                    data: {
                        'durum': durum,
                        'urun_id': urun_id
                    },
                    success: function(data) {
                        console.log(data.success)
                    }
                });
            });
        });
    </script>


    <!-- BLOG KATEGORİ -->
    <script>
        $(function() {
            $('.icerikler').change(function() {
                var durum = $(this).prop('checked') == true ? 1 : 0;
                var urun_id = $(this).data('id');
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '/blog/kategori/durum',
                    data: {
                        'durum': durum,
                        'urun_id': urun_id
                    },
                    success: function(data) {
                        console.log(data.success)
                    }
                });
            });
        });
    </script>



    <!-- SUREC -->
    <script>
        $(function() {
            $('.surec').change(function() {
                var durum = $(this).prop('checked') == true ? 1 : 0;
                var id = $(this).data('id');
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '/surec/icerik/durum',
                    data: {
                        'durum': durum,
                        'id': id
                    },
                    success: function(data) {
                        console.log(data.success)
                    }
                });
            });
        });
    </script>

    <!-- SUREC -->
    <script>
        $(function() {
            $('.yorumlar').change(function() {
                var durum = $(this).prop('checked') == true ? 1 : 0;
                var id = $(this).data('id');
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '/yorum/durum',
                    data: {
                        'durum': durum,
                        'id': id
                    },
                    success: function(data) {
                        console.log(data.success)
                    }
                });
            });
        });
    </script>

    <!-- SUREC -->
    <script>
        $(function() {
            $('.kategori').change(function() {
                var durum = $(this).prop('checked') == true ? 1 : 0;
                var id = $(this).data('id');
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '/kategori/durum',
                    data: {
                        'durum': durum,
                        'id': id
                    },
                    success: function(data) {
                        console.log(data.success)
                    }
                });
            });
        });
    </script>

    <!-- BLOG İCERİK -->
    <script>
        $(function() {
            $('.metinler').change(function() {
                var durum = $(this).prop('checked') == true ? 1 : 0;
                var urun_id = $(this).data('id');
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: '/blog/icerik/durum',
                    data: {
                        'durum': durum,
                        'urun_id': urun_id
                    },
                    success: function(data) {
                        console.log(data.success)
                    }
                });
            });
        });
    </script>
    <!--  Durum Alanı -->

</body>

</html>