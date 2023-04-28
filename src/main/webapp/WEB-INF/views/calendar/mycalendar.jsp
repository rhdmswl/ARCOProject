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

.modal {
	display: none;
	position: fixed;
	z-index: 300;
	left: 0;
	top: 0;
	width: 120%;
	height: 150%;
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
	height: 200px;
	box-shadow: 5px 10px 10px 1px rgba(0, 0, 0, .3);
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
}

.modal-footer {
	font-family: 'AppleSDGothicNeo', 'Noto Sans KR', sans-serif;
	cursor: pointer;
	height: 50px;
	position: relative;
	bottom: 15px;
}

</style>

</head>
<body>
	
	<div id="calendarBox">
		<div id='calendar'></div>
	</div>

	<div id="calendarModal" class="modal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header" style="text-align: center; line-height: 1.5;">
				<span class="modaltext" style="font-size: 13pt;">컬러 변경 &#128171;</span>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label for="color-picker">Color:</label>
					<datalist id="colorlist">
						<option value="#db4430" data-color="#db4430">#db4430</option>
						<option value="#32a852" data-color="#32a852">#32a852</option>
						<option value="#3630db" data-color="#3630db">#3630db</option>
						<option value="#9730db" data-color="#9730db">#9730db</option>
						<option value="#eb318e" data-color="#eb318e">#eb318e</option>
					</datalist>
					<input type="color" list="colorlist" id="event-color" />
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" value="${calendar.color}"
					id="save_modal">수정 완료</button>
				<button type="button" class="btn btn-default" id="close_modal">Close</button>
			</div>
		</div>
	</div>
	<!-- End Modal -->
	
	<!-- <script type="text/javascript" src="/resources/js/calendar.js"></script> -->
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.6/index.global.min.js'></script>
    <script>
    	
		   
	   $(document).ready(function(){
			
		   var selectedEvent = null;
		   var defaultColors = ["#db4430", "#32a852", "#3630db", "#9730db", "#eb318e"];
		   var eventColors = JSON.parse(localStorage.getItem('myEventColors')) || {};
		   
		   var modal = $(".modal");
		   var modalInputColor = modal.find("input[name='event-color']");
		   var save_modal = $("#save_modal");
		   var userId="${member.userId}";
		   
		   console.log("calendar color module --------------");
		   
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
			    		height: '600px',
			    		expandRows: true,
			    		
			    		headerToolbar: {
			    			left: 'title',
			    			center: '',
			    			right: 'prev,next today'
			    		},
			    		initialView: 'dayGridMonth',	//초기 캘린더 화면
			    		navLinks: false,				//날짜 선택하면 day나 week 캘린더로 링크
			    		editable: true,				//수정 가능
			    		selectable: true,				//달력 일자 드래그 설정
			    		dayMaxEvents: true,				//이벤트가 오버되면 높이 제한
			    		eventLimit: true,				//이벤트가 많아지면 more 링크
			    		locale: 'ko', 					//한국어 설정
						events: data,
						eventClick: function calendarService(info) {
							selectedEvent = info.event;
							
							console.log(event.id);
							
							var modal = $("#calendarModal");
							modal.show();
							
							// 모달창에 event의 현재 컬러 보여줌
							var currentColor = selectedEvent.backgroundColor;
							$("#event-color").val(currentColor);
							
							// 컬러 변경
		                    $('#event-color').change(function () {
		                        var color = $(this).val();
		                        selectedEvent.setProp('backgroundColor', color);
		                        eventColors[selectedEvent.id] = color;
		                        
		                        /* switch (selectedEvent.id) {
		                        	events : {color : '#db4430'}
		                        } */
		                    });
		                    
		                    $("#save_modal").click(function() {
				    	        
		                    	var color = {user_id:modal.data("user_id"), color:modalInputColor.val()};
		                    	
		                    	console.log("calendar color module --------------");

		                    	var colorService = (function() {
		                    	  function colorUpdate(color, callback, error) {
		                    	    console.log("color update-------------");
		                    	    $.ajax({
		                    	      type: 'POST',
		                    	      url: '/calendar/update',
		                    	      data: JSON.stringify(color),
		                    	      contentType: "application/json; charset=utf-8",
		                    	      success: function(result, status, xhr) {
		                    	        if (callback) {
		                    	          callback(result);
		                    	        }
		                    	      },
		                    	      error: function(xhr, status, error) {
		                    	        if (error) {
		                    	          error(error);
		                    	        }
		                    	      }
		                    	    });
		                    	  }

		                    	  return {
		                    	    colorUpdate : colorUpdate
		                    	  };
		                    	})();
		                    	
		                    	colorService.colorUpdate(color, function(result){
		                    		
		                    		alert(result);
		                    		
		                    	});
		                    	
				    	    });
				
				    	    // modal close button
				    	    $("#close_modal").click(function() {
				    	        $('#calendarModal').hide();
				    	    });
						},
						
				        eventBackgroundColor: function(info) {
				        	return eventColors[info.event.id] || info.event.backgroundColor || defaultColors[info.event._def.sourceId % defaultColors.length];
				        }
					        
		    		});
						
	    			calendar.render();
	    				
	    			});
	    		});
	    });

    </script>
    
</body>
</html>