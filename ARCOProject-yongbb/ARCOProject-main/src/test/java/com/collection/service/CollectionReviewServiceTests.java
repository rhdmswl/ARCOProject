package com.collection.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.collection.domain.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class CollectionReviewServiceTests {
	
	@Autowired
	CollectionReviewService service;
	
	@Test
	public void testGetList() {
		service.getList(new Criteria(), 207375).forEach(reviews -> log.info(reviews));
	}
	
	@Test
	public void testDelete() {
		log.info("remove result : " + service.remove(140));
	}
}
