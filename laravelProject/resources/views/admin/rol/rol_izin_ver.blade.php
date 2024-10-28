@extends('admin.admin_master')

@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Role Yetki Ver</h4>

                        <form method="post" action="{{ route('izin.ekle.form') }}" id="myForm">
                            @csrf



                            <!-- Rol Adi -->
                            <div class="row mb-3">
                                <label for="example-text-input" class="col-sm-2 col-form-label">Rol Adı</label>
                                <div class="col-sm-10 form-group">
                                    <select class="form-select" aria-label="default select example" name="">
                                        <option selected="">Lütfen Bir Rol Seçiniz</option>
                                        @foreach($roller as $rol)
                                        <option value="{{$rol->id}}">{{$rol->name}}</option>
                                        @endforeach
                                    </select>

                                </div>
                            </div>
                            <!-- Rol Adi -->

                            <hr>
                            <br>


                            <!-- Grup İşlemleri -->
                            @foreach($izin_gruplari as $grup)
                            <div class="row mb-3">

                                <div class="col-3">
                                    <div class="form-check mb-3">
                                        <input class="form-check-input" type="checkbox" id="formCheck1">
                                        <label class="form-check-label" for="formCheck1">
                                            <h5> {{$grup->grup_adi}} </h5>
                                        </label>
                                    </div>
                                </div>




                                <div class="col-9 mb-4">

                                    @php
                                    $izinler = App\Models\User::YetkiGruplari($grup->grup_adi);
                                    @endphp

                                    @foreach($izinler as $izin)
                                    <div class="form-check mb-3">
                                        <input class="form-check-input" type="checkbox" id="formCheck1">
                                        <label class="form-check-label" for="formCheck1">
                                            {{$izin->name}}
                                        </label>
                                    </div>
                                    @endforeach
                                </div>

                            </div>
                            @endforeach
                            <!-- Grup İşlemleri -->



                            <input type="submit" class="btn btn-info waves-effect wave-light" value="Role Yetki Ver">
                        </form>



                    </div>
                </div>
            </div>
        </div>
    </div>
</div>






@endsection