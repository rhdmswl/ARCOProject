package com.arco.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.arco.domain.Criteria;
import com.arco.domain.ReplyVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {

	@Autowired
	private ReplyMapper mapper;
	
	
	private Long[] post_idArr= {1L,2L,3L,4L,5L};
	
	@Test
	public void testCreate() {
		IntStream.rangeClosed(1,  10).forEach(i->{
			ReplyVO vo = new ReplyVO();
			
			vo.setPost_id(post_idArr[i%5]);
			vo.setCom_content("안녕");
			vo.setCom_writer("test");
			
			mapper.insert(vo);
		});
	}

	@Test
	public void testRead() {
		Long targetRno = 5L;
		ReplyVO vo = mapper.read(targetRno);
		log.info(vo);
	}

	@Test
	public void testDelete() {
		Long targetRno = 2L;
		mapper.delete(targetRno);
	}
	
	@Test
	public void testMapper( ) {
		log.info(mapper);
	}
	
	@Test
	public void testUpdate() {
		Long targetRno = 3L;
		ReplyVO vo = mapper.read(targetRno);
		
		vo.setCom_content("수정이다!");
		int count = mapper.update(vo);
		
		log.info("UPDATE COUNT: " + count);
	}
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		List<ReplyVO> replies = mapper.getListWithPaging(cri, post_idArr[0]);
		replies.forEach(reply->log.info(reply));
	}
	
	@Test
	public void testList2() {
		Criteria cri = new Criteria();
		List<ReplyVO> replies = mapper.getListWithPaging(cri, 178L);
		replies.forEach(reply->log.info(reply));
	}
	
}













