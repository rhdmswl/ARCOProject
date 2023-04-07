package com.arco.mapper;

import java.util.List;

import com.arco.domain.BoardVO;

public interface BoardMapper {
	
	public List<BoardVO> getList();
	
	public BoardVO read(Long post_id);
	
	public void insert(BoardVO board);
	
	public int delete(Long post_id);
	
	public int update(BoardVO board);
	
}
