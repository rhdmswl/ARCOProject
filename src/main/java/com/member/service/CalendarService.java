package com.member.service;

import java.util.List;

import com.member.vo.CalendarVO;

public interface CalendarService {
	
	public List<CalendarVO> calendarList(String userId);
	
	public int colorUpdate(CalendarVO calendar);
	
}
