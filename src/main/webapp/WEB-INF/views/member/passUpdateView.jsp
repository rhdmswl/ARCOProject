<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 수정</title>

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- 필요한 스타일시트 파일들 추가 -->
<link href="${pageContext.request.contextPath}/css/material-dashboard.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" rel="stylesheet">

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
<!-- 필요한 스크립트 파일들 추가 -->
<script src="${pageContext.request.contextPath}/js/core/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/core/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/core/bootstrap-material-design.min.js"></script>
<script src="${pageContext.request.contextPath}/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/material-dashboard.min.js"></script>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div style="width:100%; text-align:center;">
					<a href="/">
						<img src="https://i.imgur.com/evlOrzY.png" width="400">
					</a>
				</div>
				<div class="card">
					<div class="card-header card-header-primary">
						<h4 class="card-title">비밀번호 수정</h4>
					</div>
					<div class="card-body">
						<c:if test="${not empty error}">
							<div class="alert alert-danger">
								<span>${error}</span>
							</div>
						</c:if>
						<form action="${pageContext.request.contextPath}/member/passUpdate" method="post">
							<div class="form-group">
								<label for="userPass">현재 비밀번호:</label>
								<input type="password" class="form-control" id="userPass" name="userPass" required>
							</div>
							<br>
							<div class="form-group">
								<label for="newPass">새로운 비밀번호:</label>
								<input type="password" class="form-control" id="newPass" name="newPass" required>
							</div>
							<br>
							<div class="form-group">
								<label for="confirmPass">비밀번호 확인:</label>
								<input type="password" class="form-control" id="confirmPass" name="confirmPass" required>
							</div>
							<br>
							<button type="submit" class="btn btn-primary">수정하기</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
