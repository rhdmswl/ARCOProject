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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<style type="text/css">
body {
	margin-top: 20px;
}
/*
Blog post entries
*/
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
	font-family: 'Nanum Gothic', sans-serif;
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
	font-family: 'Nanum Gothic', sans-serif;
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
	font-family: 'Nanum Gothic', sans-serif;
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
	font-family: 'Nanum Gothic', sans-serif;
	margin-right: 5px;
}
/*
Template sidebar
*/
.sidebar-title {
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
  margin: 40px auto;
  text-align: center;
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
    /* content: ''; */
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
}

.commentBtnGroup {
	width: 100%;
	height: 65px;
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
	font-family: 'Nanum Gothic', sans-serif;
}

.primary-font {
	font-family: 'Nanum Gothic', sans-serif;
	font-weight: 700;
}

.comContentList {
	font-family: 'Nanum Gothic', sans-serif;
	height: 50px;
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
						<h3 class="post-title"><c:out value="${board.post_title}"/></h3>
						
						<ul class="post-meta list-inline">
							<li class="list-inline-item"><i class="fa fa-user-circle-o" ></i>
								<a href="#"><c:out value="${board.post_writer}"/></a></li>
							
							<li class="list-inline-item"><i class="fa fa-calendar-o"></i>
								<a href="#"><fmt:formatDate pattern = "yyyy-MM-dd" value="${board.post_regdate}"/></a></li>

						</ul>
						<div class="postbox" style="box-sizing: border-box; width:100%; height:300px;">
								<c:out value="${board.post_content}"/>
						</div>
						
						<div class="frame">
							<button data-oper='like' class="custom-btn btn-11" >추천</button>
						</div>
						
						
						<div class="frame">
							<c:if test="${member.userId==board.post_writer}"> 
							<button class="custom-btn btn-11" data-oper='modify'>수정</button>
							</c:if>
							<button class="custom-btn btn-11" data-oper='list'>목록</button>
							<c:if test="${member.userId==board.post_writer}">
							<button class="custom-btn btn-11" data-oper='remove'>삭제</button>
							</c:if> 
							<form id='operForm_modi' action="/board/modify" method="get">
								<input type='hidden' id='post_id' name='post_id' value='<c:out value="${board.post_id}"/>'>
								<input type='hidden' id='post_id' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
								<input type='hidden' id='post_id' name='brd_id' value='<c:out value="${cri.brd_id}"/>'>
							</form>
							<form id='operForm_remo' action="/board/remove" method="post">
								<input type='hidden' id='post_id' name='post_id' value='<c:out value="${board.post_id}"/>'>
								<input type='hidden' id='post_id' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
								<input type='hidden' id='post_id' name='brd_id' value='<c:out value="${cri.brd_id}"/>'>
							</form>
						</div>
						
						
						
						
						<hr class="mb40">
						<h4 class="mb40 text-uppercase font500">Comments</h4>
						<div class="media mb40">
							<div class="media-body">
							<ul class="chat">
							</ul>
							<div class="panel-footer">
							</div>
							</div>
						</div>
						
						<!-- 댓글 작성 창 -->
						<c:if test="${member.userId==null}">
						<textarea id="com_content" name ="com_content" class="form-control" readonly="readonly" rows="3" style="resize: none;">로그인 후 입력해주세요!</textarea>
						</c:if>
						<c:if test="${member.userId!=null}">
						<form role="form">
							<div class="form-group">
								<label style="font-family: 'Nanum Gothic', sans-serif;">Comment</label>
								<textarea id="com_writer" name ="com_writer" readonly="readonly" class="form-control" rows="1" style="resize: none;">${member.userId}</textarea>
								<textarea id="com_content" name ="com_content" class="form-control" rows="3" style="resize: none;"></textarea>
							</div>
							<div>
							</div>
							
							<div id="comRegistBtnGroup" class="clearfix float-right">
								<button id='Comment_regist' type="button" class="custom-btn btn-11">댓글 등록</button>
							</div>
						</form>
						</c:if>
					</div>
				</article>

			</div>
<!-- 			<div class="col-md-3 mb40">
				<div class="mb40">
					<form>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search..."
								aria-describedby="basic-addon2">
							<button class="input-group-addon" id="basic-addon2">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</form>
				</div> -->

				<div class="mb40">
					<h4 class="sidebar-title">Categories</h4>
					<ul class="list-unstyled categories">
						<li><a href="#">Rent</a></li>
						<li><a href="#">Sale</a></li>
						<li class="active"><a href="#">Apartment</a>
							<ul class="list-unstyled">
								<li><a href="#">Office</a></li>
								<li><a href="#">Godown</a></li>
								<li><a href="#">Gerage</a></li>
							</ul></li>
						<li><a href="#">Top Rating</a></li>
						<li><a href="#">Trending</a></li>
						<li><a href="#">Newest Properties</a></li>
					</ul>
				</div>

				<!-- <div>
					<h4 class="sidebar-title">Latest News</h4>
					<ul class="list-unstyled">
						<li class="media"><img class="d-flex mr-3 img-fluid"
							width="64"
							src="https://bootdey.com/img/Content/avatar/avatar1.png"
							alt="Generic placeholder image">
							<div class="media-body">
								<h5 class="mt-0 mb-1">
									<a href="#">Lorem ipsum dolor sit amet</a>
								</h5>
								April 05, 2017
							</div></li>
						<li class="media my-4"><img class="d-flex mr-3 img-fluid"
							width="64"
							src="https://bootdey.com/img/Content/avatar/avatar2.png"
							alt="Generic placeholder image">
							<div class="media-body">
								<h5 class="mt-0 mb-1">
									<a href="#">Lorem ipsum dolor sit amet</a>
								</h5>
								Jan 05, 2017
							</div></li>
						<li class="media"><img class="d-flex mr-3 img-fluid"
							width="64"
							src="https://bootdey.com/img/Content/avatar/avatar3.png"
							alt="Generic placeholder image">
							<div class="media-body">
								<h5 class="mt-0 mb-1">
									<a href="#">Lorem ipsum dolor sit amet</a>
								</h5>
								March 15, 2017
							</div></li>
					</ul>
				</div> -->
			</div>
		</div>
	
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
	
	<script type="text/javascript" src="/js/reply.js"> </script>
	
	<script type="text/javascript">
		$(document).ready(function(){
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
				const likebtn = document.getElementById('btn');
				
				console.log(post_id);
				console.log(userId);
				
				
				$.ajax({
		            type : "POST",  
		            url : "/board/updateLike",       
		            contentType : "application/json; charset=utf-8",
		            data : JSON.stringify({'post_id' : post_id ,'userId' : userId}),
		            error:function(request,status,error){
		                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		               },
		            success : function(findLike) {
		            	console.log(parseInt(findLike.textContent));
		            	if(findLike == 0){
	                    	alert("추천완료.");
	                    	location.reload();
	                    }
	                    else if (findLike == 1){
	                     alert("추천취소");
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
				
				var str="<ul class='pagination pull-right'>";
				
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
					if (list[i].com_writer=="${member.userId}"){
					str+= "         <small>"	;
					str+= "        	<a href='#" + form_id + "' class='comment-edit-btn' data-toggle='collapse' role='button' aria-expanded='false' aria-controls='" + form_id + "'>수정</a>";
					str+= "         </small>"	;
					str+= "         <small>"	;
					str+= "        	<a href='#" + form_id + "' class='comment-delete-btn' role='button' aria-expanded='false' aria-controls='" + form_id + "'>삭제</a>";
					str+= "         </small>"	;
					}
					str+= "         <small class='pull-right text-muted'>" + replyService.displayTime(list[i].com_date)+"</small></div>";
					str+= "         <p id='comContentList' style='height:45px; font-family: 'Nanum Gothic', sans-serif;' class='collapse multi-collapse-id show'>"+list[i].com_content+"</p>";
					str+= "			<form class='collapse' id='" + form_id + "'>";
			        str+= "  			<div class='form-group'>";
			        str+= "  			<input type='hidden' id='com_id' name='com_id' value=''/>";
			        str+= "    				<textarea style='resize: none;' class='form-control' id ='com_up_content' rows='3'></textarea>";
			        str+= "  			</div>";
			        str+= "  			<div class='commentBtnGroup'><button type='button' class='btn btn-11 comment-delete-btn'>삭제</button>";
			        str+= "  			<button id='Comment_update' type='button' class='btn btn-11' >수정 완료</button></div>";
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
						post_id:post_idValue
				};
				replyService.add(reply, function(result){alert(result); showList(endNum);} );
			});
			$(document).on('click','.comment-edit-btn',function(){
			    var form_id = $(this).closest('form').attr('id'); // 클릭한 버튼의 부모 form 요소에서 id 값을 가져옴
			    $("#" + form_id).collapse('toggle'); // 해당 form의 collapse 상태를 변경하여 textarea가 나타나도록 함
			});

			$(document).on('click','#Comment_update',function(){
			    var form_id = $(this).closest('form').attr('id'); // 클릭한 버튼의 부모 form 요소에서 id 값을 가져옴
			    var com_id = $(this).closest("li").data("com-id");
			    console.log("PageNum update : "+PageNum);
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