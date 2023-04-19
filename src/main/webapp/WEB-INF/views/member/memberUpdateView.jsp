<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>회원가입</title>
</head>

<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cancel").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
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
								
			});
		})
		
	</script>


<!-- 회원정보수정 버튼을 클릭했을때 button의 type가 submit로 되어있는데 이것은 클릭했을때 담긴 값들을 (value)
		/member/memberUpdate로 보내줍니다.(Controller) -->
<body>
	<section id="container">

    
    <p>프로필 이미지:</p>
			<img src="your_upload_directory/${profile.profileImg}" alt="프로필 이미지" width="200" height="200" />
			<!-- form 경로 /member/profile/upload 에서 수정 --> 
			<form action="/member/insertImage" method="post" enctype="multipart/form-data">
			<div class="form-group">
			<label for="file">파일 업로드:</label>
			<input type="file" name="file" id="file" class="form-control" />
			</div>
			<button type="submit" class="btn btn-primary">등록</button>
			</form>
			<hr />
			
			<h3>회원 정보</h3>
    

		<form id="updateForm" action="/member/memberUpdate" method="post">
			<div class="form-group has-feedback">
				<label class="control-label" for="userId">아이디</label> <input
					class="form-control" type="text" id="userId" name="userId"
					value="${member.userId}" readonly="readonly" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userName">닉네임</label> <input
					class="form-control" type="text" id="userName" name="userName"
					value="${member.userName}" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="phone">전화번호</label> <input
					class="form-control" type="text" id="phone" name="phone"
					value="${member.phone}" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="email">이메일</label> <input
					class="form-control" type="text" id="email" name="email"
					value="${member.email}" />
			</div>
			<div class="form-group has-feedback">
			<button class="btn btn-success" type="button" id="submit">회원정보수정</button>
			<button class="cancel btn btn-danger" type="button">취소</button>
		</div>

		
		<div class="card shadow mb-4">
			<div class="card-body">
				<a href="/member/passUpdateView" class="btn btn-info btn-block">비밀번호
					변경</a>
			</div>

		</div>
		
		<div class="card shadow mb-4">
			<div class="card-body">
				<a href="/member/memberDeleteView" class="btn btn-info btn-block">회원 탈퇴</a>
			</div>

		</div>
		
		</form>
		

	</section>

</body>

</html>