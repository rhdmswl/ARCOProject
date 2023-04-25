package com.arco.service;

import java.util.List;

import com.arco.domain.BoardVO;
import com.arco.domain.Criteria;
import com.arco.domain.LikeVO;
     
public interface BoardService {
	
	public void register(BoardVO board);
	
	public BoardVO get(Long post_id);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(Long post_id);
	
	public List<BoardVO> getList(Criteria cri);
	public int getTotal(Criteria cri);
	
	public int updateViewCount(Long post_id);

	public int findLike(LikeVO like);
	public void insertLike(LikeVO like);
	public void updateLike(Long post_id);
	public void updateLikeCheck(Long post_id, String userId);
	public void updateLikeCheckCancel(Long post_id, String userId);
	public void updateLikeCancel(Long post_id);
	public void deleteLike(LikeVO like);

	
	
}
