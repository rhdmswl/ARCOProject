<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<style type="text/css">
	
.footerGroup {
	border-top: 1px solid #ccc;
	width: 100%;
	height: 200px;
	margin-left: 0;
	margin-right: 0;
}

.footerBox {
	width: 830px;
	height: 200px;
	width: 100%;
}

.footerlogo {
	width: 150px;
	height: 300px;
	float: left;
	position: relative;
	left: 20%;
	top: 50px;
}

.arcoLogo {
	height: 60px;
}

.logoLink {
	position: relative;
	top: 20px;
}

.introduce {
	height: 20px;
	font-family: 'Noto Sans KR', sans-serif;
	color: #969696;
	font-size: 14px;
}

.footerText {
	width: 600px;
	float: right;
	height: 200px;
	position: relative;
	right: 20%;
}

.memberList {
	width: 580px;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 14px;
	color: #969696;
	position: absolute;
	top: 70px;
	margin-left: 20px;
}

.linkIcon {
	width: 100%;
	position: absolute;
	top: 140px;
	padding-left: 20px;
	margin-top: 5px;
}

.linkIcon a {
	float: left;
} 

</style>

</head>
<body>

	<div class= "footerGroup">
			<div class="footerBox">
				<!-- Logo Area Start -->
				<div class="footerlogo">
					<div class="logo_area text-center">
						<a class="logoLink" href="/"><img class="arcoLogo" 
							src="https://i.imgur.com/evlOrzY.png"></a>
						<div class="introduce">Art Connection</div>
					</div>
				</div>
				<!-- Copywrite Text -->
				<div class="copy_right_text footerText">
					<p class="memberList">
						Team Member: 고은지, 김민회, 김산호, 김용현, 박정현, 전지수 | 
						Inquiry: Github or Notion | 
						<br/>It's a MultiCampus final project, and all right reserved our team.
						<br/>If you have any questions, please feel free to contact us.
					</p>
					<div class="linkIcon">
						<a href="https://github.com/rhdmswl/ARCOProject.git " target="_blank">
							<img src="https://i.imgur.com/3YPRZtJ.png" width="25px"></a>
						<a href="https://butternut-saturday-78b.notion.site/2-cf3fb9406b27433189c14aba503970c5" target="_blank">
							<img src="https://i.imgur.com/Fd6YQVm.png" width="25px"></a>
					</div>
				</div>
			</div>
	</div>
</body>
</html>