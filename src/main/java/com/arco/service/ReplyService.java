package com.arco.service;

import java.util.List;

import com.arco.domain.Criteria;
import com.arco.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);
	public ReplyVO get(Long rno);
	public int modify(ReplyVO vo);
	public int remove(Long rno);
	public List<ReplyVO> getList(Criteria cri, Long bno);
}
