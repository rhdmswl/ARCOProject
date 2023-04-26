package com.member.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.dao.CalendarDAO;
import com.member.vo.CalendarVO;

public interface CalendarService {
	
	public List<CalendarVO> calendarList();
	
}
