@extends('admin/dashdoard')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <h2 style="text-align:center">Danh sách Sản Phẩm</h2>
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
            <table class="table table-bordered table-hover table-responsive">
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Giá</th>
                    <th style="text-align:center">Quản lý</th>
                </tr>
                @foreach($product as $item)
                <tr>
                    <td>{{$item->id}}</td>
                    <td>{{substr($item->name,0,25)}}..</td>
                    <td>{{$item->unit_price}}</td>
                    <td style="text-align:center"><a class="btn btn-info" href="{{route('show-product',$item->id)}}">Xem</a></td>
                </tr>
                @endforeach
            </table>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
@endsection
