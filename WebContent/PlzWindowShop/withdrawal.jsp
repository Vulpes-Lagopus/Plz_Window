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
<title>회원탈퇴</title>
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
			<li><a href="infoFix.jsp">정보수정</a></li>
			<li class="active"><a href="withdrawal.jsp">회원탈퇴</a></li>
		</ul>
	</nav>
	<div id="main">
		<!-- //MAIN NAVIGATION -->
		<div class="body">
			<div class="container">
				<div class="row">
					<!-- MAIN CONTENT -->
					<div class="kblock" style="margin-top:20px">
							<div class="kcontainer">
								<div class="kbody">
									<div class="alert" style="color:black; background-color:rgba(255,85,90,1)">
										<p>- 회원탈퇴시 해당 아이디로는 재가입을 하실 수 없습니다.</p>
										<p>- 또한 보유하고 계신 적립금이 모두 삭제되어 복구가 불가능하여, 탈퇴 후 재가입하셔도 적립금이 재발급 되지 않습니다.</p>
										<p>- 캐시를 보유하신 회원은 직접탈퇴가 불가능합니다. 고객센터를 통해서 캐시환불진행 후 탈퇴가 완료됩니다.</p>
									</div>
									<div class="login-wrap" style="width:100%">
										<div class="login ">
											<form class="form-horizontal" name="joinFrm" id="joinFrm" method="post" action="../member/join_proc.php">
												<input type="hidden" id="mode" name="mode"  value="leave">
												<fieldset style="border:0; color:black">
													<div class="form-group">
														<label for="mem_id" class="col-sm-2 control-label">아이디</label>
														<div class="col-sm-3 sol-sm-offset-7" style="margin-top:-14px; padding:0">topgame12@naver.com</div>
													</div>

													<div class="form-group">
														<label for="m_pwd" class="col-sm-2 control-label" style="margin-bottom:-10px">비밀번호</label>
														<div class="col-sm-6">
															<input type="password" class="form-control" id="m_pwd" name="m_pwd" required="required" 
															          style="border:1px solid black; color:black;">
														</div>
				
													</div>

													<div class="form-group">
														<label for="reason" class="col-sm-2 control-label">탈퇴사유</label>
														<div class="col-sm-6">
															<select name="reason" class="form-control" required  style="border:1px solid black">
																<option value="" style="color:black">:::탈퇴사유를 선택해 주세요:::</option>
																<option value="1" style="color:black">고객서비스 불만</option>
																<option value="2" style="color:black">교환/환불 불만</option>
																<option value="3" style="color:black">방문 빈도가 낮음</option>
																<option value="4" style="color:black">상품가격 불만</option>
																<option value="5" style="color:black">개인 정보유출 우려</option>
																<option value="6" style="color:black">쇼핑몰의 신뢰도 불만</option>
																<option value="7" style="color:black">쇼핑 기능 불만</option>
															</select>
														</div>
													</div>
													<div class="form-group form-actions" style="background:none">
														<div class="col-sm-12 text-center" >
															<button type="submit" class="btn btn-danger"  style="border:1px solid black">회원탈퇴</button>
															<button type="button" class="btn btn-primary"  style="border:1px solid black">취소하기</button>
														</div>
													</div>
												</fieldset>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
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