<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<jsp:include page="/WEB-INF/views/includes/header.jsp" />

<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>EXHIBITION - Page</title>

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="/css/responsive/responsive.css" rel="stylesheet">

<!-- <script src="/js/material-dashboard.min.js"></script> -->
<link rel="stylesheet" href="/css/material-dashboard.min.css">

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap"
	rel="stylesheet">
<!-- 	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css"> -->

<!-- star -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- map -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=875db2344685ebc0aa08645ef75d08b6&libraries=services"></script>

<!-- 글자수 -->
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<style type="text/css">
body {
	margin-top: 20px;
	background: #FFF;
}

body::-webkit-scrollbar {
	width: 8px; /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
	height: 5%; /* 스크롤바의 길이 */
	background: black; /* 스크롤바의 색상 */
	border-radius: 10px;
}

body::-webkit-scrollbar-track {
	background: rgba(242, 240, 241); /*스크롤바 뒷 배경 색상*/
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

.section_padding_80 {
	margin-top: 20px;
}

.section_padding_50 {
	padding-top: 40px;
}

.btn-secondary {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	box-shadow: none;
	width: 100px;
	height: 40px;
	line-height: 20px;
	font-size: 15px;
	padding: 0;
	background-color: #f21378;
	border: 0;
}

.btn-secondary:hover {
	background-color: #f21378;
	box-shadow: 1px 4px 3px 1px #dadce0;
}

.btn-secondary2 {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	box-shadow: none;
	width: 100px;
	height: 40px;
	line-height: 20px;
	font-size: 15px;
	padding: 0;
	background-color: #8f93a9;
	border: 0;
	color: white;
	border-radius: 5px;
}

.btn-secondary2:hover {
	background-color: #8f93a9;
	box-shadow: 1px 4px 3px 1px #dadce0;
	color: white;
}

.single_blog_area ul li:before {
	content: none;
}

.single_blog_area ul li {
	padding-left: 0px;
}

.post-thumb {
	margin-bottom: 55px;
	height: 460px;
}

.post-thumb img {
	position: absolute;
	left: 22%;
	top: 10px;
}

.post-headline {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 30px;
	font-weight: 700;
	color: #696969;
}

.post-date {
	margin-left: 20px;
}

/* 전시 정보 그룹 */
.post-content {
	position: relative;
	top: 55%;
	left: 20px;
	right: 30px;
	background-color: #fff;
	height: 600px;
}

.card-body {
	height: inherit;
}

.exhiInfoGroup {
	overflow: hidden;
	height: auto;
	border: 1px solid #ccc;
	border-radius: 10px;
	margin-top: 30px;
	padding: 20px;
}

/* 전시 정보 */
.infoText {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 18px;
	font-weight: 600;
	color: #696969;
}

/* 페이지 버튼 */
.page-item {
	margin-left: 4px;
}

.page-link {
	display: flex;
	align-items: center;
	justify-content: center;
	color: #7b809a;
	padding: 0;
	border-radius: 50% !important;
	width: 36px;
	height: 36px;
	font-size: .875rem;
}

.page-link:hover {
	color: #f21378;
}

.page-item.active .page-link {
	display: flex;
	align-items: center;
	justify-content: center;
	color: #f21378;
	padding: 0;
	margin: 0 3px;
	border-radius: 50% !important;
	width: 36px;
	height: 36px;
	font-size: .875rem;
	background-color: #ddd;
	border-color: #ddd;
}

.page-item.active:hover {
	color: #f21378;
}

.card-header {
	padding: 0.75rem 1.25rem;
	margin-bottom: 0;
	background-color: #fff;
	border-bottom: 0;
}

.info {
	margin-bottom: 10px;
}

.infoBox {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	margin-top: 5px;
	margin-bottom: 10px;
}

.infoBtn {
	float: right;
}

.form-control::placeholder {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

/* 댓글 리스트 */
.comment_area {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 500;
	position: relative;
	width: 90%;
	left: 60px;
	padding: 0;
	margin-top: 50px;
	border-bottom: 0;
}

.leave-comment-area {
	position: relative;
	left: auto;
	margin-top: 5px;
	margin-bottom: 15px;
}

.remove {
	float: right;
}

.revBox {
	height: auto;
}

.primary-font {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	font-size: 17px;
}

.revDate {
	position: relative;
	top: 0px;
}

.mb-30 {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	font-size: 23px;
}

.revContentInput {
	width: inherit;
	height: 50px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 15px;
	padding-left: 10px;
}

.revTextBox {
	width: 400px;
}

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
.starR {
	display: inline-block;
	width: 30px;
	height: 30px;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
	font-size: 1.8em;
	box-sizing: border-box;
	cursor: pointer;
}

/* 한줄평 별들의 기본 설정 */
.starV {
	display: inline-block;
	width: 30px;
	height: 30px;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
	font-size: 1.4em;
	box-sizing: border-box;
	cursor: pointer;
}

/* 별 이모지에 마우스 오버 시 */
.starR:hover {
	text-shadow: 0 0 0 #ccc;
}

/* 별 이모지를 클릭 후 class="on"이 되었을 경우 */
.starR.on {
	text-shadow: 0 0 0 #ec27c8;
}

/* 별 이모지에 설정된 class="on"이 되었을 경우 */
.starV.on {
	text-shadow: 0 0 0 #ec27c8;
}

.jb-division-line {
	border-top: 1px solid #ccc;
	margin: 20px 0px;
}

.mapsize {
	width: 700px;
	margin: 0 auto;
}

.reviewBox {
	margin-top: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
}

.dibs {
	margin-right: 15px;
}

.modal {
	display: none;
	position: fixed;
	z-index: 300;
	left: 0;
	top: 0;
	width: 120%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	position: fixed;
	left: 50%;
	top: 20%;
	transform: translate(-50%, -50%);
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border-radius: 10px;
	width: 400px;
	height: 170px;
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.modal-footer {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	cursor: pointer;
	height: 48px;
	position: relative;
	top: 30px;
}

.modaltext {
	vertical-align: middle;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 500;
	position: relative;
	top: 30px;
}

/* 지도 오버레이*/
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#category {
	position: absolute;
	top: 10px;
	left: 10px;
	border-radius: 5px;
	border: 1px solid #909090;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
	background: #fff;
	overflow: hidden;
	z-index: 2;
}

#category li {
	float: left;
	list-style: none;
	width: 50px;
	height: 50px;
	border-right: 1px solid #acacac;
	padding: 6px 0;
	margin: 7px 0 10px 0;
	text-align: center;
	cursor: pointer;
}

#category li.on {
	background: #eee;
}

#category li:hover {
	background: #ffe6e6;
	border-left: 1px solid #acacac;
	margin-left: -1px;
}

#category li:last-child {
	margin-right: 0;
	border-right: 0;
}

#category li span {
	display: block;
	margin: 0 auto 3px;
	width: 27px;
	height: 28px;
}

#category li .cafe {
	background: url(https://i.imgur.com/Ul08uF0.png) no-repeat;
	background-size: 26px;
}

#category li .parking {
	background: url(https://i.imgur.com/5AMjsDk.png) no-repeat;
	background-size: 26px;
}

#category li .bab {
	background: url(https://i.imgur.com/E2tXwxk.png) no-repeat;
	background-size: 26px;
}

#category li.on .category_bg {
	background-position-x: -46px;
}

.placeinfo_wrap {
	position: absolute;
	bottom: 28px;
	left: -150px;
	width: 300px;
}

.placeinfo {
	position: relative;
	width: 100%;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	padding-bottom: 10px;
	background: #fff;
}

.placeinfo:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.placeinfo_wrap .after {
	content: '';
	position: relative;
	margin-left: -12px;
	left: 50%;
	width: 22px;
	height: 12px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.placeinfo a, .placeinfo a:hover, .placeinfo a:active {
	color: #fff;
	text-decoration: none;
}

.placeinfo a, .placeinfo span {
	display: block;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.placeinfo span {
	margin: 5px 5px 0 5px;
	cursor: default;
	font-size: 13px;
}

.placeinfo .title {
	font-weight: bold;
	font-size: 14px;
	border-radius: 6px 6px 0 0;
	margin: -1px -1px 0 -1px;
	padding: 10px;
	color: #fff;
	background: #d95050;
	background: #d95050
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.placeinfo .tel {
	color: #0f7833;
}

.placeinfo .jibun {
	color: #999;
	font-size: 11px;
	margin-top: 0;
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

						<!-- Single Post -->
						<div class="col-10 col-sm-11">
							<div class="single-post">
								<!-- Post Thumb -->
								<div class="post-thumb">
									<img src="<c:out value="${collection.imgUrl}"/>" width="400"
										height="500" alt="">
								</div>
								<!-- Post Content -->
								<div class="post-content card-header">
									<div class="post-meta d-flex">
										<div class="post-author-date-area d-flex">
											<!-- Post Date -->
											<div class="post-date">
												<a href="#"><c:out value="${collection.startDate}"></c:out>
													~ <c:out value="${collection.endDate}"></c:out></a>
											</div>
										</div>
										<!-- Post Comment & Share Area -->
										<!-- 										<div class="post-comment-share-area d-flex">
											Post Favourite
											<div class="post-favourite">
												<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
													10</a>
											</div>
											Post Comments
											<div class="post-comments">
												<a href="#"><i class="fa fa-comment-o"
													aria-hidden="true"></i> 12</a>
											</div>
											Post Share
											<div class="post-share">
												<a href="#"><i class="fa fa-share-alt"
													aria-hidden="true"></i></a>
											</div>
										</div> -->
									</div>
									<div class="card-body">
										<div class="post-headline">
											<c:out value="${collection.title}" />
										</div>
										<div class="info">
											<span class="starAvg"> <span class="starR on"
												style="font-size: 1.2em;">⭐</span> <span class="star-score"><b>${collection.starAvg}
														점</b></span>
											</span>
										</div>

										<div class="exhiInfoGroup">
											<div class="info">
												<div class="infoText">&#128198; 전시 기간</div>
												<div class="infoBox">
													<c:out value="${collection.startDate}" />
													-
													<c:out value="${collection.endDate}" />
												</div>
											</div>
											<div class="info">
												<div class="infoText">&#128178; 가격</div>
												<div class="infoBox">
													<c:out value="${collection.price}" />
												</div>
											</div>
											<div class="info">
												<div class="infoText">&#127962; 장소</div>
												<div class="infoBox">
													<c:out value="${collection.place}" />
												</div>
											</div>
											<div class="info">
												<div class="infoText">&#128205; 주소</div>
												<div class="infoBox">
													<c:out value="${collection.placeAddr}" />
												</div>
											</div>
											<div class="info">
												<div class="infoText">&#128222; 문의</div>
												<div class="infoBox">
													<c:out value="${collection.phone}" />
												</div>
											</div>
											<div class="info">
												<div class="infoBtn">
													<a href="<c:out value="${collection.url}" />">
														<button class="btn btn-secondary">티켓 구매</button>
													</a>
												</div>
											</div>
											<c:if test="${member.userId!=null}">
												<c:if test="${dibs>=1}">
													<div class="info">
														<div class="infoBtn dibs">
															<button id='dibs' class="btn btn-secondary">찜 취소</button>
														</div>
														<div id="myModal" class="modal">
															<!-- Modal content -->
															<div class="modal-content">
																<p style="text-align: center; line-height: 1.5;">
																	<span class="modaltext" style="font-size: 13pt;">찜하기가
																		취소되었습니다 &#128064;</span>
																</p>
																<div class="modal-footer">
																	<button type="button" class="btn btn-default"
																		id="close_modal">Close</button>
																</div>
															</div>
														</div>
													</div>
												</c:if>
												<c:if test="${dibs==0}">
													<div class="info">
														<div class="infoBtn dibs">
															<button id='dibs' class="btn btn-secondary">찜 하기</button>
														</div>
														<div id="myModal" class="modal">
															<!-- Modal content -->
															<div class="modal-content">
																<p style="text-align: center; line-height: 1.5;">
																	<span class="modaltext" style="font-size: 13pt;">캘린더에
																		추가되었습니다 &#128147;</span>
																</p>
																<div class="modal-footer">
																	<button type="button" class="btn btn-default"
																		id="mypage_modal">
																		<a class="mypage" href="/member/mypage">mypage</a>
																	</button>
																	<button type="button" class="btn btn-default"
																		id="close_modal">Close</button>
																</div>
															</div>
														</div>
													</div>
												</c:if>
											</c:if>
										</div>
									</div>


								</div>
								<!-- <img class="br-30 mb-15" src="img/blog-img/14.jpg" alt=""> -->
							</div>
						</div>
						<div class="mapsize"
							style="position: static; margin-bottom: 40px;">
							<div class="infoText">&#128205; 위치 보기</div>
							<div class="map_wrap">
								<div id="map"
									style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
								<ul id="category">
									<li id="PK6" data-order="0"><span class="parking"></span>
										주차장</li>
									<li id="FD6" data-order="1"><span class="bab"></span> 음식점
									</li>
									<li id="CE7" data-order="2"><span class="cafe"></span> 카페
									</li>
								</ul>
							</div>
						</div>

						<!-- 길찾기로 이동 -->
						<div style="position: margin-bottom: 40px;">
							<a
								href="https://map.kakao.com/link/to/<c:out value="${collection.place}"/>,<c:out value="${collection.gpsY}"/>,<c:out value="${collection.gpsX}"/>">
								<button class="btn btn-secondary">길 안내</button>
							</a>
						</div>


						<!-- Comment Area Start -->
						<div class="comment_area section_padding_50 clearfix">
							<h4 class="mb-30">Comments</h4>
							<ul class="chat"></ul>
							<div class="panel-footer">
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
							</div>

							<!-- 리뷰 남기기 -->
							<div class="leave-comment-area section_padding_50 clearfix">
								<div class="comment-form">
									<div class="mb-30">한줄평을 남겨주세요 &#128173;</div>

									<!-- Comment Form -->
								</div>
								<form role="form">
									<div class="form-group">
										<input type="text" style="display: none;" id="seq" name="seq"
											value="<c:out value="${collection.seq}"/>">
									</div>
									<!-- 별점기능 -->
									<div class="form-group starRev" id="star">
										<span class="star-input"> <span class="starR on"
											onClick="setStar(1)">⭐</span> <span class="starR"
											onClick="setStar(2)">⭐</span> <span class="starR"
											onClick="setStar(3)">⭐</span> <span class="starR"
											onClick="setStar(4)">⭐</span> <span class="starR"
											onClick="setStar(5)">⭐</span> <output for="star-input">
												<b>&nbsp;&nbsp;1</b>점
											</output>
										</span>
									</div>
									<c:if test="${member.userId!=null}">
										<div class="form-group revTextBox">
											<label>작성자</label>
											<textarea class="form-control revContentInput"
												id='InputnickName' name='nickName' readonly="readonly"
												style="resize: none;">${member.userName}</textarea>
										</div>
										<div class="form-group revTextBox">
											<label>한줄평 작성</label> <input
												class="form-control revContentInput" type="text"
												id='comment' name='revComment' placeholder="한줄평을 적어주세요">
											<div id="comment_cnt">(0 / 50)</div>
										</div>
										<button id='commentAdd' type="submit"
											class="btn btn-secondary">입력 완료</button>
										<div>
											<span id="alert-danger2"
												style="display: none; color: #d92742; font-weight: bold;"></span>
										</div>
									</c:if>
									<!-- 비 로그인 시 -->
									<c:if test="${member.userId==null}">
										<div class="form-group revTextBox">
											<label>작성자</label> <input
												class="form-control revContentInput" type="text"
												readonly="readonly" placeholder="로그인 후 입력해주세요!">
										</div>
										<div class="form-group revTextBox">
											<label>리뷰내용</label> <input
												class="form-control revContentInput" type="text"
												readonly="readonly" placeholder="로그인 후 입력해주세요!">
										</div>
									</c:if>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Copywrite Text -->
				<div class="copy_right_text text-center">
					<a id="scrollUp2" href="#top"
						style="position: absolute; z-index: 2147483647; background-color: #f21378;"><i
						class="fa fa-arrow-up lastscroll" aria-hidden="true"
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
	<!-- <script src="/js/others/plugins.js"></script> -->
	<!-- Active JS -->

	<script src="/js/jquery/jquery-2.2.4.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

	<!-- <script src="/js/active.js"></script> -->
	<script type="text/javascript" src="/js/review.js"></script>
	<script type="text/javascript" src="/js/dibs.js"></script>
	<script>
       	$(document).ready(function() {
       		
       		//URL 파라미터 안 보이게
			/* history.replaceState({}, null, location.pathname); */
       		
       		var pageNum = 1;
       		var endNum=0;
       		var reviewPageFooter = $(".panel-footer");
            var seqValue = '<c:out value="${collection.seq}"/>';
            var reviewUL = $(".chat");
            		 
            showList(1);
            
            function showReviewPage(reviewCnt) {
   			 console.log("함수 작동 " +reviewCnt);
   			 console.log("함수 작동 " +pageNum);
   				endNum = Math.ceil(pageNum / 5.0) * 5;
   				var startNum = endNum - 4;
   				
   				var prev = startNum != 1;
   				var next = false;
   				
   				console.log("reviewCnt : "+reviewCnt);
   				if(endNum * 12 >= reviewCnt) {
   					endNum = Math.ceil(reviewCnt/12.0);
   				}
   				
   				if(endNum * 12 < reviewCnt) {
   					next = true;
   				} 
   				var str = "<ul class='pagination pull-right'>";
   				if(prev) {
   					str += "<li class='page-item'><a class='page-link' href='"+(startNum-1)+"'>Previous</a></li>";
   				}
   				console.log("startNum : "+startNum);
   				console.log("endNum : "+endNum);
   				for(var i=startNum ; i<=endNum; i++){
   					var active = pageNum == i? "active":"";
   					str+="<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
   				}
   				
   				if(next) {
   					str+= "<li class='page-item'><a class='page-link' href='"+(endNum+1) + "'>Next</a></li>";
   				}
   				str += "</ul></div>";
   				console.log("함수끝"+str);
   				
   				reviewPageFooter.html(str);
   				
   				/* 글자수 제한 기능 */
   			 $('#comment').on('keyup', function() {
				 //한줄평 쓰는 칸 눌렀을 때 입력버튼 권한주기
   				 $('#commentAdd').attr('disabled', false);
   		        $('#comment_cnt').html("("+$(this).val().length+" / 50)");
   		 
   		        if($(this).val().length > 50) {
   		            $(this).val($(this).val().substring(0, 50));
   		            $('#comment_cnt').html("(50 / 50)");
   		        }
   		    });
   			}		 
            
            		 function showList(page){
            			 pageNum=page;
            			 CollectionReviewService.getList({seq:seqValue,page: page|| 1 },
            				function(reviewCnt,list){
            					console.log("리뷰 개수 " +reviewCnt);
            				   var str="";
            				   if(page==-1) {
            				    	pageNum=Math.ceil(com_cnt/10.0);
            				    	
            				    	showList(pageNum);
            				    	return;
            				   }
            				   
            				   if(list==null || list.length ==0) {
            					   return;
            				   } 
            				   
            				   for(var i=0, len = list.length || 0; i < len; i++){
            					    var revSeqValue = list[i].revSeq;
            					    var formId = "review" + list[i].revSeq;
            					    
            					    str += "<li class='left clearfix' data-rev-Seq='" + revSeqValue + "'>";
            					    str += "<div class='rating' id='star'>";
            					    
            					    for (var j = 1; j <= 5; j++) {
            					        if (j <= list[i].revStar) {
            					            str += "<span class='starV on'>⭐</span>";
            					        } else {
            					            str += "<span class='starV'>⭐</span>";
            					        }
            					    }
            					    
            					    str += "</div>";
            					    str += "<div class='revBox'>";
            					    str += "<div class='header'>";
            					    str += "<div class='primary-font'>" + list[i].nickName + "</div>";
            					    
            					    if (list[i].nickName == "${member.userName}"){
            					        str += "<small>";
            					        str += "<a href='#" + formId + "' class='updatebtn' style='color:black;' data-toggle='collapse' role='button' aria-expanded='false' aria-controls='" + formId + "'>수정</a>";
            					        str += "<a href='#" + formId + "' class='remove2' role='button' style='color:black;' aria-expanded='false' aria-controls='" + formId + "'>삭제</a>";
            					        str += "</small>";
            					    }
            					    
            					    str += "<small class='pull-right text-muted'>" + CollectionReviewService.displayTime(list[i].reviewDate) + "</small>";
            					    str += "</div>"; // header 끝
            					    str += "<div id='review' style='font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;' class='collapse multi-collapse-id show'>" + list[i].revComment + "</div>";
            					    str += "<form class='collapse' id='" + formId + "'>";
            					    str += "<div class='form-group'>";
            					    str += "<textarea style='resize: none;' class='form-control reviewBox' id ='revComment' rows='3'></textarea>";
            					    /* str+= "                    <textarea style='resize: none;' class='form-control' id ='revStar' rows='1'></textarea>";  */
            					    str += "</div>";
            					    str += "<div><button id='update' type='button' class='btn btn-secondary updateSuccess'>수정 완료</button></div>";
            					    
            					    str += "</form>";
            					    str += "</div>";
            					    str += "</li>";
            					    str += "<div class='jb-division-line'></div>";
            					    
            					    
            					} 
            				   reviewUL.html(str);
            				   console.log("showList page : " +pageNum);
            				   showReviewPage(reviewCnt);
            			 }); 
            		 } 
            		 
            		 
            		 
            
                     $(document).on("click",'#commentAdd' ,function(){
                    	 var review = { 
                    			 seq : seqValue,
                        		 nickName : $('#InputnickName').val(),
                        		 revComment : $('#comment').val(),
                        		 revStar :  $(".starRev output b").text(),
                        		 userId : ('${member.userId}')
                        		 };
                    	 //한줄평 안썼을 때 입력 못하게 함
                    	 if($(comment).val().length == 0) {
      						$("#comment").focus();
     							$("#alert-danger2").css('display', 'inline-block')
     				            .text('한줄평을 입력해주세요.');
     							$('#commentAdd').attr('disabled', true);
     							return false;
     						 }
                         CollectionReviewService.add(review, function(result){alert(result);
                         
                         });
                         showList(1);
                     });
                     
                     $(document).on("click",'.remove2',function(){
                    	 var revSeqValue = $(this).closest("li").data("revSeq");
                        CollectionReviewService.remove(revSeqValue, function(result){
                        	alert(result);
                        	});
                        showList(1);
                     });
                     
                     $(document).on('click','.updatebtn',function(){
                         var formId = $(this).closest('form').attr('id'); 
                         $("#" + formId).collapse('toggle');
                     });

                     $(document).on('click','#update',function(){
                        var formId = $(this).closest('form').attr('id');
                        var revSeqValue = $(this).closest("li").data("revSeq");
                        console.log(formId);
                         var review={
                             "revSeq" : revSeqValue,
                             "revComment" : $("#" + formId+ ' textarea[id=revComment]').val(), 
                             "revStar" : $('#' + formId + ' textarea[id="revStar"]').val()
                         }; 
                        CollectionReviewService.update(review, function(result){alert(result); showList(1);});

                     });
                     
                     reviewPageFooter.on('click','li a',function(e){
         				e.preventDefault();
         				console.log("page click");
         				
         				var targetPageNum=$(this).attr("href");
         				
         				console.log("footer targetPageNum : "+targetPageNum);
         				
         				PageNum=targetPageNum;
         				console.log("footer PageNum : "+PageNum);
         				showList(PageNum);
         			});
                  
                     /* 찜하기 버튼 */
                     $('#dibs').on("click",function(e) {
                    	var startDate ="${collection.startDate}";
         				var endDate="${collection.endDate}";
         				var seq="${collection.seq}";
         				var title="${collection.title}";
         				var userId="${member.userId}";
         				var imgUrl="${collection.imgUrl}";
         			
                    	 var dibs={
         						seq:seq,
         						title:title,
         						startDate:startDate,
         						userId:userId,
         						endDate:endDate,
         						imgUrl:imgUrl,
         				};
                    	 $('#myModal').show();
                    	dibsService.addDibs(dibs);
                    	
                    	$("#close_modal").click(function() {
							$('#myModal').hide();
							window.location.reload();
						});
         			});
                     
                    /* 별점 구현 */
                    //setStar로 선택된 별점 값 score에 저장
                     $('.starRev span.starR').click(function(){
                    	    $(this).parent().children('span').removeClass('on');
                    	    $(this).addClass('on').prevAll('span').addClass('on');
                    	    var score = $(this).next().text();
                    	    setStar(score);
                    	    return false;
                    	});

                    	function setStar(starIndex) {
                    	    // 클릭한 별까지 on 클래스 추가
                    	    $(".starRev .starR").slice(0, starIndex).addClass("on");

                    	    // 클릭한 별의 개수를 계산
                    	    var numSelectedStars = $(".starRev .on").length;

                    	    // 계산한 개수를 output에 출력
                    	    $(".starRev output b").text(numSelectedStars);
                    	}

                    	var starRating = function() {
                    	    var $star = $(".star-input"),
                    	        $result = $star.find("output>b");
                    	    //별점 클릭될때 어떻게 변하는지 나타내는 코드
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
                    	        /* 별점 체크하지 않았을때 기본 1점으로 설정 */
                    	        .on("change", ".star-input>.starR", function(){
                    	            var $checked = $star.find(":checked");
                    	            var score = ($checked.length === 0) ? 1 : $checked.next().text();
                    	            setStar(score);
                    	        })
                    	       .on("mouseover", ".revTextBox input", function(){
                    	            var score = $(this).text();
                    	            setStar(score);
                    	        })
                    	        .on("mouseleave", ".star-input>.starR", function(){
                    	            var $checked = $star.find(":checked");
                    	            if($checked.length === 0){
                    	                setStar(1);
                    	            } else {
                    	                setStar($checked.next().text());
                    	            }
                    	        });
                    	};

                    	starRating();
                    	
                    	
                   /* 지도 코드 */
                    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                        mapOption = { 
                            center: new kakao.maps.LatLng(${collection.gpsY},  ${collection.gpsX}), // 지도의 중심좌표
                            level: 3 // 지도의 확대 레벨
                        };
                   
                    	// 마커가 표시될 위치입니다 
                        var markerPosition  = new kakao.maps.LatLng(${collection.gpsY}, ${collection.gpsX}); 

                        // 마커를 생성합니다
                        var targetmarker = new kakao.maps.Marker({
                            position: markerPosition
                        });

                        // 마커가 지도 위에 표시되도록 설정합니다
                    targetmarker.setMap(map);
                   
                   /* 주변 오버레이*/ 
                   
                    	// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
                   	var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
                   	    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
                   	    markers = [], // 마커를 담을 배열입니다
                   	    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

                    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
                    
                 	// 장소 검색 객체를 생성합니다
                    var ps = new kakao.maps.services.Places(map); 
                    targetmarker.setMap(map);

                 // 지도에 idle 이벤트를 등록합니다
                    kakao.maps.event.addListener(map, 'idle', searchPlaces);

                    // 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
                    contentNode.className = 'placeinfo_wrap';

                    // 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
                    // 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
                    addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
                    addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

                    // 커스텀 오버레이 컨텐츠를 설정합니다
                    placeOverlay.setContent(contentNode);  

                    // 각 카테고리에 클릭 이벤트를 등록합니다
                    addCategoryClickEvent();

                    // 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
                    function addEventHandle(target, type, callback) {
                        if (target.addEventListener) {
                            target.addEventListener(type, callback);
                        } else {
                            target.attachEvent('on' + type, callback);
                        }
                    }

                    // 카테고리 검색을 요청하는 함수입니다
                    function searchPlaces() {
                        if (!currCategory) {
                            return;
                        }
                        
                        // 커스텀 오버레이를 숨깁니다 
                        placeOverlay.setMap(null);

                        // 지도에 표시되고 있는 마커를 제거합니다
                        removeMarker();
                        
                        ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
                    }

                    // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
                    function placesSearchCB(data, status, pagination) {
                        if (status === kakao.maps.services.Status.OK) {

                            // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
                            displayPlaces(data);
                        } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
                            // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

                        } else if (status === kakao.maps.services.Status.ERROR) {
                            // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
                            
                        }
                    }

                    // 지도에 마커를 표출하는 함수입니다
                    function displayPlaces(places) {

                        // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
                        // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
                        var order = document.getElementById(currCategory).getAttribute('data-order');
						
                        for ( var i=0; i<places.length; i++ ) {

                                // 마커를 생성하고 지도에 표시합니다
                                
                                var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);

                                // 마커와 검색결과 항목을 클릭 했을 때
                                // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
                                (function(marker, place) {
                                    kakao.maps.event.addListener(marker, 'click', function() {
                                        displayPlaceInfo(place);
                                    });
                                })(marker, places[i]);
                        }
                    }

                    // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
                    function addMarker(position, order) {
                        var imageSrc = "https://i.imgur.com/m6RN8H5.png", // 마커 이미지 url, 스프라이트 이미지를 씁니다
                            imageSize = new kakao.maps.Size(17, 28),  // 마커 이미지의 크기
                            markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
                                marker = new kakao.maps.Marker({
                                position: position, // 마커의 위치
                                image: markerImage 
                            });

                        marker.setMap(map); // 지도 위에 마커를 표출합니다
                        markers.push(marker);  // 배열에 생성된 마커를 추가합니다

                        return marker;
                    }

                    // 지도 위에 표시되고 있는 마커를 모두 제거합니다
                    function removeMarker() {
                        for ( var i = 0; i < markers.length; i++ ) {
                            markers[i].setMap(null);
                        }   
                        markers = [];
                    }

                    // 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
                    function displayPlaceInfo (place) {
                        var content = '<div class="placeinfo">' +
                                        '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

                        if (place.road_address_name) {
                            content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
                                        '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
                        }  else {
                            content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
                        }                
                       
                        content += '    <span class="tel">' + place.phone + '</span>' + 
                                    '</div>' + 
                                    '<div class="after"></div>';

                        contentNode.innerHTML = content;
                        placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
                        placeOverlay.setMap(map);  
                    }


                    // 각 카테고리에 클릭 이벤트를 등록합니다
                    function addCategoryClickEvent() {
                        var category = document.getElementById('category'),
                            children = category.children;

                        for (var i=0; i<children.length; i++) {
                            children[i].onclick = onClickCategory;
                        }
                    }

                    // 카테고리를 클릭했을 때 호출되는 함수입니다
                    function onClickCategory() {
                        var id = this.id,
                            className = this.className;

                        placeOverlay.setMap(null);
                        targetmarker.setMap(map);

                        if (className === 'on') {
                            currCategory = '';
                            changeCategoryClass();
                            removeMarker();
                        } else {
                            currCategory = id;
                            changeCategoryClass(this);
                            searchPlaces();
                        }
                    }

                    // 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
                    function changeCategoryClass(el) {
                        var category = document.getElementById('category'),
                            children = category.children,
                            i;

                        for ( i=0; i<children.length; i++ ) {
                            children[i].className = '';
                        }

                        if (el) {
                            el.className = 'on';
                        } 
                    } 
                    /* 주변 오버레이 끝 */
                    

                    /* map end */
});
                    	
										
</script>

</body>
</html>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" />