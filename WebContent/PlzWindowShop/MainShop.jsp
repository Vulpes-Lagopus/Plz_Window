<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>상품 정렬</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/orderbyshop.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		
	</head>
	
	<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
	<script>
      $(document).ready( function() {
        $( '.filterbutton' ).click( function() {
          $( '.filtercontent' ).toggle( 'slow' );
        });
      });
    </script>
	

<script type="text/javascript">
 

$(document).ready(function(){
	a();
})

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
							<a href="SearchResultTotal.jsp" class="sbutton" >검색</a>
					</div>
					
					

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li><a href="index.html">메인페이지</a></li>
							<li class="active"><a href="MainShop.jsp">상점</a></li>
							<li><a href="FreeBoard.jsp">자유게시판</a></li>
							<li><a href="Notice.jsp">고객지원</a></li>
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
								<div class="filtersize">
									<p class="filterbutton"> 필터</p>
      							</div>
      							<div class="filtercontent">
      							<div style="margin-left:16px;">
	      							<div class="selectorder">
	      								<span class="subname">정렬순</span>
	      								<select name="orderchoose" id="orderchoose" class="form-control inputbox">
	      									<option value="">:::정렬순 선택:::</option>
	      									<option value="opendate" >출시일순</option>
											<option value="priceup" >높은가격순</option>
											<option value="pricedown">낮은가격순</option>
											<option value="salepercent" >할인율순</option>
	      								</select>
	      							</div>
	      							
	      							<div class="selectorder" style="margin-left:12px;">
	      								<span class="subname">장르</span>
	      								<select name="orderchoose" id="orderchoose" class="form-control inputbox">
	      									<option value="">:::장르 선택:::</option>
	      									<option value="1" >액션</option>
											<option value="2" >어드벤쳐</option>
											<option value="3" >레이싱/스포츠</option>
											<option value="4" >롤플레잉</option>
											<option value="5" >슈팅/FPS</option>
											<option value="6" >퍼즐</option>
											<option value="7" >시뮬레이션</option>
											<option value="8" >기타</option>
											<option value="9" >전략</option>
											<option value="10" >액션/RPG</option>
											<option value="11" >액션/어드벤쳐</option>
											<option value="12" >스포츠</option>
											<option value="13" >슈팅/액션/RPG</option>
											<option value="14" >액션/시뮬레이션</option>
											<option value="15" >전략/시뮬레이션</option>
	      								</select>
	      							</div>
	      							
	      							<div class="selectorder">
	      								<span class="subname">플랫폼</span>
	      								<select name="orderchoose" id="orderchoose" class="form-control inputbox">
	      									<option value="">:::플랫폼 선택:::</option>
	      									<option value="16" >Bethesda</option>
											<option value="17" >Epic</option>
											<option value="18" >Rockstar Warehouse</option>
											<option value="19" >Steam</option>
											<option value="20" >Uplay</option>
											<option value="21" >기타</option>
	      								</select>
	      							</div>
	      							</div>
	      							<div style="margin:0; padding:0">
	      							<div class="selectorder" style="margin-left:110px;">
	      								<span class="subname">제조사</span>
	      								<select name="orderchoose" id="orderchoose" class="form-control inputbox">
	      									<option value="">:::제조사 선택:::</option>
	      									<option value="22" >1C Online Games Ltd.</option>
											<option value="23" >2K</option>
											<option value="24" >34BigThings srl</option>
											<option value="25" >505 Games</option>
											<option value="26" >Amanita Design</option>
											<option value="27" >Arc System Works</option>
	      								</select>
	      							</div>
	      							
	      							<div class="selectorder" style="padding-left:0px;">
	      								<span class="subname">언어</span>
	      								<select name="orderchoose" id="orderchoose" class="form-control inputbox">
	      									<option value="">:::언어 선택:::</option>
	      									<option value="한국어" >한국어</option>
											<option value="영어" >영어</option>
											<option value="기타" >기타</option>
	      								</select>
	      							</div>
	      							<button type="submit" id="btn-search" onclick="sub()">검색</button>
      								</div>
      								
      							</div>
							</article>
						
					<!-- --------------------------------------------------------------------------------------------  -->
					</div><p>
					
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