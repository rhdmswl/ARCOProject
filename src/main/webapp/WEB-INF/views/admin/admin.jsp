<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html> <!-- lang="en" -->
<head>
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


.tab {
  width: 17%;
  position: fixed;
  left: 50px;
  bottom: 430px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  font-size:15px;

 
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
    // 삭제 버튼 클릭 시
    $('.delete-btn').click(function() {
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
});
function openTab(evt, tabName) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].classList.remove("active");
	}
	document.getElementById(tabName).style.display = "block";
	evt.currentTarget.classList.add("active");
}


</script>
<body>

  <div class="container">
	<div class="row my-2">
			<div class="col-lg-8 order-lg-2">
				<div class="logo_area text-center">
					<a href="/" class="yummy-logo"><img
						src="https://i.imgur.com/evlOrzY.png" width="400"></a>
				</div>
				
				<h1>Admin Page</h1>
					<div class="tab">
					<button class="tablinks active" onclick="openTab(event, 'all')">회원
						정보</button>
					<button class="tablinks" onclick="openTab(event, 'collection')">모든 한줄평</button>
					<button class="tablinks" onclick="openTab(event, 'board')">모든 게시글</button>
					<button class="tablinks" onclick="openTab(event, 'comment')">모든 댓글</button>
					
					
				</div>
				<div id="all" class="tabcontent" style="display: block;">
				<!-- 회원 목록 -->
				<div class="d-flex justify-content-center">
					<div class="card" style="width: 100%; text-align: left;">
						<div class="card-header card-header-primary">
							<div class="card-title">전체 회원 목록</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table">
									<tr>
										<th>아이디</th>
										<th>이름</th>
										<th>이메일</th>
										<th>회원 관리</th>
									</tr>
									<c:forEach var="user" items="${member}">
										<tr>
											<td>${user.userId}</td>
											<td>${user.userName}</td>
											<td>${user.email}</td>
											 <td><button class="btn btn-danger btn-sm delete-btn" data-user-id="${user.userId}">삭제</button></td>
										</tr>
									</c:forEach>
									
								</table>
								 
							</div>
						</div>
					</div>
				</div>
				<!-- 회원 목록 페이징 -->
				<div class="text-center page-item">
					<c:if test="${memberPageMaker.prev}">
						<a class="page-link" href="?memberPage=${memberPageMaker.startPage - 1}&revPage=${revPage}&postPage=${postPage}&commentPage=${commentPage}">Prev</a>
					</c:if>
					<c:forEach var="pageNum" begin="${memberPageMaker.startPage}"
						end="${memberPageMaker.endPage}" step="1">
						<c:choose>
							<c:when test="${pageNum == memberPageMaker.cri.page}">
								<div class="page-link">${pageNum}</div>
							</c:when>
							<c:otherwise>
								<a class="page-link" href="?memberPage=${pageNum}&revPage=${revPage}&postPage=${postPage}&commentPage=${commentPage}">${pageNum}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${memberPageMaker.next}">
						<a class="page-link" href="?memberPage=${memberPageMaker.endPage + 1}&revPage=${revPage}&postPage=${postPage}&commentPage=${commentPage}">Next</a>
					</c:if>
				</div>
				</div>
				
				
				<div id="collection" class="tabcontent">
				<!-- 한줄평 목록 -->
				<div class="d-flex justify-content-center">
					<div class="card" style="width: 100%; text-align: left;">
						<div class="card-header card-header-primary">
							<div class="card-title">전체 한줄평</div>
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
											<td><a href="/collection/get?seq=${rev.seq}">${rev.revComment}</a></td>
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
						<%-- <a class="page-link" href="?page=${collectionRevPageMaker.startPage - 1}">Prev</a> --%>
						<a class="page-link" href="?revPage=${collectionRevPageMaker.startPage - 1}&postPage=${postPage}&commentPage=${commentPage}">Prev</a>
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
				</div>
				
				<div id="board" class="tabcontent">
				<!-- 게시글 목록 -->
				<div class="d-flex justify-content-center">
					<div class="card" style="width: 100%; text-align: left;">
						<div class="card-header card-header-primary">
							<div class="card-title">전체 게시글</div>
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
						<%-- <a class="page-link" href="?page=${postPageMaker.startPage - 1}">Prev</a> --%>
						<a class="page-link" href="?revPage=${revPage}&postPage=${postPageMaker.startPage - 1}&commentPage=${commentPage}">Prev</a>
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
				</div>
				
				<div id="comment" class="tabcontent">
				<!-- 댓글 목록 -->
				<div class="d-flex justify-content-center">
					<div class="card" style="width: 120%; text-align: left;">
						<div class="card-header card-header-primary">
							<div class="card-title">전체 댓글</div>
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
						<%-- <a class="page-link" href="?page=${commentPageMaker.startPage - 1}">이전</a> --%>
						<a class="page-link" href="?revPage=${revPage}&postPage=${postPage}&commentPage=${commentPageMaker.startPage - 1}">Prev</a>
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
						<a class="page-link" href="?revPage=${revPage}&postPage=${postPage}&commentPage=${commentPageMaker.endPage + 1}">Next</a>
					</c:if>
				</div>
				</div>

				<br>
			</div>
		</div>
	</div>
  
  <%-- <h2>전시 상세 한줄평 목록</h2>
  <table id="reviewsTable">
    Dummy data
    <tr>
      <td>1</td>
      <td><a href="editReview.jsp?reviewId=1">한줄평 내용</a></td>
      <td>
        <button class="deleteReviewBtn" data-id="1">삭제</button>
      </td>
    </tr>
  </table>
  
  <h2>커뮤니티 게시글 목록</h2>
  <table id="postsTable">
    Dummy data
    <tr>
      <td>1</td>
      <td><a href="editPost.jsp?postId=1">게시글 제목</a></td>
      <td>
        <button class="deletePostBtn" data-id="1">삭제</button>
      </td>
    </tr>
  </table>
  
  <h2>커뮤니티 댓글 목록</h2>
  <table id="commentsTable">
    Dummy data
    <tr>
      <td>1</td>
      <td><a href="editComment.jsp?commentId=1">댓글 내용</a></td>
      <td>
        <button class="deleteCommentBtn" data-id="1">삭제</button>
      </td>
    </tr>
  </table>

  <h2>회원 목록</h2>
  <table id="usersTable">
    Dummy data
    <tr>
      <td>1</td>
      <td><a href="editUser.jsp?userId=1">회원 이름</a></td>
      <td>
        <button class="deleteUserBtn" data-id="1">삭제</button>
      </td>
    </tr>
  </table> --%>

</body>
</html>
