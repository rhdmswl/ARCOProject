package com.collection.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;

import lombok.extern.log4j.Log4j;


@Component
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/spring-security.xml", "file:src/main/webapp/WEB-INF/spring/root-context.xml"})
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class CollectionMapperTests {

	@Autowired
	private CollectionMapper Mapper;
	
	@Test
	public void testSearch() {
		Criteria cri = new Criteria();
		cri.setKeyword("또라이");
		cri.setType("T");
		
		List<CollectionVO> list = Mapper.getListWithPaging(cri);
		
		list.forEach(review -> log.info(review));
	}
	
	@Test
	public void testGetIndexList() {
		
		Mapper.getIndexList().forEach(board -> log.info(board));
	}
}
