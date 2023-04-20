package com.arco.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arco.domain.BoardVO;
import com.arco.domain.Criteria;
import com.arco.domain.LikeVO;
import com.arco.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	@Autowired
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
	public List<BoardVO> getList(Criteria cri) {  //글 목록
		
		log.info("getListwith criteria"+cri);
		return mapper.getListWithPaging(cri);
	} 

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public int updateViewCount(Long post_id) {
		log.info(post_id);
		return mapper.updateViewCount(post_id);
	}
	
	@Override
	public void getComCnt(Long post_id) {
		log.info("get comment count");
		mapper.getComCnt(post_id);
	}
	
	@Override
	public int findLike(LikeVO like) {//추천 여부 확인
		log.info("get findLike");
		return mapper.findLike(like);
	}
	@Override
	public void updateLike(Long post_id){
	 mapper.updateLike(post_id);
	}
	
	@Override
	public void updateLikeCancel(Long post_id){
		 mapper.updateLikeCancel(post_id);
	}

	@Override
	public void insertLike(LikeVO like){
		mapper.insertLike(like);
	}
	
	@Override
	public void deleteLike(LikeVO like) {
		mapper.deleteLike(like);
	}
		
	@Override
	public void updateLikeCheck(Long post_id,String userId) {
		mapper.updateLikeCheck(post_id,userId);
	}
			
	@Override
	public void updateLikeCheckCancel(Long post_id,String userId) {
		mapper.updateLikeCheckCancel(post_id,userId);
	}
	
}
