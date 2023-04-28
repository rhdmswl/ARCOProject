package com.member.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.member.vo.CalendarVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CalendarDAOTest {
	
	@Autowired
	private CalendarDAO dao;
	
	@Test
	public void testUpdate() {
		
		CalendarVO vo = new CalendarVO();
		vo.setUser_id("sanho");
		vo.setColor("black");
		
		int count = dao.colorUpdate(vo);
		log.info("UPDATE COUNT : " + count);
	}
}
