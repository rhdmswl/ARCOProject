<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ABOUT</title>

<jsp:include page="/WEB-INF/views/includes/header.jsp" />

<!-- Favicon -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="/css/responsive/responsive.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
<link rel="stylesheet" href="https://use.typekit.net/btn1paf.css">

<script type="module" src="https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/fontstream/djs/?sid=gAAAAABkUM0joCzWxll1hGQCnqS-UzyKCsRs7VZwoooyh8Xc86CYy8VbVk-jcT7wvuUczK72O4v-4x_eKOWn4MWZaTqVj7Psme9SD7oBytfm_o3EKMjvTHiLmu8KnPeh4LkoPZek4yvC94NClAww4_RqxtsbgXmTX5a8K1zLJ1oLGb9VDELP0qgFyDHEBLO-X1S2zL5y638-o0d23m6plgq-DP-ituxPKiZk428Wfx2y9B5hmPrxO-NIoXuRgLbwdKR2qa-Dg2cn" charset="utf-8"></script>

<style type="text/css">

body {
	margin-top:20px;
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

.text {
	margin-bottom: 0;
	position: relative;
	left: 100px;
	width: 90%;
	height: 650px;
}

.startContent {
	font-family: 'GmarketSansMedium';
	font-size: 30px;
	font-weight: 700;
	margin-left: 60px;
	margin-right: 50px;
	margin-top: 0;
	height: 580px;
	width: 41%;
	float: left;
}

.intro {
	margin-top: 140px;
	margin-right: 0;
	height: 550px;
	width: 90%;
	color: black;
	position: relative;
	left: 20px;
}

.secondImg {
	float: left;
	margin-top: 10px;
	margin-left: 150px;
	width: 35%;
}

.teamMember {
	height: 900px;
	width: 50%;
	float: left;
	padding-left: 120px;
	font-family: 'GmarketSansMedium';
	position: relative;
	right: 10px;
}

.memberList {
	font-family: 'GmarketSansMedium';
	font-weight: 700;
	font-size: 30px;
	color: black;
}

.goeunji, .kimyonghyun, .kimminhoe, .kimsanho, .parkjunghyun, .jeonjisoo {
	font-weight: 700;
	font-size: 18px;
	margin-top: 20px;
}

.memCont {
	margin-bottom: 3px;
}

</style>

</head>

<body>

<div class="allGroup">
	<div class="start">
		<div class="startGroup text-center">
			<div class="firstImg">
				<img src="https://i.imgur.com/RXjjh6S.jpg" width="100%">
			</div>
		</div>
		<div class="text">
			<div class="startContent">
				Introduce of ARCO Project :
			</div>
			<div class="intro" style="font-family: 'GmarketSansMedium'; font-weight: 500; font-style:normal; color:black; font-size: 16px;">
				6명의 팀원으로 결성된 저희 팀은 "Art Connection"을 현실화하기 위해
				모두가 어우러질 수 있는 ARCO라는 공간을 만들었습니다.
				<br/>
				최근 COVID-19 팬데믹 사태가 점차 진정되면서 잠들어 있던 전시 업계도 깨어나
				전시회를 참관하는 사람들도 다시 늘어나고 있습니다.
				저희는 전시와 관련된 정보를 한 곳에서 모아 볼 수 있는 곳이 필요하다고 생각했고,
				이러한 고민에서부터 ARCO 프로젝트가 탄생했습니다.<br/>
				<br/>
				저희가 이 프로젝트를 진행할 때 가장 중요시했던 것은<br/>
				첫째, 방문해주신 분들의 입장에서 생각할 것<br/>
				둘째, 질적으로 좋은 정보를 제공할 것<br/>
				셋째, 편하게 서비스를 이용할 수 있도록 하는 것이었습니다.<br/>
				<br/>
				세 가지 포인트를 실현시키기 위해 저희가 선택한 방법은
				전시 정보와 더불어 주변 주차장, 음식점, 카페와 같은 편의 시설을
				함께 찾아볼 수 있도록 하여 검색의 편의성을 향상시키고,
				전시 정보나 리뷰, 개인적인 이야기 등을 공유할 수 있는 커뮤니티를 개설하여
				소통과 공유의 장을 만드는 것이었습니다.
				<br/>
				저희가 제공해드리고자 했던 것들이 여러분들에게 잘 전달되었길 바라며<br/>
				부디 ARCO라는 공간이 작게나마 도움이 되었으면 합니다.<br/>
				감사합니다.
			</div>	
		</div>
		<div class="secondText">
			<div class="secondImg">
					<img src="https://i.imgur.com/0C3uxZ2.jpg" width="550px">
			</div>
			<div class="teamMember">
				<p class="memberList">
					ARCO Team Project Member
				</p>
				<div class="mem-1">
					<div class="goeunji">고은지 (Team Leader)</div>
					<p class="memCont">전시 파트 구현</p>
					<a href="#"><img src="https://i.imgur.com/3YPRZtJ.png" width="25px"></a>
				</div>
				<div class="mem-2">
					<div class="kimyonghyun">김용현</div>
					<p class="memCont">전시 파트 구현</p>
					<a href="#"><img src="https://i.imgur.com/3YPRZtJ.png" width="25px"></a>
				</div>
				<div class="mem-3">
					<div class="kimminhoe">김민회</div>
					<p class="memCont">커뮤니티 파트 구현, 배포</p>
					<a href="#"><img src="https://i.imgur.com/3YPRZtJ.png" width="25px"></a>
				</div>
				<div class="mem-4">
					<div class="kimsanho">김산호</div>
					<p class="memCont">커뮤니티 파트 구현, 프론트엔드&UI</p>
					<a href="https://github.com/sanho00"><img src="https://i.imgur.com/3YPRZtJ.png" width="25px"></a>
				</div>
				<div class="mem-5">
					<div class="parkjunghyun">박정현</div>
					<p class="memCont">회원 파트 구현</p>
					<a href="https://github.com/junghyun-jacky"><img src="https://i.imgur.com/3YPRZtJ.png" width="25px"></a>
				</div>
				<div class="mem-6">
					<div class="jeonjisoo">전지수</div>
					<p class="memCont">회원 파트 구현</p>
					<a href="https://github.com/JEONJISU0913"><img src="https://i.imgur.com/3YPRZtJ.png" width="25px"></a>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>