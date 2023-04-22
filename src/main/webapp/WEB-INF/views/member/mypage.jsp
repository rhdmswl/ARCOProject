<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>My Page</title>
<link href="/css/material-dashboard.min.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" rel="stylesheet">
	<link href="/js/core/jquery.min.js" type="text/javascript"></link>
	<link href="/js/core/popper.min.js" type="text/javascript"></link>
	<link href="/js/core/bootstrap-material-design.min.js" type="text/javascript"></link>
	<link href="/js/plugins/perfect-scrollbar.jquery.min.js" type="text/javascript"></link>
	<script src="/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
	<link rel="stylesheet" href="/css/material-dashboard.min.css">
	
	<!-- Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
	
	<!-- Favicon -->
	<link rel="icon" href="/img/core-img/favicon.ico">
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<style type="text/css">

body {
	margin-top: 20px;
	background: #FFF;
	margin-bottom: 80px;
}

body::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
    height: 30%; /* 스크롤바의 길이 */
    background: #f21378; /* 스크롤바의 색상 */ 
    border-radius: 10px;
}

body::-webkit-scrollbar-track {
    background: rgba(242, 240, 241);  /*스크롤바 뒷 배경 색상*/
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
	  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
            -4px -4px 6px 0 rgba(116, 125, 136, .2), 
   			inset -4px -4px 6px 0 rgba(242, 19, 120),
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
    border: 2px solid #ccc;
    border-radius: 50%!important;
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

</style>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			
		
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
					alert("회원정보가 수정되었습니다.");
				}
				
				
			
			});
		})
	</script>
<body>
<div class="container">
	<div class="row my-2">
			<div class="col-lg-8 order-lg-2">
				<div class="logo_area text-center">
					<a href="/" class="yummy-logo"><img
						src="https://i.imgur.com/evlOrzY.png" width="400"></a>
				</div>
				<div class="tab-content py-4">
					<div class="profileTitleText">User Profile</div>
					<div class="card active profileBox" id="profile">
						<div class="mb-3"></div>
						<form id="updateForm" action="/member/mypage" method="post"
							style="text-align: left;">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<div class="bmd-label-floating" for="userId">아이디</div> <input
											type="text" id="userId" name="userId" class="form-control memberGroup"
											value="${member.userId}" readonly="readonly" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="bmd-label-floating" for="userName">닉네임</div> <input
											type="text" id="userName" name="userName"
											class="form-control memberGroup" value="${member.userName}" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<div class="bmd-label-floating" for="phone">전화번호</div> <input
											type="text" id="phone" name="phone" class="form-control memberGroup"
											value="${member.phone}" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="bmd-label-floating" for="email">이메일</div> <input
											type="text" id="email" name="email" class="form-control memberGroup"
											value="${member.email}" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div style="text-align: right;">
										<button type="submit" id="submit" class="btn btn-primary ml-2">회원정보 수정</button>
										<a href="/member/passUpdateView" class="btn btn-secondary">비밀번호 변경</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				
				<!-- 한줄평 목록 -->
				<div class="d-flex justify-content-center">
					<div class="card" style="width: 100%; text-align: left;">
						<div class="card-header card-header-primary">
							<div class="card-title">나의 한줄평</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table">
									<tr>
										<th>내용</th>
										<th>작성일</th>
									</tr>
									<c:forEach var="rev" items="${collectionRev}">
										<tr>
											<td><a href="/collection/get?seq=${rev.collectionSeq}">${rev.revComment}</a></td>
											<td>${rev.reviewDate}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- 한줄평 페이징 -->
				<div class="text-center page-item">
					<c:if test="${collectionRevPageMaker.prev}">
						<a class="page-link" href="?page=${collectionRevPageMaker.startPage - 1}">Prev</a>
					</c:if>
					<c:forEach var="pageNum"
						begin="${collectionRevPageMaker.startPage}"
						end="${collectionRevPageMaker.endPage}" step="1">
						<c:choose>
							<c:when test="${pageNum == collectionRevPageMaker.cri.page}">
								<div class="page-link">${pageNum}</div>
							</c:when>
							<c:otherwise>
								<a class="page-link" href="?revPage=${pageNum}&postPage=${postPage}&commentPage=${commentPage}">${pageNum}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${collectionRevPageMaker.next}">
						<a class="page-link" href="?revPage=${collectionRevPageMaker.endPage + 1}&postPage=${postPage}&commentPage=${commentPage}">Next</a>
					</c:if>
				</div>
				<br>

				<!-- 게시글 목록 -->
				<div class="d-flex justify-content-center">
					<div class="card" style="width: 100%; text-align: left;">
						<div class="card-header card-header-primary">
							<div class="card-title">나의 게시글</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table">
									<tr>
										<th>제목</th>
										<th>작성일</th>
									</tr>
									<c:forEach var="post" items="${posts}">
										<tr>
											<td><a href="/board/get?post_id=${post.post_id}">${post.post_title}</a></td>
											<td>${post.post_regdate}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- 게시글 페이징 -->
				<div class="text-center page-item">
					<c:if test="${postPageMaker.prev}">
						<a class="page-link" href="?page=${postPageMaker.startPage - 1}">Prev</a>
					</c:if>
					<c:forEach var="pageNum" begin="${postPageMaker.startPage}"
						end="${postPageMaker.endPage}" step="1">
						<c:choose>
							<c:when test="${pageNum == postPageMaker.cri.page}">
								<div class="page-link">${pageNum}</div>
							</c:when>
							<c:otherwise>
								<a class="page-link" href="?revPage=${revPage}&postPage=${pageNum}&commentPage=${commentPage}">${pageNum}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${postPageMaker.next}">
						<a class="page-link" href="?revPage=${revPage}&postPage=${postPageMaker.endPage + 1}&commentPage=${commentPage}">Next</a>
					</c:if>
				</div>
				<br>

				<!-- 댓글 목록 -->
				<div class="d-flex justify-content-center">
					<div class="card" style="width: 120%; text-align: left;">
						<div class="card-header card-header-primary">
							<div class="card-title">나의 댓글</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table">
									<tr>
										<th>내용</th>
										<th>작성일</th>
									</tr>
									<c:forEach var="comment" items="${comments}">
										<tr>
											<td><a href="/board/get?post_id=${comment.post_id}">${comment.com_content}</a></td>
											<td>${comment.com_date}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- 댓글 페이징 -->
				<div class="text-center page-item">
					<c:if test="${commentPageMaker.prev}">
						<a class="page-link" href="?page=${commentPageMaker.startPage - 1}">이전</a>
					</c:if>
					<c:forEach var="pageNum" begin="${commentPageMaker.startPage}"
						end="${commentPageMaker.endPage}" step="1">
						<c:choose>
							<c:when test="${pageNum == commentPageMaker.cri.page}">
								<div class="page-link">${pageNum}</div>
							</c:when>
							<c:otherwise>
								<a class="page-link" href="?revPage=${revPage}&postPage=${postPage}&commentPage=${pageNum}">${pageNum}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${commentPageMaker.next}">
						<a class="page-link" href="?revPage=${revPage}&postPage=${postPage}&commentPage=${commentPageMaker.endPage + 1}">다음</a>
					</c:if>
				</div>

				<br>

				<div class="text-center">
					<button onclick="location.href='/member/memberDeleteView'"
						type="button" class="btn btn-secondary outmember">회원 탈퇴</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>