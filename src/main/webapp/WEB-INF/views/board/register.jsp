<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<head>
<meta charset="utf-8">


<title>ARCO - Community register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<link
	href="https://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">
	
<!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">

	
<style type="text/css">
body {
	margin-top: 20px;
	background: #fff
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
	margin-bottom: 30px;
	transition: .5s;
	border: 0;
	border-radius: .1875rem;
	display: inline-block;
	position: relative;
	width: 100%;
	box-shadow: none;
}

.page-link {
	color: #000;
	background-color: #fff;
	border: 1px solid #ccc;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 500;
	width: 80px;
	text-align: center;
}

.page-item.active .page-link {
	z-index: 1;
	color: #555;
	font-weight: 500;
	font-family: 'Noto Sans KR', sans-serif;
	background-color: #f1f1f1;
	border-color: #ccc;
}

.page-link:focus, .page-link:hover {
	color: #000;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 500;
	background-color: #f1f1f1;
	border-color: #ccc;
}

.inbox .action_bar .delete_all {
	margin-bottom: 0;
	margin-top: 8px
}

.inbox .action_bar .btn, .inbox .action_bar .search {
	margin-left: 200px;
	margin-bottom: 15px;
}

.inbox .mail_list .list-group-item {
	border: 0;
	padding: 15px;
	margin-bottom: 1px
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
	font-weight: normal
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
	font-weight: 700
}

.inbox .btn-group {
	box-shadow: none
}

.inbox .bg-gray {
	background: #e6e6e6
}

.chk {
  padding: 5px 30px 5px 10px;
  border-radius: 4px;
  outline: 0 none;
}

.chk option {
  background: black;
  color: #fff;
  padding: 3px 0;
}

.form-control {
	font-family: 'Noto Sans KR', sans-serif;
}

.form-control::placeholder {
	font-family: 'Noto Sans KR', sans-serif;
}

.writername {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
	position: relative;
	bottom: 7px;

}

@media only screen and (max-width: 767px) {
	.inbox .mail_list .list-group-item .controls {
		margin-top: 3px
	}
}
</style>
</head>

<body>
	<div class="container">
		<section class="content inbox">
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card action_bar">
							<div class="body">
								<div class="row clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-md-12 col-lg-12 col-xl-12">

						<form id="insertForm" role="from" action="/board/register" method="post">
							<div class="form-group">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th style="border-right: hidden;" width='40'>
											<select class="chk" name='brd_id' id="category">
													<option value="1">TALK</option>
													<option value="2">INFO</option>
													<option value="3">WEEKLY</option>
											</select></th>
											<th><input class="form-control" name='post_title'
												value="제목을 입력해주세요" onfocus="this.value=''"></th>
										</tr>
										
										<tr>
											
											<th><div class="writername">작성자</div></th>
											<th><input class="form-control" name='post_writer'
												value="${member.userName}" readonly="readonly"></th>
												<th><input class="form-control" name='user_id' type='hidden'
												value="${member.userId}"></th>
										</tr>

										<tr>
											<th colspan='2'><textarea style="resize: none;"
													class="form-control" rows="30" name='post_content'></textarea></th>
										</tr>
										<tr style="border-top: hidden;">
											<td style="padding-left: 5 px; border-right: hidden;">
												<div class="card m-t-5">
													<div class="body">
														<ul class="pagination pagination-primary m-b-0">
															<li class="page-item">
																<a class="page-link" href="/board/list?brd_id=${cri.brd_id}">목록</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
											<td style="padding-right: 5 px;">
												<div class="card m-t-5">
													<div class="body">
														<ul style="float: right;"
															class="registerBtn pagination pagination-primary m-b-0">
															<li class="page-item"><input style="cursor: pointer;" class="page-link" type="submit"
																value="글 등록"></li>
														</ul>
													</div>
												</div>
											</td>
										</tr>
									</thead>
								</table>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>

	<input type='hidden' name='pageNum' value="${cri.pageNum}"/>
	<input type='hidden' name='brd_id' value="${cri.brd_id}"/>
	
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script>
	
	<script type="text/javascript">
 			$(document).ready(function(){
 			
			var formObj = $("form");
			var brd_id = "${param.brd_id}";
			var pageNum = "${cri.pageNum}";
			console.log("${param.brd_id}");
 			$('#registerBtn').on("click", function(){
 				
 				formObj.attr("action", "/board/list");
 				formObj.attr("method", "get");
 				formObj.submit();
 				
 				location.href="/board/list?pageNum="+pageNum+"&brd_id="+brd_id;
 				
 			});
 			var actionForm = $("#actionForm");
 			
 			$('#category').val(brd_id);
 			
 			$("#category").change(function(){ //카테고리 수정 시 brd_id로 값 넘김--04.19 minhoe
 				brd_id = $("#category").val();
 				console.log(brd_id);
 			});
 			
 		});
 	</script>
</body>

