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
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">


<title>회원가입</title>
<style type="text/css">
.center {
	text-align: center;
}

body {
	margin-top: 20px;
	background: #FFF
}

.card {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	position: absolute;
	
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
	width: 60%;
	height: 50px;
	box-sizing: border-box;
	margin-left: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 4px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;
}

.form-control#email {
	font-family: 'Noto Sans KR', sans-serif;
	width: 30%;
	height: 50px;
	box-sizing: border-box;
	margin-left: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 4px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;
}
.form-control#email,
.form-control#domain-txt,
.form-control#domain-list {
	font-family: 'Noto Sans KR', sans-serif;
	width: 30%;
	height: 50px;
	box-sizing: border-box;
	margin-left: 5px;
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
	  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
            -4px -4px 6px 0 rgba(116, 125, 136, .2), 
   			inset -4px -4px 6px 0 rgba(242, 19, 120),
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

select.box {
	width: 30%;
	height: 50px;
	box-sizing: border-box;
	margin-left: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 4px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;
	font-family: 'Montserrat', 'Pretendard', sans-serif;
}

option {
	font-size: 16px;
}

.box#email option {
	font-size: 14px;
	background-color: #ffffff;
}
</style>

</head>
<script type="text/javascript">
	$(document).ready(function() {
	    // 취소
	    $(".cancel").on("click", function() {
	        location.href = "/";
	    })
	    	  $('.form-control').focusout(function () {
	    		  var userId = $("#userId").val();
	  	        var idRegex = /^[a-zA-Z0-9]{4,10}$/;
	  	        if (userId == '') {
	  	            $("#alert-danger1").css('display', 'inline-block').text('아이디를 입력해주세요.');
	  	            return false;
	  	        } else if (!idRegex.test(userId)) {
	  	            $("#alert-danger1").css('display', 'inline-block').text('아이디는 문자와 숫자 조합이며 4자이상 10자 이하이어야 합니다.');
	  	            return false;
	  	        } else {
	  	            $("#alert-danger1").css('display', 'none');
	  	        }
		  
});

	  $('.form-control').focusout(function () {
		  // 비밀번호 유효성 검사
	        var pwd1 = $("#userPass").val();
	        var pwd2 = $("#passCheck").val();
	        var pwdRegex = /^[a-zA-Z0-9!@#$%^&*()?_~]{8,16}$/;
	       
	          if (!pwdRegex.test(pwd1)) {
	            $("#alert-danger").css('display', 'inline-block').text('비밀번호는 8~16자 이내의 영문, 숫자, 특수문자만 사용 가능합니다.');
	            return false;
	        } else {
	            $("#alert-danger").css('display', 'none');
	        }

	        if ( pwd1 != '' && pwd2 == '' ) {
	            $("#alert-danger").css('display', 'inline-block').text('비밀번호 확인을 입력해주세요.');
	            return false;
	        } else if (pwd1 != "" || pwd2 != "") {
	            if (pwd1 == pwd2) {
	                $("#alert-success").css('display', 'inline-block');
	                $("#alert-danger").css('display', 'none');
	            } else {
	                $("#alert-success").css('display', 'none');
	                $("#alert-danger").css('display', 'inline-block').text('비밀번호가 일치하지 않습니다.');
	                return false;
	            }
	        }

    // check for duplicate characters in password
    var passwordChars = pwd1.split("");
    var duplicateCount = 0;
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
    if (duplicateCount > 0) {
        $("#alert-danger").css('display', 'inline-block').text('비밀번호에는 3개 이상 중복된 문자 또는 숫자를 사용할 수 없습니다.');
    }
});
	    const domainListEl = document.querySelector('#domain-list');
	    const domainInputEl = document.querySelector('#domain-txt');

	    // 이벤트 등록
	    function registerEvents() {
	      domainListEl.addEventListener('change', (event) => {
	        if (event.target.value !== "type") {
	          domainInputEl.value = event.target.value
	          domainInputEl.disabled = true
	        } else {
	          domainInputEl.value = ""
	          domainInputEl.disabled = false
	        }
	      })
	    }

	    
	    if (domainListEl && domainInputEl) {
	      registerEvents();
	    } else {
	   
	      document.addEventListener('DOMContentLoaded', registerEvents);
	    }
	    $('.form-control').focusout(function () {
	    	var userName = $("#userName").val();
	    	var nameRegex = /^[a-zA-Z가-힣]{2,8}$/;
	    	
	    	 if (!nameRegex.test(userName)) {
	    		 $("#alert-danger2").css('display', 'inline-block').text('닉네임은 2자 이상 8자 이하의 영문 또는 한글로만 입력해주세요.');
	    	    return false;
	    	} else {
	    	    $("#alert-danger2").css('display', 'none');
	    	}

	  
});
	    
	    $('.form-control').focusout(function () {
	        var phone = $("#phone").val();
	        var phoneRegex = /^[0-9]+$/;

	        if (!phoneRegex.test(phone)) {
	            $("#alert-danger3").css('display', 'inline-block').text('전화번호는 숫자만 입력 가능합니다.');
	            return false;
	        } else {
	            $("#alert-danger3").css('display', 'none');
	        }
	    });





	    $("#submit").on("click", function() {
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
	              
	       

	        var idChkVal = $("#idChk").val();
	        if (idChkVal == "N") {
	            alert("중복확인 버튼을 눌러주세요.");
	        } else if (idChkVal == "Y") {
	            $("#regForm").submit();
	            alert("회원가입이 완료되었습니다. ARCO에 오신걸 환영합니다 !");
	        }
	    });
	});
	

	function fn_idChk() {
	    $.ajax({
	        url : "/member/idChk",
	        type : "post",
	        dataType : "json",
	        data : {
	            "userId" : $("#userId").val()
	        },
	        success : function(data) {
	            if (data == 1) {
	                alert("중복된 아이디입니다.");
	            } else if (data == 0) {
	                $("#idChk").attr("value", "Y");
	                alert("사용가능한 아이디입니다.");
	            }
	        }
	    });
	}

	 
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
								<label class="control-label" for="userId">아이디</label> <br>
								<input class="form-control" type="text" id="userId"
									name="userId" />
								<button class="btn btn-primary btn-sm" type="button" id="idChk"
									onclick="fn_idChk();" value="N">중복확인</button>
								<span id="alert-danger1"
									style="display: none; color: #d92742; font-weight: bold;">아이디는
									10자 이하이어야 합니다.</span>
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="userPass">비밀번호</label><br>
								<input class="form-control" type="password" id="userPass"
									name="userPass" />

							</div>
							<br>
						
							<div class="form-group has-feedback">
								<label class="control-label" for="passCheck">비밀번호 확인</label><br>
								<input class="form-control" type="password" id="passCheck"
									name="passCheck" /> <span id="alert-success"
									style="display: none; color: #000000;">비밀번호가 일치합니다.</span> <span
									id="alert-danger"
									style="display: none; color: #d92742; font-weight: bold;">비밀번호가
									일치하지 않습니다.</span>
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="userName">닉네임</label><br>
								<input class="form-control" type="text" id="userName"
									name="userName" />
									<span id="alert-danger2"
									style="display: none; color: #d92742; font-weight: bold;"></span>
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="phone">전화번호</label><br> <input
									class="form-control" type="text" id="phone" name="phone" />
									<span id="alert-danger3"
									style="display: none; color: #d92742; font-weight: bold;"></span>
							</div>
							<br>
							<div class="form-group has-feedback">
								<label class="control-label" for="email">이메일</label><br>
								 <input class="form-control" type="text" id="email" name="email" /> @ 
								 <input	class="form-control" type="text" id="domain-txt"  /> 
								 <select class="box" id="domain-list">
									<option value="type">직접 입력</option>
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="daum.net">daum.net</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="nate.com">nate.com</option>


								</select>

							</div>


						</form>
						<div class="text-center">
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
