package com.arco.mapper;

import java.util.List;

import com.arco.domain.BoardVO;
import com.arco.domain.Criteria;
import com.arco.domain.LikeVO;

public interface BoardMapper {
	
	public List<BoardVO> getList();
	
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	public BoardVO read(Long post_id);
	
	public void insert(BoardVO board);
	
	public int delete(Long post_id);
	
	public int update(BoardVO board);
	
	public int getTotalCount(Criteria cri);
	
	public int updateViewCount(Long post_id);

	public void getComCnt(Long post_id);

	public int findLike(LikeVO like);
	public void updateLike(Long post_id);
	public void updateLikeCancel(Long post_id);
	public void insertLike(LikeVO like);
	public void deleteLike(LikeVO like);
	public void updateLikeCheck(Long post_id, String userId);
	public void updateLikeCheckCancel(Long post_id, String userId);

}
