<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
table.kblocktable tr th {
    background: rgba(255,255,255,0.05);
    border-color: rgba(255,255,255,0.1);
    padding: 10px 8px;
	 border: solid rgba(255,255,255,0.1) 1px;
	 text-align:center;
	 font-weight:bold;
}

#Kunena div.kblock .kcontainer .kblocktable tr td{
	padding-top:10px;
	padding-bottom:10px;
	
}

#Kunena div.kblock .kcontainer .kblocktable tr td a{
	color:rgba(255,255,255,0.5);
}

#Kunena div.kblock div.kheader{
	padding:0;
}
</style>
<title>장바구니</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/Bascket.css" />
<link rel="stylesheet" href="assets/css/bootstrap-theme.css" />
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
			<li><a href="purchase.jsp">구매목록</a></li>
			<li class="active"><a href="Bascket.jsp">장바구니</a></li>
			<li><a href="infoFix.jsp">정보수정</a></li>
			<li><a href="withdrawal.jsp">회원탈퇴</a></li>
		</ul>
	</nav>
	<div id="main">
		<!-- //MAIN NAVIGATION -->
		<div id="t3-mainbody" class="wrap t3-mainbody">
			<div class="container">
				<div class="row">
					<!-- MAIN CONTENT -->
					<div id="t3-content" class="t3-content col-xs-12">
						<div id="system-message-container"></div>

						<div id="cart-view" class="cart-view" style="padding-top: 20px">
							<div class="vm-cart-header-container">
								<div class="width50 floatleft vm-cart-header">
									<h1 style="font-size: 18px; font-weight: bold">장바구니</h1>
									<div class="payments-signin-button"></div>
								</div>
								<div class="width50 floatleft right vm-continue-shopping">
									<a class="continue_link" href="#">계속
										쇼핑하기</a>
								</div>
								<div class="clear"></div>
							</div>


							<table width=80% border=0 cellspacing=0 cellpadding=0
								align=center>
								<tr valign=middle bgcolor=#556b2f>
									<td height=25 align=center class=menu style="color:black">::::: 장바구니
										:::::</td>
									</td>
								</tr>
							</table>
							<br>
							<table align=center border=1 width=80% cellspacing=0
								bordercolordark=#FFFFFF bordercolorlight=#4682b4 style="color:black">
								<tr>
									<td width=290 height=25 bgcolor=#4682b4 align=center class=t1><font
										color=#FFFFFF>상품명</font></td>
									<td width=112 height=25 bgcolor=#4682b4 align=center class=t1><font
										color=#FFFFFF>수량</font></td>
									<td width=166 height=25 bgcolor=#4682b4 align=center class=t1><font
										color=#FFFFFF>가격</font></td>
									<td width=50 height=25 bgcolor=#4682b4 align=center class=t1><font
										color=#FFFFFF>비고</font></td>
								</tr>
								<tr>
									<td width=290 height=26 align=center class=t1>풋볼 매니저 2020</td>
									<td width=112 height=26 align=center class=t1>1</td>
									<td width=166 height=26 align=center class=t1>54,000</td>
									<td width=50 height=26 align=center class=t1><a
										href=DeleteItemServlet?dogName=bigle class=m1>삭제</a></td>
								</tr>
								<tr>
									<td width=290 height=26 align=center class=t1>아우터 월드</td>
									<td width=112 height=26 align=center class=t1>1</td>
									<td width=166 height=26 align=center class=t1>63,000</td>
									<td width=50 height=26 align=center class=t1><a
										href=DeleteItemServlet?dogName=dalma class=m1>삭제</a></td>
								</tr>
								<tr>
									<td width=290 height=26 align=center class=t1>WWE 2K20</td>
									<td width=112 height=26 align=center class=t1>2</td>
									<td width=166 height=26 align=center class=t1>108,000</td>
									<td width=50 height=26 align=center class=t1><a
										href=DeleteItemServlet?dogName=pug class=m1>삭제</a></td>
								</tr>
								<tr>
									<td width=290 height=26 align=center class=t1>인디비지블</td>
									<td width=112 height=26 align=center class=t1>1</td>
									<td width=166 height=26 align=center class=t1>40,500</td>
									<td width=50 height=26 align=center class=t1><a
										href=DeleteItemServlet?dogName=pekiniz class=m1>삭제</a></td>
								</tr>
								<tr>
									<td width=640 colspan=4 height=26 class=t1>
										<p align=right>
											<font color=#FF0000>총 금액 : 265,500 원</font>
										</p>
									</td>
								</tr>
							</table>
							<p align=center>
								<button>구매하기</button>&nbsp;&nbsp;
								<button
									href=# class=m1>전체 삭제</button>
									&nbsp;&nbsp;<button
									href=# class=m1>계속 쇼핑하기</button>
							</p>
						</div>
						<!-- //MAIN CONTENT -->
					</div>
				</div>
			</div>
			<!-- --------------------------------------------------------------------------------------------  -->
			<!-- Copyright -->
			<!-- footer -->
			<footer>
				<div id="copyright">
					<ul>
						<li>&copy; Untitled</li>
						<li></li>
					</ul>
				</div>
			</footer>
			<!-- footer -->
		</div>
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