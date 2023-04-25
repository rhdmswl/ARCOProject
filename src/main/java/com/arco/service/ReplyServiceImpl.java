package com.arco.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.arco.domain.Criteria;
import com.arco.domain.ReplyPageDTO;
import com.arco.domain.ReplyVO;
import com.arco.mapper.BoardMapper;
import com.arco.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyMapper mapper;
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

	@Transactional
	@Override
	public int register(ReplyVO vo) {
		log.info("register......" + vo);
		boardMapper.getComCnt(vo.getPost_id(), 1);
		return mapper.insert(vo);
	}

	@Override
	public ReplyVO get(Long com_id) {
		log.info("get......" + com_id);
		return mapper.read(com_id);
	}

	@Override
	public int modify(ReplyVO vo) {
		log.info("modify......" + vo);
		return mapper.update(vo);
	}

	@Transactional
	@Override
	public int remove(Long com_id) {
		log.info("remove......" + com_id);
		ReplyVO vo =mapper.read(com_id);
		boardMapper.getComCnt(vo.getPost_id(), -1);
		return mapper.delete(com_id);
	}

	@Override
	public List<ReplyVO> getList(Criteria cri, Long post_id) {
		log.info("get Reply List of a Board " + post_id);
		return mapper.getListWithPaging(cri, post_id);
	}
	@Override
	public ReplyPageDTO getListPage(Criteria cri,Long post_id) {
		return new ReplyPageDTO(
				mapper.getCountByComId(post_id),
				mapper.getListWithPaging(cri, post_id));	
	}
}
