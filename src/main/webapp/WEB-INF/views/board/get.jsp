<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">

<jsp:include page="/WEB-INF/views/includes/header.jsp"/>

<title>ARCO - Community Post</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="/css/material-dashboard.min.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<style type="text/css">
body {
	margin-top: 20px;
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
	font-weight: 500;
	margin-bottom: 15px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
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
	font-weight: 700;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	color: #0f0f0f;
}

.post-meta {
	padding-top: 15px;
	margin-bottom: 20px;
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

/* 상세 페이지 틀 */
.post-content {
	border: 2px solid #f21378;
	border-radius: 20px;
	padding: 60px;
	padding-bottom: 80px;
}

.post-content .fa {
	color: #ddd;
}

.post-content a h2 {
	font-size: 1.5rem;
	color: #333;
	margin-bottom: 0px;
}

.article-post .owl-carousel {
	margin-bottom: 20px !important;
}

.post-masonry h4 {
	text-transform: capitalize;
	font-size: 1rem;
	font-weight: 700;
}

.postbox {
	margin-top: 40px;
	margin-bottom: 60px !important;
	font-weight: 600;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	color: #696969;
}

.mb40 {
	margin-top: 20px;
	margin-bottom: 40px !important;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	position: relative;
	left: 12%;
}

.mb40 .chat {
	position: relative;
	right: 14%;
	overflow: hidden;
}

.mb30 {
	margin-bottom: 30px !important;
}

.media-body h5 a {
	color: #555;
}



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
  width: 90%;
  margin: 15px auto;
  text-align: center;
  line-height: -100px;
}

button {
  margin: 10px;
  outline: none;
}

/* .custom-btn {
  width: 130px;
  height: 40px;
  border-radius: 20px;
  font-family: 'Nanum Gothic', sans-serif;
  font-size: 14px;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  position: relative;
  display: inline-block;
}

.custom-btn img {
	width: 50px;
	height: 50px;
} */

/* 11 */
/* .btn-11 {
  overflow: hidden;
  transition: all 0.3s ease;
}

.btn-11:hover {
   background: #000;
   color: #fff;
}

.btn-11:before {
    position: absolute;
    display: inline-block;
    top: -180px;
    left: 0px;
    width: 30px;
    height: 100%;
    background-color: #fff;
}

.btn-11:active{
  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
    inset -4px -4px 6px 0 rgba(255,255,255,.2),
    inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
} */

.comBox {
	width: 100%;
	height: 65px;
	margin-bottom: 30px;
}

.commentBtnGroup {
	position: relative;
	float: right;
}

.commentBtnGroup .btn-11 {
	font-family: 'Nanum Gothic', sans-serif;
  	font-size: 13px;
  	border: 1px solid #000;
  	border-radius: 20px;
  	margin-left: 2px;
  	width: 100px;
	position: relative;
	float: right;
	bottom: 18px;
}

.comRegistBtnGroup {
	width: 100%;
	height: 100px;
	border: 1px solid #ddd;
}

.Comment_regist {
	width: 130px;
  	height: 30px;
}

.com_up_content {
	margin-top: 10px;
	magin-bottom: 3px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	border: 1px solid #ccc;
}

.primary-font {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 700;
}

.comContentList {
	height: 50px;
	color: black;
	font-weight: 500;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.commentGroup {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	position: relative;
}

.commentTitleText {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 700;
	font-size: 25px;
	color: black;
	position: relative;
	left: 15px;
}

.com_content {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	color: black;
	border: 1px solid #ccc;
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

.form-control::placeholder {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
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

.comment-delete-btn {
	position: relative;
}

.likeBox {
	text-align: center;
	line-height: 10px;
}

.likeBtnText {
	margin-right: 8px;
	display: inline-block;
}

.recBtnCount {
	border-left: 2px solid white;
	height: 13px;
	padding-left: 9px;
	display: inline-block;
}


@-webkit-keyframes shiny-btn1 {
    0% { -webkit-transform: scale(0) rotate(45deg); opacity: 0; }
    80% { -webkit-transform: scale(0) rotate(45deg); opacity: 0.5; }
    81% { -webkit-transform: scale(4) rotate(45deg); opacity: 1; }
    100% { -webkit-transform: scale(50) rotate(45deg); opacity: 0; }
}

</style>
</head>
<body>
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
  	<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500&display=swap" rel="stylesheet">
	<div class="container pb50">
		<div class="row">
			<div class="col-md-9 mb40">
				<article>
					<div class="post-content">
						<h3 class="post-title">
							<c:out value="${board.post_title}" />
						</h3>

						<ul class="post-meta list-inline">
							<li class="list-inline-item"><i class="fa fa-user-circle-o"></i>
								<a href="#"><c:out value="${board.post_writer}" /></a></li>

							<li class="list-inline-item"><i class="fa fa-calendar-o"></i>
								<a href="#"><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.post_regdate}" /></a></li>

						</ul>
						<div class="postbox"
							style="box-sizing: border-box; width: 100%; height: 300px;">
							<c:out value="${board.post_content}" />
						</div>

						<div class="frame" style="background-color:none;">
							<button id='like' data-oper='like' class="btn btn-primary likeBtn">
								<div class="likeBox">
									<div class="likeBtnText">추천</div>
									<div class="recBtnCount">${board.post_rec_count}</div>
								</div>
							</button>
								<!-- <button id='like' style="border:none; background-color:none;" data-oper='like' 
										class="custom-btn btn-11"><img id="heartImg" src="https://i.imgur.com/6io8NDW.png"></button> -->
						</div>


						<div class="frame">
							<c:if test="${member.userId==board.user_id}">
								<button class="btn btn-secondary" data-oper='modify'>수정</button>
							</c:if>
							<button class="btn btn-secondary" data-oper='list'>목록</button>
							<c:if test="${member.userId==board.user_id}">
								<button class="btn btn-secondary" data-oper='remove'>삭제</button>
							</c:if>
							<form id='operForm_modi' action="/board/modify" method="get">
								<input type='hidden' id='post_id' name='post_id'
									value='<c:out value="${board.post_id}"/>'> <input
									type='hidden' id='post_id' name='pageNum'
									value='<c:out value="${cri.pageNum}"/>'> <input
									type='hidden' id='post_id' name='brd_id'
									value='<c:out value="${cri.brd_id}"/>'>
							</form>
							<form id='operForm_remo' action="/board/remove" method="post">
								<input type='hidden' id='post_id' name='post_id'
									value='<c:out value="${board.post_id}"/>'> <input
									type='hidden' id='post_id' name='pageNum'
									value='<c:out value="${cri.pageNum}"/>'> <input
									type='hidden' id='post_id' name='brd_id'
									value='<c:out value="${cri.brd_id}"/>'>
							</form>
						</div>


						<hr class="mb40">
						<div class="mb40 text-uppercase font500 commentTitleText">Comments</div>
						<div class="media mb40">
							<div class="media-body">
								<ul style="color:black; font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;" class="chat">
								</ul>
								<div class="panel-footer"></div>
							</div>
						</div>

						<!-- 댓글 작성 창 -->
						<div class="commentGroup">
						<c:if test="${member.userId==null}">
							<textarea id="com_content" name="com_content"
								class="form-control" readonly="readonly" rows="3"
								style="resize: none;" placeholder="   로그인 후 입력해주세요!"></textarea>
						</c:if>
						<c:if test="${member.userId!=null}">
							<form role="form">
								<div class="form-group">
									<textarea id="com_writer" name="com_writer" readonly="readonly"
										class="form-control" rows="1" style="resize: none; color:black;">${member.userName}</textarea>
									<textarea id="com_content" name="com_content"
										class="form-control" rows="3" style="resize: none; color:black; border:1px solid #ccc;"></textarea>
								</div>
								<div></div>

								<div id="comRegistBtnGroup" class="clearfix float-right">
									<button id='Comment_regist' type="button"
										class="btn btn-primary" style="width: 120px;">댓글 등록</button>
								</div>
							</form>
						</c:if>
						</div>
					</div>
				</article>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
	
	<script type="text/javascript" src="/js/reply.js"> </script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			
			window.addEventListener('popstate', function(event) {
				  var url = window.location.href;
				  if (url.indexOf('?post_id=') > -1) {
				    var newUrl = url.split('?post_id=')[0];
				    window.history.replaceState({}, document.title, newUrl);
				  }
				});
			
			var operForm_modi = $("#operForm_modi");
			var post_idValue = '<c:out value="${board.post_id}"/>';
			var replyUL = $(".chat");
			var objParams = {
	        		com_id : $("#com_id").val(),
	        		com_content : $("#com_content").val(),
	        		com_writer : $("#com_writer").val()
	        };
			
			var endNum=0;
			var pageNum=1;
			var replyPageFooter = $(".panel-footer");
			
			showList(1);
						
			
			//추천 버튼 이벤트 함수
			$("button[data-oper='like']").on("click", function(e){
				var post_id =  "${board.post_id}";
				var userId =  "${member.userId}";
				console.log(post_id);
				console.log(userId);
				
/*  				document.getElementById("heartImg");
				heartImg.src = "https://i.imgur.com/oNkFWY6.png"; */
				
				$.ajax({
		            type : "POST",  
		            url : "/board/updateLike",       
		            contentType : "application/json; charset=utf-8",
		            data : JSON.stringify({'post_id' : post_id ,'userId' : userId}),
		            error:function(request,status,error){
		                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		               },
		            success : function(response) {
		            	var findLike = parseInt($(response).text());
		                console.log(findLike);
		            	if(findLike==0){
	                    	location.reload(); 	
	                    }
	                    else if (findLike == 1){
	                    	location.reload();
	              		}
	
		            }
		        });
			});
			
			// 페이징
			function showReplyPage(com_cnt){
				endNum=Math.ceil(pageNum/10.0)*10;
				
				var startNum=endNum-9;
				
				var prev=startNum != 1;
				var next=false;
				
				if(endNum*10>=com_cnt){
					endNum=Math.ceil(com_cnt/10.0);
				}
				if(endNum*10<com_cnt){
					next=true;
				}
				
				var str="<ul class='pagination pull-right pageItemGroup'>";
				
				if(prev){
					str+= "<li class='page-item'><a class='page=link' href='"+(startNum-1)+"'>Previous</a></li>";
				}
				
				for(var i = startNum; i<=endNum; i++){
					var active=pageNum==i?"active":"";
					str+="<li class='page-item"+active+"'><a class='page-link' href='"+i+"'>"+i+"<a></li>";
				}
				
				if(next){
					str+= "<li class='page-item'><a class='page=link' href='"+(endNum+1)+"'>Next</a></li>";
				}
				
				str+="</ul></div>";
				console.log(str);
				
				replyPageFooter.html(str);
			} // end 페이징
			
			
			function showList(page) {
				console.log("페이지: "+page)
				replyService.getList({post_id:post_idValue, page:page||1}, 
						function(com_cnt,list) {
					
				var str = "";
				if(page==-1) {
			    	pageNum=Math.ceil(com_cnt/10.0);
			    	
			    	showList(pageNum);
			    	return;
			    }
				if(page==0) {
			    	showList(1);
			    	return;
			    }
				
				if(list==null||list.length==0){
					return;
				}
				
				for(var i=0, len=list.length || 0; i<len; i++) {
					var com_id = list[i].com_id;  // 댓글 ID 저장
				    var form_id = "comment-form-" + com_id;  // 폼의 고유한 ID 생성
				    
					str+= "<li class='left cleafix' data-com-id='" + com_id + "'>";
					str+= "    <div><div class='header'><string class='primary-font'>"+list[i].com_writer+"</strong>";
					if (list[i].com_writer_id=="${member.userId}"){
					str+= "         <small>"	;
					str+= "        	<a href='#" + form_id + "' class='comment-edit-btn' data-toggle='collapse' role='button' aria-expanded='false' aria-controls='" + form_id + "'>수정</a>";
					str+= "         </small>"	;
					str+= "         <small>"	;
					str+= "        	<a href='#" + form_id + "' class='comment-delete-btn' role='button' aria-expanded='false' aria-controls='" + form_id + "'>삭제</a>";
					str+= "         </small>"	;
					}
					str+= "         <small class='pull-right text-muted'>" + replyService.displayTime(list[i].com_date)+"</small></div>";
					str+= "         <div id='comContentList' style='height:45px;' class='collapse multi-collapse-id show'>"+list[i].com_content+"</div>";
					str+= "			<form class='collapse' id='" + form_id + "'>";
			        str+= "  			<div class='form-group'>";
			        str+= "  			<input type='hidden' id='com_id' name='com_id' value=''/>";
			        str+= "    				<textarea style='resize: none; border:1px solid #ccc' class='form-control' id ='com_up_content' rows='3'></textarea>";
			        str+= "  			</div>";
			        str+= "  			<div class='comBox'><div class='commentBtnGroup'>";
			        str+= "  			<button id='Comment_update' type='button' class='btn btn-primary' >수정 완료</button></div></div>";
			        str+= "			</form>";
                    str+=		"</div></li>";
					}
				replyUL.html(str);

				showReplyPage(com_cnt);
				document.getElementById("com_id").value=com_id;
				});
			}
			
			
			$("button[data-oper='modify']").on("click", function(e){
				operForm_modi.attr("action", "/board/modify").submit();
			});
			
			$("button[data-oper='list']").on("click", function(e){
				operForm_modi.find('#post_id').remove();
				operForm_modi.attr("action", "/board/list")
				operForm_modi.submit();
			});
			
			var operForm_remo = $("#operForm_remo");
			
			$("button[data-oper='remove']").on("click", function(e){
				operForm_remo.attr("action", "/board/remove").submit();
			});
			

			$('#Comment_regist').on("click",function(e) {
				var reply={
						com_content:$('#com_content').val(),
						com_writer:$('#com_writer').val(),
						com_writer_id:('${member.userId}'),
						post_id:post_idValue
				};
				replyService.add(reply, function(result){alert(result); showList(endNum);} );
				document.getElementById("com_content").value='';
			});
			$(document).on('click','.comment-edit-btn',function(){
			    var form_id = $(this).closest('form').attr('id'); // 클릭한 버튼의 부모 form 요소에서 id 값을 가져옴
			    $("#" + form_id).collapse('toggle'); // 해당 form의 collapse 상태를 변경하여 textarea가 나타나도록 함
			});

			$(document).on('click','#Comment_update',function(){
			    var form_id = $(this).closest('form').attr('id'); // 클릭한 버튼의 부모 form 요소에서 id 값을 가져옴
			    var com_id = $(this).closest("li").data("com-id");
			    var reply={
			        "com_content": $("#" + form_id + ' textarea').val(), // 해당 form의 textarea의 값을 가져옴
			        "com_id" : com_id
			    }; 
			    replyService.update(reply, function(result){alert(result); showList(pageNum);} );
			    
			});
			
			$(document).on('click', '.comment-delete-btn', function(){
			    var com_id = $(this).closest("li").data("com-id");
			    replyService.remove(com_id, function(result){
			        alert(result);
			        showList(1);
			    });
			});
			
			replyPageFooter.on('click','li a',function(e){
				e.preventDefault();
				console.log("page click");
				
				var targetPageNum=$(this).attr("href");
				
				console.log("targetPageNum : "+targetPageNum);
				
				PageNum=targetPageNum;
				console.log("PageNum : "+PageNum);
				showList(PageNum);
			});
		});
	</script>

</body>
</html>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" />