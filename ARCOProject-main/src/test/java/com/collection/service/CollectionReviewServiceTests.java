package com.collection.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.collection.domain.CollectionReviewVO;

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
	public void testRegister() {
		
		CollectionReviewVO vo = new CollectionReviewVO();
		vo.setSeq(241602);
		vo.setNickName("이거슨 발전되어버린 테스트");
		vo.setRevComment("빨리 테스트를 끝내고 진도좀 나가쟈..");
		vo.setRevStar(3);
		service.register(vo);
		
	}
	
	@Test
	public void testGetList() {
		service.getList().forEach(reviews -> log.info(reviews));
	}
	
	@Test
	public void testDelete() {
		log.info("remove result : " + service.remove(129));
	}
}
