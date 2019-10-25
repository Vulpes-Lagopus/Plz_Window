<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>login</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="assets/css/Login.css" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
		<link href="assets/css/notice.css" rel="stylesheet">
	
	<style>
	.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, 
	.col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, 
	.col-xs-3, .col-sm-3, .col-md-3, .col-lg-3,
	.col-xs-4, .col-sm-4, .col-md-4, .col-lg-4,
	.col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, 
	.col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, 
	.col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, 
	.col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, 
	.col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, 
	.col-xs-10,.col-sm-10, .col-md-10, .col-lg-10,
	.col-xs-11,.col-sm-11, .col-md-11, .col-lg-11, 
	.col-xs-12,.col-sm-12, .col-md-12, .col-lg-12 {
	/* 
	border:3px solid gray;
	padding:10px;
	기존의 부트스트랩의 그리드에 해당하는 스타일클래스선택자를 내용을 변경 */
	

	}
	</style>
	
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.html" class="logo">Home으로 돌아가기</a>
					</header>

				<!-- Nav -->
										<nav id="nav">
						<ul class="links">
							<li><a href="index.html">메인페이지</a></li>
							<li><a href="MainShop.jsp">상점</a></li>
							<li><a href="FreeBoard.jsp">자유게시판</a></li>
							<li><a href="Notice.jsp">고객지원</a></li>
						</ul>
						<ul class="icons">
							<li><a href="Register.jsp" class="reg"><span class="label"></span></a></li>
							<li  class="active"><a href="login.jsp" class="login"><span class="label"></span></a></li>
							<!-- <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li> -->
						</ul> 
					</nav>

		<!-- Main -->

		<div id="main">
			<div id="posts">
					<form id="log-1">
						<div id="mar-p">
							<br>
							<span class="login1"> Account Login </span> <br><br><br>
							<span class="txt1">Username</span>
							<div class="wrap-input100" data-validate="Username is required">
								<input class="input100-input" type="text" name="username" style="color:black;>
								<span class="focus-input100"></span>
							</div>
						</div><!-- id="mar-p"  -->

						<div id="mar-p">
						<span class="txt1">Password</span>
							<div class="wrap-input100 validate" data-validate="Password is required">
							<span class="btn-show-pass"><i class="fa fa-eye"></i></span> 
							<input class="input100-input" type="password" name="pass" style="color:black;">
							</div>
						</div><!-- id="mar-p"  -->	
						<br>

						<div id="flex">
							<div class="form-checkbox">
								<input type="checkbox" class="input-checkbox1" style="width:5px; height:5px; color:black;"> 
									<label></label><span class="label-checkbox2"> Remember me</span>	</label>				
									<a href="#" class="txt3"> Forgot Password? </a>
							</div>
							<div id="container-btn">
								<button class="form-btn"> Login</button>
							</div>		
						</div>	<!-- flex -->
					</form>
			</div><!-- posts -->
		</div><!-- main -->


		<div id="dropDownSelect1"></div>
	
	</div><!-- wrapper -->
		
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>