<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>결제</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/windowpay.css" />
		
	</head>
	<body class="is-preload">
	<div id="wrapper" class="fade-in">
					<!-- Intro -->
					<!-- <div id="intro">
					</div> -->
<!-- Header -->
					<header id="header">
						<a href="index.html" class="logo">결제</a>
					</header>
				
					
							<div id="t3-content" class="t3-content col-xs-12">


							<div id="cart-view" class="cart-view" style="margin:auto; padding-top:20px; width:96%;">
					

						<form method="post" id="orderFrm" name="orderFrm" action="order_proc.php">
							<fieldset class="table-bordered">
								<table style="width:100%;">
								<tbody>
								<tr style="background-color: #eeeeee;">
									<th style="border:1px solid black;height:60px;color:black;padding-top:10px;text-align:center">이미지<br/>(image)</th>
									<th style="border:1px solid black;color:black;text-align:center;">상품명<br/>(product_nm)</th>
									<th style="border:1px solid black;color:black;text-align:center">수량<br/>(ea)</th>
									<th style="border:1px solid black;color:black;text-align:center">가격<br/>(price)</th>
									<th style="border:1px solid black;color:black;text-align:center">할인<br/>(discount)</th>
									<th style="border:1px solid black;color:black;text-align:center">합계<br/>(total)</th>
								</tr>
								<tr>
									<td style="border:1px solid black;width:10%;">
										<span><img src="images/photo12.JPG" width="144" height="81" style="margin-bottom:-10px;overflow:hidden;height:auto;"></span>

									</td>
									<td style="border:1px solid black;vertical-align:middle;font-size:16px;width:50%;"><a href="#">게임 상품 이름<br/></a></td>
									<td style="border:1px solid black;vertical-align:middle;font-size:16px;width:5%;">1</td>
									<td style="border:1px solid black;vertical-align:middle;font-size:16px;width:10%;">
										<div style="width:100%;">
											<span>40,500 원</span></div>

									</td>
									<td class="vm-cart-item-discount" style="border:1px solid black;vertical-align:middle;font-size:16px;width:10%;">
										<span>
											<!-- <div style="width:100%;"> -->
												<span>0 원</span>
										<!-- 	</div> -->
										</span>
									</td>
									<td style="border:1px solid black;vertical-align:middle;font-size:16px;width:10%;">
										<div style="width:100%;">
											<span>40,500 원</span>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="3" style="border:1px solid black;font-size:16px; padding-right:65%;"><span>합계</span></td>
									<td style="border:1px solid black;font-size:16px;"><span>40,500 원</span></td>
									<td style="border:1px solid black;font-size:16px;"><span>0 원</span></td>
									<td>
										<div>
											<span style="font-size:16px;">40,500 원</span>
										</div>
									</td>
								</tr>
								</tbody>
								</table>
							</fieldset>

							<div class="row" style="width:96%; margin:auto;padding-right:10px;height:300px;">
							<div style="margin-left:10px; background-color:#ffffff; width:100%; padding-right:40px;">
								<div class="col-md-6">

									<fieldset class="vm-fieldset-tos">
									<div class="cart tos" title="" style="border:1px solid black; margin-top:15px;height:265px;">
										<div style="background-color: #eeeeee; width:100%; padding:0; margin:0;">
											<span class="cart customer-note" style="font-size:16px;height:45px;line-height:45px;font-weight:bold;">최종결제 정보</span>
										</div>
										<div style="border:1px solid rgba(255,255,255,0.1);">
											<div style="height:60px;border-bottom:1px solid rgba(255,255,255,0.1);">
												<dl style="clear:both;width:100%;padding:10px">
													<dt style="float:left;width:90px;line-height:40px;font-size:16px;">상품금액</dt>
													<dd style="float:right;line-height:40px;font-size:16px;"><span class="PricebillTaxAmount">40,500 원</span></dd>
												</dl>
											</div>
											<div style="height:60px;border-bottom:1px solid rgba(255,255,255,0.1);">
												<dl style="clear:both;width:100%;padding:10px">
													<dt style="float:left;width:90px;line-height:40px;font-size:16px;">할인금액</dt>
													<dd style="float:right;line-height:40px;font-size:16px;"><span id="total_sale" data-sale="0">0</span> 원</dd>
												</dl>
											</div>
											<div style="height:60px;">
												<dl style="clear:both;width:100%;padding:10px">
													<dt style="float:left;width:90px;line-height:40px;font-size:16px;">결제예정액</dt>
													<dd style="float:right;line-height:40px;font-size:16px;"><span class="PricebillTotal" id="total_amount" data-total="40500">40,500 </span> 원</dd>
												</dl>
											</div>
										</div>
									</div>
									</fieldset>
								</div>
								<div class="col-md-6" style="border:1px solid black; padding:0; margin:0; margin-top:15px;">
									
									<div class="cart tos" title="" style="margin-top:10px; padding:0; margin:0">
										<div style="background-color: #eeeeee; width:100%;">
											<span class="cart customer-note" style="height:45px;line-height:45px;font-weight:bold;font-size:16px;">결제수단</span>
										</div>
										
										
											
												
												<input class="terms-of-service required" id="settlekind" type="checkbox" name="settlekind" value="SC0010">
													<label for="settlekind" style="font-size:16px;margin-top:10px;"><span class="vmicon">신용/체크카드 결제</span></label>
												
											
										
									</div>
									

									<div class="terms-of-service" style="padding-bottom:10px;">
									<input class="terms-of-service required" id="tos" type="checkbox" name="tos" value="1" checked="checked">
										<label for="tos" style="padding-bottom:10px;font-size:16px;">
											<span class="vmicon">구매하실 상품의 상품정보 및 가격을 확인하였으며, 이에동의합니다. <br/> (전자상거래법 제8조 제2항)</span>
										</label>
									</div>
									<div class="btn-pay">
										<button type="button" class="center" id="btn_settle">결제하기</button>
									</div>
								</div>
								</div>
							</div>

						</form>
						

					</div>
				</div>

		<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; plzWindow</li><li>Design: <a href="#">plzWindow</a></li></ul>
					</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/js/NonRefreshPageMove.js"></script>
	</div>
	</body>
</body>
</html>