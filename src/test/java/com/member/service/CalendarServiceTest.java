package com.member.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.member.vo.CalendarVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class CalendarServiceTest {
	
	@Autowired
	private CalendarService service;
	
	@Test
	public void testUpdate() {
		
		CalendarVO calendar = (CalendarVO) service.calendarList("sanho");
		
		if(calendar == null) {
			return;
		}
		
		calendar.setColor("black");
		log.info("MODIFY RESULT : " + service.colorUpdate(calendar));
	}
}
