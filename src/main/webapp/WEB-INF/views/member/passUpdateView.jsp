<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE PASS</title>

<!-- 필요한 스타일시트 파일들 추가 -->
<link href="${pageContext.request.contextPath}/css/material-dashboard.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" rel="stylesheet">
<script src="/js/material-dashboard.min.js"></script>

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<style type="text/css">

body {
	margin-top: 20px;
	background: #FFF;
	width: 100%;
}

.card {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	margin-right: 0px;
	width: 40%;
	height: 435px;
	position : absolute;
	left: 29%;
	overflow-x:hidden;
	overflow-y:hidden;
}

.card-body {
	position: absolute;
}

.passUpdateBox {
	width: 400px;
	float: center;
	position: relative;
	margin: 0 auto;
	padding: 40px;
}


.boxForm {
	position: relative;
	left: 10%;
}

.card-header {
	padding-bottom: 5px;
}

.form-control::placeholder {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.btn-secondary {
	width: 100px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 15px;
	box-shadow: none;
	height: 40px;
	line-height: 20px;
	padding: 0;
}

.btn-primary {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	box-shadow: none;

	margin-top:20px;

}

.btn-primary:hover {
    box-shadow: 1px 4px 3px 1px #dadce0;
}

.card-title {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 30px;
	font-weight: 700;
	color: #696969;
	width: 100%;
	text-align: center;
}

.presentPass {
	width: 200px;
}

.newPass {
	width: 200px;
}

.checkPass {
	width: 200px;
}

.presentPassText {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 17px;
	font-weight: 600;
	color: #696969;
	margin-top: 10px;
}

.newPassText {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 17px;
	font-weight: 600;
	color: #696969;
	margin-top: 10px;
}

.checkPassText {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 17px;
	font-weight: 600;
	color: #696969;
	margin-top: 10px;
}

input {
  width: 300px;
  height: 40px;
  font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  background-color: rgb(233, 233, 233);
}

</style>

</head>

<script type="text/javascript">

		function showConfirmDialog() {
			if (confirm('비밀번호를 변경하시겠습니까?')) {
				document.getElementById('passUpdateForm').submit();
				
			}
		}
	</script>
<body>
  <section id="container">
    <div class="row justify-content-center">
      <div class="col-lg-4 col-md-6 col-sm-8 mx-auto">
        <div class="logo_area text-center">
          <a href="/" class="yummy-logo">
            <img src="https://i.imgur.com/evlOrzY.png" width="400">
          </a>
        </div>
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="text-center">비밀번호 변경</h4>
          </div>
          
          <div class="card-body">
            <form id="passUpdateForm" action="${pageContext.request.contextPath}/member/passUpdate" method="post">
              <div>
                <label class="control-label" for="userPass">현재 비밀번호:</label>
                <input class="form-control" type="password" id="userPass" name="userPass" required>
              </div>
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
							<button class="btn btn-primary" type="button" onclick="showConfirmDialog()">수정하기</button>
						</div>
              
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>