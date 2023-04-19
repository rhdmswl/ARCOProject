package com.collection.mapper;

import java.util.List;
import java.util.stream.IntStream;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;

import lombok.extern.log4j.Log4j;

@Component
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/spring-security.xml", "file:src/main/webapp/WEB-INF/spring/root-context.xml"})
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class CollectionReviewMapperTests {
	@Autowired
	BCryptPasswordEncoder pwdEncoder;
	
	
	@Autowired
	private CollectionReviewMapper mapper;
	
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		List<CollectionReviewVO> reviews = mapper.getListWithPaging(cri, 207375L);
		reviews.forEach(review -> log.info(review));
	}
	
	@Test
	public void testCreate() {
		IntStream.rangeClosed(1, 10).forEach(i -> {
			CollectionReviewVO vo = new CollectionReviewVO();
			
			vo.setSeq(207375);
			vo.setRevComment("민회님 테스트 "+ i);
			vo.setNickName("민회님"+i);
			
			mapper.insert(vo);
			
		});
	}
	
	
	@Test
	public void testRead() {
		Long targetrevSeq = 1L;
		
		CollectionReviewVO vo = mapper.read(targetrevSeq);
		
		log.info(vo);
	}
	
	@Test
	public void testDelete() {
		Long targetrevSeq = 1L;
		mapper.delete(targetrevSeq);
	}
	
	@Test
	public void testUpdate() {
		Long targetrevSeq=10L;
		CollectionReviewVO vo = mapper.read(targetrevSeq);
		vo.setRevComment("수정테스트 중 ");
		vo.setRevStar(5);
		int count = mapper.update(vo);
		log.info("UPDATE COUNT: " + count);
	}
	
	
	
	
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(review -> log.info(review));
	}
	
	@Test
	public void testInsert() {
		CollectionReviewVO review = new CollectionReviewVO();
		review.setSeq(207375);
		review.setRevComment("한줄평 테스트");
		review.setNickName("user");
		review.setRevStar(3);
		
		
		mapper.insert(review);
		
		log.info(review);
	
		
	}
	
//
//	@Test
//	public void testRead() {
//		CollectionReviewVO review = mapper.read(207375L);
//				
//		log.info(review);
//		
//	}
	
	@Test
	public void readTest() {
		CollectionReviewVO vo = new CollectionReviewVO();
		
		vo.setSeq(207375L);
		vo.getRevSeq();
	
				
		log.info(vo);
		
	}
	
	
	@Test
	public void deletTest() {
		log.info("DELETE COUNT : " + mapper.delete(1L));
	}
	
	@Test
	public void updateTest() {
		CollectionReviewVO review = new CollectionReviewVO();
		review.setRevSeq(145L);
		review.setRevStar(5);
		review.setRevComment("너무 재밌넹??");
		
		int count = mapper.update(review);
		log.info("UPDATE COUNT:" + count);
	}
//	
//	@Test
//	public void testPaging() {
//		Criteria cri= new Criteria();
//		List<CollectionReviewVO> list = mapper.getListWithPaging(cri);
//		list.forEach(review -> log.info(review));
//	}
//	
//	@Test
//	public void testSearch() {
//		Criteria cri = new Criteria();
//		cri.setKeyword("테스트");
//		cri.setType("T");
//		
//		List<CollectionReviewVO> list = mapper.getListWithPaging(cri);
//		
//		list.forEach(review -> log.info(review));
//	}
//	

	@Test
	public void testList2() {
		Criteria cri = new Criteria(1,10);
		List<CollectionReviewVO> reviews = mapper.getListWithPaging(cri, 207375L);
		reviews.forEach(review -> log.info(review));
	}

}
