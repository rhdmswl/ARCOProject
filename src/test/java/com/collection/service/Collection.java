package com.collection.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.collection.domain.CollectionVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class Collection {
	
	@Autowired
	private CollectionService service;
	
	@Test
	public void testExist() {
		log.info(log);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		log.info(log);
		CollectionVO collection = new CollectionVO();
		collection.setSeq(1234);
		collection.setTitle("테스트");
		/*
		 * collection.setStartDate("2023/04/05"); collection.setEndDate("2023/04/05");
		 */
		collection.setPlace("테스트");
		collection.setRealmName("테스트");
		collection.setThumbnail("테스트");
		collection.setGpsX(20230405.0405);
		collection.setGpsY(20230405.0405);
		
		service.insert(collection);

	}
	
	@Test
	public void testGetIndexList() {
		service.getIndexList().forEach(board -> log.info(board));
	}
}
