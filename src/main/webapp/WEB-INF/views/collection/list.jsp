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

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&amp;display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet">
	
    <!-- Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
<!-- 	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css"> -->
    

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

<link rel="stylesheet" href="https://use.typekit.net/btn1paf.css">

<!-- <link href="https://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" >

<style>
body {
	margin-top: 20px;
	background: #FFF
}

body::-webkit-scrollbar {
    width: 8px;  /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
    height: 5%; /* 스크롤바의 길이 */
    background: black; /* 스크롤바의 색상 */ 
    border-radius: 10px;
}

body::-webkit-scrollbar-track {
    background: rgba(242, 240, 241);  /*스크롤바 뒷 배경 색상*/
}

@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

a {
	background-color: #fff;
	color : #fff;
}

a:hover {
	background-color: #fff;
	color : #fff;
}

.product__item__text {
	margin-bottom: 50px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.product__page__title {
    border-bottom: 2px solid rgba(255, 255, 255, 0.2);
    padding-bottom: 0;
    margin-bottom: 5px;
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

.titleText {
	font-family: 'Open Sans', sans-serif;
	font-size: 30px;
	font-weight: 600;
	color: black;
	margin-top: 40px;
}

.col-lg-8 {
	height: 100px;
}

/* 페이지 버튼 */

.card {
	border: 0;
}

.page-item {
	margin-right: 4px;
}

.page-link {
	display: flex;
    align-items: center;
    justify-content: center;
    color: #7b809a;
    padding: 0;
    border:0;
    width: 36px;
    height: 36px;
    font-size: .875rem;
    margin-right: 4px;
}

.page-link:hover {
	color: #f21378;
	background-color: #fff;
}

.page-item.active .page-link {
	display: flex;
    align-items: center;
    justify-content: center;
    color: #f21378;
    padding: 0;
    margin: 0 3px;
    border : 0;
    width: 36px;
    height: 36px;
    font-size: .875rem;
}

.page-item.active:hover {
	color: #f21378;
	background-color: #fff;
}

.form-control {
  padding: 5px 30px 5px 10px;
  border-radius: 4px;
  outline: 0 none;
  width: 1000px;
  font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.form-control option {
  background: black;
  color: #fff;
  padding: 3px 0;
}

.input-group-addon {
	border: 0px;
}

.searchButton {
	border: 2px solid #e9ecef;
	cursor: pointer;
	width: 38px;
	height: 38px;
}

.col-lg-1 col-md-2 col-3 {
	width: 0px;
}

.col-lg-5{
	width: 600px;
}

.searchBox{
	width: 90%;
	margin-left: 60px;
	padding-right: 40px;
	position: absolute;
}

.searchForm {
	position: relative;
	margin-bottom: 100px;
	margin-right: 5px;
	left: 38%;

}

.product__page__filter {
	position: absolute;
	top: 43px;
	right: 30%;
}

.sortForm {
	margin-right: 0;
	margin-top: 20px;
	float: right;
	padding-left: 10px;
}

</style>

</head>

<body>
	
	<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card action_bar">
							<div class="body">
								<div class="row clearfix">
									<div class="col-lg-12 col-md-4 col-6 searchBox">
										<form id="searchForm" action="/collection/list" method='get' style="width:500px;" class="input-group searchForm" style = "border-radius: 4px;">
											<select id="chk" class="form-control" name='type'>
												<option value="" <c:out value="${pageMaker.cri.type == null ? 'selected' : ''}"/>>SEARCH</option>
												<option value="T" <c:out value="${pageMaker.cri.type eq 'T' ? 'selected' : ''}"/>>제목</option>
												<option value="D" <c:out value="${pageMaker.cri.type eq 'D' ? 'selected' : ''}"/>>날짜</option>
											</select>
											&nbsp;
											<ul class="chat">
											
											</ul>
											<input type='hidden' name="pageNum" value="${pageMaker.cri.pageNum}">
											<input type='hidden' name='seq' value='${pageMaker.cri.seq}'>
											<button type="submit" class="searchButton"><span class="input-group-addon"><i class="zmdi zmdi-search"></i></span></button>
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
										<div class="titleText" style="border-left: 7px solid #f21378; padding-left: 15px;">Exhibition List</div> 
									</div>
								</div>
								<div class="col-lg-4 col-md-8 col-sm-6">
									<div class="product__page__filter">
										

										<form id="sortForm" name = "sortForm" action="/collection/list" method='get' style=" width:130px; margin-left: 138px; margin-bottom: 0px;" class="input-group searchForm">

											
											<select id="sortSelect" onchange="f_changeFunc(this)" class="form-control" name='sort' style="width:30px;" >
												<option value="endDate" <c:out value="${pageMaker.cri.sort eq 'endDate' ? 'selected' : ''}"/>>종료일순</option>
												<option value="viewCount" <c:out value="${pageMaker.cri.sort eq 'viewCount' ? 'selected' : ''}"/>>조회순</option>
												<option value="star" <c:out value="${pageMaker.cri.sort eq 'star' ? 'selected' : ''}"/>>별점순</option>
											</select>
											<input type='hidden' name="pageNum" value="${pageMaker.cri.pageNum}">
											<input type='hidden' name='seq' value='${pageMaker.cri.seq}'>

										</form>					 

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
												<a href="/collection/get?seq=<c:out value="${collection.seq}"/>">
													<img src="<c:out value="${collection.thumbnail}" />"
													width="350" height="400" style="margin-bottom: 30px;">
												</a>
											</div>
										</div>
										<div class="product__item__text">
											<a style="color: black; font-weight: 500; font-size:17px;" 
											href="/collection/get?seq=<c:out value="${collection.seq}"/>">
											<c:out value="${collection.title}" /></a>
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
						<a id="scrollUp2" href="#top"  
						style="position: absolute; z-index: 2147483647; background-color:#f21378;"><i
						class="fa fa-arrow-up lastscroll" aria-hidden="true" style="color:#fff;"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Footer Menu Area End ****** -->
	
	<form id='actionForm' action="/collection/list" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='pageNumForLimit' value='${pageMaker.cri.pageNumForLimit}'>
 		<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>'>
 		<input type='hidden' name='sort' value='<c:out value="${pageMaker.cri.sort}"/>'>
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
				
				var searchUL = $(".chat");
				var searchForm = $("#searchForm");

				var strDefault=''
				strDefault+= "<input id='key' type='text' name='keyword' class='form-control' style='width:300px;' placeholder='검색어를 입력해주세요.' value='<c:out value='${pageMaker.cri.keyword}'/>'>";
				searchUL.html(strDefault);
				
				$("#chk").change (function(e) {
					var selectTag = $("#chk option:selected").val();
				    var str="";
				    console.log(selectTag);
				    if (selectTag=="T" || selectTag==""){
				    str+= "<input id='' type='text' name='keyword' class='form-control' style='width:300px;' placeholder='검색어를 입력해주세요.' value='<c:out value='${pageMaker.cri.keyword}'/>'>";
				    }
				    if (selectTag=="D"){
				    str+= "<input id='' type='date' name='date' class='form-control' style='width:300px;' value='<c:out value='${pageMaker.cri.date}'/>'>";
					}

					searchUL.html(str);
				});
				
				
				$("#searchForm #searchButton").on("click", function(e){
					e.preventDefault();
					var selectTag = $("#chk option:selected").val();
					if(selectTag =="T" || selectTag==""){
					let val = $("input[name='keyword']").val();
					searchForm.find("input[name='keyword']").val(val);
					searchForm.submit();
					}else if(selectTag == "D"){
						let val = $("input[name='date']").val();
						searchForm.find("input[name='date']").val(val);
						searchForm.submit();
					}
				});
				
				
				
				var actionForm = $("#actionForm");
				
				$(".paginate_button a").on("click", function(e) {
							e.preventDefault();
							console.log('click');
							actionForm.find("input[name='pageNum']").val($(this).attr("href"));
							actionForm.submit();
						
				});
																
			});
	
	
	function f_changeFunc(obj){
		
        var selectVal = $(obj).val();     
        
        var f = document.sortForm;
     
		f.submit();
             
    }
	
	</script>
</body>
</html>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" />