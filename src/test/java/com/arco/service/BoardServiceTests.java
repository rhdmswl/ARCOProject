package com.arco.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.arco.domain.BoardVO;
import com.arco.domain.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Autowired
	private BoardService service;
	
	@Test
	public void testExist() {
		
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		
		BoardVO board = new BoardVO();
		board.setPost_title("service test title");
		board.setPost_content("service test content");
		board.setPost_writer("test01");
		
		service.register(board);
		
		log.info("생성된 게시물의 번호 : " + board.getPost_id());
	}
	
	@Test
	public void testGetList() {
		
		service.getList(new Criteria(2,10)).forEach(board -> log.info(board));
	}
	
	@Test
	public void testGet() {
		
		log.info(service.get(1L));
	}
	
	@Test
	public void testDelete() {
		
		log.info("REMOVE RESULT : " + service.remove(2L));
	}
	
	@Test
	public void testUpdate() {
		
		BoardVO board= service.get(1L);
		
		if(board == null) {
			return;
		}
		
		board.setPost_title("제목 수정합니다.");
		log.info("MODIFY RESULT : " + service.modify(board));
	}
}
