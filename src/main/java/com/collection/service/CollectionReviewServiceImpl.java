package com.collection.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collection.domain.CollectionReviewPageDTO;
import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;
import com.collection.mapper.CollectionReviewMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CollectionReviewServiceImpl implements CollectionReviewService {
	
	@Autowired
	private CollectionReviewMapper mapper;
	
	@Override
	public List<CollectionReviewVO> getList(Criteria cri, long seq) {
		log.info("getList with cri......." + cri);
		return mapper.getListWithPaging(cri, seq);
	}

	@Override
	public int register(CollectionReviewVO vo) {
		log.info("register......." + vo);
		return mapper.insert(vo);
	}

	@Override
	public CollectionReviewVO get(long revSeq) {
		log.info("get......." + revSeq);
		return mapper.read(revSeq);
	}

	@Override
	public int remove(long revSeq) {
		log.info("remove....." + revSeq);
		return mapper.delete(revSeq);
	}

	@Override
	public int modify(CollectionReviewVO vo) {
		log.info("modify....." + vo);
		return mapper.update(vo);
	}

	@Override
	public CollectionReviewPageDTO getListPage(Criteria cri, long seq) {
		return new CollectionReviewPageDTO(
		mapper.getCountBySeq(seq),
		mapper.getListWithPaging(cri, seq));
	}
	
	

}
