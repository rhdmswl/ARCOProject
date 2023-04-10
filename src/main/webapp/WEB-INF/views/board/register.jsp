<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<head>
<meta charset="utf-8">


<title>bs4 inbox list - Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	margin-top: 20px;
	background: #FDFDFF
}

.badge {
	border-radius: 8px;
	padding: 4px 8px;
	text-transform: uppercase;
	font-size: .7142em;
	line-height: 12px;
	background-color: transparent;
	border: 1px solid;
	margin-bottom: 5px;
	border-radius: .875rem;
}

.bg-green {
	background-color: #50d38a !important;
	color: #fff;
}

.bg-blush {
	background-color: #ff758e !important;
	color: #fff;
}

.bg-amber {
	background-color: #FFC107 !important;
	color: #fff;
}

.bg-red {
	background-color: #ec3b57 !important;
	color: #fff;
}

.bg-blue {
	background-color: #60bafd !important;
	color: #fff;
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
}

.inbox .action_bar .delete_all {
	margin-bottom: 0;
	margin-top: 8px
}

.inbox .action_bar .btn, .inbox .action_bar .search {
	margin: 0
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

.inbox .mail_list .list-group-item .controls .checkbox {
	display: inline-block
}

.inbox .mail_list .list-group-item .controls .checkbox label {
	margin: 0;
	padding: 10px
}

.inbox .mail_list .list-group-item .controls .favourite {
	margin-left: 10px
}

.inbox .mail_list .list-group-item .thumb {
	display: inline-block
}

.inbox .mail_list .list-group-item .thumb img {
	width: 40px
}

.inbox .mail_list .list-group-item .media-heading a {
	color: #555;
	font-weight: normal
}

.inbox .mail_list .list-group-item .media-heading a:hover, .inbox .mail_list .list-group-item .media-heading a:focus
	{
	text-decoration: none
}

.inbox .mail_list .list-group-item .media-heading time {
	font-size: 13px;
	margin-right: 10px
}

.inbox .mail_list .list-group-item .media-heading .badge {
	margin-bottom: 0;
	border-radius: 50px;
	font-weight: normal
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

@media only screen and (max-width: 767px) {
	.inbox .mail_list .list-group-item .controls {
		margin-top: 3px
	}
}
</style>
</head>

<body>
	<div class="container">
		<section class="content inbox">
			<div class="container-fluid">
				<div class="row clearfix">
					<div class="col-lg-12">
						<div class="card action_bar">
							<div class="body">
								<div class="row clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-md-12 col-lg-12 col-xl-12">
						<form role="from" action="/board/register" method="post">
							<div class="form-group">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th style="border-right: hidden;" width='40'><select>
													<option value="1">첫번째 게시판</option>
													<option value="2">두번째 게시판</option>
													<option value="3">세번째 게시판</option>
											</select></th>
											<th><input class="form-control" name='post_title'
												value="제목을 입력해주세요" onfocus="this.value=''"></th>
										</tr>

										<tr>
											<th colspan='2'><textarea style="resize: none;"
													class="form-control" rows="30" name='post_content'></textarea></th>
										</tr>
										<tr style="border-top: hidden;">
											<td style="padding-left: 5 px; border-right: hidden;">
												<div class="card m-t-5">
													<div class="body">
														<ul class="pagination pagination-primary m-b-0">
															<li class="page-item"><a class="page-link"
																href='/board/list'>목록으로</a></li>
														</ul>
													</div>
												</div>
											</td>
											<td style="padding-right: 5 px;">
												<div class="card m-t-5">
													<div class="body">
														<ul style="float: right;"
															class="pagination pagination-primary m-b-0">
															<li class="page-item"><a class="page-link"
																href='/board/register'>글 등록</a></li>
														</ul>
													</div>
												</div>
											</td>
										</tr>
									</thead>
								</table>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
<%@include file="../includes/footer.jsp"%>
