package com.arco.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.arco.domain.BoardVO;
import com.arco.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board) {  //글 등록
		
		log.info("register....." + board);
		mapper.insert(board);
		
	}

	@Override
	public BoardVO get(Long post_id) {  //게시물 조회
		
		log.info("get....." + post_id);
		return mapper.read(post_id);
	}

	@Override
	public boolean modify(BoardVO board) {  //글 수정
		
		log.info("modify....." + board);
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long post_id) {  //글 삭제
		
		log.info("remove....." + post_id);
		return mapper.delete(post_id) == 1;
	}

	@Override
	public List<BoardVO> getList() {  //글 목록
		
		log.info("getList.....");
		return mapper.getList();
	}

}
