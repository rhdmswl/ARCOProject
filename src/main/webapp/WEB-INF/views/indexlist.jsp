<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	rel="stylesheet"> -->

<style type="text/css">


.indexBoard {
	margin-top: 130px;
	margin-bottom: 80px;
	margin-right: 80px;
	margin-left: 80px;
	max-width: 65%;
	position: relative;
	left: 12%;
	
}

.indexrow {
	width: 1200px;
}

.listFirst {
	
	margin-right: 100px;
}

.listSecond {

	margin-right: 0;
}


.index-margin {
	margin-bottom: 1.875rem;
	width: 480px;
}

.index-board .index-info {
	border: 0;
	box-shadow: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	-ms-box-shadow: none;
}

.index-board {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #ffffff;
	background-clip: border-box;
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	border-radius: 0px;
}

.index-info {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #ffffff;
	background-clip: border-box;
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	border-radius: 0px;
}

.index .index-header.no-border {
	border-bottom: 1px solid black;
}

.index .index-header {
	background: none;
	padding: 0 0.9375rem;
	font-weight: 500;
	display: flex;
	align-items: center;
	min-height: 50px;
}

.index-title {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 600;
	font-size: 23px;
	padding-top: 10px;
	padding-left: 10px;
	padding-bottom: 10px;
}

.index-body {
	padding-left: 25px;
	margin-top: 15px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.index-header:first-child {
	border-radius: calc(8px - 1px) calc(8px - 1px) 0 0;
	border-bottom: 1px solid black;
}

.boardlist-49 .boardlist-49-meeting-points {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 400;
	font-size: 17px;
	margin-top: 10px;
}

.boardlist-49 .boardlist-49-meeting-points .boardlist-49-meeting-item {
	color: #727686;
}

.infoText {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-weight: 400;
	font-size: 17px;
}

.boardlist-49 .boardlist-49-meeting-action {
	text-align: right;
}

.btn-flash-border-primary {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 20px;
	font-weight: 500;
}

.boardlist-49 .boardlist-49-meeting-action a {
	text-transform: uppercase;
}

.moreImg {
	transform: scaleX(-1);
	margin-left: 10px;
	margin-right: 3px;
	position: relative;
	bottom: 2px;
}

</style>
</head>
<body>

	<div class="container indexBoard">
		<div class="row indexrow">
			<div class="col-lg-4 listFirst">
				<div class="index-info index-margin">
					<div class="index-head">
						<div class="index-title">공간</div>
					</div>
					<div class="index-body pt-0">
						<div class="boardlist-49">
								<table class="boardlist-49-meeting-points">
									<tr>
										<td class="boardlist-49-meeting-item">
											<p class="infoText" style="color:black;">
											예술과 사람을 연결하는 공간으로<br/>
											누구나 쉽게 접근할 수 있도록 전시 정보를 제공합니다. <br/>
											단순히 정보를 보는 것에 그치지 않고<br/>
											예술과 문화에 대한 느낌을 공유할 수 있습니다.<br/>
											<br/>
											ARCO에서 진행 중인 전시를 확인해보세요.
											</p>
										</td>
									</tr>
								</table>	
							<div class="boardlist-49-meeting-action">
								<a href="/collection/list"
									class="btn btn-sm btn-flash-border-primary" style="color:black;">더보기<img
									class="moreImg" src="https://i.imgur.com/Pi8nidz.png"
									width="30px"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 listSecond">
				<div class="index-board index-margin">
					<div class="index-header no-border">
						<div class="index-title">BEST</div>
					</div>
					<div class="index-body pt-0">
						<div class="boardlist-49">
							<c:forEach items="${best}" var="board">
								<table class="boardlist-49-meeting-points">
									<tr>
										<td class="boardlist-49-meeting-item"><a
											style="color: black;"
											href="/board/get?post_id=${board.post_id}&brd_id=4"><c:out
													value="${board.post_title}" /></a></td>
									</tr>
								</table>
							</c:forEach>
							<div class="boardlist-49-meeting-action">
								<a href="/board/list?pageNum=1&brd_id=4"
									class="btn btn-sm btn-flash-border-primary" style="color:black;">더보기<img
									class="moreImg" src="https://i.imgur.com/Pi8nidz.png"
									width="30px"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<!-- <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script> -->
	<script type="text/javascript">

		$(document).ready(function() {
			$(".move").on("click", function(e) {
				e.preventDefault();
				actionForm.append("<input type='hidden' name='post_id' value='"
					+ $(this).attr("href") + "'>");
				actionForm.attr("action","/board/get");
				actionForm.submit();
				});
			});
		
	</script>

</body>
</html>