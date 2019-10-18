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
		<title>정보수정</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="assets/css/memberupdate.css" rel="stylesheet">
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
							<li><a href="Notice.jsp">고객지원</a></li>
							<li class="active"><a href="Notice.jsp">마이페이지</a></li>
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
								<h3 style="padding-top:27px;">내 정보 수정</h3>
							
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
				<h3 class="panel-title">마이페이지</h3>
			</div>
			<ul class="list-group">
				<li class="list-group-item"><a href="#">구매목록</a></li>
				<li class="list-group-item"><a href="#">장바구니</a></li>
				<li class="list-group-item"><a href="#">정보수정</a></li>
				<li class="list-group-item"><a href="#">회원탈퇴</a></li>
			</ul>
		</div>

					<!-- 본문메뉴 -->
			<div  class="col-md-9">

		<!-- 회원정보수정 -->
		<div id="memberUpdate" >
	<form name="write_form_member" method="post">
   <table style="padding:0 0 0 65px;">
   
       <tr>
         <th style="margin:-90px 0px 0px 0px; width:180;">아이디</th>
         <td>
         <input type="text"  placeholder="id는 수정이 불가합니다." readonly style="width:180px; height:35px;">
         </td>
       </tr>
       
       <tr>
         <th>현재 비밀번호</th>
         <td><input type="password" style="width:180px; height:35px;"> <span class="not-text">&nbsp ※현재비밀번호가 일치하지 않으면 수정이 불가합니다.</span></td>
       </tr>
       
       <tr>
         <th>비밀번호</th>
         <td><input type="password" style="width:180px; height:35px;"><span class="not-text">&nbsp ※영문/숫자/특수문자 포함 8~16자</span></td>
       </tr>
       
       <tr>
         <th>변경될 비밀번호</th>
         <td><input type="password" style="width:180px; height:35px;"></td>
       </tr>
       
       <tr>
         <th>변경될 비밀번호 확인</th>
         <td><input type="password" style="width:180px; height:35px;"></td>
       </tr>
       
         <tr>
         <th> 이름</th>
         <td><input type="text" name="mbname"></td>
      	</tr>
        
         <tr>
         <th>전화번호</th>
           <td><input type="text"name="cel1" style="width:80px; height:35px;"> - 
               <input type="text" name="cel2_1" title="전화번호" style="width:80px; height:35px;"> - 
               <input type="text" name="cel2_2" style="width:80px; height:35px;">
            </td>
        </tr>
       
        <tr>
          <th>이메일</th>
          <td>
            <input type="text" class="form-control" id="m_email" name="m_email" placeholder="이메일을 입력하세요" required="" style="width:130px; height:35px;"">
									<span style="color:#A4A4A4; float:left; padding-left:5px;">@</span>

									<input type="text" class="form-control" id="email2" name="email2" required="" style="width:130px; height:35px;">

									<select name="email3" id="email3" class="form-control inputbox" style="width:130px; height:35px;">
										<option value="" selected="">선택</option>
										<option value="naver.com">naver.com</option>
										<option value="nate.com">nate.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="empal.com">empal.com</option>
										<option value="korea.com">korea.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="direct">직접입력</option>
									</select>
									<button type="button" class="btn btn-default" id="btn_nickname_chk" style="width:90px; height:33px; border-radius:3px;">중복확인</button>
            </td>
         </tr>
         
       <tr>
         <th>메일/sns 정보 수신</th>
           <td class="emailcheckbox">
               <input type="checkbox" value="수신">
               <input type="checkbox" > 수신거부
            </td>
         </tr>

           <tr>
             <td colspan="2" align="center">
               <input type="submit" value="정보수정">
               <input type="reset" value="취소">
            </td>
           </tr>
           
           </table>
          </form>

				</div>

<!-- 정보수정마무리 -->			

				
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