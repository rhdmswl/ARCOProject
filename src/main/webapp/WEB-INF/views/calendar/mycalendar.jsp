<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="java.util.List"%>
<%@page import="com.member.vo.CalendarVO"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">

<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@300;400;500;700;900&family=Open+Sans:wght@700;800&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">

<style type="text/css">

body {
	margin: 40px 10px;
	padding: 0;
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	font-size: 13px;
}

#calendar {
	margin-top: 50px;
	margin-bottom: 50px;
}

.fc .fc-toolbar-title {
    font-size: 1.75em;
    margin: 0;
    font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
    font-weight: 600;
    color: black;
}

/* 일요일 날짜 빨간색 */
.fc-day-sun a {
  color: #c43316;
  text-decoration: none;
}

/* 토요일 날짜 파란색 */
.fc-day-sat a {
  color: #1854b5;
  text-decoration: none;
}

.fc .fc-button-group {
    display: inline-flex;
    position: relative;
    vertical-align: middle;
    background-color: black;
    border-radius: 5px;
}


</style>

</head>
<body>
	
	<div id="calendarBox">
		<div id='calendar'></div>
	</div>

	<!-- End Modal -->
	
	<!-- <script type="text/javascript" src="/resources/js/calendar.js"></script> -->
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src='../fullcalendar-6.1.6/dist/index.global.js'></script>
    <script>
    	
		   
	   $(document).ready(function(){
		   
	    	$(function(){
	    		var request = $.ajax({
	    			url: "/calendar/list",
	    			method: "get",
	    			dataType: "json"
	    		});
	    		request.done(function(data){
	    			console.log(data);
	    			
	    			var calendarE1 = document.getElementById('calendar');
	    		
		    		var calendar = new FullCalendar.Calendar(calendarE1, {
			    		height: '800px',
			    		expandRows: true,
			    		
			    		headerToolbar: {
			    			left: 'title',
			    			center: '',
			    			right: 'prev,next today'
			    		},
			    		initialView: 'dayGridMonth',	//초기 캘린더 화면
			    		navLinks: false,				//날짜 선택하면 day나 week 캘린더로 링크
			    		editable: false,				//수정 가능
			    		selectable: true,				//달력 일자 드래그 설정
			    		dayMaxEvents: true,				//이벤트가 오버되면 높이 제한
			    		eventLimit: true,				//이벤트가 많아지면 more 링크
			    		locale: 'ko', 					//한국어 설정
						events: data,
						eventColor: '#242557'
						
		    		});
						
	    			calendar.render();
	    				
	    			});
	    		});
	    });

    </script>
    
</body>
</html>