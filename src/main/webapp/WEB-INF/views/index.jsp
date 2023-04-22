<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->


<jsp:include page="/WEB-INF/views/includes/header.jsp" />


<!-- Title -->
<title>ARCO</title>

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="/css/responsive/responsive.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap"
	rel="stylesheet">

<style>
body {
	margin-top: 20px;
	background: #FFF
}

body::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
    height: 30%; /* 스크롤바의 길이 */
    background: #f21378; /* 스크롤바의 색상 */ 
    border-radius: 10px;
}

body::-webkit-scrollbar-track {
    background: rgba(242, 240, 241);  /*스크롤바 뒷 배경 색상*/
}

.fa-arrow-up:before {
    content: none;
}

.fa-arrow-up2:before {
    content: "\f062";
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

.blog_area {
	width: 80%;
	position: relative;
	left: 10%;
}

.postimage {
	width: 300px;
	height: 450px;
	margin-top: 20px;
	margin-bottom: 60px;
}

.postImgGroup {
	width: 300px;
}

.postImgGroup .img {
	object-fit: fill;
}

.post-title {
	text-align: center;
	margin-top: 20px;
	margin-bottom: 10px;
}

.welcome-single-slide .project_title {
	font-family: 'Nanum Gothic', sans-serif;
	color: #f21378;
	background-color: black;
	position: absolute;
	content: "";
	bottom: -300px;
	left: 0;
	z-index: 3;
	padding: 30px;
	width: 100%;
	height: auto;
	transition-duration: 750ms;
	opacity: 0.8;
}

.sidelist {
	display: inline-block;
	width: 150px;
	height: 40px;
	margin: 5px;
	font-family: 'Nanum Gothic', sans-serif;
	border: 1px solid #ccc;
	border-radius: 20px;
}

.post-comment-share-area {
	margin-bottom: 20px;
}

</style>


</head>

<body>


	<!-- ****** Welcome Post Area Start ****** -->
	<section class="welcome-post-sliders owl-carousel owl-loaded owl-drag">
		<!-- Single Slide -->
		<c:forEach items="${list}" var="collection">
			<div class="welcome-single-slide">
				<!-- Post Thumb -->
				<img src="<c:out value="${collection.imgUrl}"/>" width="200"
					height="500" alt="">
				<!-- Overlay Text -->
				<div class="project_title">
					<div class="post-date-commnents d-flex">
						<a href="#"> ~ <c:out value="${collection.endDate}" /></a>
					</div>
					<a href="#"
						style="color: white; font-weight: 700; font-size: 22px;"> <c:out
							value="${collection.title}" />
					</a>
				</div>
			</div>
		</c:forEach>
	</section>


	<!-- ****** Categories Area Start ****** -->
	<section class="categories_area clearfix" id="about">
		<div class="comuContainer">
			<div class="comu">
				<ul class="list-unstyled active"
					style="list-style-type: none; text-align: center;">
					<li class="sidelist"><a class="nav-link" style="color: black; font-weight: 700;"
						href="/board/list?pageNum=1&brd_id=1">TALK</a></li>
					<li class="sidelist"><a class="nav-link" style="color: black; font-weight: 700;"
						href="/board/list?pageNum=1&brd_id=2">INFO</a></li>
					<li class="sidelist"><a class="nav-link" style="color: black; font-weight: 700;"
						href="/board/list?pageNum=1&brd_id=3">WEEKLY</a></li>
				</ul>
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
							<div class="col-12 col-md-6">
								<div class="single-post wow fadeInUp" data-wow-delay=".4s"
									style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
									<!-- Post Content -->
									<div class="post-content">
										<div class="post-meta d-flex">
											<div class="post-author-date-area d-flex">
												<div class="postimage">
													<div class="postImgGroup">
														<img class="postimgurl"
															src="<c:out value="${collection.imgUrl}"/>" width="400"
															height="400" alt="">
													</div>
													<div class="post-title">
														<a href="#" style="color: black; font-weight: 700;"><c:out
																value="${collection.title}" /></a>
													</div>
													<!-- Post Comment & Share Area -->
													<!-- <div class="post-thumb">
					                               <img src="img/blog-img/2.jpg" alt="">
					                            </div> -->
													<div class="post-comment-share-area d-flex">
														<!-- Post Favourite -->
														<div class="post-favourite">
															<a href="#"><i class="fa fa-heart-o"
																aria-hidden="true"></i> 10</a>
														</div>
														<!-- Post Comments -->
														<div class="post-comments">
															<a href="#"><i class="fa fa-comment-o"
																aria-hidden="true"></i> 12</a>
														</div>
														<!-- Post Share -->
														<div class="post-share">
															<a href="#"><i class="fa fa-share-alt"
																aria-hidden="true"></i></a>
														</div>
													</div>
												</div>
												<!-- Post Author -->
												<%-- <div class="post-author">
                                                <p><a href="#"><c:out value="${collection.title}"/></a></p>
                                            </div> --%>

												<%-- <!-- Post Date -->
	                                            <div class="post-date">
	                                                ~ <c:out value="${collection.endDate}"/>
	                                            </div> --%>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ****** Blog Area End ****** -->


	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Copywrite Text -->
				<div class="copy_right_text text-center">
					<a id="scrollUp2" href="#top"
						style="position: absolute; z-index: 2147483647; background-color: #f21378;"><i
						class="fa fa-arrow-up2 lastscroll" aria-hidden="true"
						style="color: #fff;"></i></a>
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

</body>

</html>