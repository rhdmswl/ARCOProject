package com.collection.mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;

import com.collection.domain.CollectionReviewVO;

import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class CollectionReviewMapperTests {
	
	@Autowired
	private CollectionReviewMapper mapper;
	
	@Test
	public void testGetList() {
//		try {
		mapper.getList().forEach(reviews -> log.info(reviews));
//		}catch(NullPointerException e) {
//			e.printStackTrace();
//		}
	}
	
	@Test
	public void testInsert() {
		CollectionReviewVO vo = new CollectionReviewVO();
		vo.setSeq(207375);
		vo.setUserIdx(1);
		vo.setNickName("제발좀 되어랍");
		vo.setRevComment("맛간 스프링을 위하여.");
		vo.setRevStar(5);
		
		mapper.insert(vo);
	}
	
	
}
