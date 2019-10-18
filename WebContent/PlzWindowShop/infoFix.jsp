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

<title>정보수정</title>
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
			<li><a href="purchase.jsp">구매목록</a></li>
			<li><a href="Bascket.jsp">장바구니</a></li>
			<li class="active"><a href="infoFix.jsp">정보수정</a></li>
			<li><a href="withdrawal.jsp">회원탈퇴</a></li>
		</ul>
	</nav>
	<div id="main">
		<!-- //MAIN NAVIGATION -->
		<div class="body">
			<div class="container">
				<div class="row">
					<!-- MAIN CONTENT -->
					<div class="infoBox">
						<div class="loginCheck" style="margin:0px 5px -30px -25px">
							<div class="Header">
								<h3>비밀번호 확인</h3>
							</div>
						</div><!-- loginCheck -->
						<div class="login">
							<form name="mypageFrm" id="mypageFrm" method="post"
									  class="form-horizontal" style="border: 1px solid black; margin-left:-33px;">
								<fieldset style="border:1px solid black; padding-left:20px; padding-right:60px; padding-bottom:20px" >
									<div class="form-group">
										<div class="col-sm-12 control-label" style="padding:40px;">
											<label id="password-lbl" for="password" class="required" style="padding:0px;">
											비밀번호<span	class="star">&nbsp;*</span>
											</label>
										</div>
										<div class="col-sm-7">
												<input type="password" name="mem_password" id="mem_password" value=""
												          class="form-control required" size="15" maxlength="20"
														  required="" aria-required="true" style="border:1px solid black; padding:0px; color:black">
										</div>
										<div class="col-sm-5">
												<button type="submit" class="btn"  style="width:165px; height:65px; margin-left:-100px; margin-top:-2.5px;" 
															id="btn_pwd_chk">비밀번호 확인</button>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</div><!-- infoBox -->
				</div><!-- row -->
			</div><!-- container -->
		</div><!-- body -->
	</div><!-- main -->
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