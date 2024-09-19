@extends('admin.admin_master')

@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <form method="post" action="{{ route('kategori.ekle.form') }}" enctype="multipart/form-data" id="myForm">
                            @csrf



                            <h4 class="card-title">Kategori Ekle</h4>

                            <!-- Kategori_Adi -->
                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Kategori Adı</label>
                                <div class="col-sm-10 form-group">
                                    <input class="form-control" name="kategori_adi" type="text" placeholder="Kategori Adı...">
                                    @error('kategori_adi')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                            </div>
                            <!-- Kategori_Adi -->


                            <!-- Kategori_Anahtar -->
                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Kategori Anahtar</label>
                                <div class="col-sm-10 form-group">
                                    <input class="form-control" name="anahtar" type="text" placeholder="Kategori Anahtar...">
                                    @error('anahtar')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                            </div>
                            <!-- Kategori_Anahtar -->


                            <!-- Kategori_Acıklama -->
                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Kategori Acıklama</label>
                                <div class="col-sm-10 form-group">
                                    <input class="form-control" name="aciklama" type="text" placeholder="Kategori Acıklama...">
                                    @error('aciklama')
                                    <span class="text-danger">{{$message}}</span>
                                    @enderror
                                </div>
                            </div>
                            <!-- Kategori_Acıklama -->


                            <!-- Resim -->

                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2">Resim</label>
                                <div class="col-sm-10 form-group">
                                    <input class="form-control" type="file" name="resim" id="resim">
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2"></label>
                                <div class="col-sm-10">
                                    <img class="rounded avatar-lg" src="{{ url('upload/görseli_hazrilaniyor.png')}}" alt="" id="resimGoster">
                                </div>
                            </div>

                            <!-- Resim -->

                            <input type="submit" class="btn btn-info waves-effect wave-light" value="Kategori Ekle">
                        </form>



                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Yüklü Resim -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#resim').change(function(e) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#resimGoster').attr('src', e.target.result);
            }
            reader.readAsDataURL(e.target.files['0']);
        });
    });
</script>
<!-- Yüklü Resim -->


<!-- boş olamaz no refresh -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                kategori_adi: {
                    required: true,
                },

                anahtar: {
                    required: true,
                },

                aciklama: {
                    required: true,
                },

                resim: {
                    required: true,
                },
            }, // end rules

            messages: {
                kategori_adi: {
                    required: 'Kategori adı giriniz',
                },

                anahtar: {
                    required: 'Anahtar giriniz',
                },

                aciklama: {
                    required: 'Açıklama giriniz',
                },

                resim: {
                    required: 'Resim giriniz',
                },
            }, // end message

            errorElement: 'span',
            errorPlacement: function(error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },

            highlight: function(element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },

            unhighlight: function(element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            },
        });
    });
</script>
<!-- boş olamaz no refresh -->

@endsection