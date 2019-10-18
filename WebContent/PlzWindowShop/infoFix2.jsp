<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table.kblocktable tr th {
    background: rgba(255,255,255,0.05);
    border-color: rgba(255,255,255,0.1);
    padding: 10px 8px;
	 border: solid rgba(255,255,255,0.1) 1px;
	 text-align:center;
	 font-weight:bold;
}

#Kunena div.kblock .kcontainer .kblocktable tr td{
	padding-top:10px;
	padding-bottom:10px;
	
}

#Kunena div.kblock .kcontainer .kblocktable tr td a{
	color:rgba(255,255,255,0.5);
}

#Kunena div.kblock div.kheader{
	padding:0;
}
</style>

<title>정보수정</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/bootstrap-theme.css" />
<link rel="stylesheet" href="assets/css/Bascket.css" />

<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">
	<!-- Intro -->
	<!-- <div id="intro">
					</div> -->
	<!-- Header -->
	<header id="header">
		<a href="index.html"></a>
	</header>

	<nav id="nav">
		<ul class="links">
			<li><a href="purchase.jsp">구매목록</a></li>
			<li><a href="Bascket.jsp">장바구니</a></li>
			<li class="active"><a href="infoFix.jsp">정보수정</a></li>
			<li><a href="withdrawal.jsp">회원탈퇴</a></li>
		</ul>
	</nav>
	<div id="main">
		<!-- //MAIN NAVIGATION -->
		<div class="body">
			<div class="container">
				<div class="row">
					<!-- MAIN CONTENT -->
				<div id="t3-content" class="t3-content col-xs-12" style="padding-top:0px">
					<div id="system-message-container"></div>
						<div class="kblock" style="margin-top:-1px">
							<div class="kcontainer">
								<div class="kbody">
									<div class="login-wrap" style="width:100%">
										<div class="login ">
											<form class="form-horizontal" name="joinFrm" id="joinFrm" method="post" action="mypage_proc.php">
											<input type="hidden" name="mode" value="modify">
												<fieldset style="border:0; color:black">
													<div class="form-group">
														<label for="mem_id" class="col-sm-2 control-label">아이디</label>
														<div class="col-sm-10" style="margin-left:-350px; margin-top:-10px">topgame12@naver.com</div>
													</div>

													<div class="form-group">
														<label for="m_pwd" class="col-sm-2 control-label">비밀번호</label>
														<div class="col-sm-4">
															<input type="password" class="form-control" id="mem_password" name="mem_password" placeholder="" aria-describedby="passwordHelpBlock" required=""
																	  style="border:1px solid black; width:160px; height:40px; color:black">
														</div>
														<span id="passwordHelpBlock" class="text-muted text-left" 
														          style="float:right; margin-top:-45px">영문소문자,숫자,특수문자를 포함하여 8자이상 16이하로 사용이 가능합니다.</span>
													</div>

													<div class="form-group">
														<label for="m_pwd_re" class="col-sm-2 control-label">비밀번호확인</label>
														<div class="col-sm-5 ">
															<input type="password" class="form-control" id="m_pwd_re" name="m_pwd_re" placeholder="" aria-describedby="passwordReHelpBlock" required=""
															          style="border:1px solid black; width:160px; height:40px; margin-left:16px; color:black">
														</div>
														<span id="passwordReHelpBlock" class="help-block text-left"></span>
													</div>

													<div class="form-group">
														<label for="nickname" class="col-sm-2 control-label" style="margin-top:10px">닉네임</label>
														<div class="col-sm-4" style="margin-left:-80px">Ego</div>
													</div>

													
													<div class="form-group" style="padding-top:5px">
														<label for="m_id" class="col-sm-2 control-label">성명</label>
														 <p class="form-control-static col-sm-6" style="margin-left:60px; margin-top:-5px"> 유민재</p>
													</div>
													
													<div class="form-group" style="margin-top:-50px;">
														<label for="m_id" class="col-sm-2 control-label">생년월일</label>
														<div class="col-sm-4">
															<input type="text" class="form-control" name="birth_day" id="birth_day" value="19921103" required
															          style="border:1px solid black; width:160px; height:40px; color:black">
														</div>
														<span class="text-muted text-left" style="float:left">생년월일은 8자리로 입력해 주세요. 예)19700101</span>
													</div>
													
													<div class="form-group" style="padding-top:10px;">
														<label for="mailling" class="col-sm-2 control-label" style="padding-top:10px">이메일 수신</label>
														<div class="col-sm-5">
															<span>
																<input type="checkbox" id="mailling" name="mailling" value="Y" 
																          style="margin-left:-50px; border:1px solid black;"> 정보/이벤트 메일 수신에 동의합니다
															</span>
														</div>
													</div>
													
													<div class="form-group form-actions" style="background:none">
														<div class="col-sm-12 text-center" >
															<button type="submit" class="btn btn-primary" style="border:1px solid black">정보 수정</button>
														</div>
													</div>
												</fieldset>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="alert" style="color:black; background-color:rgba(255,85,90,1)">
							<p>※ 본인인증으로 연령이 확인된 회원에 한해 연령 제한이 있는 상품을 구입하실 수 있습니다.</p>
							<p style="font-weight:bold">※ 휴대폰 인증의 경우 본인인증 완료 후 생년월일을 별도로 입력해 주셔야 연령 제한이 있는 상품을 구입하실 수 있습니다.</p>
							<p>※ 본인인증 불가 카드 안내</p>
							<p> &nbsp;&nbsp;- 신용카드 : 신한카드, 현대카드, 국민카드(일부), BC카드(일부)</p>
							<p> &nbsp;&nbsp;- 선불카드 및 체크카드</p>
						</div>
					</div>
				</div>
				<!-- //MAIN CONTENT -->
				</div><!-- row -->
			</div><!-- container -->
		</div><!-- body -->
	</div><!-- main -->
	<!-- --------------------------------------------------------------------------------------------  -->
	<!-- Copyright -->
	<!-- footer -->
	<footer>
		<div id="copyright">
			<ul>
				<li>&copy;</li>
				<li></li>
			</ul>
		</div>
	</footer>
	<!-- footer -->

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</body>
</html>