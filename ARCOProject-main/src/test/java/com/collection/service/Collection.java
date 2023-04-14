package com.collection.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.collection.domain.CollectionReviewVO;
import com.collection.mapper.CollectionReviewMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class Collection {
	
//	@Autowired
//	private CollectionService service;
	@Autowired
	private CollectionReviewMapper mapper;
	
//	@Test
//	public void testExist() {
//		log.info(log);
//		assertNotNull(service);
//	}
	
//	@Test
//	public void testRegister() {
//		log.info(log);
//		CollectionVO collection = new CollectionVO();
//		collection.setSeq(1234);
//		collection.setTitle("테스트");
//		collection.setStartDate("2023/04/05");
//		collection.setEndDate("2023/04/05");
//		collection.setPlace("테스트");
//		collection.setRealmName("테스트");
//		collection.setThumbnail("테스트");
//		collection.setGpsX(20230405.0405);
//		collection.setGpsY(20230405.0405);
//		
//		service.insert(collection);
//
//	}
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}
	
	
	@Test
	public void testCreate() {
		CollectionReviewVO vo = new CollectionReviewVO();
		vo.setSeq(207375);
		vo.setNickName("테스트래요");
		vo.setRevComment("테스트인데 잘 모르겠다.");
		vo.setRevStar(3);
		
		mapper.insert(vo);
		
	}
	
//	@Test
//	public void testRead() {
//		long seq = 207375;
//		CollectionReviewVO vo = mapper.read(seq);
//		log.info(vo);
//		
//	}
//	
//	@Test
//	public void updateTest() {
//		long seq = 207375;
//		CollectionReviewVO vo = mapper.read(seq);
//		
//		vo.setRevComment("2차 테스트 입니다.");
//		vo.setRevStar(4);
//		int count = mapper.update(vo);
//		
//		log.info("update count : " + count);
//		
//	}
	
	
	
}
