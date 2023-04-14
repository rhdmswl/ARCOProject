package com.collection.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.collection.domain.CollectionReviewVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class ReviewMapperTests {
	
	@Autowired
	private CollectionReviewMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(reviews -> log.info(reviews));
	}
	
	@Test
	public void testInsert() {
		
		CollectionReviewVO vo = new CollectionReviewVO();
		vo.setSeq(241602);
		vo.setNickName("테스트");
		vo.setRevComment("테스트용입니다.");
		vo.setRevStar(5);
		
		mapper.insert(vo);
		
	}
	
	@Test
	public void readTest() {
		List<CollectionReviewVO> review = mapper.read(241602L);
		
		review.forEach(reviews -> log.info(reviews));
		
		log.info(review);
		
	}
}
