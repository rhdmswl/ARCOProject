package com.member.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.member.vo.CalendarVO;

@Repository
public class CalendarDAOImpl implements CalendarDAO {
	
	@Inject
	SqlSession sql;
	
	@Override
	public List<CalendarVO> calendarList() {
		
		return sql.selectList("memberMapper.calendarList");
	}

}
