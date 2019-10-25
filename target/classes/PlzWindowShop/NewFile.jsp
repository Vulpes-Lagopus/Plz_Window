<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Massively by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	
	<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

<script type="text/javascript">
 function a(){
	 var xhttp = new XMLHttpRequest();
	 xhttp.open("GET", "fgame.jsp");
	 xhttp.onreadystatechange = function() {
	   if (xhttp.readyState == 4 && xhttp.status == 200) {
	     document.getElementById("Context").innerHTML = xhttp.responseText;
	   }
	 };
	 xhttp.send();
 }
 
 function b(){
	 var xhttp = new XMLHttpRequest();
	 xhttp.open("GET", "ngame.jsp");
	 xhttp.onreadystatechange = function() {
	   if (xhttp.readyState == 4 && xhttp.status == 200) {
	     document.getElementById("Context").innerHTML = xhttp.responseText;
	   }
	 };
	 xhttp.send();
 }
 function c(){
	 var xhttp = new XMLHttpRequest();
	 xhttp.open("GET", "qnatest.jsp");
	 xhttp.onreadystatechange = function() {
	   if (xhttp.readyState == 4 && xhttp.status == 200) {
	     document.getElementById("Context").innerHTML = xhttp.responseText;
	   }
	 };
	 xhttp.send();
 }



  </script>

	
	<body class="is-preload" onload="javascript:a();">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">

				<!-- Intro -->
					<div id="intro">
						<h1>Intro부분<br />
						Massively부분</h1>
						<p>이거슨 무료입니다. <a href="https://www.op.gg/summoner/userName=%ED%98%9C+%EC%A7%80+0">정라스전적보기</a>.</p>
						<ul class="actions">
							<li><a href="#searchbar" class="button icon solid solo fa-arrow-down scrolly">인기상품목록</a></li>
						</ul>
					</div>

				<!-- Header -->
					<header id="header">
						<!-- <a href="index.html" class="logo">메인페이지.</a> -->

					</header>
					<div id="searchbar" style="border: 2px solid white;" class="hidden">
							<a href="index.html" class="mainbutton"></a>
							<input type="text" placeholder="검색어 입력" class="searchtext">
							<a href="#" class="sbutton" >검색</a>
					</div>
					
					

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li class="active"><a href="index.html">메인페이지</a></li>
							<li><a href="MainShop.jsp">상점</a></li>
							<li><a href="elements.html">문의</a></li>
						</ul>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Reg</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Login</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
						</ul> 
					</nav>
				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<article class="post featured">
								필터
							</article>
						
					<!-- --------------------------------------------------------------------------------------------  -->
					</div>
					
					<!-- Intro -->
					<!-- <div id="intro">
					</div> -->
	<div id="Context">
				<!-- Header -->
	
					
					<nav id="nav" style="margin: 3rem auto 0 auto;">
							<ul class="links">
							<li class="active"><a href="javascript:a();">최신게임</a></li>
							<li><a href="javascript:b();">인기게임</a></li>
							<li><a href="javascript:c();">할인중인 게임</a></li>
						</ul>
						<!-- <ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
						</ul> -->
					</nav>
					
					<!-- Ajax를 이용한 페이지 새로고침 하지 않고 내용물 추가 -->
				
			</div>
<!-- 				<div id="main">
					-------------------------------------------------------------------------------------------- 
						Posts
							<section class="posts">
								<article>
									<header>
										<span class="date">출시일</span>
										<h2><a href="#">회사 이름<br />
										게임 타이틀 이름</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
									<p>게임에 대한 간략한 설명</p>
									<ul class="actions special">
										<li><a href="ContentPage.jsp" class="button">-상세 보기-</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 22, 2017</span>
										<h2><a href="#">Primis eget<br />
										imperdiet lorem</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic03.jpg" alt="" /></a>
									<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis magna etiam.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Full Story</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 18, 2017</span>
										<h2><a href="#">Ante mattis<br />
										interdum dolor</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic04.jpg" alt="" /></a>
									<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis magna etiam.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Full Story</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 14, 2017</span>
										<h2><a href="#">Tempus sed<br />
										nulla imperdiet</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a>
									<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis magna etiam.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Full Story</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 11, 2017</span>
										<h2><a href="#">Odio magna<br />
										sed consectetur</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic06.jpg" alt="" /></a>
									<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis magna etiam.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Full Story</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">April 7, 2017</span>
										<h2><a href="#">Augue lorem<br />
										primis vestibulum</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic07.jpg" alt="" /></a>
									<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis magna etiam.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Full Story</a></li>
									</ul>
								</article>
							</section>

						Footer
							<footer>
								<div class="pagination">
								<a href="#" class="previous">Prev</a>
									<a href="#" class="page active">1</a>
									<a href="#" class="page">2</a>
									<a href="#" class="page">3</a>
									<span class="extra">&hellip;</span>
									<a href="#" class="page">8</a>
									<a href="#" class="page">9</a>
									<a href="#" class="page">10</a>
									<a href="#" class="next">Next</a> 
								</div>
							</footer>

					</div>

				Footer
				 -->

				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
			
							</div>
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

	</body>
</html>