<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<!-- Material Dashboard CSS -->
<link rel="stylesheet"
	href="https://demos.creative-tim.com/material-dashboard/assets/css/material-dashboard.min.css?v=2.1.2">

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>DELETE ACCOUNT</title>

<style type="text/css">
body {
	margin-top: 20px;
	background: #FFF
}

.btn-secondary {
	width: 100px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 15px;
	box-shadow: none;
	height: 40px;
	line-height: 20px;
	padding: 0;
	left: 15px;
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
	left: 15px;
}

.btn-primary:hover {
	box-shadow: 1px 4px 3px 1px #dadce0;
}

.card {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.card .card-header {
	padding-bottom: 0px;
}

.card-title {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 30px;
	font-weight: 700;
	color: #696969;
	text-align: center;
}

.control-label {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 19px;
	font-weight: 700;
	color: #696969;
}

.form-control#userId {
	margin-top: -45px;
	margin-left: 100px;
}

.form-control#userPass {
	margin-top: -45px;
	margin-left: 100px;
}

.form-control#userName {
	margin-top: -45px;
	margin-left: 100px;
}

.delFormGroup {
	position: relative;
	left: 25%;
	margin-bottom: 40px;
	width: 550px;
}

/* 수정 칸 */
.memberGroup {
	border: 1px solid #ccc;
	border-radius: 10px;
	padding-left: 10px;
	margin-bottom: 5px;
	width: 50%;
}

.memberGroup[readonly] {
	background-color: #f2f2f2;
}

.submitBtnGroup {
	margin-left: 15px;
}
</style>


</head>
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cancel").on("click", function(){
				
				location.href = "/member/mypage";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				$.ajax({
					url : "/member/passChk",
					type : "POST",
					dataType : "json",
					data : $("#delForm").serializeArray(),
					success: function(data){
						
						if(data==true){
							if(confirm("회원탈퇴하시겠습니까?")){
								$("#delForm").submit();
								alert("탈퇴가 완료되었습니다.\n언제든 ARCO가 필요하시다면 다시 방문해주세요!\n다시 돌아오실 날만을 기다리고 있겠습니다. \uD83D\uDE22");

							}
						}else{
							alert("비밀번호가 틀렸습니다.");
							return;
						}
					}
				})				
			});
		})
	</script>
<body>
	<section id="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="logo_area text-center">
					<a href="/" class="yummy-logo"><img
						src="https://i.imgur.com/evlOrzY.png" width="400"></a>
				</div>
				<div class="card">
					<div class="card-header card-header-primary">
						<div class="card-title">회원 탈퇴</div>
					</div>
					<div class="card-body">
						<form class="delFormGroup" action="/member/memberDelete"
							method="post" id="delForm">
							<div class="form-group has-feedback">
								<label class="control-label" for="userId">아이디</label> <input
									class="form-control memberGroup" type="text" id="userId"
									name="userId" value="${member.userId}" readonly="readonly" />
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="userPass">패스워드</label> <input
									class="form-control memberGroup" type="password" id="userPass"
									name="userPass" />
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="userName">닉네임</label> <input
									class="form-control memberGroup" type="text" id="userName"
									name="userName" value="${member.userName}" readonly="readonly" />
							</div>
						</form>
						<div class="text-center submitBtnGroup">
							<button class="btn btn-secondary" type="button" id="submit">회원탈퇴</button>
							<button class="btn btn-primary cancel" type="button">취소</button>
						</div>
						<div>
							<c:if test="${msg == false}">
								<p class="text-danger">비밀번호가 맞지 않습니다.</p>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>

</html>
