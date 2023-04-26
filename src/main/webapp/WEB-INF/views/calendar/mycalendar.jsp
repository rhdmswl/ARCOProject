<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">

<!-- <link href='/resources/fullcalendar-6.1.6/lib/main.css' rel='stylesheet' /> -->

<style type="text/css">

body {

	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;

}

</style>

</head>
<body>

	<div id='calendar'></div>
	
	<!-- <script src='/resources/fullcalendar-6.1.6/lib/main.js'></script> -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.6/index.global.min.js'></script>
    <script>
	
    $(document).ready(function(){
    	
    	let obj = {
    		seq : $('#seq').val(),
    		user_id : $('#user_id').val(),
    		title : $('#title').val(),
    		start_date : $('#start_date').val(),
    		end_date : $('#end_date').val()
    	};
    	
	    document.addEventListener('DOMContentLoaded', function() {
	    	
	    	var calendarE1 = document.getElementById('calendar');
	    	
	    	var calendar = new FullCalendar.Calendar(calendarE1, {
	    		height: '600px',
	    		expandRows: true,
	    		
	    		headerToolbar: {
	    			left: '',
	    			center: 'title',
	    			right: 'prev,next today'
	    		},
	    		initialView: 'dayGridMonth',	//초기 캘린더 화면
	    		navLinks: false,				//날짜 선택하면 day나 week 캘린더로 링크
	    		editable: false,				//수정 가능
	    		selectable: true,				//달력 일자 드래그 설정
	    		dayMaxEvents: true,				//이벤트가 오버되면 높이 제한
	    		eventLimit: true,				//이벤트가 많아지면 more 링크
	    		locale: 'ko',					//한국어 설정
					events: function(info, successCallback, failureCallback) {
						$.ajax({
							url: '/calendar/list',
							type: 'GET',
							contentType: "application/json; charset=utf-8",
							data: JSON.stringify(obj),
							success: function(obj) {
								console.log(obj);
								successCallback(obj);
							}
						});
					},
	    	});
	    	calendar.render();
	    });
    });
    


    </script>
    
</body>
</html>