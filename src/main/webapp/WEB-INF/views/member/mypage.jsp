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
	
	<!-- Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">

body {
	margin-top: 20px;
	background: #FFF;
	margin-bottom: 80px;
}

.btn-secondary {
	font-family: 'Noto Sans KR', sans-serif;
	box-shadow: none;
}

.btn-secondary:hover {
    box-shadow: 1px 4px 3px 1px #dadce0;
}

.btn-primary {
	font-family: 'Noto Sans KR', sans-serif;
	box-shadow: none;
}

.btn-primary:hover {
    box-shadow: 1px 4px 3px 1px #dadce0;
}

.card-title {
	font-family: 'Noto Sans KR', sans-serif;
}

.control-label {
	font-family: 'Noto Sans KR', sans-serif;
}

.table {
	font-family: 'Noto Sans KR', sans-serif;
}

.outmember {
	margin-top: 30px;
}

.form-control {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 500;
	font-size: 16px;
}

.current-page {
    font-weight: bold;
    color: red;
}

</style>
</head>

<body>
<div class="container">
	<div class="row my-2">
		<div class="col-lg-8 order-lg-2">
			<div class="tab-content py-4">
				<div class="tab-pane active" id="profile">
					<h5 class="mb-3">User Profile</h5>
					<form id="updateForm" action="/member/mypage" method="post" style="text-align: left;">
					    <div class="row">
					        <div class="col-md-6">
					            <div class="form-group">
					                <label class="bmd-label-floating" for="userId">아이디</label>
					                <input type="text" id="userId" name="userId" class="form-control" value="${member.userId}" readonly="readonly"/>
					            </div>
					        </div>
					        <div class="col-md-6">
					            <div class="form-group">
					                <label class="bmd-label-floating" for="userName">닉네임</label>
					                <input type="text" id="userName" name="userName" class="form-control" value="${member.userName}" />
					            </div>
					        </div>
					    </div>
					    <div class="row">
					        <div class="col-md-6">
					            <div class="form-group">
					                <label class="bmd-label-floating" for="phone">전화번호</label>
					                <input type="text" id="phone" name="phone" class="form-control" value="${member.phone}" />
					            </div>
					        </div>
					        <div class="col-md-6">
					            <div class="form-group">
					                <label class="bmd-label-floating" for="email">이메일</label>
					                <input type="text" id="email" name="email" class="form-control" value="${member.email}" />
					            </div>
					        </div>
					    </div>
					    <div class="row">
							<div class="col-md-12">
								<div style="text-align: right;">
									<button type="submit" id="submit" class="btn btn-primary ml-2">회원정보수정</button>
									<a href="/member/passUpdateView" class="btn btn-secondary">비밀번호 변경</a>
								</div>
							</div>
						</div>
					</form>
				</div>
	</div>
	<!-- 한줄평 목록 -->

	<div class="d-flex justify-content-center">
		<div class="card" style="width: 60%; text-align: left;">
		    <div class="card-header card-header-primary">
		        <h4 class="card-title">나의 한줄평</h4>
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
								<td><a href="/collection/get?rev_id=${rev.revId}">${rev.revComment}</a></td>
								<td>${rev.replyDate}</td>
							</tr>
						</c:forEach>
		            </table>
		        </div>
		    </div>
		</div>
	</div>
	<!-- 한줄평 페이징 -->
    <div class="text-center">
        <c:if test="${collectionRevPageMaker.prev}">
            <a href="?page=${collectionRevPageMaker.startPage - 1}">이전</a>
        </c:if>
        <c:forEach var="pageNum" begin="${collectionRevPageMaker.startPage}" end="${collectionRevPageMaker.endPage}" step="1">
            <c:choose>
                <c:when test="${pageNum == collectionRevPageMaker.cri.page}">
                    <span class="current-page">${pageNum}</span>
                </c:when>
                <c:otherwise>
                    <a href="?revPage=${pageNum}&postPage=${postPage}&commentPage=${commentPage}">${pageNum}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:if test="${collectionRevPageMaker.next}">
    		<a href="?revPage=${collectionRevPageMaker.endPage + 1}&postPage=${postPage}&commentPage=${commentPage}">다음</a>
        </c:if>
    </div>
	<br>
	
	<!-- 게시글 목록 -->
	<div class="d-flex justify-content-center">
		<div class="card" style="width: 60%; text-align: left;">
		    <div class="card-header card-header-primary">
		        <h4 class="card-title">나의 게시글</h4>
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
	<div class="text-center">
    <c:if test="${postPageMaker.prev}">
	        <a href="?page=${postPageMaker.startPage - 1}">이전</a>
	    </c:if>
	    <c:forEach var="pageNum" begin="${postPageMaker.startPage}" end="${postPageMaker.endPage}" step="1">
	        <c:choose>
	            <c:when test="${pageNum == postPageMaker.cri.page}">
	                <span class="current-page">${pageNum}</span>
	            </c:when>
	            <c:otherwise>
	                <a href="?revPage=${revPage}&postPage=${pageNum}&commentPage=${commentPage}">${pageNum}</a>
	            </c:otherwise>
	        </c:choose>
	    </c:forEach>
	    <c:if test="${postPageMaker.next}">
	    	<a href="?revPage=${revPage}&postPage=${postPageMaker.endPage + 1}&commentPage=${commentPage}">다음</a>
	    </c:if>
	</div>
	<br>

	<!-- 댓글 목록 -->
	<div class="d-flex justify-content-center">
		<div class="card" style="width: 60%; text-align: left;">
		    <div class="card-header card-header-primary">
		        <h4 class="card-title">나의 댓글</h4>
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
	<div class="text-center">
	    <c:if test="${commentPageMaker.prev}">
	        <a href="?page=${commentPageMaker.startPage - 1}">이전</a>
	    </c:if>
	    <c:forEach var="pageNum" begin="${commentPageMaker.startPage}" end="${commentPageMaker.endPage}" step="1">
	        <c:choose>
	            <c:when test="${pageNum == commentPageMaker.cri.page}">
	                <span class="current-page">${pageNum}</span>
	            </c:when>
	            <c:otherwise>
	                <a href="?revPage=${revPage}&postPage=${postPage}&commentPage=${pageNum}">${pageNum}</a>
	            </c:otherwise>
	        </c:choose>
	    </c:forEach>
	    <c:if test="${commentPageMaker.next}">
	        <a href="?revPage=${revPage}&postPage=${postPage}&commentPage=${commentPageMaker.endPage + 1}">다음</a>
	    </c:if>
	</div>

	<br>
	
	<div class="text-center">
	    <button onclick="location.href='/member/memberDeleteView'" type="button" class="btn btn-secondary outmember">회원 탈퇴</button>
	</div>
	</div>
	</div>
	</div>
</body>
</html>





<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
	
	<!-- Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">

body {
	margin-top: 20px;
	background: #FFF;
	margin-bottom: 80px;
}

.btn-secondary {
	font-family: 'Noto Sans KR', sans-serif;
	box-shadow: none;
}

.btn-secondary:hover {
    box-shadow: 1px 4px 3px 1px #dadce0;
}

.btn-primary {
	font-family: 'Noto Sans KR', sans-serif;
	box-shadow: none;
}

.btn-primary:hover {
    box-shadow: 1px 4px 3px 1px #dadce0;
}

.card-title {
	font-family: 'Noto Sans KR', sans-serif;
}

.control-label {
	font-family: 'Noto Sans KR', sans-serif;
}

.table {
	font-family: 'Noto Sans KR', sans-serif;
}

.outmember {
	margin-top: 30px;
}

.form-control {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 500;
	font-size: 16px;
}

.current-page {
    font-weight: bold;
    color: red;
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
		<section id="container">
			<form id="updateForm" action="/member/mypage" method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="userId">아이디</label>
					<input class="form-control" type="text" id="userId" name="userId" value="${member.userId}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">닉네임</label>
					<input class="form-control" type="text" id="userName" name="userName" value ="${member.userName}"/>
				</div>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">전화번호</label>
					<input class="form-control" type="text" id="phone" name="phone" value ="${member.phone}" />
				</div>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="email">이메일</label>
					<input class="form-control" type="text" id="email" name="email" value ="${member.email}"/>
				</div>
			</form>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
				<div class="card-body">
						<a href="/member/passUpdateView" class="btn btn-secondary">비밀번호
							변경</a>
					</div>
					
				</div>
		</section>
	
	<!-- 한줄평 목록 -->

	<div class="d-flex justify-content-center">
		<div class="card" style="width: 60%; text-align: left;">
		    <div class="card-header card-header-primary">
		        <h4 class="card-title">나의 한줄평</h4>
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
								<td><a href="/collection/get?rev_id=${rev.revId}">${rev.revComment}</a></td>
								<td>${rev.replyDate}</td>
							</tr>
						</c:forEach>
		            </table>
		        </div>
		    </div>
		</div>
	</div>
	<!-- 한줄평 페이징 -->
    <div class="text-center">
        <c:if test="${collectionRevPageMaker.prev}">
            <a href="?page=${collectionRevPageMaker.startPage - 1}">이전</a>
        </c:if>
        <c:forEach var="pageNum" begin="${collectionRevPageMaker.startPage}" end="${collectionRevPageMaker.endPage}" step="1">
            <c:choose>
                <c:when test="${pageNum == collectionRevPageMaker.cri.page}">
                    <span class="current-page">${pageNum}</span>
                </c:when>
                <c:otherwise>
                    <a href="?revPage=${pageNum}&postPage=${postPage}&commentPage=${commentPage}">${pageNum}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:if test="${collectionRevPageMaker.next}">
    		<a href="?revPage=${collectionRevPageMaker.endPage + 1}&postPage=${postPage}&commentPage=${commentPage}">다음</a>
        </c:if>
    </div>
	
	<!-- 게시글 목록 -->
	<div class="d-flex justify-content-center">
		<div class="card" style="width: 60%; text-align: left;">
		    <div class="card-header card-header-primary">
		        <h4 class="card-title">나의 게시글</h4>
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
	<div class="text-center">
    <c:if test="${postPageMaker.prev}">
	        <a href="?page=${postPageMaker.startPage - 1}">이전</a>
	    </c:if>
	    <c:forEach var="pageNum" begin="${postPageMaker.startPage}" end="${postPageMaker.endPage}" step="1">
	        <c:choose>
	            <c:when test="${pageNum == postPageMaker.cri.page}">
	                <span class="current-page">${pageNum}</span>
	            </c:when>
	            <c:otherwise>
	                <a href="?revPage=${revPage}&postPage=${pageNum}&commentPage=${commentPage}">${pageNum}</a>
	            </c:otherwise>
	        </c:choose>
	    </c:forEach>
	    <c:if test="${postPageMaker.next}">
	    	<a href="?revPage=${revPage}&postPage=${postPageMaker.endPage + 1}&commentPage=${commentPage}">다음</a>
	    </c:if>
	</div>

	<!-- 댓글 목록 -->
	<div class="d-flex justify-content-center">
		<div class="card" style="width: 60%; text-align: left;">
		    <div class="card-header card-header-primary">
		        <h4 class="card-title">나의 댓글</h4>
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
	<div class="text-center">
	    <c:if test="${commentPageMaker.prev}">
	        <a href="?page=${commentPageMaker.startPage - 1}">이전</a>
	    </c:if>
	    <c:forEach var="pageNum" begin="${commentPageMaker.startPage}" end="${commentPageMaker.endPage}" step="1">
	        <c:choose>
	            <c:when test="${pageNum == commentPageMaker.cri.page}">
	                <span class="current-page">${pageNum}</span>
	            </c:when>
	            <c:otherwise>
	                <a href="?revPage=${revPage}&postPage=${postPage}&commentPage=${pageNum}">${pageNum}</a>
	            </c:otherwise>
	        </c:choose>
	    </c:forEach>
	    <c:if test="${commentPageMaker.next}">
	        <a href="?revPage=${revPage}&postPage=${postPage}&commentPage=${commentPageMaker.endPage + 1}">다음</a>
	    </c:if>
	</div>

	<br>
	
	<div class="text-center">
	    <button onclick="location.href='/member/memberDeleteView'" type="button" class="btn btn-secondary outmember">회원 탈퇴</button>
	</div>
</body>
</html> --%>