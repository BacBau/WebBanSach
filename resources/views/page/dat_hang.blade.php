@extends('master')
@section('content')	

<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Đặt hàng</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb">
					<a href="{{route('trang-chu')}}">Home</a> / <span>Đặt hàng</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
	<div class="container">
		<div id="content">
			
			<form action="{{route('dathang')}}" method="post" class="beta-form-checkout">
				<input type="hidden" name="_token" value="{{csrf_token()}}">
		        <span class="cart-total-value"><div  class="alert alert-success">
			        @if(Session::has('thongbao')){{Session::get('thongbao')}}@endif</div></span>
				<div class="row">
					<div class="col-sm-6">
						<h4>Thông tin khách hàng</h4>
						<div class="space20">&nbsp;</div>

						<div class="form-block">
							<label for="name">Tên khách hàng</label>
							<input type="text" id="name" name="name" placeholder="Nhập họ tên" required>
						</div>
						<div class="form-block">
							<label>Giới tính </label>
							<input id="gender" type="radio" class="input-radio" name="gender" value="nam" checked="checked" style="width: 10%"><span style="margin-right: 10%">Nam</span>
							<input id="gender" type="radio" class="input-radio" name="gender" value="nữ" style="width: 10%"><span>Nữ</span>
										
						</div>
					

						<div class="form-block">
							<label for="email">Email</label>
							<input type="email" id="email" name="email" required placeholder="Nhập mail">
						</div>

						<div class="form-block">
							<label for="address">Địa chỉ nhận hàng</label>
							<input type="text" id="address" name="address" placeholder="Nhập địa chỉ" required>
						</div>
						

						<div class="form-block">
							<label for="phone">Điện thoại</label>
							<input type="text" id="phone" name="phone" placeholder="Nhập số điện thoại" required>
						</div>
						
						<div class="form-block">
							<label for="notes">Ghi chú</label>
							<textarea id="notes" name="notes" placeholder="Nhập ghi chú"></textarea>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="your-order">
							<div class="your-order-head"><h5>Đơn hàng của bạn</h5></div>
							<div class="your-order-body" style="padding: 0px 10px">
								<div class="your-order-item">
									<div>
										@if(Session::has('cart'))
										@foreach($product_cart as $cart)
									<!--  one item	 -->
										<div class="media">
											<img width="25%" src="source/image/product/{{$cart['item']['image']}}" alt="" class="pull-left">
											<div class="media-body">
												<p class="font-large">{{$cart['item']['name']}}</p>
												<span class="color-gray your-order-info">Số lượng: {{$cart['qty']}}</span>
												<span class="color-gray your-order-info">Đơn giá: {{number_format($cart['item']['unit_price'])}} đ</span>
											</div>
										</div>
									<!-- end one item -->
									@endforeach
									@endif
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="your-order-item">
									<div class="pull-left"><p class="your-order-f18">Tổng tiền:</p></div>
									<div class="pull-right"><h5 class="color-black"> <span class="cart-total-value">@if(Session::has('cart')){{number_format($totalPrice)}}@else 0 @endif đ</span></h5></div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="your-order-head"><h5>Hình thức thanh toán</h5></div>
							
							<div class="your-order-body">
								<ul class="payment_methods methods">
									<li class="payment_method_bacs">
										<input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
										<label for="payment_method_bacs">Thanh toán khi nhận hàng </label>
										<div class="payment_box payment_method_bacs" style="display: block;">
											Cửa hàng sẽ gửi hàng đến địa chỉ của khách hàng, khách hàng kiểm tra hàng rồi vui lòng thanh toán cho nhân viên giao hàng !
										</div>						
									</li>

									<li class="payment_method_cheque">
										<input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="ATM" data-order_button_text="">
										<label for="payment_method_cheque">Chuyển khoản </label>
										<div class="payment_box payment_method_cheque" style="display: none;">
											Chuyển tiền đến tài khoản sau:
											<br>- STK    : 638 638 638 
											<br>- Chủ TK : Ngô Đại Bắc
											<br>- Ngân hàng Techcombank, Chi nhánh Hai Bà Trưng, Hà Nội
										</div>						
									</li>
									
								</ul>
							</div>

							<div class="text-center"><button type="submit"	 class="beta-btn primary" href="#">Đặt hàng <i class="fa fa-chevron-right"></i><button type=""></button></div>
						</div> <!-- .your-order -->
					</div>
				</div>
			</form>
		</div> <!-- #content -->
	</div> <!-- .container -->
@endsection