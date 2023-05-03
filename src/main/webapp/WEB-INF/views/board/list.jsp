<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<jsp:include page="/WEB-INF/views/includes/header.jsp" />

<title>ARCO - Community List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<link href="https://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">

<!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<style type="text/css">
body {
	margin-top: 20px;
	background: #FFF
}

body::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
    height: 5%; /* 스크롤바의 길이 */
    background: black; /* 스크롤바의 색상 */ 
    border-radius: 10px;
}

body::-webkit-scrollbar-track {
    background: rgba(242, 240, 241);  /*스크롤바 뒷 배경 색상*/
}

.card {
	background: #fff;
	margin-top: 30px;
	margin-bottom: 30px;
	transition: .5s;
	border: 0;
	border-radius: .1875rem;
	display: inline-block;
	width: 100%;
	box-shadow: none;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.page-link {
	color: #000;
	background-color: #fff;
	border: 0;
}

.page-item.active .page-link {
	display: flex;
    align-items: center;
    justify-content: center;
    color: #f21378;
    padding: 0;
    margin: 0 3px;
    border-radius: 50%!important;
    width: 36px;
    height: 36px;
    font-size: .875rem;
    background-color: #ddd;
    border: 0;
}

.page-link:focus, .page-link:hover {
	color: #000;
	background-color: #fff;
	border : 0;
}

.inbox .action_bar .delete_all {
	margin-bottom: 0;
	margin-top: 8px
}

.inbox .action_bar .btn, .inbox .action_bar .search {
	position: relative;
	bottom: 30px;
	left: 215px;
}

.table-bordered {
    border: 0;
}

.mail_list {
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	border-left: 0;
	border-right: 0;
}

.inbox .mail_list .list-group-item {
	border-left:0;
	border-right:0;
	border-bottom: 0.3px solid #e9ecef;
	padding: 15px;
	margin-bottom: 1px;
	height: 90px;
}

.inbox .mail_list .list-group-item:hover {
	background: #eceeef
}

.inbox .mail_list .list-group-item .media {
	margin: 0;
	width: 100%
}

.inbox .mail_list .list-group-item .controls {
	display: inline-block;
	margin-right: 10px;
	vertical-align: top;
	text-align: center;
	margin-top: 11px
}

.inbox .mail_list .list-group-item .media-heading a {
	color: #555;
	font-weight: normal;
}

.inbox .mail_list .list-group-item .media-heading a:hover, .inbox .mail_list .list-group-item .media-heading a:focus
	{
	text-decoration: none
}

.inbox .mail_list .list-group-item .media-heading time {
	font-size: 13px;
	margin-right: 10px
}

.inbox .mail_list .list-group-item .msg {
	margin-bottom: 0px
}

.inbox .mail_list .unread {
	border-left: 2px solid
}

.inbox .mail_list .unread .media-heading a {
	color: #333;
	font-weight: 500
}

.inbox .btn-group {
	box-shadow: none
}

.inbox .bg-gray {
	background: #e6e6e6
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
	top: 20%;
	transform: translate(-50%, -50%);
	background-color: #fefefe;
	margin: 15% auto;
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
	top: 50px;
}

.input-group-addon {
	border: 0px;
}

.mb40 {
	margin-bottom: 50px !important;
	position: relative;
	text-align: center;
}

.sidelist {
	display: inline-block;
	width: 150px;
	height: 40px;
	margin-top: 50px;
	margin-right: 5px;
	font-family: 'Open Sans', sans-serif;
	border: 1px solid #f21378;
	background-color: #f21378;
	border-radius: 20px;
	color: white;
}

.sideListGroup {
	list-style: none;
	text-align: center;
	height: 80px;
	position: relative;
	bottom: 60px;
	left: 17px;
}

.sidelist a {
	color: white;
}

.sidelist:hover{
	background-color: black;
	border: 1px solid black;
	border-radius: 20px;
}

.infoListBtn {
	/* background-color: #f54905; */
	background-color: #e8adbf;
	border: 0;
}

.exhiListBtn {
	/* background-color : #7b19fc; */
	background-color : #ba90c6;
	border: 0;
}

.freeListBtn {
	/* background-color : #1b47f7; */
	background-color : #b0dbea;
	border: 0;
}

.m-r-10 {
	margin-left: 50px;
	font-size: 13px;
	position: relative;
	left: 40px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.move {
	margin-left: 50px;
	font-weight: 600;
	font-size: 17px;
	position: relative;
	color: #424242;
	left: 40px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

a{
	color: #424242;
}

.vieweye {
	width: 15px;
	height: 15px;
	margin-right: 5px;
	margin-left: 10px;
}

.countImg {
	width: 15px;
	height: 15px;
	margin-right: 5px;
	margin-left: 10px;
}

.smalltext {
	height: 20px;
	width: 300px;
	float: right;
}

.smalltext .regidate {
	position: absolute;
	right: 10px;
}

.smalltext .viewgroup {
	position: absolute;
	float: left;
	right: 175px;
}

.smalltext .commentCountGroup {
	position: absolute;
	right: 130px;
	float: left;
}

.smalltext .likeCountGroup {
	position: absolute;
	right: 80px;
	width: 50px;
	height: 20px;
}

.col-md-12 col-lg-12 col-xl-12 {
	padding-right: 0px;
	padding-left: 0px;
	height: 100%;
	margin-left: 30px;
}

.row .search {
	position : absolute;
}

.modaltext {
	vertical-align: middle;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 500;
	position: relative;
	top: 30px;
}

.form-control {
  padding: 5px 30px 5px 10px;
  border-radius: 4px;
  outline: 0 none;
  font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.form-control option {
  background: black;
  color: #fff;
  padding: 3px 0;
}

.pageItemGroup {
	position: relative;
	right: 12%;
}

.page-link {
	display: flex;
    align-items: center;
    justify-content: center;
    color: #7b809a;
    padding: 0;
    margin: 0 3px;
    border-radius: 50%!important;
    width: 36px;
    height: 36px;
    font-size: .875rem;
}

.page-link:hover {
	color: #f21378;
}

.card .btn-primary {
	background-color: #f21378;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	border-radius: 5px;
	border: 0;
	box-shadow: none;
	width: 100px;
	height: 40px;
	line-height: 20px;
	font-size: 15px;
	padding: 0;
	cursor: pointer;
}

.card .btn-primary:hover {
	background-color: #f21378;
    box-shadow: 1px 4px 3px 1px #dadce0;
}

.searchButton {
	border: 2px solid #e9ecef;
	cursor: pointer;
}

.positionText {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 700;
	font-size: 25px;
	padding-bottom: 5px;
}

.positionText .boardName {
	float: left;
	margin-left: 5px;
}

@media only screen and (max-width: 767px) {
	.inbox .mail_list .list-group-item .controls {
		margin-top: 3px;
		flex: 100%;
	}
}
</style>
</head>
<body>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" >
	<div class="container">
		<section class="content inbox">
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card action_bar">
							<div class="body">
								<div class="row clearfix">
									<div class="col-lg-1 col-md-2 col-3"></div>
									<div class="col-lg-5 col-md-4 col-6 searchBox">
										<form id="searchForm" action="/board/list" method='get' style=" width:500px;" class="input-group search">
											<select id="chk" class="form-control" name='type' style="width:150px; margin-right: 5px;">
												<option value="T" <c:out value="${pageMaker.cri.type eq 'T' ? 'selected' : ''}"/>>제목</option>
												<option value="C" <c:out value="${pageMaker.cri.type eq 'C' ? 'selected' : ''}"/>>내용</option>
												<option value="W" <c:out value="${pageMaker.cri.type eq 'W' ? 'selected' : ''}"/>>작성자</option>
												<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ? 'selected' : ''}"/>>제목/내용</option>
												<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW' ? 'selected' : ''}"/>>제목/작성자</option>
												<option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC' ? 'selected' : ''}"/>>제목/작성자/내용</option>
											</select>
											<input type='text' name="keyword" class="form-control" style="width:350px;"
													placeholder="검색어를 입력해주세요." value='<c:out value="${pageMaker.cri.keyword}"/>'>
											<input type='hidden' name="pageNum" value="${pageMaker.cri.pageNum}">
											<input type='hidden' name='brd_id' value='${pageMaker.cri.brd_id}'>
											<button type="submit" class="searchButton"><span class="input-group-addon"><i class="zmdi zmdi-search"></i></span></button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 사이드 카테고리 -->
				<div class="mb40">
					<ul class="list-unstyled active sideListGroup">
						<li class="sidelist active"><a class="nav-link" style="font-weight: 700;"
							href="/board/list?pageNum=1&brd_id=4">BEST</a></li>
						<li class="sidelist active infoListBtn"><a class="nav-link" style="font-weight: 700;"
							href="/board/list?pageNum=1&brd_id=1">정보</a></li>
							<li class="sidelist active exhiListBtn"><a class="nav-link" style="font-weight: 700;"
							href="/board/list?pageNum=1&brd_id=3">전시</a></li>
						<li class="sidelist active freeListBtn"><a class="nav-link" style="font-weight: 700;"
							href="/board/list?pageNum=1&brd_id=2">자유</a></li>
					</ul>
					<!-- 현재 게시판 위치 표시 -->
					<c:choose>
						<c:when test="${pageMaker.cri.brd_id == 2}">
							<div class="positionText">
								<div class="boardName">자유</div>
							</div>
						</c:when>
						<c:when test="${pageMaker.cri.brd_id == 1}">
							<div class="positionText">
								<div class="boardName">정보</div>
							</div>
						</c:when>
						<c:when test="${pageMaker.cri.brd_id == 3}">
							<div class="positionText">
								<div class="boardName">전시</div>
							</div>
						</c:when>
						<c:when test="${pageMaker.cri.brd_id ==4}">
							<div class="positionText">
								<div class="boardName">BEST</div>
							</div>
						</c:when>
					</c:choose>
					<!-- 현재 게시판 위치 표시 종료 -->
				</div>
				<div class="row clearfix">
					<div class="col-md-12 col-lg-12 col-xl-12">
						
						
						<div class="table table-bordered table-hover"
							style="font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;">
								<ul class="mail_list list-group list-unstyled">
									<c:forEach items="${list}" var="board">
									<li class="list-group-item">
										<div class="media">
											<div class="media-body">
												<div class="media-heading">
													<!-- 베스트 게시판 일 시, 글 순번 대신 글 카테고리 표시 -->
													<c:if test="${pageMaker.cri.brd_id==4}">
														<c:choose>
															<c:when test="${board.brd_id==1}">
															<small class="float-left text-muted">정보</small>
															</c:when>
															<c:when test="${board.brd_id==2}">
															<small class="float-left text-muted">자유</small>
															</c:when>
															<c:when test="${board.brd_id==3}">
															<small class="float-left text-muted">전시</small>
															</c:when>
														</c:choose>
													</c:if>
													
													<c:if test="${pageMaker.cri.brd_id!=4}">
														<small class="float-left text-muted"><c:out value="${board.post_id}" /></small>
													</c:if>
													<!-- 베스트 게시판 일 시, 글 순번 대신 글 카테고리 표시  끝-->
													<div class="m-r-10"><c:out value="${board.post_writer}" /></div> 
													<div class="smalltext">
													<small class="float-right text-muted">
														<div class="regidate"><fmt:formatDate pattern="yyyy-MM-dd"
															value="${board.post_regdate}" /></div>
														<div class="viewgroup"><img class="vieweye" src="https://i.imgur.com/OA1LOH3.png">
															<c:out value="${board.post_view_count}" /></div>
														<div class="commentCountGroup"><img class="countImg" src= "https://i.imgur.com/SPrFzms.png">
															<c:out value="${board.post_com_count}" /></div> 
														<div class="likeCountGroup"><img class="countImg" src= "https://i.imgur.com/OUWERYO.png">
															<c:out value="${board.post_rec_count}" /></div> 
													</small>
													</div>
												</div>
												<div class="move"><a href="${path}/board/get?brd_id=${board.brd_id}&post_id=${board.post_id}">
													 <c:out value="${board.post_title}" />
													 </a>
												</div>
											</div>
										</div>
									</li>
									</c:forEach>
								</ul>
						</div>


						<table class="table" style="border-top: hidden;">
							<tr>
								<td style="padding: 0px;">
									<div class="card m-t-5">
										<div class="body">
											<ul class="pagination pagination-primary m-b-0">
												<c:if test="${pageMaker.prev}">
													<li class="paginate_button previous"><a
														class="page-link" href="${pageMaker.startPage-1}">Prev</a></li>
												</c:if>
												<c:forEach var="num" begin="${pageMaker.startPage}"
													end="${pageMaker.endPage}">
													<li class="paginate_button"><a class="page-link move2"
														href="${num}">${num}</a></li>
												</c:forEach>
												<c:if test="${pageMaker.next}">
													<li class="paginate_button next"><a class="page-link"
														href="${pageMaker.endPage +1}">Next</a></li>
												</c:if>
											</ul>
										</div>
									</div>
								</td>
								<td style="padding: 0px;">
									<div class="card m-t-5">
										<div class="body">
										<c:if test="${member.userId!=null && pageMaker.cri.brd_id!=4}"> 
											<ul style="float: right;" class="regBtn">
												<li class="pageitem"><button class="btn btn-primary regmov" 
													style="width: 120px; text-align: center; font-size: 15px"
													>글 등록</button></li>
											</ul>
										</c:if>
										</div>
									</div>
								</td>
							</tr>
						</table>

						<div id="myModal" class="modal">

							<!-- Modal content -->
							<div class="modal-content">
								<p style="text-align: center; line-height: 1.5;">
									<span class="modaltext" style="font-size: 13pt;">처리가 완료되었습니다 &#128171;</span>
								</p>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" id="close_modal">Close</button>
								</div>
							</div>
						</div>
						<!-- End Modal -->
					</div>
				</div>
			</div>
		</section>
	</div>
	<form id='actionForm' action="/board/list" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='pageNumForLimit' value='${pageMaker.cri.pageNumForLimit}'>
		<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'>
		<input type='hidden' name='brd_id' value='${pageMaker.cri.brd_id}'>
	</form>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(
			
			
				function() {
					var result = '<c:out value="${result}"/>';

					checkModal(result);

					history.replaceState({}, null, null);

					function checkModal(result) {
						if (result === '' || history.state) {
							return;
						}
						if (parseInt(result) > 0) {
							$(".modal-conent")
									.html("게시글 " + parseInt(result) + " 번이 등록 되었습니다.");
						}
						$('#myModal').show();
						
						$("#close_modal").click(function() {
							$('#myModal').hide();
						});
					}
					

					$("#regBtn").on("click", function() {
						self.location = "/board/register";
					});
					var actionForm = $("#actionForm");
					
					$(".paginate_button a").on(
							"click",
							function(e) {
								e.preventDefault();
								console.log('click');
								actionForm.find("input[name='pageNum']").val(
										$(this).attr("href"));
								actionForm.submit();
							});
					
					
					$(".regmov").on("click", function(e){
					    e.preventDefault();
					    actionForm.append("<input type='hidden' name='brd_id' value='"+
					            $(this).attr("href")+"'>");
					    actionForm.attr("action", "/board/register");
					    actionForm.submit();
					});
					
					var searchForm = $("#searchForm");
					
					$("#searchForm searchButton").on("click", function(e){
						
						e.preventDefault();
						let val = $("input[name='keyword']").val();
						searchForm.find("input[name='keyword']").val(val);
						/* searchForm.find("input[name='pageNum']").val("1"); */
						
						searchForm.submit();
					})
          
					$(".move2").on("click", function(e){
					    e.preventDefault();
					    actionForm.attr("action", "/board/list");
					    actionForm.submit();
					});
					
					$('#sidelist').on("click", function(){
						$('#sidelist').removeClass();
						$(this).addClass('on');
					});
				});
		
	</script>
</body>
</html>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" />