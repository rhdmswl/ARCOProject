package com.collection.service;

import static org.junit.Assert.assertNotNull;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class CollectionReviewServiceTests {
	@Autowired
	private CollectionReviewService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		CollectionReviewVO review = new CollectionReviewVO();
		review.setSeq(207375);
		review.setRevComment("테스트");
		review.setRevStar(3);
		
		service.register(review);
		
		log.info("생성된 한줄평 번호 : " + review.getRevSeq());
	}
	
//	@Test
//	public void testGetList() {
//		service.getList(new Criteria()).forEach(review -> log.info(review));
//	}
//	
	@Test
	public void testGet() {
		log.info(service.get(207375));
	}
	
	@Test
	public void testDelete() {
		log.info("remove result : " + service.remove(32L));
		
	}
	
	

}
