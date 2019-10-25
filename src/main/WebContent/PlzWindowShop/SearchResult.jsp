
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/SearchResult.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

</head>

<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

<script type="text/javascript">
	function a() {
		var xhttp = new XMLHttpRequest();
		xhttp.open("GET", "fgame.jsp");
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				document.getElementById("Context").innerHTML = xhttp.responseText;
			}
		};
		xhttp.send();
	}

	function b() {
		var xhttp = new XMLHttpRequest();
		xhttp.open("GET", "ngame.jsp");
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				document.getElementById("Context").innerHTML = xhttp.responseText;
			}
		};
		xhttp.send();
	}
	function c() {
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




<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

		<!-- Intro -->
		<!-- 	<div id="intro">
						<h1>Intro부분<br />
						Massively부분</h1>
						<p>이거슨 무료입니다. <a href="https://www.op.gg/summoner/userName=%ED%98%9C+%EC%A7%80+0">정라스전적보기</a>.</p>
						<ul class="actions">
							<li><a href="#header" class="button icon solid solo fa-arrow-down scrolly">인기상품목록</a></li>
						</ul>
					</div> -->

		<!-- Header -->
		<header id="header">
			<!-- <a href="index.html" class="logo">메인페이지.</a> -->

		</header>
		<div id="searchbar" style="border: 2px solid white;">
			<a href="index.html" class="mainbutton"></a> <input type="text"
				placeholder="검색어 입력" class="searchtext"> <a href="SearchResultTotal.jsp"
				class="sbutton">검색</a>
		</div>




		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li><a href="index.html">메인페이지</a></li>
				<li><a href="MainShop.jsp">상점</a></li>
				<li><a href="FreeBoard.jsp">자유게시판</a></li>
				<li><a href="Notice.jsp">고객지원</a></li>
			</ul>
			<ul class="icons">
				<li><a href="#" class="icon brands fa-twitter"><span
						class="label">Reg</span></a></li>
				<li><a href="#" class="icon brands fa-facebook-f"><span
						class="label">Login</span></a></li>
				<li><a href="#" class="icon brands fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon brands fa-github"><span
						class="label">GitHub</span></a></li>
			</ul>
		</nav>


		<!-- Intro -->
		<!-- <div id="intro">
					</div> -->

		<div id="main3">
			<!-------------------------------------------------------------------------------------------- 
						Posts -->
			<!-- 각 게시판 별로 검색결과 5개의 항목 표시 하기 -->
			<h2 style="align: center;">[해당] 게시판 검색 결과 (총: 개의 게시글 발견)</h2>
			<section class="sresult">
				<article>
					<h2>
						<a href="#">검색된 게시판 명</a>
					</h2>
					<header>
						<h3>
							<a href="#">검색 결과명</a>
						</h3>
					</header>
					<a href="#" class="image fit">검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다.
						검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다. 검색결과
						내용입니다.검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다.</a>
					<ul class="actions special">
						<li><a href="ContentPage.jsp" class="button">-상세 보기-</a></li>
					</ul>
				</article>
				<article>
					<header>
						<h3>
							<a href="#">검색 결과명</a>
						</h3>
						<span class="date">작성 일자 :April 18, 2017</span>
					</header>
					<a href="#" class="image fit">검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다.
						검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다.검색결과 내용입니다. 검색결과
						내용입니다.검색결과 내용입니다.</a>
					<ul class="actions special">
						<li><a href="ContentPage.jsp" class="button">-상세 보기-</a></li>
					</ul>
				</article>
			</section>




			<footer>
				<div class="pagination">
					<a href="#" class="previous">Prev</a> <a href="#"
						class="page active">1</a> <a href="#" class="page">2</a> <a
						href="#" class="page">3</a> <span class="extra">&hellip;</span> <a
						href="#" class="page">8</a> <a href="#" class="page">9</a> <a
						href="#" class="page">10</a> <a href="#" class="next">Next</a>
				</div>
			</footer>
		</div>

		<!-- 	Footer
				 -->
		-->
		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; PlzWindow</li>
				<li>Design: <a href="#">PlzWindow</a></li>
			</ul>

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