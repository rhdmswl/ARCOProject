package com.member.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.dao.CalendarDAO;
import com.member.vo.CalendarVO;

@Service
public class CalendarServiceImpl implements CalendarService {
	
	@Autowired
	public CalendarDAO dao;
	
	@Override
	public List<CalendarVO> calendarList() {
		
		return dao.calendarList();
	}

}
