<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<!-- Material Dashboard CSS -->
	<link rel="stylesheet"
		href="https://demos.creative-tim.com/material-dashboard/assets/css/material-dashboard.min.css?v=2.1.2">
	
	<!-- Google Fonts -->
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	
	
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<!-- Favicon -->
	<link rel="icon" href="/img/core-img/favicon.ico">
	
	<!-- Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap"
		rel="stylesheet">
	<link rel="stylesheet"
		href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
	
    <title>개인정보처리방침</title>
    <!-- 제공해주신 스타일 및 스크립트 추가 생략 -->

    <style type="text/css">
    	.center {
		  display: flex;
		  flex-direction: column;
		  align-items: center;
		}

		.center-align {
		    display: flex;
		    align-items: center;
		    flex-direction: column;
		}
		
        .policy-container {
            width: 100%;
            height: 300px;
            border: 1px solid #ccc;
            overflow-y: scroll;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 14px;
            line-height: 1.5;
        }
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
		
		.card {
			font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
			position: relative;
			width: 500px;
			position: relative;
			right: 45px;
			margin-bottom: 70px;
		}
		
		.card-title {
			font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
			font-size: 30px;
			font-weight: 700;
			color: #696969;
			width: 100%;
			text-align: center;
		}
		
		.form-control::placeholder {
			font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
		}
		
		.form-control {
			font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
			width: 60%;
			height: 50px;
			box-sizing: border-box;
			margin-left: 5px;
			padding: 5px 0 5px 10px;
			border-radius: 4px;
			border: 1px solid #d9d6d6;
			color: #383838;
			background-color: #ffffff;
		}
		
		.btn-secondary {
			width: 100px;
			font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
			font-size: 15px;
			box-shadow: none;
			height: 40px;
			line-height: 20px;
			padding: 0;
		}
		
		.btn-secondary:hover {
			box-shadow: 1px 4px 3px 1px #dadce0;
		}
		
		.btn-secondary:before {
			position: absolute;
			/* content: ''; */
			display: inline-block;
			top: -180px;
			left: 0px;
			width: 30px;
			height: 100%;
			background-color: #fff;
		}
		
		.btn-secondary:active {
			box-shadow: 4px 4px 6px 0 rgba(255, 255, 255, .3), -4px -4px 6px 0
				rgba(116, 125, 136, .2), inset -4px -4px 6px 0 rgba(242, 19, 120),
				inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
		}
		
		.btn-primary {
			font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
			box-shadow: none;
			width: 100px;
			height: 40px;
			line-height: 20px;
			font-size: 15px;
			padding: 0;
		}
		
		.btn-primary:hover {
			box-shadow: 1px 4px 3px 1px #dadce0;
		}
		
		.btn-sm {
			magin-bottom: 0px;
			position: relative;
			top: 5px;
		}
		
		.btnGroup {
			position: relative;
			left: 150px;
		}
		
		.input-group {
			height: 40px;
			font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
			border: 0;
			outline: none;
			margin-bottom: 15px;
		}
		
		.btn-primary.btn-sm {
			margin-top: 10px;
			margin-left: 20px;
		}
		
		.form-control, .box {
			display: inline-block;
			vertical-align: middle;
		}
		
		.control-label, label {
			font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
			color: black;
			font-weight: 500;
			font-size: 16px;
		}
		
		.emailSelectBtn {
			margin-left: 300px;
			bottom:45px;
		}
		
		.submitBtnGroup {
			margin-top: 50px;
		}
    </style>
</head>

<body>
    <div class="center">
  		<div class="logo_area text-center">
			<a href="/" class="yummy-logo"><img
				src="https://i.imgur.com/evlOrzY.png" width="400"></a>
		</div>
        <h1 class="card-title">개인정보처리방침</h1>
        <br>
        <div class="card policy-container center-align">
            <!-- 개인정보 처리방침 내용-->
            <p>&lt;ARCO&gt;는 회원이 아르코 서비스(이하 “서비스”)에 저장한 개인정보의 보호를 중요하게 생각하고, 회원의 개인정보를 보호하기 위하여 항상 최선을 다해 노력하고 있습니다.</p>
			<p>본 개인정보처리방침은 2023년 5월 9일부터 효력을 가지며, 서비스가 수집하는 회원의 정보와 그 정보 수집 이유, 용도 및 회원의 콘텐츠를 처리하는 방법에 대한 설명입니다.</p>
			<p>1. 개인정보의 처리목적</p>
			<p>&lt;ARCO&gt;는 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 경우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.</p>
			<p>① 회원 가입 의사를 확인하고 계정을 생성하기 위하여 사용합니다.</p>
			<p>② 회원으로 가입한 이용자를 식별하고 불량회원의 부정 이용과 비인가 이용을 방지하기 위하여 사용합니다.</p>
			<p>③ 서비스 내에서 회원 정보를 표시할 필요가 있는 경우(예: 홈 화면 속 안내 문구에 활용 등)에는 프로필 정보(예: 이메일 등)를 표시할 수 있습니다.</p>
			<p>④ 서비스 이용 과정에서 회원의 문의사항이나 불만을 처리하고 공지사항 등을 전달하기 위해 사용합니다.</p>
			<p>⑤ 신규 서비스 제공, 콘텐츠 제공, 맞춤 서비스 제공을 목적으로 사용합니다.</p>
			<p>⑥ 이벤트 및 광고성 정보 제공 및 참여기회 제공 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 , 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 사용합니다.</p>
			<p>2. 개인정보의 처리 및 보유 기간</p>
			<p>&lt;ARCO&gt;는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유합니다.</p>
			<p>각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.</p>
			<p>① 회원 가입 및 관리 : 회원 탈퇴 후 1년</p>
			<p>- 다만, 다음의 사유에 해당하는 경우에는 해당 사유 종료 시까지</p>
			    
			<p>    1) 관계 법령 위반에 따른 수사·조사 등이 진행 중인 경우에는 해당 수사·조사 종료 시까지</p>
			    
			<p>    2) 서비스 이용에 따른 채권·채무관계 잔존 시에는 해당 채권·채무관계 정산 시까지</p>
			    
			
			<p>② 로그 기록 : 생성일로부터 1년</p>
			
			<p>③ 광고/이벤트 관련 요청 응대 및 처리자료 : 생성일로부터 1년</p>
			
			<p>④ 사용자 불만 또는 분쟁처리에 관한 기록 : 생성일로부터 1년</p>
			
			<p>3. 처리하는 개인정보의 항목</p>
			
			<p>&lt;ARCO&gt;는 다음의 개인정보 항목을 처리하고 있습니다.</p>
			
			<p>① 회원이 제공하는 정보</p>
			
			<p>- [필수] 이메일, 닉네임, 전화번호</p>
			
			<p>② 회원이 서비스를 사용할 때 수집하는 정보</p>
			
			<p>- 회원의 단말기(모바일, 컴퓨터) 정보, OS 종류 및 버전, 서비스 이용 기록, 국가, 언어, 프로그램 설치와 주요 기능 실행 등 사용량에 대한 기본 정보를 수집합니다.</p>
			
			<p>③ 서비스 이용 기록, 쿠키, 국가, 언어, 프로그램 설치와 주요 기능 실행 등 사용량에 대한 기본 정보를 수집합니다. 그 외에도 회원이 유료 서비스를 이용하는 과정에서 결제 등을 위하여 불가피하게 필요한 때에는 신용카드 정보 및 대금 청구 주소 등과 같이 결제에 필요한 거래 정보가 수집될 수 있습니다.</p>
			
			<p>④ 서비스에 대한 트래픽과 사용 동향을 측정하는데 도움을 얻기 위해 제3자 분석 툴을 사용합니다. 이러한 분석 툴은 귀하가 방문하는 웹 페이지와 서비스의 섹션, 조회하는 게시글, 사용자들이 클릭한 링크 및 민감하지 않은 문구와 마우스 움직임, 댓글을 비롯한 접속 지역, 서비스 체류 시간 등 &lt;ARCO&gt;의 서비스 개선에 도움이 되는 정보를 수집합니다. 이 분석 정보는 모든 사용자들의 정보가 함께 수집되어 사용되기 때문에 특정한 사용자를 식별하는 데에는 사용될 수 없습니다.</p>
			<p>4. 개인정보의 제3자 제공</p>
			<p>&lt;ARCO&gt;는 정보주체의 개인정보를 개인정보의 처리 목적에서 명시한 범위 내에서만 처리하며, 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다.</p>
			<p>다만, 아래의 경우에는 예외로 합니다.</p>
			<p>① 회원이 사전에 동의한 경우</p>
			<p>- 이러한 경우에도, &lt;ARCO&gt;는 이용자에게 개인정보를 받는 자, 그의 이용목적, 제공되는 개인정보의 항목, 개인정보의 보유 및 이용 기간을 사전에 고지하고 이에 대해 명시적•개별적으로 동의를 얻습니다.</p>
			<p>② 관련 법령에 특별한 규정이 있는 경우</p>
			<p>5. 개인정보의 국외 이전</p>
			<p>본 서비스는 개인정보의 안전한 보관을 위해 아래와 같이 개인정보를 보관하고 있으며, 개인정보 보관 사업자는 본 서비스의 개인정보에 접근할 수 없습니다. 또한 보관된 개인정보는 ‘2. 개인정보의 처리 및 보유 기간’, ‘6. 개인정보의 파기 절차 및 방법에 따라 관리 및 삭제 됩니다.</p>
			<p>① 보관되는 개인정보 항목: 이메일, 기기 모델명, 이름</p>
			<p>② 개인정보 보관 국가: 미국</p>
			<p>③ 개인정보 보관 법인명 및 연락처: Google Inc. / support.google.com</p>
			<p>6. 개인정보의 파기 절차 및 방법</p>
			<p>&lt;ARCO&gt;는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.</p>
			<p>정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.</p>
			
			<p>개인정보 파기의 절차 및 방법은 다음과 같습니다.</p>
			
			<p>① 파기절차</p>
			
			<p>- &lt;ARCO&gt;는 파기 사유가 발생한 개인정보를 선정하고, &lt;ARCO&gt;의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.</p>
			
			<p>② 파기방법</p>
			
			<p>- &lt;ARCO&gt;는 전자적 파일 형태로 기록·저장된 개인정보는 기록을 재생할 수 없도록 파기하며, 종이 문서에 기록·저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.</p>
			
			<p>7. 정보주체와 법정대리인의 권리·의무 및 그 행사방법</p>
			
			<p>① 정보주체는 &lt;ARCO&gt;에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.</p>
			
			<p>② 제①항에 따른 권리 행사는 &lt;ARCO&gt;에 대해 「개인정보 보호법」 시행령 제41조제1항에 따라 서면, 전자우편 등을 통하여 하실 수 있으며 &lt;ARCO&gt;는 이에 대해 지체 없이 조치하겠습니다.</p>
			
			<p>③ 제①항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 “개인정보 처리 방법에 관한 고시(제2020-7호)” 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.</p>
			<p>④ 개인정보 열람 및 처리정지 요구는 「개인정보 보호법」 제35조 제4항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.</p>
			<p>⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.</p>
			<p>⑥ &lt;ARCO&gt;는 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.</p>
			
			<p>8. 개인정보의 안전성 확보조치</p>
			
			<p>&lt;ARCO&gt;는 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.</p>
			
			<p>① 개인정보에 대한 접근 제한</p>
			
			<p>- 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근 통제에 필요한 조치를 하고 있으며, 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
			
			<p>② 비인가자에 대한 출입 통제개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
			
			<p>9. 행태정보의 수집·이용 및 거부 등에 관한 사항</p>
			
			<p>&lt;ARCO&gt;는 다음과 같은 행태정보를 수집합니다</p>
			
			<p>- 앱 서비스 방문이력, 검색이력, 작성이력, 수정이력, 삭제이력</p>
			
			<p>&lt;ARCO&gt;는 최소한의 행태정보만을 수집하며, 사상, 신념, 가족 및 친인척관계, 학력·병력, 기타 사회활동 경력 등 개인의 권리·이익이나 사생활을 뚜렷하게 침해할 우려가 있는 민감한 행태정보를 수집하지 않습니다.</p>
			
			<p>10. 개인정보 보호책임자</p>
			
			<p>&lt;ARCO&gt;는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다. </p>
			
			<p>▶ 개인정보 보호책임자 </p>
			
			<p>- 성명: 박정현</p>
			<p>- 직책: Developer</p>
			<p>- 연락처: arcodevteam@gmail.com</p>
			
			<p>※ 개인정보 보호 담당부서로 연결됩니다. </p>
			
			<p>정보주체는 &lt;ARCO&gt;의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. &lt;ARCO&gt;는 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.</p>
			<p>11. 권익침해 구제방법</p>
			
			<p>정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.</p>
			
			<p>① 개인정보분쟁조정위원회 : (국번없이) 1833-6972 (www.kopico.go.kr)</p>
			
			<p>② 개인정보침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)</p>
			
			<p>③ 대검찰청 : (국번없이) 1301 (www.spo.go.kr)</p>
			
			<p>④ 경찰청 : (국번없이) 182 (ecrm.cyber.go.kr)</p>
			
			<p>「개인정보보호법」제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의 처리정지 등)의 규정에 의한 요구에 대 하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익의 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.</p>
			
			<p>※ 행정심판에 대해 자세한 사항은 중앙행정심판위원회(www.simpan.go.kr) 홈페이지를 참고하시기 바랍니다.</p>
			
			<p>12. 개인정보 처리방침의 변경</p>
			
			<p>① 이 개인정보처리방침은 2023년 5월 9일부터 적용됩니다.</p>
			
			<p>② 개인정보 처리방침을 변경하는 경우에는 변경 및 시행의 시기, 변경된 내용을 지속적으로 공개하며, 변경된 내용은 이용자가 쉽게 확인할 수 있도록 변경 전·후를 비교하여 공개합니다.</p>
			
			<p>부칙</p>
			
			<p>이 약관은 2023년 4월 26일에 업데이트 되었습니다.</p>
			
			<p>본 약관은 언제든지 회사에 의해 수정, 삭제, 추가될 수 있으므로 회원의 정기적 검토를 요합니다. 내용 추가, 삭제 및 수정 시 개정 최소 7일 전 공지사항을 통해 사전 공지됩니다. 개인정보 처리방침 수정 후 서비스를 계속 이용하는 경우 해당 수정에 동의한 것으로 간주됩니다.</p>
        </div>

        <div class="checkbox-container">
	            <input type="checkbox" id="agree" name="agree" required>
	            <label for="agree">개인정보처리방침에 동의합니다.</label>
        </div>

        <form action="/member/register" method="get">
		    <input type="submit" value="회원가입" id="register" class="btn btn-primary" disabled>
		</form>
    </div>

    <script>
        document.getElementById('agree').addEventListener('change', function() {
            document.getElementById('register').disabled = !this.checked;
        });
    </script>
</body>
</html>