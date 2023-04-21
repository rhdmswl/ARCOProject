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
	<h2>비밀번호 수정</h2>
	<c:if test="${not empty error}">
		<div style="color: red;">${error}</div>
	</c:if>
	<form id="passUpdateForm" action="${pageContext.request.contextPath}/member/passUpdate" method="post">
		<div>
			<label for="userPass">현재 비밀번호:</label>
			<input type="password" id="userPass" name="userPass" required>
		</div>
		<div>
			<label for="newPass">새로운 비밀번호:</label>
			<input type="password" id="newPass" name="newPass" required>
		</div>
		<div>
			<label for="confirmPass">비밀번호 확인:</label>
			<input type="password" id="confirmPass" name="confirmPass" required>
		</div>
		<button type="button" onclick="showConfirmDialog()">수정하기</button>
	</form>
	<script type="text/javascript">
		function showConfirmDialog() {
			if (confirm('비밀번호를 변경하시겠습니까?')) {
				document.getElementById('passUpdateForm').submit();
				alert("비밀번호가 변경되었습니다. 다시 로그인해주세요!");
			}
		}
	</script>

</body>
</html>
