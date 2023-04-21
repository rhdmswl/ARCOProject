<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link rel="stylesheet" href="/css/material-dashboard.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/material-dashboard.min.js"></script>

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">

<style type="text/css">

body {
	margin-top: 20px;
	background: #FFF
}

.card {
	font-family: 'Noto Sans KR', sans-serif;
}

.form-control::placeholder {
	font-family: 'Noto Sans KR', sans-serif;
}

.btn-secondary {
	font-family: 'Noto Sans KR', sans-serif;
	box-shadow: none;
}

.btn-secondary:hover {
    box-shadow: 1px 4px 3px 1px #dadce0;
}

.btn-primary {
	font-family: 'Noto Sans KR', sans-serif;
	box-shadow: none;
}

.btn-primary:hover {
    box-shadow: 1px 4px 3px 1px #dadce0;
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
							<div class="col-12">
							</div>
							<div class="card-header card-header-primary text-center">
								<h4 class="card-title">로그인</h4>
							</div>
							<div class="card-body">
								<c:if test="${member == null}">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> </span>
										</div>
										<input type="text" id="userId" name="userId"
											class="form-control" placeholder="아이디">
									</div>
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> </span>
										</div>
										<input type="password" id="userPass" name="userPass"
											class="form-control" placeholder="비밀번호">
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-primary">로그인</button>
										<button id="registerBtn" type="button"
											class="btn btn-secondary">회원가입</button>
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
									<p style="color: red;">로그인 실패! ${msg}</p>
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
				location.href = "register";
			})
	
			$("#mypageBtn").on("click", function() {
				location.href = "mypage";
			})
			
			$("#adminBtn").on("click", function(){
				location.href="/admin/index";
			})
	
		})
	</script>
</body>
</html>