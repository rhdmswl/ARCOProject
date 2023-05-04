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


<title>FIND ID</title>
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
    margin: 0 auto; /* 중앙 정렬 */
    margin-bottom: 50px;
    padding-left: 5px;
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

.btn-secondary {
	width: 100px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 15px;
	box-shadow: none;
	height: 40px;
	line-height: 20px;
	padding: 0;
	bottom: 40px;
}

.form-control#userName {
	width: 230px;
	margin-left: 30px;
	margin-top: 7px;
}

.form-control#phone {
	width: 230px;
	margin-left: 20px;
	margin-top: 7px;
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

.findIdBtn {
	margin-left: 340px;
	bottom: 45px;
}

.submitBtnGroup {
	margin-top: 10px;
	position: relative;	
	top: 20px;
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
$(document).ready(function() {
    $(".cancel").on("click", function() {
        location.href = "login";
    });

    // 아이디 찾기 
    $('#find-Id-Btn').click(function() {
        const userName = $("#userName").val();
        const phone = $("#phone").val();
        console.log(userName);
        console.log(phone);

        $.ajax({
            url : "/member/findId",
            type : "post",
            dataType : "text",
            data : {
                "userName" : $("#userName").val(),
                "phone" : $("#phone").val()
            },
            success : function(data) {
                if (data.trim() !== "") {
                    $("#modal-text").text("아이디는 " + data + "입니다. 다시 로그인해주세요 !");
                    $('#myModal').show();
                } else {
                    $("#modal-text").text("일치하는 정보가 없습니다.");
                    $('#myModal').show();
                }
            }
        });
    });

    // 모달창 닫기 이벤트
    $("#close_modal").click(function() {
        $('#myModal').hide();
        location.href = "/member/login";
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
						<h4 class="card-title center">아이디 찾기</h4>
					</div>
					<div class="card-body">
						<form action="/member/findId" method="post" id="findIdForm">
							<div class="form-group has-feedback">
								<label class="control-label" for="userName">닉네임</label> <input
									class="form-control" type="text" id="userName" name="userName" />
							</div>
							<br>
							<!-- email -->
							<div class="form-group has-feedback">
								<label class="control-label" for="phone">전화번호</label><input
									class="form-control" type="text" id="phone" name="phone" />
								<div class="input-group-addon">
									<button type="button" class="btn btn-primary findIdBtn"
										id="find-Id-Btn">아이디 확인</button>
								</div>
							</div>
						</form>
						<div class="text-center submitBtnGroup">

							<button class="btn btn-secondary cancel" type="button">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- modal -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <p style="text-align: center; line-height: 1.5;">
                <span id="modal-text" class="modaltext"></span>
            </p>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="close_modal">Close</button>
            </div>
        </div>
    </div>
</body>

</html>
