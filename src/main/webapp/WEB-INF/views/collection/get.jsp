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
    <link rel="icon" href="img/core-img/favicon.ico">

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

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
<style type="text/css">

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


.section_padding_80 {
    margin-top: 20px;
}

.section_padding_50 {
    padding-top: 40px;
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

.btn-secondary2 {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	box-shadow: none;
	width: 100px;
	height: 40px;
	line-height: 20px;
	font-size: 15px;
	padding: 0;
	background-color: #8f93a9;
	border: 0;
	color: white;
	border-radius: 5px;
}

.btn-secondary2:hover {
	background-color: #8f93a9;
    box-shadow: 1px 4px 3px 1px #dadce0;
    color: white;
}

.single_blog_area ul li:before {
	content:none;
}

.single_blog_area ul li {
    padding-left: 0px;
}

.post-thumb {
	margin-bottom: 55px;
	height: 460px;
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
	margin-left: 20px;
}

/* 전시 정보 그룹 */

.post-content {
	position: relative;
	top: 55%;
	left: 20px;
	right: 30px;
	background-color: #fff;
	height: 600px;
}

.card-body {
	height: inherit;
}

.exhiInfoGroup {
    overflow:hidden;
    height:auto;
	border: 1px solid #ccc;
	border-radius: 10px;
	margin-top: 30px;
	padding: 20px;
}

/* 전시 정보 */
.infoText {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 18px;
	font-weight: 600;
	color: #696969;
}

/* 페이지 버튼 */
.page-item {
	margin-left: 4px;
}

.page-link {
	display: flex;
    align-items: center;
    justify-content: center;
    color: #7b809a;
    padding: 0;
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

.form-control::placeholder {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

/* 댓글 리스트 */
.comment_area {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 500;
	position: relative;
	width: 90%;
	left: 60px;
	padding: 0;
}

.leave-comment-area {
	position: relative;
	left: auto;
	margin-top: 5px;
	margin-bottom: 15px;
}

.remove {
	float: right;
}

.revBox {
	height: 60px;
}

.primary-font {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	font-size: 17px;
}

.revDate {
	position: relative;
	top: 0px;
}

.mb-30 {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	font-size: 23px;
}

.revContentInput {
	width: inherit;
	height: 50px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 15px;
	padding-left: 10px;	
}

.revTextBox {
	width: 400px;
}

div.rating-wrapper {
  display: flex;
  align-items: first baseline;
  flex-direction: column;
  margin: 5rem;
  font-size: 1.5rem;
}

div.star-wrapper {
  font-size: 2rem;
}

div.star-wrapper i {
  cursor: pointer;
}

div.star-wrapper i.yellow {
  color: #fdd835;
}

div.star-wrapper i.vote-recorded {
  color: #f57c00;
}

p.v-data {
  background: #ccc;
  padding: 0.5rem;
}

/* 각 별들의 기본 설정 */
.starR{
  display: inline-block;
  width: 30px;
  height: 30px;
  color: transparent;
  text-shadow: 0 0 0 #f0f0f0;
  font-size: 1.8em;
  box-sizing: border-box;
  cursor: pointer;
}

/* 별 이모지에 마우스 오버 시 */
.starR:hover {
  text-shadow: 0 0 0 #ccc;
}

/* 별 이모지를 클릭 후 class="on"이 되었을 경우 */
.starR.on{
  text-shadow: 0 0 0 #ec27c8;
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
								<ul class="chat"></ul>
								<div class="panel-footer">
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
								</div>

								<!-- 리뷰 남기기 -->
								<div class="leave-comment-area section_padding_50 clearfix">
									<div class="comment-form">
										<div class="mb-30">한줄평을 남겨주세요 &#128173;</div>

										<!-- Comment Form -->
									</div>
									<form role="form">
										<div class="form-group">
											<input type="text" style="display: none;" id="seq" name="seq"
												value="<c:out value="${collection.seq}"/>">
										</div>
										<div class="form-group starRev" id="star">
											<span class="star-input"> <span class="starR on"
												onClick="setStar(1)">⭐</span> <span class="starR"
												onClick="setStar(2)">⭐</span> <span class="starR"
												onClick="setStar(3)">⭐</span> <span class="starR"
												onClick="setStar(4)">⭐</span> <span class="starR"
												onClick="setStar(5)">⭐</span> <output for="star-input">
													<b>&nbsp;&nbsp;0</b>점
												</output>
											</span>
										</div>
										<c:if test="${member.userId!=null}">
										<div class="form-group revTextBox">
											<label>작성자</label> <textarea class="form-control revContentInput"
												id='InputnickName' name='nickName'  readonly="readonly" style="resize: none;">${member.userName}</textarea>
										</div>
										<div class="form-group revTextBox">
											<label>리뷰내용</label> <input class="form-control revContentInput" type="text"
												id='comment' name='revComment' placeholder="한줄평">
										</div>
										<button id='commentAdd' type="submit"
											class="btn btn-secondary">댓글 작성</button>
										</c:if>
										<!-- 비 로그인 시 -->
										<c:if test="${member.userId==null}">
										<div class="form-group revTextBox">
											<label>작성자</label> <input class="form-control revContentInput" type="text"
												readonly="readonly" placeholder="로그인 후 입력해주세요!">
										</div>
										<div class="form-group revTextBox">
											<label>리뷰내용</label> <input class="form-control revContentInput" type="text"
												readonly="readonly" placeholder="로그인 후 입력해주세요!">
										</div>
										</c:if>
									</form>
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
    <!-- <script src="/js/others/plugins.js"></script> -->
    <!-- Active JS -->

    <script src="/js/active.js"></script>

	<script src="/js/jquery/jquery-2.2.4.min.js"></script>
	<script type="text/javascript" src="/js/review.js"></script>
<script>

       	$(document).ready(function() {
       		var pageNum = 1;
       		var endNum=0;
       		var reviewPageFooter = $(".panel-footer");
            var seqValue = '<c:out value="${collection.seq}"/>';
            var reviewUL = $(".chat");
            		 
            showList(1);
            
            function showReviewPage(reviewCnt) {
   			 console.log("함수 작동 " +reviewCnt);
   			 console.log("함수 작동 " +pageNum);
   				endNum = Math.ceil(pageNum / 5.0) * 5;
   				var startNum = endNum - 4;
   				
   				var prev = startNum != 1;
   				var next = false;
   				
   				console.log("reviewCnt : "+reviewCnt);
   				if(endNum * 12 >= reviewCnt) {
   					endNum = Math.ceil(reviewCnt/12.0);
   				}
   				
   				if(endNum * 12 < reviewCnt) {
   					next = true;
   				} 
   				var str = "<ul class='pagination pull-right'>";
   				if(prev) {
   					str += "<li class='page-item'><a class='page-link' href='"+(startNum-1)+"'>Previous</a></li>";
   				}
   				console.log("startNum : "+startNum);
   				console.log("endNum : "+endNum);
   				for(var i=startNum ; i<=endNum; i++){
   					var active = pageNum == i? "active":"";
   					str+="<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
   				}
   				
   				if(next) {
   					str+= "<li class='page-item'><a class='page-link' href='"+(endNum+1) + "'>Next</a></li>";
   				}
   				str += "</ul></div>";
   				console.log("함수끝"+str);
   				
   				reviewPageFooter.html(str);
   			}		 
            
            		 function showList(page){
            			 pageNum=page;
            			 CollectionReviewService.getList({seq:seqValue,page: page|| 1 },
            				function(reviewCnt,list){
            					console.log("리뷰 개수 " +reviewCnt);
            				   var str="";
            				   if(page==-1) {
            				    	pageNum=Math.ceil(com_cnt/10.0);
            				    	
            				    	showList(pageNum);
            				    	return;
            				   }
            				   
            				   if(list==null || list.length ==0) {
            					   return;
            				   } 
            				   
            				   for(var i=0, len = list.length || 0; i < len; i++){
            					   var revSeqValue = list[i].revSeq;
            					   var formId = "review" + list[i].revSeq

            					   str +="<li class=' left clearfix' data-rev-Seq='"+list[i].revSeq+"'>";
            					   str +="<div class='revBox'><div class='header'><string class='primary-font'>"+list[i].nickName+""; 
            					   if (list[i].nickName=="${member.userName}"){
            					   str+= "         <small>"	;
            					   str+= "<a href='#" + formId + "' class='updatebtn' data-toggle='collapse' role='button' aria-expanded='false' aria-controls='" + formId + "'>수정</a>";
            					   str+= "|"	;
            					   str+=" <a href='#' class='remove2' role='button' aria-expanded='false' aria-controls='" + formId + "'>삭제</a>";
            					   str+= "         </small>"	;
            					   }
            					   str+= "<small class='pull-right text-muted'>" +CollectionReviewService.displayTime(list[i].reviewDate)+"</small></div>";//header끝
            			           str+= "<div id='review' style='height:45px; font-family: 'font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;' class='collapse multi-collapse-id show'>"+list[i].revComment+"</div>";
                                   str+= "            <form class='collapse' id='" + formId + "'>";
                                   str+= "              <div class='form-group'>";
                                   str+= "                    <textarea style='resize: none;' class='form-control' id ='revComment' rows='3'></textarea>";
                                   /* str+= "                    <textarea style='resize: none;' class='form-control' id ='revStar' rows='1'></textarea>";  */
                                   str+= "  			</div>";
            				       str+= "  			<button id='update' type='button' class='btn btn-secondary' >수정 완료</button></div>";
            				       str+= "  			</div>";
            				       str+= "			</form>";
            				       str+= "<input type='hidden' id='revSeqDelete' name='revSeqDelete' value='"+list[i].revSeq+"'>"	;
            			           str += "</div></li>"; 
            				   } 
            				   reviewUL.html(str);
            				   console.log("showList page : " +pageNum);
            				   showReviewPage(reviewCnt);
            			 }); 
            		 } 
            		 
            		 
            
                     $(document).on("click",'#commentAdd' ,function(){
                    	 var review = { 
                    			 seq : seqValue,
                        		 nickName : $('#InputnickName').val(),
                        		 revComment : $('#comment').val(),
                        		 revStar :  $(".starRev output b").text()
                        		 };
                         CollectionReviewService.add(review, function(result){alert(result); showList(1);});
                     });
                     
                     $(document).on("click",'.remove2',function(){
                    	 var revSeqValue = $(this).closest("li").data("revSeq");
                        CollectionReviewService.remove(revSeqValue, function(result){
                        	alert(result);
                            showList(1);
                        	});
                     });
                     
                     $(document).on('click','.updatebtn',function(){
                         var formId = $(this).closest('form').attr('id'); 
                         $("#" + formId).collapse('toggle'); 
                     });

                     $(document).on('click','#update',function(){
                        var formId = $(this).closest('form').attr('id');
                        var revSeqValue = $(this).closest("li").data("revSeq");
                        console.log(formId);
                         var review={
                             "revSeq" : revSeqValue,
                             "revComment" : $("#" + formId+ ' textarea[id=revComment]').val(), 
                             "revStar" : $('#' + formId + ' textarea[id="revStar"]').val()
                         }; 
                        CollectionReviewService.update(review, function(result){alert(result); showList(1);});

                     });
                     
                     reviewPageFooter.on('click','li a',function(e){
         				e.preventDefault();
         				console.log("page click");
         				
         				var targetPageNum=$(this).attr("href");
         				
         				console.log("footer targetPageNum : "+targetPageNum);
         				
         				PageNum=targetPageNum;
         				console.log("footer PageNum : "+PageNum);
         				showList(PageNum);
         			});
                  
                    	
                    /* 별점 구현 */
                    //setStar로 선택된 별점 값 score에 저장
                     $('.starRev span').click(function(){
                    	    $(this).parent().children('span').removeClass('on');
                    	    $(this).addClass('on').prevAll('span').addClass('on');
                    	    var score = $(this).next().text();
                    	    setStar(score);
                    	    return false;
                    	});

                    	function setStar(starIndex) {
                    	    // 클릭한 별까지 on 클래스 추가
                    	    $(".starRev .starR").slice(0, starIndex).addClass("on");

                    	    // 클릭한 별의 개수를 계산
                    	    var numSelectedStars = $(".starRev .on").length;

                    	    // 계산한 개수를 output에 출력
                    	    $(".starRev output b").text(numSelectedStars);
                    	}

                    	var starRating = function() {
                    	    var $star = $(".star-input"),
                    	        $result = $star.find("output>b");
                    	    //별점 클릭될때 어떻게 변하는지 나타내는 코드
                    	    $(document)
                    	        .on("focusin", ".star-input>.input", function(){
                    	            $(this).addClass("focus");
                    	        })
                    	        .on("focusout", ".star-input>.input", function(){
                    	            var $this = $(this);
                    	            setTimeout(function(){
                    	                if($this.find(":focus").length === 0){
                    	                    $this.removeClass("focus");
                    	                }
                    	            }, 1000);
                    	        })
                    	        .on("change", ".star-input>.starR", function(){
                    	            var score = $(this).next().text();
                    	            setStar(score);
                    	        })
                    	        .on("mouseover", ".star-input label", function(){
                    	            var score = $(this).text();
                    	            setStar(score);
                    	        })
                    	        .on("mouseleave", ".star-input>.input", function(){
                    	            var $checked = $star.find(":checked");
                    	            if($checked.length === 0){
                    	                setStar(0);
                    	            } else {
                    	                setStar($checked.next().text());
                    	            }
                    	        });
                    	};

                    	starRating();


       	});
										
</script>

</body>
</html>