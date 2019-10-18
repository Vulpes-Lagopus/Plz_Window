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
		<title>문의하기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="assets/css/QnA.css" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
		<link href="assets/css/notice.css" rel="stylesheet">
		<link href="assets/css/questionwrite.css" rel="stylesheet">
	
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
						<a href="index.html" class="logo">자유게시판</a>
					</header>

				<!-- Nav -->
					<nav id="nav">
						<ul class="links">
							<li><a href="index.html">메인페이지</a></li>
							<li><a href="MainShop.jsp">상점</a></li>
							<li class="active"><a href="FreeBoard.jsp">자유게시판</a></li>
							<li><a href="Notice.jsp">고객지원</a></li>
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
								<h3 style="padding-top:27px;">문의하기</h3>
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
				<h3 class="panel-title">자유게시판</h3>
			</div>
			<ul class="list-group">
				<li class="list-group-item"><a href="Notice.jsp">자유게시판</a></li>
				<li class="list-group-item"><a href="QnA.jsp">-----</a></li>
				<li class="list-group-item"><a href="Question.jsp"></a></li>
			</ul>
		</div>

					<!-- 본문메뉴 -->
			<div class="col-md-9">
					<ul class="nav nav-tabs nav-justified" id="gesilink">
						  <li class="active"><a href="Notice.jsp">자유게시판</a></li>
						  <li><a href="QnA.jsp">---</a></li>
						  <li><a href="Question.jsp">----</a></li>
					</ul>
		<br>
		
		
		<!-- Q&A -->

		<div class="panel-group" id="accordion">

			
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center" class="questiontable"> 
    <tr height="30" bgcolor="#b0e0e6"> 
      <td align="center"  width="50"  >번 호</td> 
      <td align="center"  width="250" >제   목</td> 
      <td align="center"  width="100" >작성자</td>
      <td align="center"  width="150" >작성일</td> 
      <td align="center"  width="50" >조 회</td>
    </tr>
   <tr height="30">
    <td align="center"  width="50" >1</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           상품관련 문의합니다.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">홍길동</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
  <tr height="30">
    <td align="center"  width="50" >2</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           문의합니다2.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">java</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
  <tr height="30">
    <td align="center"  width="50" >3</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           문의합니다3.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">java</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
  <tr height="30">
    <td align="center"  width="50" >4</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           문의합니다4.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">java</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
  <tr height="30">
    <td align="center"  width="50" >5</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           문의합니다5.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">java</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
  <tr height="30">
    <td align="center"  width="50" >6</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           문의합니다6.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">java</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
  <tr height="30">
    <td align="center"  width="50" >7</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           문의합니다7.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">java</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
  <tr height="30">
    <td align="center"  width="50" >8</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           문의합니다8.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">java</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
  <tr height="30">
    <td align="center"  width="50" >9</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           문의합니다9.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">java</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
  <tr height="30">
    <td align="center"  width="50" >10</td>
    <td  width="250" >          
      <a href="content.jsp?num=3&pageNum=1">
           문의합니다10.</a> 
     </td>
    <td align="center"  width="100"> 
       <a href="mailto:nup49rok1@empal.com">java</a></td>
    <td align="center"  width="150">2007/11/22</td>
    <td align="center"  width="50">5</td>
  </tr>
</table>
<div class="btnWrite">
	<button id="btn_write" onclick="location.href='QuestionWrite2.jsp'">글쓰기</button>
</div>
						<center>
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
							</center>

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
			<script src="assets/js/NonRefreshPageMove.js"></script>

    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="assets/js/bootstrap.min.js"></script>
    </div>
	</body>
</html>