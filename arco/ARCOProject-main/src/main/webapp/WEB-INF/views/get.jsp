<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="includes/header.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Yummy Blog - Food Blog Template</title>

    <!-- Favicon -->
    <link rel="icon" href="../resources/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="../resources/style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="../resources/css/responsive/responsive.css" rel="stylesheet">

</head>
<body>

    <!-- ****** Breadcumb Area Start ****** -->
    
    <div class="breadcumb-nav">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Archive</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Single Post Blog</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->

    <!-- ****** Single Blog Area Start ****** -->
    <section class="single_blog_area section_padding_80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="row no-gutters">

                        <!-- Single Post Share Info -->
                        

                        <!-- Single Post -->
                        <div class="col-10 col-sm-11">
                            <div class="single-post">
                                <!-- Post Thumb -->
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
                                    <div><h4>테켓구매 : <a href="<c:out value="${collection.url}" />" ><c:out value="${collection.url}" /></a></h4></div>
                                    <div><h4>장소 : <c:out value="${collection.place}" /></h4></div>
                                    <div><h4>주소 : <c:out value="${collection.placeAddr}" /></h4></div>
                                    <div><h4>문의 : <c:out value="${collection.phone}" /></h4></div>
                                 
                                    

                                 
                                    

                                    <img class="br-30 mb-15" src="img/blog-img/14.jpg" alt="">
                                </div>
                            </div>

                            <!-- Tags Area -->
                            

                            <!-- Related Post Area -->
                            

                            <!-- Comment Area Start -->
                            <div class="comment_area section_padding_50 clearfix">
                                <h4 class="mb-30">2 Comments</h4>

                                <ol>
                                <ul class = "chat">
                                
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
                            <form id='actionForm' action="/review/list" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='pageNumForLimit' value='${pageMaker.cri.pageNumForLimit}'>
		</form>
		
		
		

                            <!-- Leave A Comment -->
                            <div class="leave-comment-area section_padding_50 clearfix">
                                <div class="comment-form">
                                    <h4 class="mb-30">Leave A Comment</h4>

                                    <!-- Comment Form -->
                                   <form role="form">
                                     	<div class="form-group">
                                            <input type="text" style="display:none;" id = "seq" name = "seq" value="<c:out value="${collection.seq}"/>">
                                        </div>
                                        <div class="form-group">
                                        	<label>작성자</label>
                                        	<input class="form-control" type="text" id = 'nickName' name = 'nickName' value='작성자'>
<!--                                            <input type="text" class="form-control" id="contact-name" placeholder="nickName" name = "userId">
 -->                                        </div>
                                        <div class="form-group">
                                        	<label>리뷰내용</label>
                                        	<input class="form-control" type="text" id = 'revComment' name = 'revComment' value='한줄평 작성'>
<!--                                             <input type="text" class="form-control" id="contact-email" placeholder="별점 넣을 공간" name = "revStar">
 -->                                        </div>
 
                                        <div class="form-group">  
                                        	<label>별점</label>
                                        	<input class="form-control" type="text" id = 'revStar' name = 'revStar' value='별점'>    
<!--                                          	<input type="text" class="form-control" id="contact-email" placeholder="한줄평자리" name = "revComment">
 -->                                        </div>
                                        <button id='commentAdd' type="submit" class="btn contact-btn">Post Comment</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- ****** Blog Sidebar ****** -->
                
            </div>
        </div>
    </section>
    <!-- ****** Single Blog Area End ****** -->


   
        <div class="owl-nav"><div class="owl-prev"></div><div class="owl-next"></div></div><div class="owl-dots"><div class="owl-dot"><span></span></div><div class="owl-dot active"><span></span></div></div></div>
    <!-- ****** Our Creative Portfolio Area End ****** -->

    <!-- ****** Footer Social Icon Area Start ****** -->
    <div class="social_icon_area clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Footer Social Icon Area End ****** -->

    <!-- ****** Footer Menu Area Start ****** -->
    <footer class="footer_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-content">
                        <!-- Logo Area Start -->
                        <div class="footer-logo-area text-center">
                            <a href="index.html" class="yummy-logo">Yummy Blog</a>
                        </div>
                        <!-- Menu Area Start -->
                        
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Copywrite Text -->
                    <div class="copy_right_text text-center">
                        <p>Copyright @2018 All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ****** Footer Menu Area End ****** -->

    <!-- Jquery-2.2.4 js -->
    <script src="../resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="../resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="../resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="../resources/js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="../resources/js/active.js"></script><a id="scrollUp" href="#top" style="position: absolute; z-index: 2147483647; display: block;"><i class="fa fa-arrow-up" aria-hidden="true"></i></a>
	<script src="../resources/js/jquery/jquery-2.2.4.min.js"></script>
		<script type="text/javascript" src="../resources/js/review.js"></script>
		<script>

       	$(document).ready(function() {
       		
            		 var seqValue = '<c:out value="${collection.seq}"/>';
            		 var reviewUL = $(".chat");
            		 
            		 showList(1);
            		 
            		 function showList(page){
            			 console.log("show list " + page);
            			 console.log("show list seq :  " + seqValue);
            			 CollectionReviewService.getList({seq:seqValue,page: page|| 1 },
            				function(list){
            				   var str="";
            				   if(list==null || list.length ==0) {
            					   reviewUL.html("");
            				   } 
            				   
            				   for(var i=0, len = list.length || 0; i < len; i++){
            					   str +="<li class='left clearfix' data-rno='"+list[i].revSeq+"'>";
            					   str +="  <div><div class='header'><strong class='primary-font'>"+list[i].nickName+"</strong>"; 
            					   str+= "   <small class='pull-right text-muted'>" +CollectionReviewService.displayTime(list[i].reviewDate)+"</small></div>";
            			           str +="    <p>"+list[i].revComment+"</p></div></li>";
            				   } 
            				   console.log("test : " + str);
            				   reviewUL.html(str);
            			   
            			 }); 
            		 } 
            
                     $("#commentAdd").on("click",function(e){
                    	 var review = { 
                    			 seq : seqValue,
                        		 nickName : $('#nickName').val(), 
                        		 revStar : $('#revStar').val(), 
                        		 revComment : $('#revComment').val()
                        		 };
                         CollectionReviewService.add(review, function(result){alert(result); showList(1);});
                     });
       	});
										
		</script>

</body>
</html>