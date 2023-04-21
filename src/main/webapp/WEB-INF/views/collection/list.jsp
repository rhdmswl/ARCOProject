<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<jsp:include page="/WEB-INF/views/includes/header.jsp" />


<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>EXHIBITION</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&amp;display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/list/css/bootstrap.min.css"

	type="text/css">
<link rel="stylesheet" href="/list/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="/list/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="/list/css/plyr.css" type="text/css">
<link rel="stylesheet" href="/list/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/list/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="/list/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/list/css/style.css" type="text/css">

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

.product__item__text {
	font-family: 'Nanum Gothic', sans-serif;
}

#scrollUp {
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
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> Home</a></li>
							<li class="breadcrumb-item"><a href="#">Archive</a></li>
							<li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	
	<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card action_bar">
							<div class="body">
								<div class="row clearfix">
									<div class="col-lg-1 col-md-2 col-3"></div>
									<div class="col-lg-5 col-md-4 col-6">
										<form id="searchForm" action="/collection/list" method='get' style=" width:500px;" class="input-group search">
											<select class="form-control" name='type' style="width:150px;">
												<option value="" <c:out value="${pageMaker.cri.type == null ? 'selected' : ''}"/>>--</option>
												<option value="T" <c:out value="${pageMaker.cri.type eq 'T' ? 'selected' : ''}"/>>제목</option>
												<option value="D" <c:out value="${pageMaker.cri.type eq 'D' ? 'selected' : ''}"/>>날짜</option>
											</select>
											<input type='text' name="keyword" class="form-control" style="width:350px;"
													placeholder="Search..." value='<c:out value="${pageMaker.cri.keyword}"/>'>
											<input type='hidden' name="pageNum" value="${pageMaker.cri.pageNum}">
											<input type='hidden' name='seq' value='${pageMaker.cri.seq}'>
											<button type="submit" class="searchButton">Search<span class="input-group-addon"><i class="zmdi zmdi-search"></i></span></button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	</div>
	
	
	<section class="product-page spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="product__page__content">
						<div class="product__page__title">
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-6">
									<div class="section-title">
										<h4>Collection List</h4>
									</div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-6">
									<div class="product__page__filter">
										<p>Order by:</p>
										<select style="display: none;">
											<option value="">A-Z</option>
											<option value="">1-10</option>
											<option value="">10-50</option>
										</select>
										<div class="nice-select" tabindex="0">
											<span class="current">A-Z</span>
											<ul class="list">
												<li data-value="" class="option selected">A-Z</li>
												<li data-value="" class="option">1-10</li>
												<li data-value="" class="option">10-50</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<c:forEach items="${list}" var="collection">
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="img/popular/popular-1.jpg">
											<div>
												<a
													href="/collection/get?seq=<c:out value="${collection.seq}"/>">
													<img src="<c:out value="${collection.imgUrl}" />"
													width="400" height="400">
												</a>
											</div>
											<!--  <div class="ep">18 / 18</div> -->
											<div class="comment">
												<i class="fa fa-comments"></i> 11
											</div>
											<div class="view">
												<i class="fa fa-eye"></i> <c:out value="${collection.revViewCount}" />
											</div>
										</div>
										<div class="product__item__text">
											<a style="color: black; font-weight: 700;" href="#"><c:out
													value="${collection.title}" /></a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<table class="table" style="border-top: hidden;">
							<tr>
									<td style="padding: 0px;">
										<div class="card m-t-5">
											<div class="body">
												<ul class="pagination pagination-primary m-b-0">
													<c:if test="${pageMaker.prev}">
														<li class="paginate_button previous"><a
															class="page-link" href="${pageMaker.startPage-1}">Previous</a></li>
													</c:if>
													<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
														<li class="paginate_button"><a class="page-link move2" href="${num}">${num}</a></li>
													</c:forEach>
													<c:if test="${pageMaker.next}">
														<li class="paginate_button next"><a class="page-link" href="${pageMaker.endPage +1}">Next</a></li>
													</c:if>
												</ul>
											</div>
										</div>
									</td>
								</tr>
						</table>
						</div>		
					</div>
					</div>
				</div>
	</section>

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

	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Copywrite Text -->
				<div class="copy_right_text text-center">
						<a id="scrollUp" href="#top"  
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
	<!-- ****** Footer Menu Area End ****** -->
	
	<form id='actionForm' action="/collection/list" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='pageNumForLimit' value='${pageMaker.cri.pageNumForLimit}'>
 		<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'>
	</form>

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
	<a id="scrollUp" href="#top"
		style="position: absolute; z-index: 2147483647; display: block;">
		<i class="fa fa-arrow-up" aria-hidden="true"></i>
	</a>
	<script type="text/javascript">
	$(document).ready(
			function() {
				
				
				var searchForm = $("#searchForm");
				
				$("#searchForm searchButton").on("click", function(e){
					
					e.preventDefault();
					let val = $("input[name='keyword']").val();
					searchForm.find("input[name='keyword']").val(val);
					searchForm.submit();
				});
				
				var actionForm = $("#actionForm");
				
				$(".paginate_button a").on("click", function(e) {
							e.preventDefault();
							console.log('click');
							actionForm.find("input[name='pageNum']").val($(this).attr("href"));
							actionForm.submit();
						
				});
				
				
				
			});
	
	
	
	</script>


</body>
</html>