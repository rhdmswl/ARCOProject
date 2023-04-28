package com.member.dao;

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
	public List<CalendarVO> calendarList(String userId) {
		
		return sql.selectList("memberMapper.calendarList", userId);
		
	}

	@Override
	public int colorUpdate(CalendarVO calendar) {
		
		return sql.update("memberMapper.colorUpdate", calendar);
	}

}
