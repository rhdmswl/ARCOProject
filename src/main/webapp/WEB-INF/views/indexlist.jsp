<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
body {
	margin-top: 20px;
}

.indexBoard {
	margin-top: 130px;
	margin-bottom: 80px;
}

.index-margin {
	margin-bottom: 1.875rem;
}

.index {
	border: 0;
	box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
	-webkit-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
	-moz-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
	-ms-box-shadow: 0px 0px 10px 0px rgba(82, 63, 105, 0.1);
}

.index {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #ffffff;
	background-clip: border-box;
	border: 1px solid #e6e4e9;
	border-radius: 8px;
}

.index .index-header.no-border {
	border: 0;
}

.index .index-header {
	background: none;
	padding: 0 0.9375rem;
	font-weight: 500;
	display: flex;
	align-items: center;
	min-height: 50px;
}

.index-header:first-child {
	border-radius: calc(8px - 1px) calc(8px - 1px) 0 0;
}

.widget-49 .widget-49-meeting-points {
	font-weight: 400;
	font-size: 13px;
	margin-top: .5rem;
}

.widget-49 .widget-49-meeting-points .widget-49-meeting-item {
	color: #727686;
}

.widget-49 .widget-49-meeting-action {
	text-align: right;
}

.widget-49 .widget-49-meeting-action a {
	text-transform: uppercase;
}
</style>
</head>
<body>

	<div class="container indexBoard">
		<div class="row">
			<div class="col-lg-4">
				<div class="index index-margin">
					<div class="index-header no-border">
						<div class="index-title">TALK</div>
					</div>
					<div class="index-body pt-0">
						<div class="widget-49">
							<c:forEach items="${board}" var="board">
								
								<table class="widget-49-meeting-points">
									<tr>
										<td class="widget-49-meeting-item">
											<c:out value="${board.post_title}" />
										</td>
										
									</tr>
								</table>
								
							</c:forEach>
							<div class="widget-49-meeting-action">
								<a href="/board/list?pageNum=1&brd_id=1"
									class="btn btn-sm btn-flash-border-primary">더보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="index index-margin">
					<div class="index-header no-border">
						<div class="index-title">INFO</div>
					</div>
					<div class="index-body pt-0">
						<div class="widget-49">
							<c:forEach items="${board}" var="board">
								
								<table class="widget-49-meeting-points">
									<tr>
										<td class="widget-49-meeting-item">
											<c:out value="${board.post_title}" />
										</td>
									</tr>
								</table>
								
							</c:forEach>
							<div class="widget-49-meeting-action">
								<a href="/board/list?pageNum=1&brd_id=2"
									class="btn btn-sm btn-flash-border-primary">더보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="index index-margin">
					<div class="index-header no-border">
						<div class="index-title">WEEKLY</div>
					</div>
					<div class="index-body pt-0">
						<div class="widget-49">
							<c:forEach items="${board}" var="board">
								
								<table class="widget-49-meeting-points">
									<tr>
										<td class="widget-49-meeting-item">
											<c:out value="${board.post_title}" />
										</td>
									</tr>
								</table>
								
							</c:forEach>
							<div class="widget-49-meeting-action">
								<a href="/board/list?pageNum=1&brd_id=3"
									class="btn btn-sm btn-flash-border-primary">더보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		/* $(document).ready(function(){
		 $(".move").on("click", function(e){
		 e.preventDefault();
		 actionForm.append("<input type='hidden' name='post_id' value='"+
		 $(this).attr("href")+"'>");
		 actionForm.attr("action", "/board/get");
		 actionForm.submit();
		 });
		 }); */
	</script>

</body>
</html>