<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<%@ include file="../includes/header.jsp"%>

<title>ARCO - Community Post</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">

<style type="text/css">
body {
	margin-top: 20px;
}

body::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
    height: 5%; /* 스크롤바의 길이 */
    background: #f21378; /* 스크롤바의 색상 */ 
    border-radius: 10px;
}

body::-webkit-scrollbar-track {
    background: rgba(242, 240, 241);  /*스크롤바 뒷 배경 색상*/
}


.entry-card {
	-webkit-box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.05);
	-moz-box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.05);
	box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.05);
}

.entry-content {
	background-color: #fff;
	padding: 36px 36px 36px 36px;
	border-bottom-left-radius: 6px;
	border-bottom-right-radius: 6px;
}

.entry-content .entry-title a {
	color: #333;
}

.entry-content .entry-title a:hover {
	color: #4782d3;
}

.entry-content .entry-meta span {
	font-size: 12px;
}

.entry-title {
	font-size: .95rem;
	font-weight: 600;
	margin-bottom: 15px;
	font-family: 'Noto Sans KR', sans-serif;
}

.entry-thumb {
	display: block;
	position: relative;
	overflow: hidden;
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.entry-thumb img {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.entry-thumb .thumb-hover {
	position: absolute;
	width: 100px;
	height: 100px;
	background: rgba(71, 130, 211, 0.85);
	display: block;
	top: 50%;
	left: 50%;
	color: #fff;
	font-size: 40px;
	line-height: 100px;
	border-radius: 50%;
	margin-top: -50px;
	margin-left: -50px;
	text-align: center;
	transform: scale(0);
	-webkit-transform: scale(0);
	opacity: 0;
	transition: all .3s ease-in-out;
	-webkit-transition: all .3s ease-in-out;
}

.entry-thumb:hover .thumb-hover {
	opacity: 1;
	transform: scale(1);
	-webkit-transform: scale(1);
}

.article-post {
	border-bottom: 1px solid #eee;
	padding-bottom: 70px;
}

.article-post .post-thumb {
	display: block;
	position: relative;
	overflow: hidden;
}

.article-post .post-thumb .post-overlay {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.6);
	transition: all .3s;
	-webkit-transition: all .3s;
	opacity: 0;
}

.article-post .post-thumb .post-overlay span {
	width: 100%;
	display: block;
	vertical-align: middle;
	text-align: center;
	transform: translateY(70%);
	-webkit-transform: translateY(70%);
	transition: all .3s;
	-webkit-transition: all .3s;
	height: 100%;
	color: #fff;
}

.article-post .post-thumb:hover .post-overlay {
	opacity: 1;
}

.article-post .post-thumb:hover .post-overlay span {
	transform: translateY(50%);
	-webkit-transform: translateY(50%);
}

.post-content .post-title {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 500;
}

.post-meta {
	padding-top: 15px;
	margin-bottom: 20px;
	margin-left: 140px;
}

.post-meta li:not(:last-child) {
	margin-right: 10px;
}

.post-meta li a {
	color: #999;
	font-size: 13px;
}

.post-meta li a:hover {
	color: #4782d3;
}

.post-meta li i {
	margin-right: 5px;
}

.post-meta li:after {
	margin-top: -5px;
	content: "/";
	margin-left: 10px;
}

.post-meta li:last-child:after {
	display: none;
}

.post-masonry .masonry-title {
	font-weight: 500;
}

.share-buttons li {
	vertical-align: middle;
}

.share-buttons li a {
	margin-right: 0px;
}

.form-control {
	font-family: 'Noto Sans KR', sans-serif;
}

.post-content .fa {
	color: #ddd;
}

.post-content a h2 {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 1.5rem;
	color: #333;
	margin-bottom: 0px;
}

.article-post .owl-carousel {
	margin-bottom: 20px !important;
}

.post-masonry h4 {
	text-transform: capitalize;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 1rem;
	font-weight: 700;
}

.post-title {
	font-family: 'Noto Sans KR', sans-serif;
	margin-left: 140px;
	width: 100%;
}

.postbox {
	margin-bottom: 60px !important;
	margin-left: 140px;
	width:100%; 
	height:400px;
	text-align: left;
	vertical-align:top;
	font-family: 'Noto Sans KR', sans-serif;
	resize: none;
}

.mb40 {
	margin-bottom: 40px !important;
}

.mb30 {
	margin-bottom: 30px !important;
}

.media-body h5 a {
	color: #555;
}

.categories li a:before {
	content: "\f0da";
	font-family: 'Noto Sans KR', sans-serif;
	margin-right: 5px;
}
/*
Template sidebar
*/
/* .sidebar-title {
	margin-bottom: 1rem;
	font-size: 1.1rem;
}

.categories li {
	vertical-align: middle;
}

.categories li>ul {
	padding-left: 15px;
}

.categories li>ul>li>a {
	font-weight: 300;
}

.categories li a {
	color: #999;
	position: relative;
	display: block;
	padding: 5px 10px;
	border-bottom: 1px solid #eee;
}

.categories li a:before {
	content: "\f0da";
	font-family: 'FontAwesome';
	margin-right: 5px;
}

.categories li a:hover {
	color: #444;
	background-color: #f5f5f5;
}

.categories>li.active>a {
	font-weight: 600;
	color: #444;
} */

.media-body h5 {
	font-size: 15px;
	letter-spacing: 0px;
	line-height: 20px;
	font-weight: 400;
}

.media-body h5 a {
	color: #555;
}

.media-body h5 a:hover {
	color: #4782d3;
}

.frame {
	width: 100%;
	margin: 40px auto;
	line-height: -100px;
}

button {
	margin: 10px;
	outline: none;
}

.custom-btn {
	width: 130px;
	height: 40px;
	border: 1px solid #000;
	border-radius: 20px;
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 14px;
	font-weight: 500;
	background: transparent;
	cursor: pointer;
	position: relative;
	left: 50%;
	right: 50%;
	display: inline-block;
}

/* 11 */
.btn-11 {
	overflow: hidden;
	transition: all 0.3s ease;
}

.btn-11:hover {
	background: #000;
	color: #fff;
}

.btn-11:before {
	position: absolute;
	content: '';
	display: inline-block;
	top: -180px;
	left: 0;
	width: 30px;
	height: 100%;
	background-color: #fff;
}

.btn-11:active {
	box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .3), -4px -4px 6px 0
		rgba(116, 125, 136, .2), inset -4px -4px 6px 0 rgba(255, 255, 255, .2),
		inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
}


</style>
</head>
<body>
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500&display=swap"
		rel="stylesheet">

	<form role="form" action="/board/modify" method="post">
		<div class="container pb50">
			<div class="row">
				<div class="col-md-9 mb40">
					<article>
						<div class="post-content">
							<div class="form-group" style="display:none">
								<label>post_id</label>
								<input class="form-control" name='post_id'
									value='<c:out value="${board.post_id}"/>' readonly="readonly">
							</div>
						
							<div class="form-group">
								<h3 class="post-title">
									<label>Title</label>
									<input class="form-control" style="width:100%;" name='post_title' 
										value='<c:out value="${board.post_title}"/>'>
								</h3>
							</div>

							<ul class="post-meta list-inline">
								<li class="list-inline-item"><i class="fa fa-user-circle-o"></i>
									<a href="#"><c:out value="${board.post_writer}" /></a></li>

								<li class="list-inline-item"><i class="fa fa-calendar-o"></i>
									<a href="#"><fmt:formatDate pattern="yyyy-MM-dd"
											value="${board.post_regdate}" /></a></li>
							</ul>
							<div class="postbox">
								<textarea class="form-control" style="width:100%; height:400px;" name='post_content'><c:out value="${board.post_content}" /></textarea>
							</div>

							<div class="frame">
								<button type="submit" class="custom-btn btn-11" data-oper='modify'>수정 완료</button>
								<button class="custom-btn btn-11 move2" data-oper='list'
									onclick="location.href='/board/list?pageNum='+$('#pageNum').val()+'$brd_id='+$('#brd_id').val()">목록</button>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>
		<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
		<input type='hidden' name='brd_id' value='<c:out value="${cri.brd_id}"/>'>
	</form>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
 		$(document).ready(function(){
 			
 			var formObj = $("form");
 			
 			$('button').on("click", function(e){
 				e.preventDefault();
 				
 				var operation = $(this).data("oper");
 				
 				console.log(operation);
 				
 				if(operation === 'remove'){
 					formObj.attr("action", "/board/remove");
 				} else if(operation === 'list'){
 					formObj.attr("action", "/board/list").attr("method","get");
 					var pageNumTag = $("input[name='pageNum']").clone();
 					var brdIdTag = $("input[name='brd_id']").clone();
 					
 					formObj.empty();
 					formObj.append(pageNumTag);
 					formObj.append(brdIdTag);
 				}
 				formObj.submit();
 			});
 		});
	</script>
</body>
</html>