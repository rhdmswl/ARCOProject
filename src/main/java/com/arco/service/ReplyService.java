package com.arco.service;

import java.util.List;

import com.arco.domain.Criteria;
import com.arco.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);
	public ReplyVO get(Long com_id);
	public int modify(ReplyVO vo);
	public int remove(Long com_id);
	public List<ReplyVO> getList(Criteria cri, Long post_id);
}
