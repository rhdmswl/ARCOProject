package com.collection.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;

import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class CollectionServiceTests {
	
	@Autowired
	private CollectionReviewService service;
		
	@Test
	public void testGetList() {
		service.getList().forEach(reviews -> log.info(reviews));
	}
}
