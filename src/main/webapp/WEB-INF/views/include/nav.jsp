<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<ul>
	<c:if test="${member == null}">
		<li><a href="/member/login">로그인</a></li>
		<li><a href="/member/register">회원가입</a></li>
	</c:if>
	<c:if test="${member != null}">

		<c:if test="${member.role == 'ROLE_ADMIN'}">
			<li><a href="/admin/index">관리자 화면</a></li>
		</c:if>

		<li>${member.userName}님 환영합니다.</li>

		<li><a href="/member/mypage">My Page</a> <a href="/member/logout">로그아웃</a>
		</li>
	</c:if>

</ul>