@extends('admin/dashdoard')
@section('content')

<div class="container">
<form action="{{route('add-product')}}" method="post" enctype="multipart/form-data">
    <input name="_token" type="hidden" value="{{ csrf_token() }}"/>
    <h2 style="text-align:center">Thêm Sản Phẩm</h2>
    @if(count($errors) > 0)
        <div class="alert alert-danger">
        @foreach($errors->all() as $err)
            {{$err}}&nbsp;&nbsp;&nbsp;
        @endforeach
        </div>
    @endif
    @if(Session::has('message'))
    <h5 class="alert alert-success">{{Session::get('message')}}</h5>
    @endif
    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="ten">Tên</label>
        <div class="col-md-10">
            <input type="text" class="form-control" id="ten" name="ten">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="loai">Loại</label>
        <div class="col-md-10">
            <select class="form-control" id="loai" name="loai">
                @foreach($type as $item)
                    <option>{{$item->name}}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="gia">Giá</label>
        <div class="col-md-10">
            <input type="text" class="form-control" id="gia" name="gia" value="0">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="giakm">Giá khuyến mãi</label>
        <div class="col-md-10">
            <input type="text" class="form-control" id="giakm" name="giakm" value="0">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="tinhtrang">Tình trạng</label>
        <div class="col-md-10">
            <select class="form-control" id="tinhtrang" name="tinhtrang">
                <option value="1">Mới</option>
                <option value="0">Cũ</option>
            </select>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="donvi">Đơn vị</label>
        <div class="col-md-10">
            <input class="form-control" type="text" name="donvi" id="donvi">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="mota">Mô tả</label>
        <div class="col-md-10 fr-view">
            <textarea class="form-control" rows="5" id="mota" name="mota"></textarea>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="feature_image">Hình ảnh đại diện</label>
        <div class="col-md-10">
            <input type="file" class="form-control-file" id="hinhanh" name="feature_image">
            <img  id="previewImage" src="" alt="">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-md-2 col-form-label" for="images">Hình ảnh khác</label>
        <div class="col-md-10" id="previewImages">
            <input type="file" class="form-control-file" id="images" name="images[]" multiple>
        </div>
    </div>
    <input type="submit" style="text-align:center" class="btn btn-primary" value="Thêm">
</form>
</div>

@endsection