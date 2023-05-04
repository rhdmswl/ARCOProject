<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- Material Dashboard CSS -->
<link rel="stylesheet"
	href="https://demos.creative-tim.com/material-dashboard/assets/css/material-dashboard.min.css?v=2.1.2">

<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />


<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<title>PASSWORD UPDATE</title>
<style type="text/css">
.center {
	text-align: center;
}

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

.card {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	position: relative;
	width: 500px;
	margin: 0 auto;
}

.card-title {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 30px;
	font-weight: 700;
	color: #696969;
	width: 100%;
	text-align: center;
}

.form-control::placeholder {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.form-control {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	width: 250px;
	height: 50px;
	box-sizing: border-box;
	margin-left: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 4px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;

}

.form-control#newPass {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	width: 250px;
	height: 50px;
	box-sizing: border-box;
	margin-left: 43px;
	padding: 5px 0 5px 10px;
	border-radius: 4px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;
}

.btn-secondary {
	width: 100px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 15px;
	box-shadow: none;
	height: 40px;
	line-height: 20px;
	padding: 0;
	margin-left: 45px;
	margin-top: 20px;
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
	margin-right: -40px;
	margin-top: 20px;
}

.btn-primary:hover {
	box-shadow: 1px 4px 3px 1px #dadce0;
}

.btn-sm {
	magin-bottom: 0px;
	position: relative;
	top: 5px;
}

.btnGroup {
	position: relative;
	left: 150px;
}

.input-group {
	height: 40px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	border: 0;
	outline: none;
	padding-left: 10px;
	margin-bottom: 15px;
}

.btn-primary.btn-sm {
	margin-top: 10px;
	margin-left: 20px;
}

.form-control, .box {
	display: inline-block;
	vertical-align: middle;
}

#passUpdateForm {
	margin-left: 60px;
	
}

#alert-danger{
	font-size: 15px;
	margin-left:107px;
}

#alert-success{
	font-size: 15px;
	margin-left:107px;
	
}

.control-label {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 19px;
	font-weight: 700;
	color: #696969;
	margin-left:-40px;
}

.submitGroup {
	margin-top: -10px;
	margin-left: 123px;
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
	height: 48px;
	position: relative;
	bottom: -30px;
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
	$(document).ready(
		function() {
			
			// modal function
		    function showModalAlert(message) {
		        $("#modal-alert-text").text(message);
		        $("#modal-alert").css("display", "block");
		    }
			
		    function showModalConfirm(message, callback) {
		        $("#modal-confirm-text").text(message);
		        $("#modal-confirm").css("display", "block");
		        $("#modal-confirm-ok").off().on("click", function () {
		            $("#modal-confirm").css("display", "none");
		            callback(true);
		        });
		        $("#modal-confirm-cancel").off().on("click", function () {
		            $("#modal-confirm").css("display", "none");
		            callback(false);
		        });
		    }

		    // modal close event
		    $("#modal-alert-ok").on("click", function () {
		        $("#modal-alert").css("display", "none");
		    });
		    
		    $("#modal-confirm-ok, #modal-confirm-cancel").on("click", function () {
		        $("#modal-confirm").css("display", "none");
		    });
			
			// 비밀번호 유효성 검사
			function validatePassword() {
				var pwd1 = $("#newPass").val();
				var pwd2 = $("#passCheck").val();
				var pwdRegex = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d!@#$%^&*()-=_+]{8,16}$/;
				var passwordChars = pwd1.split("");
				var duplicateCount = 0;
				
				if (pwd1 == '' || pwd1.includes(' ')) { // 공백이 있는 경우
				    $("#alert-danger").css('display', 'inline-block').text('비밀번호는 공백 없이 입력해주세요.');
				    return false;
				}
				
				if (/^\d+$/.test(pwd1)) { // 숫자만 입력한 경우
				    $("#alert-danger").css('display', 'inline-block').text('비밀번호에는 숫자만 사용하실 수 없습니다.');
				    return false;
				}

				if (!pwdRegex.test(pwd1)) {
					$("#alert-danger").css('display', 'inline-block').text(
							'8~16자 이내의 영문, 숫자, 특수문자만 가능합니다.');
					return false;
				}

				if (pwd1 != '' && pwd2 == '') {
					$("#alert-danger").css('display', 'inline-block').text(
							'비밀번호 확인을 입력해주세요.');
					return false;
				}

				if (pwd1 != "" || pwd2 != "") {
					if (pwd1 == pwd2) {
						$("#alert-success").css('display', 'inline-block');
						$("#alert-danger").css('display', 'none');
					} else {
						$("#alert-success").css('display', 'none');
						$("#alert-danger").css('display', 'inline-block')
								.text('비밀번호가 일치하지 않습니다.');
						return false;
					}
				}

				for (var i = 0; i < passwordChars.length; i++) {
					var charCount = 0;
					for (var j = 0; j < passwordChars.length; j++) {
						if (passwordChars[i] == passwordChars[j]) {
							charCount++;
						}
					}
					if (charCount > 2) {
						duplicateCount++;
					}
				}

				return true;
			}
			
			// 비밀번호 변경 버튼 클릭 이벤트
			$("#submit").on("click", function() {
				if (!validatePassword()) {
					return false;
				}

				if ($("#newPass").val() == "") {
			        showModalAlert("비밀번호를 입력해주세요.");
			        $("#newPass").focus();
			        return false;
			    }

			    if ($("#passCheck").val() == "") {
			        showModalAlert("비밀번호 확인을 입력해주세요.");
			        $("#passCheck").focus();
			        return false;
			    }

			    var pwVal = $("#newPass").val();

			    if (pwVal.length < 8) {
			        showModalAlert("비밀번호는 최소 8자 이상 입력해주세요.");
			    } else {
			        showModalConfirm("비밀번호를 변경하시겠습니까?", function (result) {
			            if (result) {
			                $("#passUpdateForm").submit();
			                showModalAlert("비밀번호 변경이 완료 되었습니다. 다시 로그인 해주세요 !");
			            }
			        });
			    }
			});

			// 취소
			$(".cancel").on("click", function() {
				location.href = "/member/mypage";
			});

			$('.form-control').focusout(function() {
				validatePassword();
			});
		});
</script>
<body>
	<section id="container">
		<div class="row justify-content-center">
			<div class="col-lg-4 col-md-6 col-sm-8 mx-auto">
				<div class="logo_area text-center">
					<a href="/" class="yummy-logo"><img
						src="https://i.imgur.com/evlOrzY.png" width="400"></a>
				</div>
				<div class="card">
					<div class="card-header card-header-primary">
						<h4 class="card-title center">비밀번호 변경</h4>
					</div>
					<div class="card-body">
						<form action="/member/passUpdate" method="post"
							id="passUpdateForm">

							<div class="form-group has-feedback">
								<label class="control-label" for="newPass">새 비밀번호</label> <input
									class="form-control" type="password" id="newPass"
									name="newPass" />

							</div>
							<br>

							<div class="form-group has-feedback">
								<label class="control-label" for="passCheck">새 비밀번호 확인</label> <input
									class="form-control" type="password" id="passCheck"
									name="passCheck" /> <span id="alert-success"
									style="display: none; color: green;">비밀번호가 일치합니다.</span> <span
									id="alert-danger"
									style="display: none; color: #d92742; font-weight: bold;">비밀번호가
									일치하지 않습니다.</span>
							</div>

						</form>
						<div class="submitGroup">
							<button class="btn btn-primary" type="button" id="submit">비밀번호
								변경</button>
							<button class="btn btn-secondary cancel" type="button">취소</button>
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
