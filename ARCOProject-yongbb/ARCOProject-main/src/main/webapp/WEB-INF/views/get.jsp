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
<style type="text/css">
body {
	margin-top: 20px;
	background: #FFF
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
	font-family: 'Nanum Gothic', sans-serif;
}
.page-link {
	color: #000;
	background-color: #fff;
	border: 1px solid #ccc;
}
.page-item.active .page-link {
	/* z-index: 1; */
	color: #555;
	font-weight: bold;
	background-color: #e0e0e0;
	border-color: #ccc;
}
.page-link:focus, .page-link:hover {
	color: #000;
	background-color: #fafafa;
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
	font-weight: 700
}
.inbox .btn-group {
	box-shadow: none
}
.inbox .bg-gray {
	background: #e6e6e6
}
.modal {
	display : none;
	position : fixed;
	z-index : 300;
	left : 0;
	top : 0;
	width : 120%;
	height : 100%;
	overflow : auto;
	background-color: rgb(0,0,0);
	background-color: rgba(0,0,0,0.4);
}
.modal-content {
	position : fixed;
	left : 50%;
	top : 20%;
	
	transform : translate(-50%, -50%);
	
	background-color : #fefefe;
	margin : 15% auto;
	padding : 20px;
	border : 1px solid #888;
	border-radius : 10px;
	width : 400px;
	height : 170px;
	box-shadow : 5px 10px 10px 1px rgba(0,0,0,.3);
	font-family: 'Nanum Gothic', sans-serif;
}
.modal-footer {
	font-family: 'Nanum Gothic', sans-serif;
	cursor : pointer;
	height : 48px;
}
.input-group-addon {
	border : 0px;
}
@media only screen and (max-width: 767px) {
	.inbox .mail_list .list-group-item .controls {
		margin-top: 3px
	}
}
</style>
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

                          
                                </div>
                            </div>

                            <!-- Tags Area -->
                            

                            <!-- Related Post Area -->
                            

                            <!-- Comment Area Start -->
                            <div class="comment_area section_padding_50 clearfix">
                                <h4 class="mb-30">2 Comments</h4>

                                 <!-- /.panel-heading -->
								            
								      
								        <ul class="chat">
								
								        </ul>
								        <!-- ./ end ul -->
								   
								  <!-- /.panel .chat-panel -->
                            </div>

                            <!-- Leave A Comment -->
                            <div class="leave-comment-area section_padding_50 clearfix">
                                <div class="comment-form">
                                    <h4 class="mb-30">Leave A Comment</h4>

                                    <!-- Comment Form -->
                                    <form action="#" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="contact-name" placeholder="Name">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="contact-email" placeholder="Email">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="contact-website" placeholder="Website">
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                        </div>
                                        <button type="submit" class="btn contact-btn">Post Comment</button>
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
	<script type="text/javascript" src="../resources/js/review.js"></script>
	
	<script type="text/javascript">
	
	$(document).ready(function (){
	
	var seqValue = '<c:out value="${collection.seq}"/>';
	var reviewUL = $(".chat");
	
	showList(1);
	
	 function showList(page){
	      
	      reviewService.getList({seq:seqValue,page: page|| 1 }, function(list) {
	        
	        var str="";
	       if(list == null || list.length == 0){
	        
	    	reviewUL.html("");
	        
	        return;
	      }
	       for (var i = 0, len = list.length || 0; i < len; i++) {
	           str +="<li class='left clearfix' data-revSeq='"+list[i].revSeq+"'>";
	           str +="  <div><div class='header'><strong class='primary-font'>"+list[i].nickName+"</strong>"; 
	           str +="    <small class='pull-right text-muted'>"+list[i].reviewDate+"</small></div>";
	           str +="    <p>"+list[i].revStar+"</p>";
	           str +="    <p>"+list[i].revComment+"</p></div></li>";
	         }


	    replyUL.html(str);

	      }); //end function
	      
	   }  //end showList 
	
	});
	
	
	</script>

</body>
</html>