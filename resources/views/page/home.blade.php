@extends('master')
@section('content')
	<div class="fullwidthbanner-container">
		<div class="fullwidthbanner">
			<div class="bannercontainer" >
				<div class="banner" >
						<ul>
						@foreach($slide as $item)
							<!-- THE FIRST SLIDE -->
							<li data-transition="boxfade" data-slotamount="20" class="active-revslide" style="width: 100%; height: 100%; overflow: hidden; z-index: 18; visibility: hidden; opacity: 0;">
								<div class="slotholder" style="width:100%;height:100%;" data-duration="undefined" data-zoomstart="undefined" data-zoomend="undefined" data-rotationstart="undefined" data-rotationend="undefined" data-ease="undefined" data-bgpositionend="undefined" data-bgposition="undefined" data-kenburns="undefined" data-easeme="undefined" data-bgfit="undefined" data-bgfitend="undefined" data-owidth="undefined" data-oheight="undefined">
									<div class="tp-bgimg defaultimg" data-lazyload="undefined" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat" data-lazydone="undefined" src="source/image/slide/{{$item->image}}" data-src="source/image/slide/{{$item->image}}" style="background-color: rgba(0, 0, 0, 0); background-repeat: no-repeat; background-image: url('source/image/slide/{{$item->image}}'); background-size: cover; background-position: center center; width: 100%; height: 100%; opacity: 1; visibility: inherit;">
									</div>
								</div>
							</li>
						@endforeach
						</ul>
					</div>
				</div>
				<div class="tp-bannertimer"></div>
			</div>
		</div>
		<!--slider-->
	</div>
	<div class="container">
		<div id="content" class="space-top-none">
			<div class="main-content">
				<div class="space60">&nbsp;</div>
				<div class="row">
					<div class="col-sm-12">
						<h2>Bánh Mới</h3>
						<br>
						<div class="beta-products-list">
							@foreach($newprdct->chunk(3) as $products)
							<div class="row">
								@foreach($products as $item)
								<div class="col-sm-4">
									<div class="h-product single-item">
										<div class="ribbon-wrapper"><div class="ribbon sale">NEW</div></div>
										<div class="single-item-header">
											<a class="u-photo" href="{{route('chi-tiet',$item->slug)}}"><img src="source/image/product/{{$item->image}}" alt="" height="250" width="500"></a>
										</div>
										<div class="single-item-body">
											<p class="single-item-title"><h5>{{$item->name}}</h5></p>
											<p class="single-item-title"><h6>{{$item->location}}<h6></p>
											<p class="single-item-price">
												@if($item->promotion_price == 0)
													<span class="flash-sale">{{number_format($item->unit_price)}}</span>
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
							<div style"height:5%">&nbsp;</div>
							@endforeach
							<div class="row">{{$newprdct->links()}}</div>
						</div> <!-- .beta-products-list -->
						<h2>Bánh Đang Khuyến Mãi</h3>
						<br>
						<div class="beta-products-list">
							@foreach($saleprdct->chunk(3) as $products)
							<div class="row">
								@foreach($products as $item)
								<div class="col-sm-4">
									<div class="h-product single-item">
										<div class="ribbon-wrapper"><div class="ribbon sale">SALE</div></div>
										<div class="single-item-header">
											<a class="u-photo" href="{{route('chi-tiet',$item->slug)}}"><img src="source/image/product/{{$item->image}}" alt="" height="250" width="500"></a>
										</div>
										<div class="single-item-body">
											<p class="single-item-title"><h5>{{$item->name}}</h5></p>
											<p class="single-item-title"><h6>{{$item->location}}<h6></p>
											<p class="single-item-price">
												@if($item->promotion_price == 0)
													<span class="flash-sale">{{number_format($item->unit_price)}}</span>
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
							<div style"height:5%">&nbsp;</div>
							@endforeach
							<div class="row">{{$saleprdct->links()}}</div>
						</div> <!-- .beta-products-list -->
					</div>
				</div> <!-- end section with sidebar and main content -->
			</div> <!-- .main-content -->
		</div> <!-- #content -->

@endsection