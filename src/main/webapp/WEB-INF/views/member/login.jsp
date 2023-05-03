<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGIN</title>
<link rel="stylesheet" href="/css/material-dashboard.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/material-dashboard.min.js"></script>

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<style type="text/css">
body {
	margin-top: 20px;
	background: #FFF
}

.card {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.card-title {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 30px;
	font-weight: 700;
	color: #696969;
}

.form-control::placeholder {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.btn-secondary {
	width: 100px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 15px;
	box-shadow: none;
	height: 40px;
	line-height: 20px;
	padding: 0;
	left: 5px;
	bottom: 5px;
}

.btn-secondary:hover {
	box-shadow: 1px 4px 3px 1px #dadce0;
}

.btn-secondary:before {
	position: absolute;
	/* content: ''; */
	display: inline-block;
	top: -180px;
	left: 0px;
	width: 30px;
	height: 100%;
	background-color: #fff;
}

.btn-secondary:active {
	box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .3), -4px -4px 6px 0
		rgba(116, 125, 136, .2), inset -4px -4px 6px 0 rgba(242, 19, 120),
		inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
}

.btn-primary {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	box-shadow: none;
	width: 100px;
	height: 40px;
	line-height: 20px;
	font-size: 15px;
	padding: 0;
	left: -5px;
	bottom: 5px;
}

.btn-primary:hover {
	box-shadow: 1px 4px 3px 1px #dadce0;
}

.text-center {
	margin-top: 20px;
}

.btn-findId {
  font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
  background-color: transparent;
  color: #333;
  border: none;
  padding: 0;
  margin-right: 10px;
  font-size: 14px;
  left:5px;
  top:7px;
}

.btn-findPw {
  font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
  background-color: transparent;
  color: #333;
  border: none;
  padding: 0;
  font-size: 14px;
  left:2px;
  top:7px;
}

.btn-divider {
  display: inline-block;
  width: 1px;
  height: 20px;
  background-color: #ccc;
  margin: 0 10px;
  vertical-align: middle;
  
}

</style>

</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-8 mx-auto">
					<div class="logo_area text-center">
						<a href="/" class="yummy-logo"><img
							src="https://i.imgur.com/evlOrzY.png" width="400"></a>
					</div>
					<form name="homeForm" method="post" action="/member/login">
						<div class="card card-login">
							<div class="col-12"></div>
							<div class="card-header card-header-primary text-center">
								<div class="card-title">로그인</div>
							</div>
							<div class="card-body">
								<c:if test="${member == null}">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> </span>
										</div>
										<input type="text" id="userId" name="userId"
											class="form-control userId" placeholder="아이디">
									</div>
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> </span>
										</div>
										<input type="password" id="userPass" name="userPass"
											class="form-control userPass" placeholder="비밀번호">
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-primary">로그인</button>
										<button id="registerBtn" type="button"
											class="btn btn-secondary">회원가입</button><br>
										<button id="findIdBtn" type="button" class="btn btn-findId">아이디
											찾기</button>
										<span class="btn-divider"></span>
										<button id="findPwBtn" type="button" class="btn btn-findPw">비밀번호
											찾기</button>


									</div>
								</c:if>
								<c:if test="${member != null}">
									<div>
										<p>${member.userId}님환영합니다.</p>
										<button id="mypageBtn" type="button" class="btn btn-primary">MyPage</button>
										<button id="logoutBtn" type="button" class="btn btn-secondary">로그아웃</button>
									</div>
								</c:if>

								<c:if test="${member.role == 'ROLE_ADMIN'}">
									<button id="adminBtn" type="button">관리자페이지</button>
								</c:if>

								<c:if test="${not empty msg}">
									<p style="color: #d92742; font-weight:bold; margin-left:15px; margin-top:5px;">로그인 실패! ${msg}</p>
								</c:if>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#logoutBtn").on("click", function() {
				location.href = "logout";
			})
			$("#registerBtn").on("click", function() {
				location.href = "privacypolicy";
			})
	
			$("#mypageBtn").on("click", function() {
				location.href = "mypage";
			})
			
			$("#findPwBtn").on("click", function() {
				location.href = "findPw";
			})
			
			$("#findIdBtn").on("click", function() {
				location.href = "findId";
			})
			
			$("#adminBtn").on("click", function(){
				location.href="/admin/index";
			})
	
		})
	</script>
</body>
</html>