<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    
	<jsp:include page="/WEB-INF/views/includes/header.jsp"/>
	
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>EXHIBITION - Page</title>

    <!-- Favicon -->
    <link rel="icon" href="/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="/style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="/css/responsive/responsive.css" rel="stylesheet">
    
    <!-- <link rel="stylesheet" href="/css/material-dashboard.min.css"> -->
    <script src="/js/material-dashboard.min.js"></script>
    
    <!-- Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
    
    
<style type="text/css">

html {
    height: 100%;
}
body {
    margin-top: 20px;
	background: #FFF;
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

#scrollUp2 {
	bottom: 55px;
	font-size: 14px;
	right: 50%;
	width: 30px;
	text-align: center;
	height: 30px;
	line-height: 30px;
	border-radius: 50%;
	margin-right: -15px;
}

a {
	background-color: #fff;
	color : #fff;
}

a:hover {
	background-color: #fff;
	color : #fff;
}

.no-gutters {
    margin-right: 0;
    /* margin-left: 50px; */
    position: relative;
}

.section_padding_80 {
    margin-top: 30px;
    margin-bottom: 80px;
}

.btn-secondary {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	box-shadow: none;
	width: 100px;
	height: 40px;
	line-height: 20px;
	font-size: 15px;
	padding: 0;
	background-color: #f21378;
	border: 0;
}

.btn-secondary:hover {
	background-color: #f21378;
    box-shadow: 1px 4px 3px 1px #dadce0;
}

.single_blog_area ul li:before {
	content:none;
}

.single-post {
	height: 70%;
}

.post-thumb {
	margin-bottom: 55px;
}

.post-thumb img {
	position: absolute;
	left: 22%;
	top: 10px;
}

.post-headline {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 30px;
	font-weight: 700;
	color: #696969;
}

.post-date {
	margin-left: 30px;
}

/* 전시 정보 그룹 */

.post-content {
	position: relative;
	top: 55%;
	left: 20px;
	right: 30px;
	background-color: #fff;
}

.exhiInfoGroup {
	border: 1px solid #ccc;
	border-radius: 10px;
	margin-top: 30px;
	padding: 20px;
	height: 410px;
}

/* 전시 정보 */
.infoText {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 18px;
	font-weight: 600;
	color: #696969;
}

/* 페이지 버튼 */
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
    border-color: #ddd;
}

.page-item.active:hover {
	color: #f21378;
}

.card-header {
    padding: 0.75rem 1.25rem;
    margin-bottom: 0;
    background-color: #fff;
    border-bottom: 0;
}

.info {
	margin-bottom: 10px;
}

.infoBox {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	margin-top: 5px;
	margin-bottom: 10px;
}

.infoBtn {
	float: right;
}

/* 댓글 리스트 */
.panel-footer {
	border: 1px solid magenta;
}

.comment_area {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 500;
	border: 1px solid red;
	position: absolute;
	top: 90%;
	width: 90%;
	left: 40px;
}


.revList {
	border: 1px solid blue;
	position: absoulute;
	bottom: 1px;
}

</style>

</head>
<body>

    <!-- ****** Single Blog Area Start ****** -->
	<section class="single_blog_area section_padding_80">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-8">
					<div class="row no-gutters">

						<!-- Single Post -->
						<div class="col-10 col-sm-11">
							<div class="single-post">
								<!-- Post Thumb -->
								<div class="post-thumb">
									<img src="<c:out value="${collection.imgUrl}"/>" width="400"
										height="500" alt="">
								</div>
								<!-- Post Content -->
								<div class="post-content card-header">
									<div class="post-meta d-flex">
										<div class="post-author-date-area d-flex">
											<!-- Post Date -->
											<div class="post-date">
												<a href="#"><c:out value="${collection.startDate}"></c:out>
													~ <c:out value="${collection.endDate}"></c:out></a>
											</div>
										</div>
										<!-- Post Comment & Share Area -->
										<!-- 										<div class="post-comment-share-area d-flex">
											Post Favourite
											<div class="post-favourite">
												<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
													10</a>
											</div>
											Post Comments
											<div class="post-comments">
												<a href="#"><i class="fa fa-comment-o"
													aria-hidden="true"></i> 12</a>
											</div>
											Post Share
											<div class="post-share">
												<a href="#"><i class="fa fa-share-alt"
													aria-hidden="true"></i></a>
											</div>
										</div> -->
									</div>
									<div class="card-body">
										<div class="post-headline">
											<c:out value="${collection.title}" />
										</div>
										<div class="exhiInfoGroup">
											<div class="info">
												<div class="infoText">&#128198; 전시 기간</div>
												<div class="infoBox">
													<c:out value="${collection.startDate}" />
													-
													<c:out value="${collection.endDate}" />
												</div>
											</div>
											<div class="info">
												<div class="infoText">&#128178; 가격</div>
												<div class="infoBox">
													<c:out value="${collection.price}" />
												</div>
											</div>
											<div class="info">
												<div class="infoText">&#127962; 장소</div>
												<div class="infoBox">
													<c:out value="${collection.place}" />
												</div>
											</div>
											<div class="info">
												<div class="infoText">&#128205; 주소</div>
												<div class="infoBox">
													<c:out value="${collection.placeAddr}" />
												</div>
											</div>
											<div class="info">
												<div class="infoText">&#128222; 문의</div>
												<div class="infoBox">
													<c:out value="${collection.phone}" />
												</div>
											</div>
											<div class="info">
												<div class="infoBtn">
													<a href="<c:out value="${collection.url}" />">
														<button class="btn btn-secondary">티켓 구매</button>
													</a>
												</div>
											</div>
										</div>
									</div>
									<!-- <img class="br-30 mb-15" src="img/blog-img/14.jpg" alt=""> -->
								</div>
							</div>


							<!-- Comment Area Start -->
							<div class="comment_area section_padding_50 clearfix">
								<!-- <h4 class="mb-30">2 Comments</h4> -->
								<ol>
									<ul class="chat">
									</ul>
									<%--   <div class="pull-rigth">
                                        <ul class="pagination">
                                        <c:if test="${pageMaker.prev }">
                                        <li class="paginate_button privious"><a href="#">previous</a></li></c:if>
                                        <c:forEach var ="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                                        <li class="paginate_button ${pageMaker.cri.pageNum == num? 'active':'' }"><a href="${num}">${num}</a></li></c:forEach>
                                        <c:if test="${pageMaker.next}">
                                        <li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li></c:if>
                                        </ul>
                                        </div> --%>
									<!-- end Pagination -->
								</ol>
							</div>
							<div class="panel-footer">
								<form id='actionForm' action="/review/list" method='get'>
									<input type='hidden' name='pageNum'
										value='${pageMaker.cri.pageNum}'> <input type='hidden'
										name='pageNumForLimit'
										value='${pageMaker.cri.pageNumForLimit}'>
								</form>
								<!-- Leave A Comment -->
								<div class="leave-comment-area section_padding_50 clearfix">
									<div class="comment-form">
										<div class="mb-30">한줄평을 남겨주세요 &#128173;</div>

										<!-- Comment Form -->
										<form role="form">
											<div class="form-group">
												<input type="text" style="display: none;" id="seq"
													name="seq" value="<c:out value="${collection.seq}"/>">
											</div>
											<div class="form-group">
												<label>작성자</label> <input class="form-control" type="text"
													id='nickName' name='nickName' value='작성자'>
												<!--                                            <input type="text" class="form-control" id="contact-name" placeholder="nickName" name = "userId">
 -->
											</div>
											<div class="form-group">
												<label>리뷰내용</label> <input class="form-control" type="text"
													id='revComment' name='revComment' value='한줄평 작성'>
												<!--                                             <input type="text" class="form-control" id="contact-email" placeholder="별점 넣을 공간" name = "revStar">
 -->
											</div>

											<div class="form-group">
												<label>별점</label> <input class="form-control" type="text"
													id='revStar' name='revStar' value='별점'>
												<!--                                          	<input type="text" class="form-control" id="contact-email" placeholder="한줄평자리" name = "revComment">
 -->
											</div>
											<button id='commentAdd' type="submit"
												class="btn btn-secondary">댓글 작성</button>
										</form>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Copywrite Text -->
				<div class="copy_right_text text-center">
						<a id="scrollUp2" href="#top"  
						style="position: absolute; z-index: 2147483647; background-color:#f21378;"><i
						class="fa fa-arrow-up lastscroll" aria-hidden="true" style="color:#fff;"></i></a>
					<p>
						Copyright @2018 All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
					</p>
				</div>
			</div>
		</div>
	</div>

    <!-- Jquery-2.2.4 js -->
    <script src="/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="/js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="/js/active.js"></script>
	<script src="/js/jquery/jquery-2.2.4.min.js"></script>

		<script type="text/javascript" src="/js/review.js"></script>
<script>
	var pageNum = 1;
	var reviewPageFooter = $(".panel-footer");
	function showReviewPage(reviewCnt) {
		var endNum = Math.ceil(pageNum / 10.0) * 10;
		var startNum = endNum - 9;

		var prev = startNum != 1;
		var next = false;

		if (endNum * 10 >= reviewCnt) {
			endNum = Math.ceil(reviewCnt / 10.0);
		}

		if (endNum * 10 < reviewCnt) {
			next = true;
		}

		var str = "<ul class='pagination pull-right revList'>";
		if (prev) {
			str += "<li class='page-item'><a class='page-link' href='"
					+ (startNum - 1) + "'>Previous</a></li>";
		}

		for (var i = startNum; i <= endNum; i++) {
			var active = pageNum == i ? "active" : "";
			str += "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"
					+ i + "</a></li>";
		}

		if (next) {
			str += "<li class='page-item'><a class='page-link' href='"
					+ (endNum + 1) + "'>Next</a></li>";
		}

		str += "</ul></div>";
		console.log(str);

		reviewPageFooter.html(str);
	}
</script>
		

		<script type="text/javascript" src="/js/review.js"></script>

		<script>

       	$(document).ready(function() {
       		
       		
            		 var seqValue = '<c:out value="${collection.seq}"/>';
            		 var reviewUL = $(".chat");
            		 showList(1);
            		 
            		 function showList(page){
            			 console.log("show list " + page);
            			 
            			 CollectionReviewService.getList({seq:seqValue,page: page|| 1 },
            				function(reviewCnt, list){
            				 console.log("reviewCnt: " + reviewCnt);
            				 console.log("list: " + list);
            				 console.log(list);
            				 
            			 
            			 if(page == -1){
            				 pageNum = Math.ceil(reviewCn/10.0);
            				 showList(pageNum);
            				 return;
            			 }
            				   var str="";
            				   
            				   if(list==null || list.length ==0) {
            					   reviewUL.html("");
            				   } 
            				   
            				   for(var i=0, len = list.length || 0; i < len; i++){
            					   var revSeqValue = list[i].revSeq;
            					   var formId = "review" + list[i].revSeq
            					   str +="<li class=' left clearfix' data-rno='"+list[i].revSeq+"'>";
            					   str +="  <div><div class='header'><strong class='primary-font'>"+list[i].nickName+"</strong>"; 
            					   str+= "   <small class='pull-right text-muted'>" +CollectionReviewService.displayTime(list[i].updateDate)+"</small></div>";
/*             			           str +="    <p>"+list[i].revComment+"</p>"; */
            			           str+= "         <p id='review' style='height:45px; font-family: 'Nanum Gothic', sans-serif;' class='collapse multi-collapse-id show'>"+list[i].revComment+"</p>";
            			           str += "<a href='#" + formId + "' value='"+ list[i].revSeq +"' class='update' data-toggle='collapse' role='button' aria-expanded='false' aria-controls='" + formId + "'>수정</a>";
            			           str+= "			<form class='collapse' id='" + formId + "'>";
            			           str+= "  			<div class='form-group'>";
            				       str+= "  			<input type='text' id='revComment' name='revComment' value=''/>";		
            				       str+= "  			<input type='text' id='revStar' name='revComment' value=''/>";      				       
            				       str+= "  			<div style='display:none'><input type='datetime-local' id='updateDate' name='updateDate' value=''/></div>";
            				       str+= "  			</div>";
            				       str+= "  			<button id='update' type='button' class='btn btn-11' >수정 완료</button></div>";
            				       str+= "			</form>";
            			           /* str += "<input type='hidden' id='revSeqUpdate' name='revSeqUpdate' value='"+list[i].revSeq+"'><button type='button' data-toggle='collapse' class='update'>수정</button>"; */
            			           str += "<input type='hidden' id='revSeqDelete' name='revSeqDelete' value='"+list[i].revSeq+"'><a href='#' role='button' class='remove'>삭제</a></div></li>"; 
            				   } 
            				   reviewUL.html(str);
            			   
            				   showReviewPage(reviewCnt);
            			 }); 
            		 } 
            
                     $(document).on("click",'#commentAdd' ,function(e){
                    	 var review = { 
                    			 seq : seqValue,
                        		 nickName : $('#nickName').val(), 
                        		 revStar : $('#revStar').val(), 
                        		 revComment : $('#revComment').val()
                        		 };
                         CollectionReviewService.add(review, function(result){alert(result); showList(-1);});
                     });
                     
                     $(document).on("click",'.remove',function(e){
                    	var revSeqValue = $('#revSeqDelete').val();
                        CollectionReviewService.remove(revSeqValue, function(result){
                        	alert(result); 
                        	});
                        showList(pageNum);
                     });
                     
                     $(document).on('click','.update',function(){
         			    var revSeqValue = $('.update').val(); 
         			    $("#" + revSeqValue).collapse('toggle');
         			});
                     
                     
                     reviewPageFooter.on("click", "li a", function(e) {
             			e.preventDefault();
             			console.log("page click");
             			var targetPageNum = $(this).attr("href");
             			console.log("targetPageNum : " + targetPageNum);
             			pageNum = targetPageNum;
             			showList(pageNum);
             		});
                     
                     
                     
                     $(document).on('click','#update',function(){
                    	 
                    	 var revSeqValue = $(this).closest("li").data("rno");
                    	 var updateDateValue = document.getElementById('updateDate').value= new Date().toISOString().slice(0, -1);
         			    var review={
         			    	"revSeq" : revSeqValue,
         			        "revComment" : $('#revComment').val(),
         			        "revStar" : $('#revStar').val(),
         			        "updateDate" : updateDateValue
         			    }; 
         			   CollectionReviewService.update(review, function(result){alert(result); showList(pageNum);} );
         			    
         			});
                     
                     
       	});
										
		</script>

</body>
</html>