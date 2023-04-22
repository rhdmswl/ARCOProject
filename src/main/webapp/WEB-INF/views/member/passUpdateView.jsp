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
.form-control{
font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	width: 100%;
	height: 50px;
	box-sizing: border-box;
	margin-left: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 4px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;}

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

.text-center {
	margin-top: 20px;
}
</style>

</head>
	<script type="text/javascript">
  function showConfirmDialog() {
    var userPass = document.getElementById('userPass').value;
    var newPass = document.getElementById('newPass').value;
    var confirmPass = document.getElementById('confirmPass').value;

    if (userPass.trim() === "" || newPass.trim() === "" || confirmPass.trim() === "") {
      alert("비밀번호를 입력해주세요.");
      return;
    }

    if (confirm('비밀번호를 변경하시겠습니까?')) {
      document.getElementById('passUpdateForm').submit();
    }
  }
</script>

<body>
<div class="wrapper">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-8 mx-auto">
				<div class="logo_area text-center">
					<a href="/" class="yummy-logo"><img src="https://i.imgur.com/evlOrzY.png" width="400"></a>
				</div>
				<form id="passUpdateForm" action="${pageContext.request.contextPath}/member/passUpdate" method="post">
					<div class="card card">
						<div class="col-12"></div>
						<div class="card-header card-header-primary text-center">
							<div class="card-title">비밀번호 변경</div>
						</div>
						<div class="card-body">
							<label class="control-label" for="userPass">현재 비밀번호:</label> 
							<input class="form-control" type="password" id="userPass" name="userPass" required>
						
					
						<div>
							<label class="control-label" for="newPass">새로운 비밀번호:</label> 
							<input class="form-control" type="password" id="newPass" name="newPass" required>
						</div>
						
						<div>
							<label class="control-label" for="confirmPass">비밀번호 확인:</label>
							<input class="form-control" type="password" id="confirmPass" name="confirmPass" required>
						</div>
						
						<c:if test="${not empty error}">
							<div style="color: red;">${error}</div>
						</c:if>
						<div class="text-center">
							<button class="btn btn-primary" type="button" onclick="showConfirmDialog()">변경하기</button>
						</div>
					</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>



</body>
</html>