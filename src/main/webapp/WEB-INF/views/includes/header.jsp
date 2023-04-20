<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">

    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

<style>

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
	font-family: 'Poppins', sans-serif;
	position: relative;
	z-index: auto;
}

h1, h2, h3, h4, h5, h6 {
	font-family: 'Quicksand', sans-serif;
	font-weight: 700;
	color: #232d37;
	line-height: 1.25;
}

p {
	color: #51545f;
	font-size: 16px;
}

.section_padding_100 {
	padding-top: 100px;
	padding-bottom: 100px;
}

.section_padding_100_70 {
	padding-top: 100px;
	padding-bottom: 70px;
}

.section_padding_50 {
	padding-top: 50px;
	padding-bottom: 50px;
}

.section_padding_50_20 {
	padding-top: 50px;
	padding-bottom: 20px;
}

.section_padding_150 {
	padding-top: 150px;
	padding-bottom: 150px;
}

.section_padding_200 {
	padding-top: 200px;
	padding-bottom: 200px;
}

.section_padding_80 {
	margin-top: 80px;
	margin-bottom: 80px;
}

.section_padding_80_50 {
	padding-top: 80px;
	padding-bottom: 50px;
}

.section_padding_30_80 {
	padding-top: 30px;
	padding-bottom: 80px;
}

.section_padding_80_0 {
	padding-top: 80px;
	padding-bottom: 0;
}

.section_padding_0_80 {
	padding-top: 0;
	padding-bottom: 80px;
}

img {
	max-width: 100%;
}

.mt-15 {
	margin-top: 15px;
}

.mt-30 {
	margin-top: 30px;
}

.mt-40 {
	margin-top: 40px;
}

.mt-50 {
	margin-top: 50px;
}

.mt-100 {
	margin-top: 100px;
}

.mt-150 {
	margin-top: 150px;
}

.mr-15 {
	margin-right: 15px;
}

.mr-30 {
	margin-right: 30px;
}

.mr-50 {
	margin-right: 50px;
}

.mr-100 {
	margin-right: 100px;
}

.mb-15 {
	margin-bottom: 15px;
}

.mb-30 {
	margin-bottom: 30px;
}

.mb-50 {
	margin-bottom: 50px;
}

.mb-100 {
	margin-bottom: 100px;
}

.ml-15 {
	margin-left: 15px;
}

.ml-30 {
	margin-left: 30px;
}

.ml-50 {
	margin-left: 50px;
}

.ml-100 {
	margin-left: 100px;
}

ul, ol {
	margin: 0;
	padding: 0;
}

#scrollUp {
	bottom: 55px;
	font-size: 14px;
	right: 50%;
	width: 30px;
	background-color: #fc6c3f;
	color: #fff;
	text-align: center;
	height: 30px;
	line-height: 30px;
	border-radius: 50%;
	margin-right: -15px;
}

a, a:hover, a:focus, a:active {
	text-decoration: none;
	-webkit-transition-duration: 500ms;
	transition-duration: 500ms;
	font-weight: 500;
	outline: none;
}

li {
	list-style: none;
}

.heading_text>p {
	font-size: 16px;
}

.heading_text>h2 {
	font-weight: 500;
	color: #333;
}

.heading_text>h3 {
	color: #b4b4b4;
	font-size: 90px;
	font-weight: 100;
	margin: 0;
}

.font-shadow-into-light {
	font-family: 'Shadows Into Light Two', cursive !important;
}

.yummy-table {
	display: table;
	height: 100%;
	left: 0;
	position: relative;
	top: 0;
	width: 100%;
	z-index: 2;
}

.yummy-table-cell {
	display: table-cell;
	vertical-align: middle;
}

/* #preloader {
    overflow: hidden;
    background-color: #fff;
    height: 100%;
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 999999;
} */
.yummy-load {
	-webkit-animation: 2000ms linear 0s normal none infinite running
		yummy-load;
	animation: 2000ms linear 0s normal none infinite running yummy-load;
	background: transparent none repeat scroll 0 0;
	border-color: #dddddd #dddddd #fc6c3f;
	border-radius: 50%;
	border-style: solid;
	border-width: 3px;
	height: 40px;
	left: calc(50% - 20px);
	position: relative;
	top: calc(50% - 20px);
	width: 40px;
	z-index: 9;
}

@
-webkit-keyframes yummy-load { 0% {
	-webkit-transform: rotate(0deg);
	transform: rotate(0deg);
}

100


%
{
-webkit-transform


:


rotate
(


360deg


)
;


transform


:


rotate
(


360deg


)
;


}
}
@
keyframes yummy-load { 0% {
	-webkit-transform: rotate(0deg);
	transform: rotate(0deg);
}

100


%
{
-webkit-transform


:


rotate
(


360deg


)
;


transform


:


rotate
(


360deg


)
;


}
}
.top_header_area {
	width: 100%;
	height: 40px;
	border-bottom: 1px solid #ebebeb;
	margin: auto;
}

.top_header_area .top_social_bar {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	height: 40px;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.top_header_area .signup-search-area { /* 로그인, 회원 가입 위치 */
	height: 40px;
	position: relative;
	z-index: 3;
	left: 500px;
	bottom: 10px;
}

.top_header_area .signup-search-area a {
	font-size: 13px;
	color: #222;
}

.top_header_area .signup-search-area .login {
    margin-right: 10px;
    border-right: 2px solid #c2c2c2;
    padding-right: 15px;
    padding-bottom: 5px;
    padding-top: 5px;
}

.top_header_area .signup-search-area .register a {
    color: #222;
    border-right: 0;
}

/* .search-hidden-form {
    position: absolute;
    width: 100%;
    z-index: 4;
    height: 100%;
    top: 0;
    left: 250%;
    right: 0;
    bottom: 60%;
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
    opacity: 0;
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
    font-size: 12px;
} */

/* .search-hidden-form #search-anything {
    width: 100%;
    height: 30px;
    border: 1px solid #ddd;
    top: 5px;
    position: relative;
    padding: 5px 10px;
} */

/* --------------------
:: 3.0 Menu Area CSS
-------------------- */
.logo_area .yummy-logo {
	font-family: 'Shadows Into Light Two', cursive;
	font-size: 60px;
	margin-bottom: 0;
	padding: 35px 0 20px 0;
	display: inline-block;
	color: #232d37;
}

.navbar.navbar-expand-lg {
	padding: 0;
	margin-bottom: 30px;
}

.navbar.navbar-expand-lg .navbar-nav .nav-link {
	padding: 25px 30px;
	color: #232d37;
	text-transform: uppercase;
	font-size: 14px;
}

.navbar.navbar-expand-lg .navbar-nav .nav-link:hover,
.navbar.navbar-expand-lg .navbar-nav .active .nav-link {
    color: #f21378;
}

</style>

</head>

<body>

    <!-- ****** Top Header Area Start ****** -->
    <div class="top_header_area">
        <div class="container">
            <div class="row">
                <!--  Login Register Area -->
                <div class="col-7 col-sm-6">
                    <div class="signup-search-area d-flex align-items-center justify-content-end">
                        <div class="login_register_area d-flex">
                            <div>
                                <a class="login" href="http://localhost:8080/member/login">Login</a>
                                <a class="register" href="http://localhost:8080member/register">Sign up</a>
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
        <div class="container">
            <div class="row">
                <!-- Logo Area Start -->
                <div class="col-12">
                    <div class="logo_area text-center">
                        <a href="#" class="yummy-logo"><img src="https://i.imgur.com/evlOrzY.png" width="400"></a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg">
                        
                        <!-- Menu Area Start -->
                        <div class="navbar-collapse justify-content-center" id="yummyfood-nav">
                            <ul class="navbar-nav" id="yummy-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="/collection/index">Home<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/collection/list">Exhibition</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/board/list?pageNum=1&brd_id=1">Community</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="archive.html">Archive</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">About</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
