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
		<title>Q&A게시판</title>
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
						<a href="index.html" class="logo">자주묻는질문</a>
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
								<h3 style="padding-top:27px;">자주묻는질문</h3>
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
						  <li class="active"><a href="QnA.jsp">자주묻는질문</a></li>
						  <li><a href="Question.jsp">1:1문의하기</a></li>
					</ul>
		<br>
		<!-- Q&A -->

		<div class="panel-group" id="accordion">

			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse1">Q. [결제가격 및 프로모션] 구매페이지로 넘어가지 않습니다.</a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse">
					<div class="panel-body">상품정보 조회 후 바로 구매하기 버튼을 눌러도 구매안내 페이지로 넘어가지 않는 경우 현재 주소창에서 https:// 로 되어 있는 주소를 http:// 로 수정후 새로고침 후 이용해 주시기 바랍니다.</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse2">Q. [웹사이트 및 계정] LG U+ 전자결제 프로그램 설치/실행 오류는 어떻게 하나요?</a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<div class="panel-body">개인 PC환경에 따른 LG U+ 전자결제 프로그램 설치/실행 및 오류 사항에 대한 해결방안은 아래의 결제오류해결센터를 이용해 주시기 바랍니다.
결제오류해결센터 : http://pgweb.uplus.co.kr:8080/pg/wmp/Home2009/skill/payment_error_center01.jsp</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse3">Q. [결제가격 및 프로모션] 환불 규정이 어떻게 되나요?</a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body">plz_Window에서 구매한 디지털 코드의 경우 구입 후 1일 이내에 청약철회가 가능합니다.

특히, 예약판매 상품은 출시일 하루 전(24시간 기준)까지만 환불신청이 가능합니다

단, 구매한 키를 마이페이지에서 확인(열람)할 경우 환불이 불가능하오니, 구입한 상품을 환불받고 싶다면 키를 확인(열람) 하지 마십시오.

키를 확인하지 않으신 주문건에 대하여 환불을 희망할 경우 고객지원 양식에 연락가능한 연락처와 환불받을 계좌번호를 추가로 작성 하여 문의해 주시기 바랍니다.</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse4">Q. [결제가격 및 프로모션] 프로모션 코드에 문제가 있어요. 도와주세요!</a>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse collapse">
					<div class="panel-body">먼저 코드를 맞게 입력했는지 확인해주세요. 만약 이미 사용된 코드이거나 사용기간이 만료된 코드이면 오류 메시지가 뜹니다.

마지막으로 코드 사용 후 주문을 취소하여도 다시 사용할 수 없습니다. 이와 다른 이유로 계속 오류가 난다면 고객지원 양식을 통해 연락 주시기 바랍니다.

문의내용에는 코드 발급처나 오류메시지 내용 등을 포함하여 최대한 자세하게 기술해주시기 바랍니다.</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse5">Q. [결제가격 및 프로모션] 프로모션 코드가 무엇인가요? 어떻게 사용하는 건가요?</a>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse">
					<div class="panel-body">프로모션 코드란 게임과 교환 가능한 쿠폰입니다. 주로 이벤트를 통해 지급되기 때문에 plz_Window의 소식에 주목해주시기 바랍니다.</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse6">Q. [결제가격 및 프로모션] 결제 중에 오류가 발생하였습니다.</a>
					</h4>
				</div>
				<div id="collapse6" class="panel-collapse collapse">
					<div class="panel-body">결제 도중 오류가 나면 결제 금액이 청구되지 않으니 걱정하지 않으셔도 됩니다.

‘재시도’를 클릭하거나 입력된 정보를 다시 확인하고 ‘주문하기’를 누르시면 됩니다.

문제가 다시 발생하면 고객지원 양식을 통해 연락 주시기 바랍니다. 문의 내용에는 문제가 발생하기까지 일어난 일들을 최대한 자세하게 기술해주시기 바랍니다.

카드 번호 등 개인 정보는 절대로 입력하지 말아주시기 바랍니다.</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse7">어떤 결제 방식들이 있나요?</a>
					</h4>
				</div>
				<div id="collapse7" class="panel-collapse collapse">
					<div class="panel-body">현재 사용 가능한 결제 방식은 신용카드가 있습니다.</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse8">Q. [웹사이트 및 계정] plz_Window에 접속할 때 어떤 브라우저를 사용하는 것이 좋나요?</a>
					</h4>
				</div>
				<div id="collapse8" class="panel-collapse collapse">
					<div class="panel-body">결제 시 액티브엑스 설치가 필요하기 때문에 인터넷 익스플로러 사용을 권장합니다. 그 외 의 경우에는 파이어폭스, 크롬, 사파리, 오페라 그 어떤 브라우저에서도 최상의 환경을 제공할 수 있도록 노력하고 있습니다.</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse9">Q. [웹사이트 및 계정] 계정은 어떻게 생성하나요?</a>
					</h4>
				</div>
				<div id="collapse9" class="panel-collapse collapse">
					<div class="panel-body">메인 페이지의 “회원가입”을 클릭하여 필요한 정보를 입력한 후 “가입하기”를 클릭하시면 됩니다.</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse10">Q. [웹사이트 및 계정] 반드시 계정을 생성해야 하나요?</a>
					</h4>
				</div>
				<div id="collapse10" class="panel-collapse collapse">
					<div class="panel-body">plz_Window의 많은 유익한 기능들은 가입된 유저에게만 제공됩니다. 게임을 구매하고 게시판에서 활동하려면 계정이 반드시 필요합니다. 구매하신 게임은 계정과 연동되며 이를 통해 사후관리 및 지원이 제공됩니다.</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse11">Q. [웹사이트 및 계정] DRM이 뭔가요?</a>
					</h4>
				</div>
				<div id="collapse11" class="panel-collapse collapse">
					<div class="panel-body">DRM이란 Digital Rights Management (디지털 저작권 권한 관리 시스템)의 준말로써 많은 회사에서 사용되는 디지털 컨텐츠의 저작권을 보호하기 위한 기술입니다.</div>
				</div>
			</div>
			
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse13">Q. [웹사이트 및 계정] 해외에서도 plz_Window에서 구매할 수 있나요?</a>
					</h4>
				</div>
				<div id="collapse13" class="panel-collapse collapse">
					<div class="panel-body">plz_Window는 국내에서만 서비스됩니다.</div>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse14">Q. [웹사이트 및 계정] plz_Window란 무엇인가요?</a>
					</h4>
				</div>
				<div id="collapse14" class="panel-collapse collapse">
					<div class="panel-body">plz_Window는 PC 플랫폼에 특화된 서비스로써, 세계 유수의 퍼블리셔 및 개발사와 제휴하여, 양질의 게임은 물론 차별화된 독점 한글화 콘텐츠 및 이벤트를 제공하는 실시간 게이밍 서비스 입니다.

plz_Window를 이용하시면 언제어디서나, 시간과 장소에 구애받지 않고 원하는 게임을 만날 수 있습니다.</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse15">Q. [웹사이트 및 계정] 인터넷 익스플로러 및 호환성 보기 지원</a>
					</h4>
				</div>
				<div id="collapse15" class="panel-collapse collapse">
					<div class="panel-body">plz_Window는 인터넷 익스플로러 9 이상을 지원하고 있습니다.
인터넷 익스플로러 8에서는 기능적으로 문제가 없지만 시각적 차이가 있을 수 있습니다.
인터넷 익스플로러 8 이상에서 기능적 문제가 있다면 호환성 보기를 해제시켜주십시오.</div>
				</div>
			</div>
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