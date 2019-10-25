<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
	color: black;
}

table.kblocktable tr th {
	background: rgba(255, 255, 255, 0.05);
	border-color: rgba(255, 255, 255, 0.1);
	padding: 10px 8px;
	border: solid rgba(255, 255, 255, 0.1) 1px;
	text-align: center;
	font-weight: bold;
}

#Kunena div.kblock .kcontainer .kblocktable tr td {
	padding-top: 10px;
	padding-bottom: 10px;
}

#Kunena div.kblock .kcontainer .kblocktable tr td a {
	color: rgba(255, 255, 255, 0.5);
}

#Kunena div.kblock div.kheader {
	padding: 0;
}
</style>

<title>구매목록</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/bootstrap-theme.css" />
<link rel="stylesheet" href="assets/css/Bascket.css" />

<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">
	<!-- Intro -->
	<!-- <div id="intro">
					</div> -->
	<!-- Header -->
	<header id="header">
		<a href="index.html"></a>
	</header>

	<nav id="nav">
		<ul class="links">
			<li class="active"><a href="purchase.jsp">구매목록</a></li>
			<li><a href="Bascket.jsp">장바구니</a></li>
			<li><a href="infoFix.jsp">정보수정</a></li>
			<li><a href="withdrawal.jsp">회원탈퇴</a></li>
		</ul>
	</nav>
	<div id="main">
		<!-- //MAIN NAVIGATION -->
		<div class="body">
			<div class="container">
				<div class="row">
					<!-- MAIN CONTENT -->
					<div id="t3-mainbody" class="wrap t3-mainbody">
						<div class="container">
							<div class="row">
								<!-- MAIN CONTENT -->
								<div id="t3-content" class="t3-content col-xs-12"
									style="padding-top: 0">
									<div id="system-message-container"></div>
									<h1 style="font-size: 30px">마이페이지</h1>
									<div id="Kunena" class="layout">

										<div class="kblock">
											<div class="kheader"
												style="height: 0; margin: 0; padding-top: 0px; border: 0"></div>
											<div class="kcontainer">
												<div class="kbody">
													<table class="kblocktable">
														<tbody>
															<tr style="height: 40px; line-height: 40px;">
																<th class="frst" style="width: 80px">결제번호</th>
																<th>상품명</th>
																<th style="width: 100px">결제수단</th>
																<th style="width: 100px">결제금액</th>
																<th style="width: 180px">주문일자</th>
																<th style="width: 100px">결제상태</th>
															</tr>
															<tr class="krow2">
																<td class="kcol-mid"><a
																	href="mypage_order_view_v2.html?settle_no=1569502045021" style="color:black">1569502045021</a>
																</td>
																<td class="kcol-mid">인디비지블 외 1건</td>
																<td class="kcol-mid">실시간 계좌이체</td>
																<td class="kcol-mid" style="text-align: right">122,000원</td>
																<td class="kcol-mid text-center" style="color:black">2019-09-26
																	21:49:50</td>
																<td class="kcol-mid">결제완료</td>
																
															</tr>
															<tr class="krow2">
																<td class="kcol-mid"><a
																	href="mypage_order_view.html?settle_no=1503290307218" style="color:black">1503290307218</a>
																</td>
																<td class="kcol-mid">토탈 워: 워해머 2</td>
																<td class="kcol-mid">실시간 계좌이체</td>
																<td class="kcol-mid" style="text-align: right">52,430원</td>
																<td class="kcol-mid text-center" style="color:black">2017-08-21
																	13:40:37</td>
																<td class="kcol-mid">결제완료</td>
																
															</tr>
															<tr class="krow2">
																<td class="kcol-mid"><a
																	href="mypage_order_view.html?settle_no=1476858146472" style="color:black">1476858146472</a>
																</td>
																<td class="kcol-mid">[음성&#38;자막 한글] 시드 마이어의 문명 VI -
																	디지털 디럭스 에디션</td>
																<td class="kcol-mid">신용카드</td>
																<td class="kcol-mid" style="text-align: right">77,500원</td>
																<td class="kcol-mid text-center" style="color:black">2016-10-19
																	15:25:41</td>
																<td class="kcol-mid">결제완료</td>
																
															</tr>
															<tr class="krow2">
																<td class="kcol-mid"><a
																	href="mypage_order_view.html?settle_no=P1811726"  style="color:black">P1811726</a>
																</td>
																<td class="kcol-mid">토탈 워: 워해머</td>
																<td class="kcol-mid">실시간 계좌이체</td>
																<td class="kcol-mid" style="text-align: right">55,000원</td>
																<td class="kcol-mid text-center" style="color:black">2016-05-24
																	17:49:00</td>
																<td class="kcol-mid">결제완료</td>
																
															</tr>
															<tr class="krow2">
																<td class="kcol-mid"><a
																	href="mypage_order_view.html?settle_no=P1621467" style="color:black">P1621467</a>
																</td>
																<td class="kcol-mid">폴아웃 4 시즌 패스 외 1건</td>
																<td class="kcol-mid">실시간 계좌이체</td>
																<td class="kcol-mid" style="text-align: right">83,700원</td>
																<td class="kcol-mid text-center" style="color:black">2016-02-21
																	16:24:15</td>
																<td class="kcol-mid">결제완료</td>
																
															</tr>
															<tr class="krow2">
																<td class="kcol-mid"><a
																	href="mypage_order_view.html?settle_no=P1144580" style="color:black">P1144580</a>
																</td>
																<td class="kcol-mid">에보랜드 2</td>
																<td class="kcol-mid">실시간 계좌이체</td>
																<td class="kcol-mid" style="text-align: right">22,000원</td>
																<td class="kcol-mid text-center" style="color:black">2015-10-02
																	20:12:06</td>
																<td class="kcol-mid">결제완료</td>
																
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="pagination" style="clear: both; text-align: center">
										<nav>
											<ul class="pagination">
												<li class="disabled"><a href='javascript:return false'>«</a></li>
												<li class='active'><a href='#'>1</a></li>
												<li class="disabled"><a href='javascript:return false'>»</a></li>
											</ul>
										</nav>
									</div>

								</div>
							</div>
							<!-- row -->
						</div>
						<!-- container -->
					</div>
					<!-- body -->
				</div>
				<!-- main -->
				<!-- --------------------------------------------------------------------------------------------  -->
				<!-- Copyright -->
				<!-- footer -->
				<footer>
					<div id="copyright">
						<ul>
							<li>&copy;PlzWindow</li>
							<li></li>
						</ul>
					</div>
				</footer>
				<!-- footer -->

				<!-- Scripts -->
				<script src="assets/js/jquery.min.js"></script>
				<script src="assets/js/jquery.scrollex.min.js"></script>
				<script src="assets/js/jquery.scrolly.min.js"></script>
				<script src="assets/js/browser.min.js"></script>
				<script src="assets/js/breakpoints.min.js"></script>
				<script src="assets/js/util.js"></script>
				<script src="assets/js/main.js"></script>
</body>
</body>
</html>