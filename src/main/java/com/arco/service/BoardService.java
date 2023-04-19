package com.arco.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.arco.domain.BoardVO;
import com.arco.domain.Criteria;
     
public interface BoardService {
	
	public void register(BoardVO board);
	
	public BoardVO get(Long post_id);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(Long post_id);
	
	public List<BoardVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public int updateViewCount(Long post_id);

	public void getComCnt(Long post_id);
	
}
