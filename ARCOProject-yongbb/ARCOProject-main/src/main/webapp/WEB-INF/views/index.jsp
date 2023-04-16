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

<body class="">
	
	
 
	    <!-- ****** Welcome Post Area Start ****** -->
	  <section class="welcome-post-sliders owl-carousel owl-loaded owl-drag">
	      <!-- Single Slide -->
	    <c:forEach items="${list}" var="collection">
	        <div class="welcome-single-slide">
	            <!-- Post Thumb -->
	            <img src="<c:out value="${collection.imgUrl}"/>" width="200" height="500" alt="">
	            <!-- Overlay Text -->
	            <div class="project_title">
	                <div class="post-date-commnents d-flex">
	                    <a href="#"> ~ <c:out value="${collection.endDate}"/></a>
	                </div>
	                <a href="#">
	                    <h5><c:out value="${collection.title}"/></h5>
	                </a>
	            </div>
	        </div>
	     </c:forEach>
   </section>
    	
     
   	   <!-- ****** Welcome Area End ****** -->
   		  
       <!-- ****** Categories Area Start ****** -->
    <section class="categories_area clearfix" id="about">
       <div class="comuContainer">
       		<div class="comu">
	       		<div>커뮤1</div>
	       		<div>커뮤2</div>
       		</div>
       		<div class="comu">
	       		<div>커뮤3</div>
	       		<div>커뮤4</div>
       		</div>
       </div>
    </section>
    <!-- ****** Categories Area End ****** -->

    <!-- ****** Blog Area Start ****** -->
    <section class="blog_area section_padding_0_80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="row">

                        <!-- Single Post -->
                        

                        <!-- Single Post -->
                        <c:forEach items="${list}" var="collection">
                        <div class="col-14 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img src="img/blog-img/2.jpg" alt="">
                                </div>
                                <!-- Post Content -->
	                                <div class="post-content">
	                                    <div class="post-meta d-flex">
	                                        <div class="post-author-date-area d-flex">
	                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#"><c:out value="${collection.title}"/></a>
                                            </div>
	                                            <%-- <!-- Post Date -->
	                                            <div class="post-date">
	                                                ~ <c:out value="${collection.endDate}"/>
	                                            </div> --%>
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
	                                   	<div>
	                                   		<a href="#">
	                                   			<img src="<c:out value="${collection.imgUrl}"/>" width="200" height="300" alt="">
	                                   		</a>
	                                   	</div>
	                                </div>
                                
                            </div>
                        </div>
					</c:forEach>
                        

                <!-- ****** Blog Sidebar ****** -->
                
            </div>
        </div>
    </section>
    <!-- ****** Blog Area End ****** -->

    
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
                        <nav class="navbar navbar-expand-lg">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            
                        </nav>
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
    <script src="../resources/js/active.js"></script><a id="scrollUp" href="#top" style="position: absolute; z-index: 2147483647; display: none;"><i class="fa fa-arrow-up" aria-hidden="true"></i></a><a id="scrollUp" href="#top" style="position: absolute; z-index: 2147483647;"><i class="fa fa-arrow-up" aria-hidden="true"></i></a>




</body>

</html>