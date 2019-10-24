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
		<link rel="stylesheet" href="PlzWindowShop/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="PlzWindowShop/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="assets/css/QnA.css" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
		<link href="assets/css/notice.css" rel="stylesheet">
	
		<link rel="stylesheet" href="PlzWindowShop/assets/css/QnA.css" />
		<link rel="stylesheet" href="PlzWindowShop/assets/css/notice.css" />
	
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
				<li class="list-group-item"><a href="/Plz_Windows/question.do">1:1문의하기</a></li>
			</ul>
		</div>

					<!-- 본문메뉴 -->
			<div class="col-md-9">
					<ul class="nav nav-tabs nav-justified" id="gesilink">
						  <li><a href="Notice.jsp">공지사항</a></li>
						  <li><a href="QnA.jsp">자주묻는질문</a></li>
						  <li class="active"><a href="/Plz_Windows/question.do">1:1문의하기</a></li>
					</ul>
		<br>
		
		
		<!-- Q&A -->

		<div class="panel-group" id="accordion">


			<aside class="article-aside clearfix">
											<dl class="article-info  muted">
												<dd class="createdby hasTooltip" itemprop="author" title="" data-original-title="Written by ">
												<h5>제목:  ${article.subject}</h5>
												<hr>
													<i class="fa fa-user"></i>
													<span itemprop="name">작성자 : ${article.writer}</span>
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
													<span itemprop="genre">문의</span>
												</dd>
												<dd class="published hasTooltip" title="" data-original-title="Published: ">
													<i class="fa fa-calendar"></i>
													<time datetime="2019-10-02 14:16:02" itemprop="datePublished">작성일 : ${article.reg_date}</time>
												</dd>
												<dd class="hits">
													<i class="fa fa-eye"></i>
													<meta itemprop="interactionCount" content="UserPageVisits:189">조회수 : ${article.readcount}</dd>
											</dl>
										</aside>  
			

			<section class="article-intro clearfix" itemprop="articleBody">
											<div style="clear:both">
												<div>
												${article.content}
												</div>											
												</div>
												
												<div class="pagination" style="float:right;">
													<a href="/Plz_Windows/writeForm.do?num=${article.num}&ref=${article.ref}&re_step=${article.re_step}&re_level=${article.re_level}" class="page">답글</a>
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