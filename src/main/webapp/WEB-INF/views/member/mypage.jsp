<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
</head>
<body>
	<h1>My Page</h1>
	
	<h2>한줄평 목록</h2>
	<table>
		<tr>
			<th>내용</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="rev" items="${collectionRevs}">
			<tr>
				<td>${rev.revComment}</td>
				<td>${rev.replyDate}</td>
			</tr>
		</c:forEach>
	</table>
	
	<h2>게시글 목록</h2>
	<table>
		<tr>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="post" items="${posts}">
			<tr>
				<td>${post.post_title}</td>
				<td>${post.post_regdate}</td>
			</tr>
		</c:forEach>
	</table>
	
	<h2>댓글 목록</h2>
	<table>
		<tr>
			<th>내용</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="comment" items="${comments}">
			<tr>
				<td>${comment.com_content}</td>
				<td>${comment.com_date}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>