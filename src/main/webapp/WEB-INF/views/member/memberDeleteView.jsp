<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- Material Dashboard CSS -->
		<link rel="stylesheet" href="https://demos.creative-tim.com/material-dashboard/assets/css/material-dashboard.min.css?v=2.1.2">
		
		<!-- Favicon -->
		<link rel="icon" href="/img/core-img/favicon.ico">
		
		<!-- Google Fonts -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
		
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	
		<title>회원탈퇴</title>
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
							}
						}else{
							alert("패스워드가 틀렸습니다.");
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
					<div class="card">
						<div class="card-header card-header-primary">
							<h4 class="card-title">회원탈퇴</h4>
						</div>
						<div class="card-body">
							<form action="/member/memberDelete" method="post" id="delForm">
								<div class="form-group has-feedback">
									<label class="control-label" for="userId">아이디</label>
									<input class="form-control" type="text" id="userId" name="userId" value="${member.userId}" readonly="readonly"/>
								</div>
								<br>
								<div class="form-group has-feedback">
									<label class="control-label" for="userPass">패스워드</label>
									<input class="form-control" type="password" id="userPass" name="userPass" />
								</div>
								<br>
								<div class="form-group has-feedback">
									<label class="control-label" for="userName">성명</label>
									<input class="form-control" type="text" id="userName" name="userName" value="${member.userName}" readonly="readonly"/>
								</div>
							</form>
							<div class="text-center">
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
