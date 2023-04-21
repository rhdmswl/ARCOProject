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
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<style type="text/css">

body {
	margin-top: 20px;
	background: #FFF
}

.single_blog_area ul li:before {
	content:none;
}
    /* 
  #myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#reviewContents {
    width: 100%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}

div.all-rating-widgets {
  display: flex;
  justify-content: center;
} */

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
                    	<div class="col-10 col-sm-11">
                        	<div class="single-post">
								<div class="post-thumb">
									<img src="<c:out value="${collection.imgUrl}"/>" width="400" height="500" alt="">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                	<div class="post-meta d-flex">
                                    	<div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                        	<div class="post-author">
                                            	<a href="#">By Marian</a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#"><c:out value="${collection.startDate}"></c:out> ~ <c:out value="${collection.endDate}"></c:out></a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> 12</a>
                                            </div>
                                            <!-- Post Share -->
                                            <div class="post-share">
                                                <a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                           </div>
                                    </div>
                                    <a href="#">
                                        <h2 class="post-headline"><c:out value="${collection.title}" /></h2>
                                    </a>
                                    <hr>
                                    <div><h4>전시기간 : <c:out value="${collection.startDate}" /> - <c:out value="${collection.endDate}" /></h4></div>
                                    <div><h4>가격 : <c:out value="${collection.price}" /></h4></div>
                                    <div><h4><a href="<c:out value="${collection.url}"/>">티켓구매</a></h4></div>
                                    <div><h4>장소 : <c:out value="${collection.place}" /></h4></div>
                                    <div><h4>주소 : <c:out value="${collection.placeAddr}" /></h4></div>
                                    <div><h4>문의 : <c:out value="${collection.phone}" /></h4></div>            
                                </div>
                            </div>
							<!-- 리뷰 부분 -->
							<div class="comment_area section_padding_50 clearfix">
								<h4 class="mb-30">Comments</h4>
								<ul class="chat"></ul>
									
<!--    <link href="/text/css" rel="stylesheet"/>
 	<form class="mb-3" name="myform" id="myform" method="post">
	<fieldset>
		<span class="text-bold">별점을 선택해주세요</span>
		<input type="radio" name="reviewStar" value="5" id="rate1"><label
			for="rate1">★</label>
		<input type="radio" name="reviewStar" value="4" id="rate2"><label
			for="rate2">★</label>
		<input type="radio" name="reviewStar" value="3" id="rate3"><label
			for="rate3">★</label>
		<input type="radio" name="reviewStar" value="2" id="rate4"><label
			for="rate4">★</label>
		<input type="radio" name="reviewStar" value="1" id="rate5"><label
			for="rate5">★</label>
	</fieldset>
</form>			   -->
                            </div>
                            <form id='actionForm' action="/review/list" method='get'>
								<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
								<input type='hidden' name='pageNumForLimit' value='${pageMaker.cri.pageNumForLimit}'>
							</form>

							<!-- 리뷰 남기기 -->
                            <div class="leave-comment-area section_padding_50 clearfix">
                                <div class="comment-form">
                                    <h4 class="mb-30">Leave A Comment</h4>

                                    <!-- Comment Form -->
                               <!--     <form role="form">
                                    <div class="all-rating-widgets">
<div class="rating-wrapper" data-id="raiders">
  <h2>star</h2>
  <div class="star-wrapper">
    <i class="fa fa-star-o" ></i>
    <i class="fa fa-star-o" ></i>
    <i class="fa fa-star-o" ></i>
    <i class="fa fa-star-o" ></i>
    <i class="fa fa-star-o" ></i>
  </div>
  <p class="v-data">Voting Data</p>
</div> -->

<!--  <div class="rating-wrapper" data-id="shawshank">
  <h2>Shawshank Redemption</h2>
  <div class="star-wrapper">
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
  </div>
  <p class="v-data">Voting Data</p>
</div>  -->
								</div> 
									<form role="form">
                                	<div class="form-group">
										<input type="text" style="display:none;" id="seq" name = "seq" value="<c:out value="${collection.seq}"/>">
                                	</div>
                                        <div class="form-group starRev" id = "star">
											<span class="star-input">
												<span class="starR on" onClick="setStar(1)">⭐</span>
												<span class="starR" onClick="setStar(2)">⭐</span>
												<span class="starR" onClick="setStar(3)">⭐</span>
												<span class="starR" onClick="setStar(4)">⭐</span>
												<span class="starR" onClick="setStar(5)">⭐</span>
												<output for="star-input"><b>0</b>점</output>						
											</span>
										</div>
                                        <div class="form-group">
                                        	<label>작성자</label>
                                        	<input class="form-control" type="text" id='nickName' name = 'nickName' placeholder="nickName">
                                        </div>
                                        <div class="form-group">
                                        	<label>리뷰내용</label>
                                        	<input class="form-control" type="text" id='revComment' name = 'revComment' placeholder="한줄평"> 
										</div>
										<div class="form-group">  
                                        	<label>별점</label>
                                        	<input class="form-control" type="text" id='revStar' name = 'revStar' placeholder="별점">                                      	
										</div>
										<button id='commentAdd' type="submit" class="btn contact-btn">Post Comment</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ****** Single Blog Area End ****** -->

        <div class="owl-nav"><div class="owl-prev"></div><div class="owl-next"></div></div><div class="owl-dots"><div class="owl-dot"><span></span></div><div class="owl-dot active"><span></span></div></div></div>
    <!-- ****** Our Creative Portfolio Area End ****** -->


    <!-- Jquery-2.2.4 js -->
    <script src="/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="/js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="/js/active.js"></script><a id="scrollUp" href="#top" style="position: absolute; z-index: 2147483647; display: block;"><i class="fa fa-arrow-up" aria-hidden="true"></i></a>
	<script src="/js/jquery/jquery-2.2.4.min.js"></script>

	<script type="text/javascript" src="/js/review.js"></script>
<script>
var pageNum = 1;
var reviewPageFooter = $(".panel-footer");
function showReviewPage(reviewCnt) {
	var endNum = Math.ceil(pageNum / 5.0) * 5;
	var startNum = endNum - 4;
	
	var prev = startNum != 1;
	var next = false;
	
	if(endNum * 10 >= reviewCnt) {
		endNum = Math.ceil(reviewCnt/10.0);
	}
	
	if(endNum * 10 < reviewCnt) {
		next = true;
	} 
	
	
	var str = "<ul class='pagination pull-right'>";
	if(prev) {
		str += "<li class='page-item'><a class='page-link' href='"+(startNum-1)+"'>Previous</a></li>";
	}
	
	for(var i=startNum ; i<=endNum; i++){
		var active = pageNum == i? "active":"";
		str+="<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
	}
	
	if(next) {
		str+= "<li class='page-item'><a class='page-link' href='"+(endNum+1) + "'>Next</a></li>";
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
            			 
            			 CollectionReviewService.getList({seq:seqValue,page: page|| 1 },
            				function(list){
            				   var str="";
            				   
            				   if(list==null || list.length ==0) {
            					   reviewUL.html("");
            				   } 
            				   
            				   for(var i=0, len = list.length || 0; i < len; i++){
            					   var revSeqValue = list[i].revSeq;
            					   var formId = "review" + list[i].revSeq
            					   str +="<li class=' left clearfix' data-revSeq='"+list[i].revSeq+"'>";
            					   str +=" <div><div class='header'><strong class='primary-font'>"+list[i].nickName+"</strong>"; 
            					   str+= " <small class='pull-right text-muted'>" +CollectionReviewService.displayTime(list[i].reviewDate)+"</small></div>";
            			           str+= " <p id='review' style='height:45px; font-family: 'Nanum Gothic', sans-serif;' class='collapse multi-collapse-id show'>"+list[i].revComment+"</p>";
            			           str += "<a href='#" + formId + "' value='"+ list[i].revSeq +"' class='updatebtn' data-toggle='collapse' role='button' aria-expanded='false' aria-controls='" + formId + "'>수정</a>";
            			           str+= "			<form class='collapse' id='" + formId + "'>";
            			           str+= "  			<div class='form-group'>";
            				       str+= "  			<input type='text' id='revComment' name='revComment' value=''/>";		
            				       str+= "  			<input type='text' id='revStar' name='revComment' value=''/>";     
            				      /*   str+= "<P id=" + star + ">"  부모
            				       str+="<a href='#' value='1'>★</a> " 자식들
            				       str+="<a href='#' value='2'">★</a> "
            				       str+="<a href='#' value='3'>★</a> "
            				       str+="<a href='#' value='4'>★</a> "
            				       str+="<a href='#' value='5'>★</a> "
            				       str+= "<p>" */
            				       str+= "  			<div style='display:none'><input type='datetime-local' id='updateDate' name='updateDate' value=''/></div>";
            				       str+= "  			</div>";
            				       str+= "  			<button id='update' type='button' class='btn btn-11' >수정 완료</button></div>";
            				       str+= "			</form>";
            			           str += "<div><input type='hidden' id='revSeqDelete' name='revSeqDelete' value='"+list[i].revSeq+"'><button type='button' class='remove'>삭제</button></div></div></li>"; 
            				   } 
            				   reviewUL.html(str);
            			   
            			 }); 
            		 } 
            
                     $(document).on("click",'#commentAdd' ,function(){
                    	 var review = { 
                    			 seq : seqValue,
                        		 nickName : $('#nickName').val(),
                        		 revComment : $('#revComment').val(),
                        		 revStar : $('#revStar').val() 
                        		 };
                         CollectionReviewService.add(review, function(result){alert(result); showList(1);});
                     });
                     
                     $(document).on("click",'.remove',function(){
                    	 var revSeqValue = $("#revSeqDelete").val();
                        CollectionReviewService.remove(revSeqValue, function(result){
                        	alert(result);
                            showList(1);
                        	});

 
                     });
                     
                     $(document).on('click','.updatebtn',function(){
                    	 var formId = $(this).closest('form').attr('id'); // 클릭한 버튼의 부모 form 요소에서 id 값을 가져옴
         			    $("#" + formId).collapse('toggle'); // 해당 form의 collapse 상태를 변경하여 textarea가 나타나도록 함
         			});
                     
                     $(document).on('click','#update',function(){
                    	 var revSeqValue = $(this).closest("li").data("revSeq");

         			    var review={
         			    	"revSeq" : revSeqValue,
         			        "revComment" : $('#revComment').val(), 
         			        "revStar" : $('#revStar').val()
         			    }; 
         			   CollectionReviewService.update(review, function(result){alert(result); showList(1);} );
         			    
         			});
                   /*   
                     $('#star a').click(function(){ 
                    	 $(this).parent().children("a").removeClass("on");    
                    	 $(this).addClass("on").prevAll("a").addClass("on");
                    	 console.log($(this).attr("value"));
                     }); */
                     
                   /*   2 */
                    /*  $("div.star-wrapper i").on("mouseover", function () {
                    	  if ($(this).siblings("i.vote-recorded").length == 0) {
                    	    $(this)
                    	      .prevAll()
                    	      .addBack()
                    	      .addClass("fa-solid yellow")
                    	      .removeClass("fa-regular");
                    	    $(this).nextAll().removeClass("fa-solid yellow").addClass("fa-regular");
                    	  }
                    	});

                    	$("div.star-wrapper i").on("click", function () {
                    	  let rating = $(this).prevAll().length + 1;
                    	  let movie_id = $(this).closest("div.rating-wrapper").data("id");
                    	  
                    	  if ($(this).siblings("i.vote-recorded").length == 0) {
                    	    
                    	    $(this).prevAll().addBack().addClass("vote-recorded");
                    	    $.post("update_ratings.php", { movie: movie_id, rating: rating }).done(
                    	      function (data) {
                    	        parent_div.find("p.v-data").text(data);
                    	      }
                    	    );
                    	    
                    	  }
                    	}); */
                    	
                    /* 사용 쿼리 */
                    	$('.starRev span').click(function(){
                    		  $(this).parent().children('span').removeClass('on');
                    		  $(this).addClass('on').prevAll('span').addClass('on');
                    		  return false;
                    		});
                    
                 /*   변경 */
                     
                    	/* var $starEls = $('#star span.star');
                    	var rate = 0;

                    	$starEls.each(function (index, el) {
                    	    $(el).on('click', function () {
                    	        rating(index);
                    	    });
                    	});

                    	function rating(score) {
                    	    $starEls.each(function (i, el) {
                    	        if (i <= score) {
                    	            $(el).addClass('on');
                    	        } else {
                    	            $(el).removeClass('on');
                    	        }
                    	    });

                    	    rate = score + 1;
                    	} */
                    	
                    	/* 새로운코드 */
   
                    	var starRating = function(){
                    		  var $star = $(".star-input"),
                    		      $result = $star.find("output>b");
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
                    		    $result.text($(this).next().text());
                    		  })
                    		    .on("mouseover", ".star-input label", function(){
                    		    $result.text($(this).text());
                    		  })
                    		    .on("mouseleave", ".star-input>.input", function(){
                    		    
                    		    	var $checked = $star.find(":checked");
                    		    
                    		    	if($checked.length === 0){
                    		    		$result.text("0");
                    		    	} else {
                    		    		$result.text($checked.next().text());
                    		    	}
                    		    	
                    		  });
                    		};
                    		starRating();
       	});
										
		</script>

</body>
</html>