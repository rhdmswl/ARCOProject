<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>MY PAGE</title>
<link href="/css/material-dashboard.min.css" rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"
	rel="stylesheet">
<link href="/js/core/jquery.min.js" type="text/javascript"></link>
<link href="/js/core/popper.min.js" type="text/javascript"></link>
<link href="/js/core/bootstrap-material-design.min.js"
	type="text/javascript"></link>
<link href="/js/plugins/perfect-scrollbar.jquery.min.js"
	type="text/javascript"></link>
<script src="/js/material-dashboard.min.js?v=2.1.0"
	type="text/javascript"></script>
<link rel="stylesheet" href="/css/material-dashboard.min.css">

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style type="text/css">
body {
	margin-top: 20px;
	background: #FFF;
	margin-bottom: 80px;
}

body::-webkit-scrollbar {
	width: 8px; /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
	height: 30%; /* 스크롤바의 길이 */
	background: black; /* 스크롤바의 색상 */
	border-radius: 10px;
}

body::-webkit-scrollbar-track {
	background: rgba(242, 240, 241); /*스크롤바 뒷 배경 색상*/
}

.card {
	margin-top: 10px;
}

/* 버튼 그룹 */
.col-md-12 {
	margin-top: 7px;
	margin-bottom: 40px;
}

/* 버튼 */
.btn-secondary {
	width: 120px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 15px;
	box-shadow: none;
	height: 40px;
	line-height: 40px;
	padding: 0;
	bottom:-50px;
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
	width: 120px;
	height: 40px;
	line-height: 20px;
	font-size: 15px;
	padding: 0;
}
.btn-primary.ml-2{
bottom:-50px;
}

.btn-primary:hover {
	box-shadow: 1px 4px 3px 1px #dadce0;
}

.table {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 500;
}

.outmember {
	margin-top: 30px;
}

.current-page {
	font-weight: bold;
	color: red;
}

/* 전체 콘텐츠 가운데 정렬 */
.col-lg-8 {
	position: relative;
	left: 18%;
}
.col-md-6{
margin-bottom:-30px;
}

/* 타이틀 폰트 */
.card-title {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 25px;
	font-weight: 700;
	color: #696969;
}

.profileTitleText {
	font-family: 'Open Sans', sans-serif;
	font-size: 35px;
	font-weight: 700;
	color: #f21378;
	margin-bottom: 15px;
}

/* 회원 정보 수정 타이틀 */
.bmd-label-floating {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 20px;
	font-weight: 600;
	color: #696969;
	margin-top: 10px;
	margin-bottom: 10px;
}

/* 수정 칸 */
.memberGroup {
	border: 1px solid #ccc;
	border-radius: 10px;
	padding-left: 10px;
	margin-bottom: 5px;
}

.memberGroup2 {
	width: 200px;
	border: 1px solid #ccc;
	border-radius: 10px;
	padding-left: 10px;
}


.memberGroup[readonly] {
	background-color: #f2f2f2;
}

.btn-sm {
	bottom: 40px;
	position: relative;
	left: 230px;
}

.memberGroup:hover {
	border: 1px solid #ccc;
}

.profileBox {
	height: 340px;
	padding: 20px;
}

.page-item {
	margin-top: 15px;
	margin-bottom: 15px;
	width: 100%;
	height: 40px;
}

.page-item .page-link {
	float: left;
	align-items: center;
	justify-content: center;
	color: #7b809a;
	padding: 0;
	margin: 0 3px;
	border: 2px solid #ccc;
	border-radius: 50% !important;
	width: 36px;
	height: 36px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: .875rem;
	position: relative;
}

.page-item .page-link:hover {
	color: #f21378;
}

.sideListGroup {
	list-style: none;
	text-align: center;
	display: flex;
    justify-content: space-around;
}

.sidelist a {
	color: white;
}

.tab {
	width: 17%;
	position: fixed;
	left: 50px;
	bottom: 550px;
	display: flex;
	flex-direction: column;
	overflow: hidden;
	font-size: 15px;
	
}

.tab button {
	background-color: inherit;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
}

.tab button:hover {
	border-color: #f21378;
}

.tab button.active {
	border-color: #f21378;
	border: 3px solid #f21378;
}

.tabcontent {
	display: none;
	padding: 6px 12px;
}
</style>
</head>
<script type="text/javascript">
$(document).ready(function() {

    $('.form-control').focusout(function() {
        var userName = $("#userName").val();
        var nameRegex = /^[a-zA-Z가-힣0-9]{2,8}$/;
        var numRegex = /^[0-9]{2,10}$/;
        var spaceRegex = /\s/;

        if (spaceRegex.test(userName)) {
            $("#alert-danger2").css('display', 'inline-block').text('닉네임에는 공백을 입력할 수 없습니다.');
            return false;
        } else if (!nameRegex.test(userName)) {
            $("#alert-danger2").css('display', 'inline-block').text('닉네임은 2자~8자 이하의 영문, 한글, 숫자만 사용 가능합니다.');
            return false;
        } else if (numRegex.test(userName)) {
            $("#alert-danger2").css('display', 'inline-block').text('닉네임에는 숫자만 입력할 수 없습니다.');
            return false;
        } else {
            $("#alert-danger2").css('display', 'none');
        }
    });

    $("#submit").on("click", function() {
        var nameChkVal = $("#nameChk").val();
        var usernameVal = $("#userName").val();

        if (usernameVal.length < 2 || usernameVal.length > 8) {
            alert("닉네임은 2자 이상 8자 이하로 입력해주세요.");
            return false;
        } else if (nameChkVal !== "Y") {
            alert("중복확인을 해주세요.");
            return false;
        } else if (usernameVal.indexOf("관리자") === 0) {
            alert("이 닉네임은 사용하실 수 없습니다.");
            return false;
        
        } else {
            if (confirm("회원수정하시겠습니까?")) {
                $("#updateForm").submit();
                alert("회원정보가 수정되었습니다.");
            }
        }
    });
    
    $(".page-item a.page-link").on("click", function (event) {
        event.preventDefault();
        var type = $(this).closest(".page-item").data("type");
        var url = $(this).attr("href");

        $.ajax({
            url: url,
            type: "GET",
            success: function (data) {
                // 여기서 data는 새로 받아온 HTML 페이지
                // 새로 받아온 페이지에서 페이징 영역의 내용을 가져와 현재 페이지의 페이징 영역에 넣어줌
                var newPageItem = $(data).find(".page-item[data-type='" + type + "']");
                $(".page-item[data-type='" + type + "']").html(newPageItem.html());

                // 새로 받아온 페이지에서 해당 타입의 목록 영역의 내용을 가져와 현재 페이지의 목록 영역에 넣어줌
                var contentId = type === "review" ? "myReviews" : type === "post" ? "myPosts" : type === "comment" ? "myComments"
                var newContent = $(data).find("#" + contentId);
                $("#" + contentId).html(newContent.html());
            },
            error: function (xhr, status, error) {
                console.log("페이징 오류: " + error);
            }
        });
    });

});

function fn_nameChk() {
    $.ajax({
        url: "/member/nameChk",
        type: "post",
        dataType: "json",
        data: {
            "userName": $("#userName").val()
        },
        success: function(data) {
            if (data == 1) {
                alert("중복된 닉네임입니다.");
                $("#nameChk").val("D");
            } else if (data == 0) {
                $("#nameChk").val("Y");
                alert("사용 가능한 닉네임입니다.");
            }
        }
    });
}

function showContent(id) {
    var mypage_id = ${mypage_id};
    document.getElementById("select").style.display = (id === 1 && mypage_id === 1) ? "block" : "none";
    document.getElementById("profile").style.display = (id === 3 && mypage_id === 3) ? "block" : "none";
    document.getElementById("myReviews").style.display = (id === 2 && mypage_id === 2) ? "block" : "none";
    document.getElementById("myPosts").style.display = (id === 2 && mypage_id === 2) ? "block" : "none";
    document.getElementById("myComments").style.display = (id === 2 && mypage_id === 2) ? "block" : "none";
    document.getElementById("pagination").style.display = (id === 2 && mypage_id === 2) ? "block" : "none";
}

</script>

<body onload="showContent(${mypage_id});">
	<div class="container">
		<div class="row my-2">
			<div class="col-lg-8 order-lg-2">
				<div class="logo_area text-center">
					<a href="/" class="yummy-logo"><img
						src="https://i.imgur.com/evlOrzY.png" width="400"></a>
				</div>
				<br>
				
					<ul class="list-unstyled active sideListGroup">
						<li class="sidelist${mypage_id == 1 ? ' active' : ''}">
							<a class="nav-link" style="font-weight: 700; font-size:22px; color:#c4c4c4;"
							href="/member/mypage?mypage_id=1" onclick="showContent(1);">찜한 전시 일정</a>
						</li>
						<li class="sidelist${mypage_id == 2 ? ' active' : ''}">
							<a class="nav-link" style="font-weight: 700; font-size:22px; color:#c4c4c4;"
							href="/member/mypage?mypage_id=2" onclick="showContent(2);">나의	 한줄평 / 게시글 / 댓글</a>
						</li>
						<li class="sidelist${mypage_id == 3 ? ' active' : ''}">
							<a class="nav-link" style="font-weight: 700; font-size:22px; color:#c4c4c4;"
							href="/member/mypage?mypage_id=3" onclick="showContent(3);">나의 프로필</a>
						</li>
					</ul>
					<br>
					<div id="select" class="tabcontent" style="display: ${mypage_id == 1 ? 'block' : 'none'};">
						<jsp:include page="/WEB-INF/views/calendar/mycalendar.jsp" />
					</div>
					
					<div class="tab-content py-4" style="display: ${mypage_id == 3 ? 'block' : 'none'};">
						<div class="profileTitleText">My Profile</div>
						<div class="card active profileBox" id="profile">
							<div class="mb-3"></div>
							<form id="updateForm" action="/member/mypage" method="post"
								style="text-align: left;">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<div class="bmd-label-floating" for="userId">아이디</div>
											<input type="text" id="userId" name="userId"
												class="form-control memberGroup" value="${member.userId}"
												readonly="readonly" />
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<div class="bmd-label-floating" for="userName">닉네임</div>
											<input type="text" id="userName" name="userName"
												class="form-control memberGroup2" value="${member.userName}" />
											<button class="btn btn-primary btn-sm" type="button"
												id="nameChk" onclick="fn_nameChk();" value="N">중복확인</button>

										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<div class="bmd-label-floating" for="phone">전화번호</div>
											<input type="text" id="phone" name="phone"
												class="form-control memberGroup" value="${member.phone}"
												readonly="readonly" />

										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<div class="bmd-label-floating" for="email">이메일</div>
											<input type="text" id="email" name="email"
												class="form-control memberGroup" value="${member.email}"
												readonly="readonly" />
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div style="text-align: right;">
											<button type="submit" id="submit"
												class="btn btn-primary ml-2">회원정보 수정</button>
											<a href="/member/passUpdateView" class="btn btn-secondary">비밀번호
												변경</a>
												<a href="/member/memberDeleteView" class="btn btn-secondary">회원탈퇴</a>
										</div>
									</div>
								</div>
							</form>
						</div>
				
				</div>

				<c:if test="${mypage_id == 2}">
					<!-- 한줄평 목록 -->
					<div id="myReviews" class="tab-content py-4" style="display: ${mypage_id == 2 ? 'block' : 'none'};">
						<div class="card" style="width: 100%; text-align: left;">
							<div class="card-header card-header-primary">
								<div class="card-title">나의 한줄평</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<c:forEach var="rev" items="${collectionRev}">
											<tr>
												<td><a href="/collection/get?seq=${rev.seq}">${rev.revComment}</a></td>
												<td><fmt:formatDate value="${rev.reviewDate}" pattern="yyyy.MM.dd" /></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- 한줄평 페이징 -->
					<div class="text-center page-item" data-type="review">
						<c:if test="${collectionRevPageMaker.prev}">
							<a class="page-link"
								href="/member/mypage?mypage_id=2&page=${collectionRevPageMaker.startPage - 1}&tabName=collection">Prev</a>
						</c:if>
						<c:forEach var="pageNum"
							begin="${collectionRevPageMaker.startPage}"
							end="${collectionRevPageMaker.endPage}" step="1">
							<c:choose>
								<c:when test="${pageNum == collectionRevPageMaker.cri.page}">
									<div class="page-link">${pageNum}</div>
								</c:when>
								<c:otherwise>
									<a class="page-link"
										href="/member/mypage?mypage_id=2&revPage=${pageNum}&postPage=${postPage}&commentPage=${commentPage}&tabName=collection">${pageNum}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${collectionRevPageMaker.next}">
							<a class="page-link"
								href="/member/mypage?mypage_id=2&revPage=${collectionRevPageMaker.endPage + 1}&postPage=${postPage}&commentPage=${commentPage}&tabName=collection">Next</a>
						</c:if>
					</div>
					<!-- 게시글 목록 -->
					<div id="myReviews" class="tab-content py-4" style="display: ${mypage_id == 2 ? 'block' : 'none'};">
						<div class="card" style="width: 100%; text-align: left;">
							<div class="card-header card-header-primary">
								<div class="card-title">나의 게시글</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<c:forEach var="post" items="${posts}">
											<tr>
												<td><a href="/board/get?post_id=${post.post_id}">${post.post_title}</a></td>
												<td><fmt:formatDate value="${post.post_regdate}" pattern="yyyy.MM.dd" /></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- 게시글 페이징 -->
					<div class="text-center page-item" data-type="post">
						<c:if test="${postPageMaker.prev}">
							<a class="page-link" href="/member/mypage?mypage_id=2&page=${postPageMaker.startPage - 1}&tabName=collection">Prev</a>
						</c:if>
						<c:forEach var="pageNum" begin="${postPageMaker.startPage}"
							end="${postPageMaker.endPage}" step="1">
							<c:choose>
								<c:when test="${pageNum == postPageMaker.cri.page}">
									<div class="page-link">${pageNum}</div>
								</c:when>
								<c:otherwise>
									<a class="page-link"
										href="/member/mypage?mypage_id=2&revPage=${revPage}&postPage=${pageNum}&commentPage=${commentPage}&tabName=collection">${pageNum}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${postPageMaker.next}">
							<a class="page-link"
								href="/member/mypage?mypage_id=2&revPage=${revPage}&postPage=${postPageMaker.endPage + 1}&commentPage=${commentPage}&tabName=collection">Next</a>
						</c:if>
					</div>
					<!-- 댓글 목록 -->
					<div id="myReviews" class="tab-content py-4" style="display: ${mypage_id == 2 ? 'block' : 'none'};">
						<div class="card" style="width: 100%; text-align: left;">
							<div class="card-header card-header-primary">
								<div class="card-title">나의 댓글</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<c:forEach var="comment" items="${comments}">
											<tr>
												<td><a href="/board/get?post_id=${comment.post_id}">${comment.com_content}</a></td>
												<td><fmt:formatDate value="${comment.com_date}" pattern="yyyy.MM.dd" /></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- 댓글 페이징 -->
					<div class="text-center page-item" data-type="comment">
						<c:if test="${commentPageMaker.prev}">
							<a class="page-link"
								href="/member/mypage?mypage_id=2&page=${commentPageMaker.startPage - 1}&tabName=collection">Prev</a>
						</c:if>
						<c:forEach var="pageNum" begin="${commentPageMaker.startPage}"
							end="${commentPageMaker.endPage}" step="1">
							<c:choose>
								<c:when test="${pageNum == commentPageMaker.cri.page}">
									<div class="page-link">${pageNum}</div>
								</c:when>
								<c:otherwise>
									<a class="page-link"
										href="/member/mypage?mypage_id=2&revPage=${revPage}&postPage=${postPage}&commentPage=${pageNum}&tabName=collection">${pageNum}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${commentPageMaker.next}">
							<a class="page-link"
								href="/member/mypage?mypage_id=2&revPage=${revPage}&postPage=${postPage}&commentPage=${commentPageMaker.endPage + 1}&tabName=collection">Next</a>
						</c:if>
					</div>
				</c:if>
				
			</div>
		</div>
	</div>
</body>
</html>