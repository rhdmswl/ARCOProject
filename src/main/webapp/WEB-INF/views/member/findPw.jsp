<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- Material Dashboard CSS -->
<link rel="stylesheet"
	href="https://demos.creative-tim.com/material-dashboard/assets/css/material-dashboard.min.css?v=2.1.2">

<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />


<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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


<title>FIND PASSWORD</title>
<style type="text/css">
.center {
	text-align: center;
}

body {
	margin-top: 20px;
	background: #FFF
}

body::-webkit-scrollbar {
	width: 8px; /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
	height: 5%; /* 스크롤바의 길이 */
	background: black; /* 스크롤바의 색상 */
	border-radius: 10px;
}

body::-webkit-scrollbar-track {
	background: rgba(242, 240, 241); /*스크롤바 뒷 배경 색상*/
}

.card {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	position: relative;
	width: 500px;
	position: relative;
	right: 25px;
	margin-bottom: 70px;
	padding-left: 10px;
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

.form-control {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	width: 60%;
	height: 50px;
	box-sizing: border-box;
	margin-left: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 4px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;
}

.btn-secondary {
	width: 100px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 15px;
	box-shadow: none;
	height: 40px;
	line-height: 20px;
	padding: 0;
	bottom: 40px;
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
	margin-bottom: 15px;
}

.btn-primary.btn-sm {
	margin-top: 10px;
	margin-left: 20px;
}

.form-control, .box {
	display: inline-block;
	vertical-align: middle;
}

.form-control#userID {
	width: 230px;
	margin-left: 30px;
}

.form-control#email {
	width: 230px;
	margin-left: 30px;
	margin-top: -15px;
	margin-bottom: -20px;
}

.control-label, label {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	color: black;
	font-weight: 500;
	font-size: 16px;
}

.emailSelectBtn {
	margin-left: 330px;
	bottom: 35px;
}

.submitBtnGroup {
	margin-top: 10px;
	position: relative;
	top: 20px;
}
</style>

</head>
<script type="text/javascript">
	$(document).ready(function() {
		// 취소
		$(".cancel").on("click", function() {
			location.href = "login";
		})

		// 비밀번호 찾기 인증메일 전송

		$('#find-Pw-Btn').click(function() {
			//db
			const userId = $("#userId").val();
			const email = $("#email").val();
			console.log(userId);
			console.log(email);

			$.ajax({
				url : "/member/findPw",
				type : "post",
				dataType : "json",
				data : {
					"userId" : $("#userId").val(),
					"email" : $("#email").val()
				},
				success : function(data) {
					if (data == 1) {
						alert(email + "로 임시비밀번호를 전송하겠습니다.");
						send_email(userId, email);
						//email로 임시비밀번호를 발송하는 함수를 넣어준다.
					} else if (data == 0) {
						alert("일치하는 정보가 없습니다.");

					}
				}
			});

		}); // end send email

	});

	function send_email(userId, email) {
		//const email = email; // 이메일 주소값 얻어오기!
		console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인 // 인증번호 입력하는곳 
		$.ajax({
			type : 'get',
			url : '<c:url value="/member/findPwmailCheck?email=' + email
					+ '&userId=' + userId + '"/>', // GET방식이라 Url 뒤에 email을 쓸 수 있음
			success : function(data) {
				console.log("data : " + data);
				code = data;
				alert('임시 비밀번호가 전송되었습니다. 다시 로그인해주세요 !');
				location.href = "login";

			}
		});
	}
</script>
<body>
	<section id="container">
		<div class="row justify-content-center">
			<div class="col-lg-4 col-md-6 col-sm-8 mx-auto">
				<div class="logo_area text-center">
					<a href="/" class="yummy-logo"><img
						src="https://i.imgur.com/evlOrzY.png" width="400"></a>
				</div>
				<div class="card">
					<div class="card-header card-header-primary">
						<h4 class="card-title center">비밀번호 찾기</h4>
					</div>
					<div class="card-body">
						<form action="/member/findPw" method="post" id="findPwForm">
							<div class="form-group has-feedback">
								<label class="control-label" for="userId">아이디</label> <input
									class="form-control" type="text" id="userId" name="userId" />
							</div>
							<br>
							<!-- email -->
							<div class="form-group has-feedback">
								<label class="control-label" for="email">이메일</label> <input
									class="form-control" type="text" id="email" name="email" />
								<div class="input-group-addon">
									<button type="button" class="btn btn-primary emailSelectBtn"
										id="find-Pw-Btn">메일 전송</button>
								</div>
							</div>
						</form>
						<div class="text-center submitBtnGroup">

							<button class="btn btn-secondary cancel" type="button">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>

</html>
