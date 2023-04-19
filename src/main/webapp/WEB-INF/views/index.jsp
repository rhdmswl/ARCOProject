<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="includes/header.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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


	<!-- Preloader Start -->
	<div id="preloader">
		<div class="yummy-load"></div>
	</div>

	<!-- Background Pattern Swither -->
	<div id="pattern-switcher">Bg Pattern</div>
	<div id="patter-close">
		<i class="fa fa-times" aria-hidden="true"></i>
	</div>

	<!-- ****** Top Header Area Start ****** -->
	<div class="top_header_area">
		<div class="container">
			<div class="row">
				<div class="col-5 col-sm-6">
					<!--  Top Social bar start -->
					<div class="top_social_bar">
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-skype" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
					</div>


				</div>
				<!--  Login Register Area -->
				<div class="col-7 col-sm-6">
					<div
						class="signup-search-area d-flex align-items-center justify-content-end">
						<div class="login_register_area d-flex">
							<div class="login">
								<a href="/member/login">Sign in</a>
							</div>
							<div class="register">
								<a href="/member/register">Sign up</a>
							</div>
						</div>






						<!-- Search Button Area -->
						<div class="search_button">
							<a class="searchBtn" href="#"><i class="fa fa-search"
								aria-hidden="true"></i></a>
						</div>
						<!-- Search Form -->
						<div class="search-hidden-form">
							<form action="#" method="get">
								<input type="search" name="search" id="search-anything"
									placeholder="Search Anything..."> <input type="submit"
									value="" class="d-none"> <span class="searchBtn"><i
									class="fa fa-times" aria-hidden="true"></i></span>
							</form>
						</div>

						<div id="root">


							<nav id="nav">
								<div id="nav_box">
									<%@ include file="include/nav.jsp"%>
								</div>
							</nav>



						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Top Header Area End ****** -->

	<!-- ****** Header Area Start ****** -->
	<header class="header_area">
		<div class="container">
			<div class="row">
				<!-- Logo Area Start -->
				<div class="col-12">
					<div class="logo_area text-center">
						<a href="index.jsp" class="yummy-logo">Yummy Blog</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-lg">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#yummyfood-nav"
							aria-controls="yummyfood-nav" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fa fa-bars" aria-hidden="true"></i> Menu
						</button>
						<!-- Menu Area Start -->
						<div class="collapse navbar-collapse justify-content-center"
							id="yummyfood-nav">
							<ul class="navbar-nav" id="yummy-nav">
								<li class="nav-item active"><a class="nav-link"
									href="index.html">Home <span class="sr-only">(current)</span></a>
								</li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="yummyDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">Pages</a>
									<div class="dropdown-menu" aria-labelledby="yummyDropdown">
										<a class="dropdown-item" href="index.html">Home</a> <a
											class="dropdown-item" href="archive.html">Archive</a> <a
											class="dropdown-item" href="single.html">Single Blog</a> <a
											class="dropdown-item" href="static.html">Static Page</a> <a
											class="dropdown-item" href="contact.html">Contact</a>
									</div></li>
								<li class="nav-item"><a class="nav-link" href="#">Features</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">Categories</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="archive.html">Archive</a></li>
								<li class="nav-item"><a class="nav-link" href="#">About</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="contact.html">Contact</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ****** Header Area End ****** -->


	<!-- test code -->
	개발중개발중개발중개발중개발중개발중개발중개발중개발중개발중개발중개발중개발중개발중개발중
	<p>
		<a href="/board/list?pageNum=1&brd_id=1">1번 게시판</a>
	</p>
	<p>
		<a href="/board/list?pageNum=1&brd_id=2">2번 게시판</a>
	</p>
	<p>
		<a href="/board/list?pageNum=1&brd_id=3">3번 게시판</a>
	</p>




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
					<a href="#">
						<h5>
							<c:out value="${collection.title}" />
						</h5>
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
							<div class="col-12 col-md-6">
								<div class="single-post wow fadeInUp" data-wow-delay=".4s"
									style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
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
													<a href="#"><c:out value="${collection.title}" /></a>
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
													<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
														10</a>
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
										<div>
											<img src="<c:out value="${collection.imgUrl}"/>" width="150"
												height="200" alt="">
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

	<!-- ****** Instagram Area Start ****** -->
	<div
		class="instargram_area owl-carousel section_padding_100_0 clearfix owl-loaded owl-drag"
		id="portfolio">

		<!-- Instagram Item -->


		<!-- Instagram Item -->


		<!-- Instagram Item -->


		<!-- Instagram Item -->


		<!-- Instagram Item -->


		<!-- Instagram Item -->


		<!-- Instagram Item -->


		<!-- Instagram Item -->


		<div class="owl-stage-outer">
			<div class="owl-stage"
				style="transform: translate3d(-1339px, 0px, 0px); transition: all 0s ease 0s; width: 2902px;">
				<div class="owl-item cloned" style="width: 223.2px;">
					<div class="owl-nav">
						<div class="owl-prev"></div>
						<div class="owl-next"></div>
					</div>
				</div>
				<div class="owl-item cloned" style="width: 223.2px;">
					<div class="owl-dots">
						<div class="owl-dot active">
							<span></span>
						</div>
						<div class="owl-dot">
							<span></span>
						</div>
					</div>
				</div>
				<div class="owl-item cloned" style="width: 223.2px;">
					<div class="owl-stage-outer">
						<div class="owl-stage"
							style="transform: translate3d(-1562px, 0px, 0px); transition: all 0.8s ease 0s; width: 4018px;">
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/6.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/3.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/6.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/3.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="owl-item cloned" style="width: 223.2px;">
					<div class="owl-nav">
						<div class="owl-prev"></div>
						<div class="owl-next"></div>
					</div>
				</div>
				<div class="owl-item cloned" style="width: 223.2px;">
					<div class="owl-dots">
						<div class="owl-dot active">
							<span></span>
						</div>
						<div class="owl-dot">
							<span></span>
						</div>
					</div>
				</div>
				<div class="owl-item" style="width: 223.2px;">
					<div class="owl-stage-outer">
						<div class="owl-stage"
							style="transform: translate3d(-1562px, 0px, 0px); transition: all 0.8s ease 0s; width: 4018px;">
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/6.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/3.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/6.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/3.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="owl-item active" style="width: 223.2px;">
					<div class="owl-nav">
						<div class="owl-prev"></div>
						<div class="owl-next"></div>
					</div>
				</div>
				<div class="owl-item active" style="width: 223.2px;">
					<div class="owl-dots">
						<div class="owl-dot active">
							<span></span>
						</div>
						<div class="owl-dot">
							<span></span>
						</div>
					</div>
				</div>
				<div class="owl-item cloned active" style="width: 223.2px;">
					<div class="owl-stage-outer">
						<div class="owl-stage"
							style="transform: translate3d(-1562px, 0px, 0px); transition: all 0.8s ease 0s; width: 4018px;">
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/6.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/3.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/6.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/3.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="owl-item cloned active" style="width: 223.2px;">
					<div class="owl-nav">
						<div class="owl-prev"></div>
						<div class="owl-next"></div>
					</div>
				</div>
				<div class="owl-item cloned active" style="width: 223.2px;">
					<div class="owl-dots">
						<div class="owl-dot active">
							<span></span>
						</div>
						<div class="owl-dot">
							<span></span>
						</div>
					</div>
				</div>
				<div class="owl-item cloned" style="width: 223.2px;">
					<div class="owl-stage-outer">
						<div class="owl-stage"
							style="transform: translate3d(-1562px, 0px, 0px); transition: all 0.8s ease 0s; width: 4018px;">
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/6.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/3.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/6.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item active" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/1.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/2.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/3.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/4.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 223.2px;">
								<div class="instagram_gallery_item">
									<!-- Instagram Thumb -->
									<img src="img/instagram-img/5.jpg" alt="">
									<!-- Hover -->
									<div class="hover_overlay">
										<div class="yummy-table">
											<div class="yummy-table-cell">
												<div class="follow-me text-center">
													<a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i> Follow me</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="owl-item cloned" style="width: 223.2px;">
					<div class="owl-nav">
						<div class="owl-prev"></div>
						<div class="owl-next"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="owl-nav disabled">
			<div class="owl-prev"></div>
			<div class="owl-next"></div>
		</div>
		<div class="owl-dots disabled">
			<div class="owl-dot active">
				<span></span>
			</div>
		</div>
	</div>
	<!-- ****** Our Creative Portfolio Area End ****** -->

	<!-- ****** Footer Social Icon Area Start ****** -->
	<div class="social_icon_area clearfix">
		<div class="container">
			<div class="row">
				<div class="col-12"></div>
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
						<nav class="navbar navbar-expand-lg">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#yummyfood-footer-nav"
								aria-controls="yummyfood-footer-nav" aria-expanded="false"
								aria-label="Toggle navigation">
								<i class="fa fa-bars" aria-hidden="true"></i> Menu
							</button>
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
						<p>
							Copyright @2018 All rights reserved | This template is made with
							<i class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
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
	<script src="../resources/js/active.js"></script>
	<a id="scrollUp" href="#top"
		style="position: absolute; z-index: 2147483647; display: none;"><i
		class="fa fa-arrow-up" aria-hidden="true"></i></a>
	<a id="scrollUp" href="#top"
		style="position: absolute; z-index: 2147483647;"><i
		class="fa fa-arrow-up" aria-hidden="true"></i></a>




</body>

</html>