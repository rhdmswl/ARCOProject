<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 수정</title>
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
			if (confirm('비밀번호를 수정하시겠습니까?')) {
				document.getElementById('passUpdateForm').submit();
				alert("비밀번호가 변경되었습니다. 다시 로그인해주세요!");
			}
		}
	</script>
</body>
</html>
