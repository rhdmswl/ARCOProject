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


<title>SIGN UP</title>
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
    width: 700px;
    margin-left:-40px;
    margin-bottom: 70px;
    
}


.card-body {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	position: relative;
	width: 700px;
	position: relative;
	right: 45px;
	margin-bottom: 40px;
	left: 75px;
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
	width: 40%;
	height: 50px;
	box-sizing: border-box;
	margin-left: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 4px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;
}

.form-control#userID {
	width: 250px;
	margin-left: 60px;
}

.form-control#userPass {
	width: 250px;
	margin-left: 47px;
	margin-top: 7px;
}

.form-control#passCheck {
	width: 250px;
	margin-left: 16px;
	margin-top: 10px;
}

.form-control#userName {
	width: 250px;
	margin-left: 65px;
	margin-top: 7px;
}

.form-control#phone {
	width: 250px;
	margin-left: 50px;
	margin-top: 7px;
}

.form-control#email {
	width: 250px;
	margin-left: 65px;
	margin-top: -15px;
	margin-bottom: -20px;
}

.form-control#verifyCode {
	width: 250px;
	margin-left: 120px;
	margin-top: -12px;
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

.control-label, label {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	color: black;
	font-weight: 500;
	font-size: 16px;
}

.control-label-email {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	color: black;
	font-weight: 500;
	font-size: 16px;
	margin-top: 20px;
}

.emailSelectBtn {
	margin-left: 393px;
	bottom: 36px;
}

.submitBtnGroup {
	margin-top: 50px;
	margin-left: -140px;
}

#alert-success {
	font-size: 15px;
	margin-left: 20px;
}

#alert-success1 {
	font-size: 15px;
	margin-left: 20px;
}

#alert-success2 {
	font-size: 15px;
	margin-left: 20px;
}

#alert-danger {
	font-size: 15px;
	margin-left: 117px;
}

#alert-danger1 {
	font-size: 15px;
	margin-left: 117px;
}

#alert-danger2 {
	font-size: 15px;
	margin-left: 120px;
}

#alert-danger3 {
	font-size: 15px;
	margin-left: 120px;
}

#mail-check-warn1 {
	font-size: 15px;
	margin-left: 120px;
}
#mail-check-warn2 {
	font-size: 15px;
	margin-left: 20px;
}
</style>

</head>
<script type="text/javascript">
	
	
							$(document)
									.ready(
											function() {
												// 취소
												$(".cancel").on("click", function() {
													location.href = "/";
												})
												
												
							//아이디					
											$('.form-control').focusout(function() {
						    var userId = $("#userId").val();
						    var idRegex = /^[a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣]{4,10}$/;
						    var spaceRegex = /\s/;
						
						    if (spaceRegex.test(userId)) {
						        $("#alert-danger1").css('display', 'inline-block').text('아이디에는 공백을 입력할 수 없습니다.');
						        $("#alert-success1").css('display', 'none');
						        $('#submit').attr('disabled', true);
						        
						        return false;
						    } else if (!idRegex.test(userId)) {
						        $("#alert-danger1").css('display', 'inline-block').text('아이디는 영문과 숫자 조합이며 4자이상 10자 이하이어야 합니다.');
						        $("#alert-success1").css('display', 'none');
						        $('#submit').attr('disabled', true);
						        
						        return false;
						    } else if (/^[ㄱ-ㅎㅏ-ㅣ가-힣]+$/.test(userId)) {
						        $("#alert-danger1").css('display', 'inline-block').text('아이디에는 한글만 입력할 수 없습니다.');
						        $("#alert-success1").css('display', 'none');
						        $('#submit').attr('disabled', true);
						        
						        return false;
						    } else {
						        $("#alert-danger1").css('display', 'none');
						        
						        
						    }
						    
						    $.ajax({
						        url : "/member/idChk",
						        type : "post",
						        dataType : "json",
						        data : {
						            "userId" : $("#userId").val()
						        },
						        success : function(data) {
						            if (data == 1) {
						            	 $("#alert-danger1").css('display', 'inline-block').text('중복된 아이디입니다. 다시 입력해주세요.');
						            	 $("#alert-success1").css('display', 'none');
						            	 $('#submit').attr('disabled', true);
						            	 
						               
						            } else if (data == 0) {
						                
						            	 $("#alert-success1").css('display', 'inline-block').text('사용가능한 아이디입니다.');
						            	 $("#alert-danger1").css('display', 'none');
						            	 $('#submit').attr('disabled', false);
						            	 
						                
						            }
						        }
						    });
						});


						//비밀번호
						$('.form-control').focusout(function() {
						    var pwd1 = $("#userPass").val();
						    var pwd2 = $("#passCheck").val();
						    var pwdRegex = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d!@#$%^&*()-=_+]{8,16}$/;

						    if (!pwdRegex.test(pwd1)) {
						        $("#alert-danger").css('display', 'inline-block').text('비밀번호는 8~16자의 영문자, 숫자, 특수문자를 조합하여 입력해주세요.');
						        $("#alert-success").css('display', 'none');
						        
						        return false;
						    } else if (/\s/.test(pwd1)) {
						        $("#alert-danger").css('display', 'inline-block').text('비밀번호에는 공백을 포함할 수 없습니다.');
						        $("#alert-success").css('display', 'none');
						       
						        return false;
						    } else if (pwd1 !== '' && pwd2 === '') {
						        $("#alert-danger").css('display', 'inline-block').text('비밀번호 확인을 입력해주세요.');
						        $("#alert-success").css('display', 'none');
						        
						        return false;
						    } else if (pwd1 !== "" || pwd2 !== "") {
						        if (pwd1 === pwd2) {
						            $("#alert-success").css('display', 'inline-block');
						            $("#alert-danger").css('display', 'none');
						            
						        } else {
						            $("#alert-success").css('display', 'none');
						            $("#alert-danger").css('display', 'inline-block').text('비밀번호가 일치하지 않습니다.');
						            
						            return false;
						        }
						    } else {
						        $("#alert-danger").css('display', 'none');
						        
						    }
						});


						//닉네임
						$('.form-control').focusout(function() {
						    var userName = $("#userName").val();
						    var nameRegex = /^[a-zA-Z가-힣0-9]{2,10}$/;
						    var numRegex = /^[0-9]{2,10}$/;
						    var spaceRegex = /\s/;

						    if (spaceRegex.test(userName)) {
						        $("#alert-danger2").css('display', 'inline-block')
						            .text('닉네임에는 공백을 입력할 수 없습니다.');
						        $("#alert-success2").css('display', 'none');
						        $('#submit').attr('disabled', true);
						        return false;
						    } else if (!nameRegex.test(userName)) {
						        $("#alert-danger2").css('display', 'inline-block')
						            .text('닉네임은 2자~10자 이하의 영문, 한글, 숫자만 사용가능합니다.');
						        $("#alert-success2").css('display', 'none');
						        $('#submit').attr('disabled', true);
						        return false;
						    } else if (numRegex.test(userName)) {
						        $("#alert-danger2").css('display', 'inline-block')
						            .text('닉네임에는 숫자만 입력할 수 없습니다.');
						        $("#alert-success2").css('display', 'none');
						        $('#submit').attr('disabled', true);
						        return false;
						    } else {
						        $("#alert-danger2").css('display', 'none');
						    }

						    $.ajax({
						        url: "/member/nameChk",
						        type: "post",
						        dataType: "json",
						        data: {
						            "userName": $("#userName").val()
						        },
						        success: function(data) {
						        	if (data == 1) {						        		
						                $("#alert-danger2").css('display', 'inline-block')
						                    .text('중복된 닉네임입니다. 다시 입력해주세요.');
						                $("#alert-success2").css('display', 'none');
						                $('#submit').attr('disabled', true);
						               
						               
						            } else if (data == 0) {
						                $("#alert-success2").css('display', 'inline-block')
						                    .text('사용 가능한 닉네임입니다.');
						                $("#alert-danger2").css('display', 'none');
						                $('#submit').attr('disabled', false);
						               
						               
						            }
						        }
						    });
						});



						//전화번호	
						$('.form-control').focusout(
								function() {
									var phone = $("#phone").val();
									var phoneRegex = /^[0-9]+$/;

									if (!phoneRegex.test(phone)) {
										$("#alert-danger3").css('display',
												'inline-block').text(
												'전화번호는 숫자만 입력 가능합니다. (ex.01012341234)');
										return false;
									} else {
										$("#alert-danger3").css('display',
												'none');
									}
								});

						
						//이메일 
						$('#mail-Check-Btn').click(function() {
							const email = $('#email').val() // 이메일 주소값 얻어오기!
							console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
							const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
							
							$.ajax({
								type : 'get',
								url : '<c:url value ="/member/mailCheck?email="/>'+email, // GET방식이라 Url 뒤에 email을 쓸 수 있음
								success : function (data) {
									console.log("data : " +  data);
									checkInput.attr('disabled',false);
									code =data;
									if(!email){
										alert('이메일을 입력해주세요.');
										return;
									}
									alert('인증번호가 전송되었습니다.')
								}			
							}); // end ajax
						}); // end send email
						
						// 인증번호 비교 
						// blur -> focus가 벗어나는 경우 발생
						$('.mail-check-input').blur(function () {
							const inputCode = $(this).val();
							const $resultMsg1 = $('#mail-check-warn1');
							const $resultMsg2 = $('#mail-check-warn2');
							
							   // 유효성 검사 - 숫자 6자리
							   const regex = /^[0-9]{6}$/;
							   if(!regex.test(inputCode)) {
							      $resultMsg1.html('인증번호는 숫자 6자리여야 합니다.');
							      $resultMsg1.css({'color': '#d92742','font-weight': 'bold'});
							      $('#submit').attr('disabled', true);
							      return;
							   }
							   
							if(inputCode === code){
								$resultMsg2.html('인증번호가 일치합니다.');
								$resultMsg2.css('color','green');
								$('#mail-Check-Btn').attr('disabled',true);
								$('#email').attr('readonly',true);
								// 회원가입 버튼 활성화
							    $('#submit').attr('disabled', false);
							    $resultMsg1.html(''); // $resultMsg1 메시지 초기화
							
							  } else {
							    $resultMsg1.html('인증번호가 일치하지 않습니다.');
							    $resultMsg1.css({'color': '#d92742','font-weight': 'bold'});
							    // 회원가입 버튼 비활성화
							    $('#submit').attr('disabled', true);
							    $resultMsg2.html(''); // $resultMsg2 메시지 초기화
							  }
							});
						
						
						$("#submit")
								.on(
										"click",
										function() {
											if ($("#userId").val() == "") {
												alert("아이디를 입력해주세요.");
												$("#userId").focus();
												return false;
											}

											if ($("#userPass").val() == "") {
												alert("비밀번호를 입력해주세요.");
												$("#userPass").focus();
												return false;
											}
											if ($("#passCheck").val() == "") {
												alert("비밀번호확인을 입력해주세요.");
												$("#passCheck").focus();
												return false;
											}
											if ($("#userName").val() == "") {
												alert("닉네임을 입력해주세요.");
												$("#userName").focus();
												return false;
											}

											if ($("#phone").val() == "") {
												alert("전화번호를 입력해주세요.");
												$("#phone").focus();
												return false;
											}
											if ($("#email").val() == "") {
												alert("이메일을 입력해주세요.");
												$("#email").focus();
												return false;
											}

											var idVal = $("#userId").val();
											var pwVal = $("#userPass").val();
											var pwConfirmVal = $("#passCheck").val();
											var emailVal = $("#email").val();
											var phoneVal = $("#phone").val();
											var usernameVal = $("#userName")
													.val();
											var verifyCodeVal = $("#verifyCode").val();
											
										
										
											 if (pwVal == ""
												 	|| pwConfirmVal == ""
													|| emailVal == ""
													|| phoneVal == ""
													|| usernameVal == ""
													|| verifyCodeVal == "" ) {
												alert("공백없이 모두 입력해주세요.");
											} else if (pwVal.length < 8) {
												alert("비밀번호는 8자~16자 이내로 입력해주세요.");
											} else if (pwVal != pwConfirmVal) {
												  alert("비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
											} else if (/^[0-9]+$/.test(pwVal)) {
												  alert("비밀번호에 숫자만 입력할 수 없습니다. 다시 입력해주세요.");
												  return false;
												} else if (!isValidEmail(emailVal)) {
												alert("유효한 이메일 주소를 입력해주세요.");
											} else if (!isValidPhone(phoneVal)) {
												alert("유효한 전화번호를 입력해주세요.");
											}  else if (!isValidUsername(usernameVal)) {
												alert("닉네임은 2자 이상 8자 이하의 한글, 영문, 숫자만 입력해주세요.");
											} else if (idVal.length < 4 || idVal.length > 10 || !isValidId(idVal)) {
												  alert("아이디는 4자 이상 10자 이하의 영문, 숫자만 입력 가능합니다. 다시 입력해주세요.");
											}	else {
												
												$("#regForm").submit();
												alert("회원가입이 완료되었습니다. ARCO에 오신걸 환영합니다 !");
												
											}
										

											function isValidEmail(email) {

												var emailRegEx = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
												return emailRegEx.test(email);
											}

											function isValidPhone(phone) {

												var phoneRegEx = /^\d{10,11}$/;
												return phoneRegEx.test(phone);
											}
											 function isValidId(id) {
												 
												  var regExp = /^[a-z0-9_-]{4,10}$/;
												  return regExp.test(id);
												}
 

											function isValidUsername(username) {
												  var usernameRegEx = /^[a-zA-Z가-힣\d]{2,10}$/;
												  var containsAlphabetOrKorean = /[a-zA-Z가-힣]/.test(username);
												  var containsDigit = /\d/.test(username);
												  var containsSpace = /\s/.test(username);

												  if (!usernameRegEx.test(username)) {
												    return false;
												  }

												  if (!containsAlphabetOrKorean || containsSpace) {
												    return false;
												  }

												  return true;
												}
								
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
						<h4 class="card-title center">회원가입</h4>
					</div>
					<div class="card-body">
						<form action="/member/register" method="post" id="regForm">
							<div class="form-group has-feedback">
								<label class="control-label" for="userId">아이디</label> <input
									class="form-control" type="text" id="userId" name="userId" />

								<span id="alert-danger1"
									style="display: none; color: #d92742; font-weight: bold;">아이디는
									10자 이하이어야 합니다.</span> <span id="alert-success1"
									style="display: none; color: green;"></span>
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="userPass">비밀번호</label> <input
									class="form-control" type="password" id="userPass"
									name="userPass" />

							</div>
							<br>

							<div class="form-group has-feedback">
								<label class="control-label" for="passCheck">비밀번호 확인</label> <input
									class="form-control" type="password" id="passCheck"
									name="passCheck" /> <span id="alert-success"
									style="display: none; color: green;">비밀번호가 일치합니다.</span> <span
									id="alert-danger"
									style="display: none; color: #d92742; font-weight: bold;">비밀번호가
									일치하지 않습니다.</span>
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="userName">닉네임</label> <input
									class="form-control" type="text" id="userName" name="userName" />

								<span id="alert-danger2"
									style="display: none; color: #d92742; font-weight: bold;"></span>

								<span id="alert-success2" style="display: none; color: green;"></span>
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="phone">전화번호</label> <input
									class="form-control" type="text" id="phone" name="phone" /> <span
									id="alert-danger3"
									style="display: none; color: #d92742; font-weight: bold;"></span>
							</div>
							<br>
							<!-- email -->
							<div class="form-group has-feedback">
								<label class="control-label-email" for="email">이메일</label> <input
									class="form-control" type="text" id="email" name="email" />
								<div class="input-group-addon">
									<button type="button" class="btn btn-primary emailSelectBtn"
										id="mail-Check-Btn">본인인증</button>
								</div>
								<div class="mail-check-box">
									<input class="form-control mail-check-input" id=verifyCode
										name=verifyCode placeholder="인증번호 6자리를 입력해주세요!"
										disabled="disabled" maxlength="6">
										 
										 <span id="mail-check-warn2"></span>
								</div>
										 <span id="mail-check-warn1"></span>

							</div>




						</form>




						<div class="text-center submitBtnGroup">
							<button class="btn btn-primary" type="button" id="submit">회원가입</button>
							<button class="btn btn-secondary cancel" type="button">취소</button>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>

</body>

</html>
