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
		<title>1:1문의 글작성</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="assets/css/questionwrite2.css" rel="stylesheet">
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
						<a href="index.html" class="logo">Home</a>
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

							<!-- headerForm -->

							<header class="major">
							<div id="text1">
								<h3>1:1문의하기</h3>
								</div>
							</header>


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

	
		<div id="beforeWrite" style="text-align:right; margin:10px 65px 0px 0px; padding:0px;"><a href="Question.jsp">목록으로 돌아가기</a></div>
		<div class="row" style="border-style:none;">	
		<div class="col-md-3 panel panel-info " id="gesilink" style="border: solid 1px #BDBDBD;">
			<div class="panel-heading">
				<h3 class="panel-title">고객지원</h3>
			</div>
			<ul class="list-group">
				<li class="list-group-item"><a href="Notice.jsp">공지사항</a></li>
				<li class="list-group-item"><a href="QnA.jsp">자주묻는질문</a></li>
<!-- 				<li class="list-group-item"><a href="Question.jsp">1:1문의하기</a></li> -->
			</ul>
		</div>

					<!-- 본문메뉴 글작성하기 -->
			<div class="col-md-9" >
	<form method="post" class="writeform" action="writePro.jsp" onsubmit = "return writeSave()">
	<table class="writeFormTable">
	 
    <tr>
    <td width="20%"  bgcolor="#A6A6A6" align="center" style="padding:0; font-size:16px; vertical-align:middle; border:1px solid black;">문의유형</td>
	<td>
		<select name="QeustionType" style="width:550px; height:35px;">
			<option selected value="문의유형을 선택해주세요">문의유형을 선택해주세요</option>
			<option value="상품문의">상품문의</option>
			<option value="주문 및 결제문의">"주문 및 결제문의"</option>
			<option value="주문취소 및 환불">주문취소 및 환불</option>
			<option value="기타문의">기타문의</option>
		</select>
	</td>
    </tr>
	   
	  <tr>
	    <td width="20%"  bgcolor="#A6A6A6" align="center" style="padding:0; font-size:16px; vertical-align:middle; border:1px solid black;">제 목</td>
	    <td width="80%" style="border:1px solid black;">
	       <input type="text" size="70" maxlength="50" name="subject" id="writeinput" style="width:550px; height:35px;"></td>
	  </tr>
	  
	  <tr>
	    <td width="20%"  bgcolor="#A6A6A6" align="center" style="padding:0; font-size:16px; vertical-align:middle; border:1px solid black;">내 용</td>
	    <td width="80%" style="border:1px solid black;">
	     <textarea  rows="18" cols="10" id="writecontent" style=" width:550px; height:300px;"></textarea> </td>
	  </tr>
	  
	  <tr id="attached">
	    <td width="20%"  bgcolor="#A6A6A6" align="center" style="padding:0; font-size:16px; vertical-align:middle; border:1px solid black;">파일첨부</td>
	    <td width="80%" style="border:1px solid black;">
	    <input type="file" value="1" name="atta_file" />
	     </td>
	  </tr>
	  
	<tr>      
	 <td colspan=2 bgcolor="#A6A6A6" align="center" style="border:1px solid #5D5D5D;"> 
	  <button type="button" id="btn_goback" OnClick="window.location='Question.jsp'">목록보기</button>
	  <button type="reset" id="btn_reset">다시작성</button>
	  <button type="submit" id="btn_submit">글쓰기</button>
	</td></tr></table>
</form>	

					
		<!-- 1:1문의하기-->


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