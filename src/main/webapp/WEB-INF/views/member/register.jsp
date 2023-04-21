<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>

<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="/css/material-dashboard.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/material-dashboard.min.js"></script>

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<style type="text/css">

body {
	margin-top: 20px;
	background: #FFF
}

.card {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	position: absolute;
	width: 400px;
}

.card-title {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 30px;
	font-weight: 700;
	color: #696969;
	width: 100%;
	text-align: center;
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
	  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
            -4px -4px 6px 0 rgba(116, 125, 136, .2), 
   			inset -4px -4px 6px 0 rgba(242, 19, 120),
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
}

.btn-primary:hover {
    box-shadow: 1px 4px 3px 1px #dadce0;
}

.btn-sm {
	magin-bottom: 0px;
	position: relative;
	top: 5px;
}

.btnGroup {
	position: relative;
	left: 150px;
}

.input-group {
  height: 40px;
  font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
  border: 0;
  outline: none;
  padding-left: 10px;
  margin-bottom: 15px;
}

</style>


<!-- Add other Material Dashboard dependencies here -->
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
					<form action="/member/register" method="post" name="regForm">
						<div class="card card-login">
							<div class="card-header card-header-primary text-center">
								<h4 class="card-title">회원 가입</h4>
							</div>
							<div class="card-body">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" id="userId"
										name="userId" placeholder="아이디" />
									<button class="btn btn-primary btn-sm" type="button" id="idChk"
										onclick="fn_idChk();" value="N">중복확인</button>
								</div>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="password" id="userPass"
										name="userPass" placeholder="비밀번호" />
								</div>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" id="userName"
										name="userName" placeholder="닉네임" />
								</div>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" id="phone" name="phone"
										placeholder="전화번호" />
								</div>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" id="email" name="email"
										placeholder="이메일" />
								</div>
							</div>
							<div class="card-footer justify-content-center btnGroup">
								<button class="btn btn-primary" type="submit">회원가입</button>
								<button class="cancel btn btn-secondary">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function() {
			// 취소
			$(".cancel").on("click", function() {
				location.href = "/";
			})
	
			$("#submit").on("click", function() {
				if ($("#userId").val() == "") {
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
				if ($("#userPass").val() == "") {
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				if ($("#userName").val() == "") {
					alert("닉네임을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
				if ($("#phone").val() == "") {
					alert("전화번호를 입력해주세요.");
					$("#phone").focus();
					return false;
				}
				if ($("#email").val() == "") {
					alert("이메일을 입력해주세요.");
					$("#email").focus();
					return false;
				}
				var idChkVal = $("#idChk").val();
				if (idChkVal == "N") {
					alert("중복확인 버튼을 눌러주세요.");
				} else if (idChkVal == "Y") {
					$("#regForm").submit();
				}
			});
		})
	
		function fn_idChk() {
			$.ajax({
				url : "/member/idChk",
				type : "post",
				dataType : "json",
				data : {
					"userId" : $("#userId").val()
				},
				success : function(data) {
					if (data == 1) {
						alert("중복된 아이디입니다.");
					} else if (data == 0) {
						$("#idChk").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					}
				}
			})
		}
	</script>
	
</body>
</html>