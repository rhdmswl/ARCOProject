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
</head>

<body>
	<form name='homeForm' method="post" action="/member/login">
		<c:if test="${member == null}">
			<div>
				<label for="userId"></label> <input type="text" id="userId"
					name="userId">
			</div>
			<div>
				<label for="userPass"></label> <input type="password" id="userPass"
					name="userPass">
			</div>
			<div>
				<button type="submit">로그인</button>
				<button id="registerBtn" type="button">회원가입</button>
			</div>
		</c:if>
		<c:if test="${member != null }">

			<div>
				<p>${member.userId}님환영합니다.</p>
				<button id="mypageBtn" type="button">마이페이지 - 나의 글 보기</button>
				<button id="logoutBtn" type="button">로그아웃</button>
				</div>
		</c:if>
		<c:if test="${member.role == 'ROLE_ADMIN'}">


			<button id="adminBtn" type="button">관리자페이지</button>


		</c:if>
		
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
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