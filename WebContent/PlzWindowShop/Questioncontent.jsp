<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>공지사항</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="assets/css/QnA.css" rel="stylesheet">
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
						<a href="index.html" class="logo">공지사항</a>
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li><a href="index.html">메인페이지</a></li>
							<li><a href="MainShop.jsp">상점</a></li>
							<li><a href="FreeBoard.jsp">자유게시판</a></li>
							<li class="active"><a href="Notice.jsp">고객지원</a></li>
						</ul>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<section id="searchboard">
							<header class="major">
								<h3 style="padding-top:27px;"></h3>
								<form class="navbar-form navbar-right" id="boardsearchform" role="search">
									<div class="form-group">
										<input type="text" class="form-control" id="boardsearch" placeholder="       검색어 입력">
									</div>
									<button type="button" class="btn btn-default" onclick="location.href='SearchResult.jsp'"><i class="fa fa-search"></i></button>
								</form>
							</header>
						</section>

<!--side Lists -->
<!-- <div class="row">
	<div class="col-md-3" id="gesilink">
		<li class="gogek">고객지원</li>
		<hr>
		<ul id="gesilink">

			<li><a href="#">공지사항</a></li>
			<li><a href="#">자주묻는질문</a></li>
			<li><a href="#">1:1문의하기</a></li>
		</ul>
	</div> -->

	
		
		<div class="row">
		<div class="col-md-3 panel panel-info " id="gesilink">
			<div class="panel-heading">
				<h3 class="panel-title">고객지원</h3>
			</div>
			<ul class="list-group">
				<li class="list-group-item"><a href="Notice.jsp">공지사항</a></li>
				<li class="list-group-item"><a href="QnA.jsp">자주묻는질문</a></li>
				<li class="list-group-item"><a href="Question.jsp">1:1문의하기</a></li>
			</ul>
		</div>

					<!-- 본문메뉴 -->
			<div class="col-md-9">
					<ul class="nav nav-tabs nav-justified" id="gesilink">
						  <li><a href="Notice.jsp">공지사항</a></li>
						  <li><a href="QnA.jsp">자주묻는질문</a></li>
						  <li class="active"><a href="Question.jsp">1:1문의하기</a></li>
					</ul>
		<br>
		
		
		<!-- Q&A -->

		<div class="panel-group" id="accordion">


			<aside class="article-aside clearfix">
											<dl class="article-info  muted">
												<dd class="createdby hasTooltip" itemprop="author" title="" data-original-title="Written by ">
													<i class="fa fa-user"></i>
													<span itemprop="name">작성자 : plz_Window</span>
													<span style="display: none;" itemprop="publisher" itemscope="" itemtype="https://schema.org/Organization">
													<span itemprop="logo" itemscope="" itemtype="https://schema.org/ImageObject">
														<img src="https://directg.net/images/common/dg_logo.png" alt="logo" itemprop="url">
														<meta itemprop="width" content="auto">
														<meta itemprop="height" content="auto">
														<meta itemprop="name" content="plz_Window">
													</span>
												</dd>
												<dd class="category-name hasTooltip" title="" data-original-title="코드 베인 - 시즌 패스 판매 안내 ">
													<i class="fa fa-folder-open"></i>
													<span itemprop="genre">공지</span>
												</dd>
												<dd class="published hasTooltip" title="" data-original-title="Published: ">
													<i class="fa fa-calendar"></i>
													<time datetime="2019-10-02 14:16:02" itemprop="datePublished">작성일 : 2019-10-02</time>
												</dd>
												<dd class="hits">
													<i class="fa fa-eye"></i>
													<meta itemprop="interactionCount" content="UserPageVisits:189">조회수 : 189												</dd>
											</dl>
										</aside>  
			

			<section class="article-intro clearfix" itemprop="articleBody">
											<div style="clear:both">
												<div>안녕하세요. plz_Window입니다.</div>
												<div><br></div>
												<div>2019년 10월 2일(수) < 코드 베인 - 시즌 패스 >의 판매 안내 말씀드립니다.</div>
												<div><br></div>
												<div><br></div>
												<div>
													<div><b>■ 코드 베인 - 시즌 패스</b><p>코드 베인&#39;의 추가 DLC 시즌 패스입니다. 새로운 강적이 기다리며, 
													무기나 흡혈아장을 얻을 수 있는 새로운 심층 필드가 추가되는 DLC 제1탄~제3탄을 세트 가격으로 구매하실 수 있습니다.<br><br><b>
													※ 추가 DLC 발매 예정 내용<br></b>
													■ 제1탄~제3탄 DLC<br><br>각 DLC에는 새로운 강적이 기다리며, 무기나 흡혈아장을 얻을 수 있는 새로운 필드와 동행하는 버디들의 어나더 
													컬러 버전, 주인공이 장비할 수 있는 블러드 코드가 세트로 포함됩니다.</p></div></div>											
												</div>
										</section>


						
						
						

<!-- Q&A마무리 -->			

				
			</div>	
		</div>
	
	</div>
	</div>
	
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

    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="assets/js/bootstrap.min.js"></script>
    </div>
	</body>
</html>