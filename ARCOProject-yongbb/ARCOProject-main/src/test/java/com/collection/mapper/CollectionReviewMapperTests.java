package com.collection.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;
import com.collection.mapper.CollectionReviewMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class CollectionReviewMapperTests {
	
	@Autowired
	private CollectionReviewMapper mapper;
	
	@Test
	public void testPaging() {
		
		Criteria cri = new Criteria(1,10);
		List<CollectionReviewVO> list = mapper.getListWithPaging(cri, 0);
		
		list.forEach(review -> log.info(list));
		
	}
	
	
}
