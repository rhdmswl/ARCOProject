<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<!-- Material Dashboard CSS -->
<link rel="stylesheet"
	href="https://demos.creative-tim.com/material-dashboard/assets/css/material-dashboard.min.css?v=2.1.2">

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>DELETE ACCOUNT</title>

<style type="text/css">
body {
	margin-top: 20px;
	background: #FFF
}

body::-webkit-scrollbar {
	width: 8px; /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
	height: 5%; /* 스크롤바의 길이 */
	background: black; /* 스크롤바의 색상 */
	border-radius: 10px;
}

body::-webkit-scrollbar-track {
	background: rgba(242, 240, 241); /*스크롤바 뒷 배경 색상*/
}

.btn-secondary {
	width: 100px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 15px;
	box-shadow: none;
	height: 40px;
	line-height: 20px;
	padding: 0;
	left: 15px;
}

.btn-secondary:hover {
	box-shadow: 1px 4px 3px 1px #dadce0;
}

.btn-secondary:before {
	position: absolute;
	/* content: ''; */
	display: inline-block;
	top: -180px;
	left: 0px;
	width: 30px;
	height: 100%;
	background-color: #fff;
}

.btn-secondary:active {
	box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .3), -4px -4px 6px 0
		rgba(116, 125, 136, .2), inset -4px -4px 6px 0 rgba(242, 19, 120),
		inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
}

.btn-primary {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	box-shadow: none;
	width: 100px;
	height: 40px;
	line-height: 20px;
	font-size: 15px;
	padding: 0;
	left: 15px;
}

.btn-primary:hover {
	box-shadow: 1px 4px 3px 1px #dadce0;
}

.card {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	width: 550px;
	margin: 0 auto;
}

.card .card-header {
	padding-bottom: 0px;
}

.card-title {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 30px;
	font-weight: 700;
	color: #696969;
	text-align: center;
}

.control-label {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 19px;
	font-weight: 700;
	color: #696969;
}

.form-control#userId {
	margin-top: -45px;
	margin-left: 100px;
}

.form-control#userPass {
	margin-top: -45px;
	margin-left: 100px;
}

.form-control#userName {
	margin-top: -45px;
	margin-left: 100px;
}

.delFormGroup {
	position: relative;
	left: 12%;
	margin-bottom: 40px;
	width: 550px;
}

/* 수정 칸 */
.memberGroup {
	border: 1px solid #ccc;
	border-radius: 10px;
	padding-left: 10px;
	margin-bottom: 5px;
	width: 50%;
}

.memberGroup[readonly] {
	background-color: #f2f2f2;
}

.btnGroup {
	position: relative;
	right: 10px;
}

.modal {
	display: none;
	position: fixed;
	z-index: 300;
	left: 0;
	top: 0;
	width: 120%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	position: fixed;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border-radius: 10px;
	width: 400px;
	height: 170px;
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.modal-footer {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	cursor: pointer;
	height: 60px;
	position: relative;
	bottom: -25px;
	right: 50%;
	transform: translateX(50%);
}

.modaltext {
	vertical-align: text-bottom;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 500;
	position: relative;
	top: 50%;
	transform: translate(-50%, -50%);
}
</style>

</head>
<script type="text/javascript">
	
	$(document).ready(function(){
		// 취소
		$(".cancel").on("click", function(){
			location.href = "/member/mypage";						    
		})
		
		// modal function
	    function showModalAlert(message, callback) {
	        $("#modal-alert-text").text(message);
	        $("#modal-alert").fadeIn();

	        if (callback) {
	            $("#modal-alert-ok").off("click");
	            $("#modal-alert-ok").on("click", function() {
	                $("#modal-alert").fadeOut();
	                callback();
	            });
	        } else {
	            $("#modal-alert-ok").off("click");
	            $("#modal-alert-ok").on("click", function() {
	                $("#modal-alert").fadeOut();
	            });
	        }
	    }
	
	    function showModalConfirm(message, callback) {
	        $("#modal-confirm-text").text(message);
	        $("#modal-confirm").fadeIn();
	
	        $("#modal-confirm-ok").off("click");
	        $("#modal-confirm-ok").on("click", function() {
	            $("#modal-confirm").fadeOut();
	            callback(true);
	        });
	
	        $("#modal-confirm-cancel").off("click");
	        $("#modal-confirm-cancel").on("click", function() {
	            $("#modal-confirm").fadeOut();
	            callback(false);
	        });
	    }
	
	    $("#submit").on("click", function(){
	        if($("#userPass").val()==""){
	            showModalAlert("비밀번호를 입력해주세요.", null);
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
	                    showModalConfirm("회원탈퇴하시겠습니까?", function(result) {
	                        if (result) {
	                            showModalAlert("탈퇴가 완료되었습니다.\n 언제든 ARCO가 필요하다면 다시 방문해주세요 \uD83D\uDE22", function() {
	                                $("#delForm").submit();
	                            });
	                        }
	                    });
	                } else {
	                    showModalAlert("비밀번호가 틀렸습니다.", null);
	                    return;
	                }
	            }
	        });                
	    });
		
        $("#modal-alert-ok").on("click", function() {
            $("#modal-alert").fadeOut();
        });

        $("#modal-confirm-cancel").on("click", function() {
            $("#modal-confirm").fadeOut();
        });
        
	});
</script>
<body>
	<section id="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="logo_area text-center">
					<a href="/" class="yummy-logo"><img
						src="https://i.imgur.com/evlOrzY.png" width="400"></a>
				</div>
				<div class="card">
					<div class="card-header card-header-primary">
						<div class="card-title">회원 탈퇴</div>
					</div>
					<div class="card-body">
						<form class="delFormGroup" action="/member/memberDelete"
							method="post" id="delForm">
							<div class="form-group has-feedback">
								<label class="control-label" for="userId">아이디</label> <input
									class="form-control memberGroup" type="text" id="userId"
									name="userId" value="${member.userId}" readonly="readonly" />
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="userPass">비밀번호</label> <input
									class="form-control memberGroup" type="password" id="userPass"
									name="userPass" />
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="userName">닉네임</label> <input
									class="form-control memberGroup" type="text" id="userName"
									name="userName" value="${member.userName}" readonly="readonly" />
							</div>
						</form>
						<div class="text-center btnGroup">
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

	<!-- start modal -->
	<div id="modal-alert" class="modal">
	    <div class="modal-content">
	        <p style="text-align: center; line-height: 1.5;">
                <span class="modaltext" id="modal-alert-text"></span>
            </p>
	        <div class="modal-footer">
	            <button class="btn btn-default" id="modal-alert-ok">확인</button>
	        </div>
	    </div>
	</div>
	
	<div id="modal-confirm" class="modal">
	    <div class="modal-content">
	    	<p style="text-align: center; line-height: 1.5;">
                <span class="modaltext" id="modal-confirm-text"></span>
            </p>
	        <div class="modal-footer">
	            <button class="btn btn-default" id="modal-confirm-cancel">취소</button>
	            <button class="btn btn-default" id="modal-confirm-ok">확인</button>
	        </div>
	    </div>
	</div>
	<!-- end modal -->
</body>

</html>
