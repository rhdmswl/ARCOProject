package com.arco.service;

import java.util.List;

import com.arco.domain.BoardVO;

public interface BoardService {
	
	public void register(BoardVO board);
	
	public BoardVO get(Long post_id);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(Long post_id);
	
	public List<BoardVO> getList();
	
}
