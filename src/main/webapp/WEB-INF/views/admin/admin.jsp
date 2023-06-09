<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
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
h2 {
	text-align: center;
}

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

/* 타이틀 폰트 */
.card-title {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 25px;
	font-weight: 700;
	color: #696969;
}

.profileTitleText {
	font-family: 'Open Sans', sans-serif;
	font-size: 25px;
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
	margin-bottom: 20px;
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
	width: 36px;
	height: 36px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: .875rem;
	position: relative;
}

.page-item .page-link:hover {
	color: #f21378;
}

.card {
	margin-top: 10px;
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
	bottom: 430px;
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
</style>
</head>

<script type="text/javascript">
$(document).ready(function() {
	
    // 삭제 버튼 클릭 시
    $('body').on('click', '.delete-btn', function() {
        var userId = $(this).data('user-id');
        if (confirm(userId + ' 님을 삭제하시겠습니까?')) {
            // 삭제 요청 보내기
            $.ajax({
                url: '/admin/admin',
                type: 'POST',
                data: {userId: userId},
                success: function(result) {
                    // 삭제 성공 시 완료 메시지 띄우기
                    if (result === 'success') {
                        alert('회원이 삭제되었습니다.');
                        // 현재 페이지 다시 로드하기
                        location.reload();
                    } 
                }
            });
        }
    });
    
    // 새로운 페이지네이션 버튼이 로드되면 이벤트 리스너가 더 이상 적용되지 않기 때문에 문제가 발생
    // 동적으로 생성된 페이지네이션 버튼에도 이벤트 리스너가 적용되도록 수정
	$(document).ready(function () {
	    $('body').on('click', ".page-item a.page-link", function (event) {
	        event.preventDefault();
	        var type = $(this).closest(".page-item").data("type");
	        var url = $(this).attr("href");
	        url += "&admin_id=" + (${admin_id});
	        $.ajax({
	            url: url,
	            type: "GET",
	            success: function (data) {
	                var newPageItem = $(data).find(".page-item[data-type='" + type + "']");
	                $(".page-item[data-type='" + type + "']").html(newPageItem.html());
	                var contentId = type === "user" ? "allUsers" : type === "review" ? "allReviews" : type === "post" ? "allPosts" : "allComments";
	                var newContent = $(data).find("#" + contentId);
	                $("#" + contentId).html(newContent.html());
	            },
	            error: function (xhr, status, error) {
	                console.log("페이징 오류: " + error);
	            }
	        });
	    });
	});
    
});

function showContent(id) {
	document.getElementById("allUsers").style.display = id === 1 ? "block" : "none";
    document.getElementById("allReviews").style.display = id === 2 ? "block" : "none";
    document.getElementById("allPosts").style.display = id === 3 ? "block" : "none";
    document.getElementById("allComments").style.display = id === 4 ? "block" : "none";
}
</script>

<body onload="showContent(${admin_id});">

	<div class="container">
		<div class="row my-2">
			<div class="col-lg-8 order-lg-2">
				<div class="logo_area text-center">
					<a href="/" class="yummy-logo"><img
						src="https://i.imgur.com/evlOrzY.png" width="400"></a>
				</div>
				<br>
				<ul class="nav nav-tabs nav-fill" role="tablist">
					<li class="nav-item"><a
						class="nav-link ${admin_id == 1 ? 'active' : ''}"
						style="font-weight: 700; font-size: 21px; color: #595959;"
						href="/admin/admin?admin_id=1" onclick="showContent(1);"
						role="tab">회원 관리</a></li>
					<li class="nav-item"><a
						class="nav-link ${admin_id == 2 ? 'active' : ''}"
						style="font-weight: 700; font-size: 21px; color: #595959;"
						href="/admin/admin?admin_id=2" onclick="showContent(2);"
						role="tab">한줄평 관리</a></li>
					<li class="nav-item"><a
						class="nav-link ${admin_id == 3 ? 'active' : ''}"
						style="font-weight: 700; font-size: 21px; color: #595959;"
						href="/admin/admin?admin_id=3" onclick="showContent(3);"
						role="tab">게시글 관리</a></li>
					<li class="nav-item"><a
						class="nav-link ${admin_id == 4 ? 'active' : ''}"
						style="font-weight: 700; font-size: 21px; color: #595959;"
						href="/admin/admin?admin_id=4" onclick="showContent(4);"
						role="tab">댓글 관리</a></li>
				</ul>

				<div id="allUsers" class="tabcontent py-4"
					style="display: ${admin_id == 1 ? 'block' : 'none'};">
					<!-- 회원 목록 -->
					<div class="d-flex justify-content-center">
						<div class="card" style="width: 100%; text-align: left;">
							<div class="card-header card-header-primary">
								<div class="card-title">회원 목록</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<tr>
											<th>아이디</th>
											<th>닉네임</th>
											<th>이메일</th>
											<th>회원 관리</th>
										</tr>
										<c:forEach var="user" items="${member}">
											<tr>
												<td style="font-size: 15px;">${user.userId}</td>
												<td style="font-size: 15px;">${user.userName}</td>
												<td style="font-size: 15px;">${user.email}</td>
												<td><c:if test="${user.userId ne 'admin'}">
														<button class="btn btn-danger btn-sm delete-btn"
															data-user-id="${user.userId}">삭제</button>
													</c:if></td>
											</tr>
										</c:forEach>

									</table>

								</div>
							</div>
						</div>
					</div>
					<!-- 회원 목록 페이징 -->
					<div class="text-center page-item" data-type="user">
						<c:if test="${memberPageMaker.prev}">
							<a class="page-link"
								href="?memberPage=${memberPageMaker.startPage - 1}&revPage=${revPage}&postPage=${postPage}&commentPage=${commentPage}">Prev</a>
						</c:if>
						<c:forEach var="pageNum" begin="${memberPageMaker.startPage}"
							end="${memberPageMaker.endPage}" step="1">
							<c:choose>
								<c:when test="${pageNum == memberPageMaker.cri.page}">
									<div class="page-link">${pageNum}</div>
								</c:when>
								<c:otherwise>
									<a class="page-link"
										href="?memberPage=${pageNum}&revPage=${revPage}&postPage=${postPage}&commentPage=${commentPage}">${pageNum}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${memberPageMaker.next}">
							<a class="page-link"
								href="?memberPage=${memberPageMaker.endPage + 1}&revPage=${revPage}&postPage=${postPage}&commentPage=${commentPage}">Next</a>
						</c:if>
					</div>

				</div>

				<div id="allReviews" class="tab-content py-4"
					style="display: ${admin_id == 2 ? 'block' : 'none'};">
					<!-- 한줄평 목록 -->
					<div class="d-flex justify-content-center">
						<div class="card" style="width: 100%; text-align: left;">
							<div class="card-header card-header-primary">
								<div class="card-title">한줄평 목록</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<c:forEach var="rev" items="${collectionRev}">
											<tr>
												<td><a style="font-size: 15px;"
													href="/collection/get?seq=${rev.seq}">${rev.revComment}</a></td>
												<td><fmt:formatDate value="${rev.reviewDate}"
														pattern="yyyy.MM.dd" /></td>
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
								href="?revPage=${collectionRevPageMaker.startPage - 1}&postPage=${postPage}&commentPage=${commentPage}">Prev</a>
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
										href="?revPage=${pageNum}&postPage=${postPage}&commentPage=${commentPage}">${pageNum}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${collectionRevPageMaker.next}">
							<a class="page-link"
								href="?revPage=${collectionRevPageMaker.endPage + 1}&postPage=${postPage}&commentPage=${commentPage}">Next</a>
						</c:if>
					</div>
				</div>

				<div id="allPosts" class="tab-content py-4"
					style="display: ${admin_id == 2 ? 'block' : 'none'};">
					<!-- 게시글 목록 -->
					<div class="d-flex justify-content-center">
						<div class="card" style="width: 100%; text-align: left;">
							<div class="card-header card-header-primary">
								<div class="card-title">게시글 목록</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<c:forEach var="post" items="${posts}">
											<tr>
												<td><a style="font-size: 15px;"
													href="/board/get?post_id=${post.post_id}">${post.post_title}</a></td>
												<td><fmt:formatDate value="${post.post_regdate}"
														pattern="yyyy.MM.dd" /></td>
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
							<%-- <a class="page-link" href="?page=${postPageMaker.startPage - 1}">Prev</a> --%>
							<a class="page-link"
								href="?revPage=${revPage}&postPage=${postPageMaker.startPage - 1}&commentPage=${commentPage}">Prev</a>
						</c:if>
						<c:forEach var="pageNum" begin="${postPageMaker.startPage}"
							end="${postPageMaker.endPage}" step="1">
							<c:choose>
								<c:when test="${pageNum == postPageMaker.cri.page}">
									<div class="page-link">${pageNum}</div>
								</c:when>
								<c:otherwise>
									<a class="page-link"
										href="?revPage=${revPage}&postPage=${pageNum}&commentPage=${commentPage}">${pageNum}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${postPageMaker.next}">
							<a class="page-link"
								href="?revPage=${revPage}&postPage=${postPageMaker.endPage + 1}&commentPage=${commentPage}">Next</a>
						</c:if>
					</div>
				</div>

				<div id="allComments" class="tab-content py-4"
					style="display: ${admin_id == 2 ? 'block' : 'none'};">
					<!-- 댓글 목록 -->
					<div class="d-flex justify-content-center">
						<div class="card" style="width: 120%; text-align: left;">
							<div class="card-header card-header-primary">
								<div class="card-title">댓글 목록</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<c:forEach var="comment" items="${comments}">
											<tr>
												<td><a style="font-size: 15px;"
													href="/board/get?post_id=${comment.post_id}">${comment.com_content}</a></td>
												<td><fmt:formatDate value="${comment.com_date}"
														pattern="yyyy.MM.dd" /></td>
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
							<%-- <a class="page-link" href="?page=${commentPageMaker.startPage - 1}">이전</a> --%>
							<a class="page-link"
								href="?revPage=${revPage}&postPage=${postPage}&commentPage=${commentPageMaker.startPage - 1}">Prev</a>
						</c:if>
						<c:forEach var="pageNum" begin="${commentPageMaker.startPage}"
							end="${commentPageMaker.endPage}" step="1">
							<c:choose>
								<c:when test="${pageNum == commentPageMaker.cri.page}">
									<div class="page-link">${pageNum}</div>
								</c:when>
								<c:otherwise>
									<a class="page-link"
										href="?revPage=${revPage}&postPage=${postPage}&commentPage=${pageNum}">${pageNum}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${commentPageMaker.next}">
							<a class="page-link"
								href="?revPage=${revPage}&postPage=${postPage}&commentPage=${commentPageMaker.endPage + 1}">Next</a>
						</c:if>
					</div>
				</div>

				<br>
			</div>
		</div>
	</div>
</body>
</html>
