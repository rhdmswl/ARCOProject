<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">


<title>ARCO - Community Post</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	margin-top: 20px;
}
/*
Blog post entries
*/
.entry-card {
	-webkit-box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.05);
	-moz-box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.05);
	box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.05);
}

.entry-content {
	background-color: #fff;
	padding: 36px 36px 36px 36px;
	border-bottom-left-radius: 6px;
	border-bottom-right-radius: 6px;
}

.entry-content .entry-title a {
	color: #333;
}

.entry-content .entry-title a:hover {
	color: #4782d3;
}

.entry-content .entry-meta span {
	font-size: 12px;
}

.entry-title {
	font-size: .95rem;
	font-weight: 500;
	margin-bottom: 15px;
}

.entry-thumb {
	display: block;
	position: relative;
	overflow: hidden;
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.entry-thumb img {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.entry-thumb .thumb-hover {
	position: absolute;
	width: 100px;
	height: 100px;
	background: rgba(71, 130, 211, 0.85);
	display: block;
	top: 50%;
	left: 50%;
	color: #fff;
	font-size: 40px;
	line-height: 100px;
	border-radius: 50%;
	margin-top: -50px;
	margin-left: -50px;
	text-align: center;
	transform: scale(0);
	-webkit-transform: scale(0);
	opacity: 0;
	transition: all .3s ease-in-out;
	-webkit-transition: all .3s ease-in-out;
}

.entry-thumb:hover .thumb-hover {
	opacity: 1;
	transform: scale(1);
	-webkit-transform: scale(1);
}

.article-post {
	border-bottom: 1px solid #eee;
	padding-bottom: 70px;
}

.article-post .post-thumb {
	display: block;
	position: relative;
	overflow: hidden;
}

.article-post .post-thumb .post-overlay {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.6);
	transition: all .3s;
	-webkit-transition: all .3s;
	opacity: 0;
}

.article-post .post-thumb .post-overlay span {
	width: 100%;
	display: block;
	vertical-align: middle;
	text-align: center;
	transform: translateY(70%);
	-webkit-transform: translateY(70%);
	transition: all .3s;
	-webkit-transition: all .3s;
	height: 100%;
	color: #fff;
}

.article-post .post-thumb:hover .post-overlay {
	opacity: 1;
}

.article-post .post-thumb:hover .post-overlay span {
	transform: translateY(50%);
	-webkit-transform: translateY(50%);
}

.post-content .post-title {
	font-weight: 500;
}

.post-meta {
	padding-top: 15px;
	margin-bottom: 20px;
}

.post-meta li:not(:last-child) {
	margin-right: 10px;
}

.post-meta li a {
	color: #999;
	font-size: 13px;
}

.post-meta li a:hover {
	color: #4782d3;
}

.post-meta li i {
	margin-right: 5px;
}

.post-meta li:after {
	margin-top: -5px;
	content: "/";
	margin-left: 10px;
}

.post-meta li:last-child:after {
	display: none;
}

.post-masonry .masonry-title {
	font-weight: 500;
}

.share-buttons li {
	vertical-align: middle;
}

.share-buttons li a {
	margin-right: 0px;
}

.post-content .fa {
	color: #ddd;
}

.post-content a h2 {
	font-size: 1.5rem;
	color: #333;
	margin-bottom: 0px;
}

.article-post .owl-carousel {
	margin-bottom: 20px !important;
}

.post-masonry h4 {
	text-transform: capitalize;
	font-size: 1rem;
	font-weight: 700;
}

.postbox {
	margin-bottom: 120px !important;

}

.mb40 {
	margin-bottom: 40px !important;
}

.mb30 {
	margin-bottom: 30px !important;
}

.media-body h5 a {
	color: #555;
}

.categories li a:before {
	content: "\f0da";
	font-family: 'FontAwesome';
	margin-right: 5px;
}
/*
Template sidebar
*/
.sidebar-title {
	margin-bottom: 1rem;
	font-size: 1.1rem;
}

.categories li {
	vertical-align: middle;
}

.categories li>ul {
	padding-left: 15px;
}

.categories li>ul>li>a {
	font-weight: 300;
}

.categories li a {
	color: #999;
	position: relative;
	display: block;
	padding: 5px 10px;
	border-bottom: 1px solid #eee;
}

.categories li a:before {
	content: "\f0da";
	font-family: 'FontAwesome';
	margin-right: 5px;
}

.categories li a:hover {
	color: #444;
	background-color: #f5f5f5;
}

.categories>li.active>a {
	font-weight: 600;
	color: #444;
}

.media-body h5 {
	font-size: 15px;
	letter-spacing: 0px;
	line-height: 20px;
	font-weight: 400;
}

.media-body h5 a {
	color: #555;
}

.media-body h5 a:hover {
	color: #4782d3;
}

.frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
button {
  margin: 20px;
}
.custom-btn {
  width: 130px;
  height: 40px;
  color: #fff;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}

/* 1 */
.btn-1 {
  background: rgb(6,14,131);
  background: linear-gradient(0deg, rgba(6,14,131,1) 0%, rgba(12,25,180,1) 100%);
  border: none;
}
.btn-1:hover {
   background: rgb(0,3,255);
background: linear-gradient(0deg, rgba(0,3,255,1) 0%, rgba(2,126,251,1) 100%);
}

</style>
</head>
<body>
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
		rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
	<div class="container pb50">
		<div class="row">
			<div class="col-md-9 mb40">
				<article>
					<div class="post-content">
						<h3 class=><c:out value="${board.post_title}"/></h3>
						
						<ul class="post-meta list-inline">
							<li class="list-inline-item"><i class="fa fa-user-circle-o" ></i>
								<a href="#"><c:out value="${board.post_writer}"/></a></li>
							
							<li class="list-inline-item"><i class="fa fa-calendar-o"></i>
								<a href="#"><fmt:formatDate pattern = "yyyy-MM-dd" value="${board.post_regdate}"/></a></li>

						</ul>
						<div class="postbox" style="box-sizing: border-box; width:100%; height:200%;">
								<c:out value="${board.post_content}"/>
						</div>
						
						<div class="frame">
							<button class="custom-btn btn-1" data-oper='modify' 
								onclick="location.href='/boardmodify?post_id=<c:out value="${board.post_id }"/>'">Modify</button>
							<button class="custom-btn btn-1" data-oper='list'
								onclick="loacation.href='/board/list'">List</button>
						</div>
						
						
						<hr class="mb40">
						<h4 class="mb40 text-uppercase font500">Comments</h4>
						<div class="media mb40">
							<i class="d-flex mr-3 fa fa-user-circle-o fa-3x"></i>
							<div class="media-body">
								<h5 class="mt-0 font400 clearfix">
									<a href="#" class="float-right">Reply</a> Jane Doe
								</h5>
								Nulla vel metus scelerisque ante sollicitudin. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
							</div>
						</div>
						<div class="media mb40">
							<i class="d-flex mr-3 fa fa-user-circle-o fa-3x"></i>
							<div class="media-body">
								<h5 class="mt-0 font400 clearfix">
									<a href="#" class="float-right">Reply</a> Jane Doe
								</h5>
								Nulla vel metus scelerisque ante sollicitudin. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
							</div>
						</div>
						<div class="media mb40">
							<i class="d-flex mr-3 fa fa-user-circle-o fa-3x"></i>
							<div class="media-body">
								<h5 class="mt-0 font400 clearfix">
									<a href="#" class="float-right">Reply</a> Jane Doe
								</h5>
								Nulla vel metus scelerisque ante sollicitudin. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
							</div>
						</div>
						<hr class="mb40">
						<h4 class="mb40 text-uppercase font500">Post a comment</h4>
						<form role="form">
							<div class="form-group">
								<label>Name</label> <input type="text" class="form-control"
									placeholder="John Doe">
							</div>
							<div class="form-group">
								<label>Email</label> <input type="email" class="form-control"
									placeholder="john@doe.com">
							</div>
							<div class="form-group">
								<label>Comment</label>
								<textarea class="form-control" rows="5" placeholder="Comment"></textarea>
							</div>
							<div class="clearfix float-right">
								<button type="button" class="custom-btn btn-1">Submit</button>
							</div>
						</form>
					</div>
				</article>

			</div>
			<div class="col-md-3 mb40">
				<div class="mb40">
					<form>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search..."
								aria-describedby="basic-addon2">
							<button class="input-group-addon" id="basic-addon2">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</form>
				</div>

				<div class="mb40">
					<h4 class="sidebar-title">Categories</h4>
					<ul class="list-unstyled categories">
						<li><a href="#">Rent</a></li>
						<li><a href="#">Sale</a></li>
						<li class="active"><a href="#">Apartment</a>
							<ul class="list-unstyled">
								<li><a href="#">Office</a></li>
								<li><a href="#">Godown</a></li>
								<li><a href="#">Gerage</a></li>
							</ul></li>
						<li><a href="#">Top Rating</a></li>
						<li><a href="#">Trending</a></li>
						<li><a href="#">Newest Properties</a></li>
					</ul>
				</div>

				<!-- <div>
					<h4 class="sidebar-title">Latest News</h4>
					<ul class="list-unstyled">
						<li class="media"><img class="d-flex mr-3 img-fluid"
							width="64"
							src="https://bootdey.com/img/Content/avatar/avatar1.png"
							alt="Generic placeholder image">
							<div class="media-body">
								<h5 class="mt-0 mb-1">
									<a href="#">Lorem ipsum dolor sit amet</a>
								</h5>
								April 05, 2017
							</div></li>
						<li class="media my-4"><img class="d-flex mr-3 img-fluid"
							width="64"
							src="https://bootdey.com/img/Content/avatar/avatar2.png"
							alt="Generic placeholder image">
							<div class="media-body">
								<h5 class="mt-0 mb-1">
									<a href="#">Lorem ipsum dolor sit amet</a>
								</h5>
								Jan 05, 2017
							</div></li>
						<li class="media"><img class="d-flex mr-3 img-fluid"
							width="64"
							src="https://bootdey.com/img/Content/avatar/avatar3.png"
							alt="Generic placeholder image">
							<div class="media-body">
								<h5 class="mt-0 mb-1">
									<a href="#">Lorem ipsum dolor sit amet</a>
								</h5>
								March 15, 2017
							</div></li>
					</ul>
				</div> -->
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
	
</script>
</body>
</html>