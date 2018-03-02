@extends('master')
@section('content')
<div class="container">
		<div id="content" class="space-top-none">
			<div class="main-content">
				<div class="space60">&nbsp;</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="beta-products-list">
							<h4>Tìm kiếm</h4>
							<div class="beta-products-details">
								<p class="pull-left">{{count($products)}} kết quả</p>
								<div class="clearfix"></div>
							</div>
							@foreach($products->chunk(3) as $row)
							<div class="row">
								@foreach($row as $item)
								<div class="col-sm-4">
								<div class="single-item">
									@if($item->promotion_price != 0)
									<div class="ribbon-wrapper"><div class="ribbon sale">SALE</div></div>
									@endif
									<div class="single-item-header">
										<a href="{{route('chi-tiet',$item->id)}}"><img src="source/image/product/{{$item->image}}" alt="" height="250px"></a>
									</div>
									<div class="single-item-body">
										<p class="single-item-title">{{$item->name}}</p>
										<p class="single-item-price">
											@if($item->promotion_price == 0)
												<span>{{number_format($item->unit_price)}}</span>
											@else
												<span class="flash-del">{{number_format($item->unit_price)}}</span>
												<span class="flash-sale">{{number_format($item->promotion_price)}}</span>
											@endif
										</p>
									</div>
									<div class="single-item-caption">
										<a class="add-to-cart pull-left" href="{{route('nha-dat-quan-tam',$item->id)}}"><i class="fa fa-shopping-cart"></i></a>
										<a class="beta-btn primary" href="{{route('chi-tiet',$item->slug)}}">Chi tiết <i class="fa fa-chevron-right"></i></a>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
								@endforeach
							</div>
							<br><br>
							@endforeach
							<div class="row">{{$products->appends(Request::only('tu-khoa'))->links()}}</div>
						</div> <!-- .beta-products-list -->
					</div>
				</div> <!-- end section with sidebar and main content -->
			</div> <!-- .main-content -->
		</div> <!-- #content -->

@endsection