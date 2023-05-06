<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">


<style type="text/css">

/* ***** Fonts ***** */
@import
	url('https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700|Quicksand:300,400,500,700|Shadows+Into+Light+Two')
	;

/* --------------------
:: 1.0 Base CSS
-------------------- */
* {
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	position: relative;
	z-index: auto;
}

.allGroup {
	max-width: 100%;
}

h1, h2, h3, h4, h5, h6 {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 700;
	color: #232d37;
	line-height: 1.25;
}

p {
	color: #51545f;
	font-size: 16px;
}

ul, ol {
	margin: 0;
	padding: 0;
}

a, a:hover, a:focus, a:active {
	text-decoration: none;
	-webkit-transition-duration: 500ms;
	transition-duration: 500ms;
	font-weight: 500;
	outline: none;
	font-family: 'Noto Sans KR', sans-serif;
}

li {
	list-style: none;
}

.top_header_area {
	width: 100%;
	height: 40px;
	border-bottom: 1px solid #ebebeb;
}

.top_header_area .signup-search-area { /* 로그인, 회원 가입 위치 */
	height: 40px;
	width: 100%;
	position: relative;
	z-index: 3;
	/* right: 300px; */
	bottom: 10px;
	margin: 0;
}

.col2-sm-6 {
	width: 100%;
}

.logRegGroup {
	float: right;
	width: 500px;
	height: 40px;
	position: absolute;
	left: 50%;
	bottom: 20px;
}

.top_header_area .signup-search-area a {
	font-size: 13px;
	color: #222;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 600;
}

.top_header_area .signup-search-area .login {
	margin-right: 10px;
	padding-right: 15px;
	padding-bottom: 5px;
	padding-top: 5px;
	position: relative;
	left: 70%;
	top: 25px;
}

.top_header_area .signup-search-area .register {
	color: #222;
	border-right: 0;
	position: relative;
	left: 70%;
	top: 25px;
}

.top_header_area .signup-search-area .mypage {
	position: absolute;
	left: 70%;
	top: 30px;
	margin-right: 6px;
	padding-right: 12px;
	padding-bottom: 3px;
	padding-top: 3px;
}

.top_header_area .signup-search-area .logout {
	position: absolute;
	left: 85%;
	top: 30px;
	margin-right: -65px;
	padding-right: 12px;
	padding-bottom: 3px;
	padding-top: 3px;
}

.top_header_area .signup-search-area .admin {
	position: relative;
	left: 98%;
	top: 31px;
	color: #222;
	border-right: 0;
}

/* --------------------
:: 3.0 Menu Area CSS
-------------------- */
.logo_area .yummy-logo {
	margin-bottom: 0;
	padding: 35px 0 20px 0;
	display: inline-block;
	position: relative;
	left: 20px;
}

.navbar.navbar-expand-lg {
	padding: 0;
	margin-bottom: 30px;
	box-shadow: none;
	margin-left: 5px;
	position: relative;
	left: 17px;
}

.navbar.navbar-expand-lg .navbar-nav .nav-link2 {
	padding: 25px 30px;
	color: #232d37;
	text-transform: uppercase;
	font-size: 16px;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 700;
}

.navbar.navbar-expand-lg .navbar-nav .nav-link2:hover, 
.navbar.navbar-expand-lg .navbar-nav .active .nav-link2 {
	color: #f21378;
}

.welcomeMessage {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	font-size: 15px;
	position: absolute;
	top: 30px;
	left: 35%;
	color: black;
	width: 200px;
	margin-right: 0;
}

</style>

</head>

<body>
<div class="allGroup">
	<!-- ****** Top Header Area Start ****** -->
	<div class="top_header_area">
		<div class="container">
			<div class="row">
				<!--  Login Register Area -->
				<div class="col2-sm-6">
					<div class="signup-search-area align-items-center justify-content-end">
						<div class="login_register_area">
							<div class="logRegGroup">
								<c:if test="${member == null}">
									<a class="login" href="/member/login">Login</a>									
									<a class="register" href="/member/privacypolicy">Sign Up</a>									
								</c:if>
								<c:if test="${member != null}">
								<c:if test="${member.role == 'ROLE_ADMIN'}">
								<a class="admin" href="/admin/admin">Admin Page</a>		
								</c:if>
									<div class="welcomeMessage">${member.userName}님 환영합니다 &#128075;</div>
									<a class="mypage" href="/member/mypage">My Page</a>									
									<a class="logout" href="/member/logout">Logout</a>								
								</c:if>
							</div>
							<!-- <div class="register">
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Top Header Area End ****** -->

	<!-- ****** Header Area Start ****** -->
	<header class="header_area">
		<div class="container" style="margin-bottom: 30px;">
			<div class="row">
				<!-- Logo Area Start -->
				<div class="col-12">
					<div class="logo_area text-center">
						<a href="/" class="yummy-logo"><img
							src="https://i.imgur.com/evlOrzY.png" width="400"></a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-lg">

						<!-- Menu Area Start -->
						<div class="navbar-collapse justify-content-center"
							id="yummyfood-nav">
							<ul class="navbar-nav" id="yummy-nav">
								<li class="nav-item2"><a class="nav-link2" style="text-decoration:none;" href="/">Home<span
										class="sr-only">(current)</span></a></li>
								<li class="nav-item2"><a class="nav-link2" style="text-decoration:none;"
									href="/collection/list">Exhibition</a></li>
								<li class="nav-item2"><a class="nav-link2" style="text-decoration:none;"
									href="/board/list?pageNum=1&brd_id=4">Community</a></li>
								<li class="nav-item2"><a class="nav-link2" style="text-decoration:none;" href="/about">About</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	</div>
	</body>
	