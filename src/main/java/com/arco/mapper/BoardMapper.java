package com.arco.mapper;

import java.util.List;

import com.arco.domain.BoardVO;
import com.arco.domain.Criteria;

public interface BoardMapper {
	
	public List<BoardVO> getList();
	
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	public BoardVO read(Long post_id);
	
	public void insert(BoardVO board);
	
	public int delete(Long post_id);
	
	public int update(BoardVO board);
	
	public int getTotalCount(Criteria cri);
	
	public void getComCnt(Long post_id);
}
