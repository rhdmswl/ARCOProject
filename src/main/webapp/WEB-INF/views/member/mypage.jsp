<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
	<link href="/css/material-dashboard.min.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" rel="stylesheet">
	<script src="/js/core/jquery.min.js"></script>
	<script src="/js/core/popper.min.js"></script>
	<script src="/js/core/bootstrap-material-design.min.js"></script>
	<script src="/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<script src="/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
</head>

<script type="text/javascript">
	$(document).ready(function(){

		$("#memberUpdateBtn").on("click", function(){
			location.href="memberUpdateView";
		})
		
	})
</script>

<script type="text/javascript">
	$(document).ready(function(){
		// 취소
		$(".cancel").on("click", function(){
			
			location.href = "/";
					    
		})
	
		$("#submit").on("click", function(){
			
/* 			if($("#userPass").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#userPass").focus();
				return false;
			} */
			
			if($("#userName").val()==""){
				alert("닉네임을 입력해주세요.");
				$("#userName").focus();
				return false;
			}

			if($("#phone").val()==""){
				alert("전화번호를 입력해주세요.");
				$("#phone").focus();
				return false;
			}

			if($("#email").val()==""){
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				return false;
			}

			
			if(confirm("회원수정하시겠습니까?")){
				$("#updateForm").submit();
				
				return ;
			}
			
/* 			$.ajax({
				url : "/member/passChk",
				type : "POST",
				dateType : "json",
				data : $("#updateForm").serializeArray(),
				success: function(data){
					
					if(data==true){
						if(confirm("회원수정하시겠습니까?")){
							$("#updateForm").submit();
						}
						
					}else{
						alert("패스워드가 틀렸습니다.");
						return;
						
					}
				}
			})	 */	
			
		});
	})
	
</script>

<body>
<div style="text-align:center">
	<a href="/">
		<img src="https://i.imgur.com/evlOrzY.png" width="400">
	</a>
	<br>
	<section id="container">
		<!-- 회원 정보 수정 -->
		<div class="card shadow mb-4">
		    <div class="card-header card-header-primary">
		        <h4 class="card-title">회원 정보</h4>
		    </div>
		    <div class="card-body">
		        <form id="updateForm" action="/member/mypage" method="post">
		            <div class="form-group has-feedback">
					<label class="control-label" for="userId">아이디</label> 
						<div style="display: flex; justify-content: center;">
							<input
							style = "text-align:center;" class="form-control" type="text" id="userId" name="userId"
							value="${member.userId}" readonly="readonly" />
						</div>
				</div>
				<br>
				
<!-- 				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">비밀번호</label> 
						<input
						style = "text-align:center;" class="form-control" type="password" id="userPass" name="userPass"/>
				</div>
				<br> -->
				
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">닉네임</label> 
						<input
						style = "text-align:center;" class="form-control" type="text" id="userName" name="userName"
						value="${member.userName}" />
				</div>
				<br>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="phone">전화번호</label> 
						<input
						style = "text-align:center;" class="form-control" type="text" id="phone" name="phone"
						value="${member.phone}" />
				</div>
				<br>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="email">이메일</label> 
						<input
						style = "text-align:center;" class="form-control" type="text" id="email" name="email"
						value="${member.email}" />
				</div>
				<br>
				
				<div class="form-group has-feedback">
				<button class="btn btn-primary" type="submit">회원정보수정</button>
			</div>
	
			
			<div class="card shadow mb-4">
				<div class="card-body">
					<a href="/member/passUpdateView" class="btn btn-info btn-block">비밀번호
						변경</a>
				</div>
			</div>
			
		        </form>
		    </div>
		</div>  
		
	</section>
	
	<!-- 한줄평 목록 -->
	<div class="card">
	    <div class="card-header card-header-primary">
	        <h4 class="card-title">한줄평 목록</h4>
	    </div>
	    <div class="card-body">
	        <div class="table-responsive">
	            <table class="table">
	                <tr>
						<th>내용</th>
						<th>작성일</th>
					</tr>
					<c:forEach var="rev" items="${collectionRevs}">
						<tr>
							<td><a href="/collection/get?rev_id=${rev.revId}">${rev.revComment}</a></td>
							<td>${rev.replyDate}</td>
						</tr>
					</c:forEach>
	            </table>
	        </div>
	    </div>
	</div>
	
	<!-- 게시글 목록 -->
	<div class="card">
	    <div class="card-header card-header-primary">
	        <h4 class="card-title">게시글 목록</h4>
	    </div>
	    <div class="card-body">
	        <div class="table-responsive">
	            <table class="table">
	               <tr>
						<th>제목</th>
						<th>작성일</th>
					</tr>
					<c:forEach var="post" items="${posts}">
						<tr>
							<td><a href="/board/get?post_id=${post.post_id}">${post.post_title}</a></td>
							<td>${post.post_regdate}</td>
						</tr>
					</c:forEach>
	            </table>
	        </div>
	    </div>
	</div>

	<!-- 댓글 목록 -->
	<div class="card">
	    <div class="card-header card-header-primary">
	        <h4 class="card-title">댓글 목록</h4>
	    </div>
	    <div class="card-body">
	        <div class="table-responsive">
	            <table class="table">
	                <tr>
						<th>내용</th>
						<th>작성일</th>
					</tr>
					<c:forEach var="comment" items="${comments}">
						<tr>
							<td><a href="/board/get?post_id=${comment.post_id}">${comment.com_content}</a></td>
							<td>${comment.com_date}</td>
						</tr>
					</c:forEach>
	            </table>
	        </div>
	    </div>
	</div>
	
<!-- 	<div class="text-center">
	    <button id="memberUpdateBtn" type="button" class="btn btn-primary">나의 한줄평/게시글/댓글 보기</button>
	</div> -->
	
	<br>
	
	<div class="text-center">
	    <button onclick="location.href='/member/memberDeleteView'" type="button" class="btn btn-secondary">회원 탈퇴</button>
	</div>
	</div>  
</body>
</html>