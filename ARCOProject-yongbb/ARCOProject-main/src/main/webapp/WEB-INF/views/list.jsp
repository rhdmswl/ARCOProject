<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>

 <head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../resources/list/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/list/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/list/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../resources/list/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="../resources/list/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../resources/list/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/list/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../resources/list/css/style.css" type="text/css">
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
                                        </select><div class="nice-select" tabindex="0"><span class="current">A-Z</span>
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
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/popular-1.jpg">
                                    	<div>
                                    		<a href="/collection/get?seq=<c:out value="${collection.seq}"/>">
                                    			<img src="<c:out value="${collection.imgUrl}" />" width="400" height="400">
                                    		</a>
                                    	</div>
                                       <!--  <div class="ep">18 / 18</div> -->
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <h5><a href="#"><c:out value="${collection.title}"/></a></h5>
                                    </div>
                                </div>
                            </div>
                         </c:forEach>   
                </div>
                <div class="product__pagination">
                        <a href="#" class="current-page">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><i class="fa fa-angle-double-right"></i></a>
                 </div>
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
    <script src="../resources/list/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="../resources/list/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="../resources/list/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="../resources/list/js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="../resources/list/js/active.js"></script>
    <a id="scrollUp" href="#top" style="position: absolute; z-index: 2147483647; display: block;">
    <i class="fa fa-arrow-up" aria-hidden="true"></i>
    </a>
   


</body>
</html>