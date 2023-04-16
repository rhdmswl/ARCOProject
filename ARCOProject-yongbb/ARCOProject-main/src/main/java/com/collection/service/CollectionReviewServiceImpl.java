package com.collection.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;
import com.collection.mapper.CollectionReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CollectionReviewServiceImpl implements CollectionReviewService {
	
	
	private CollectionReviewMapper mapper;
	
	@Override
	public List<CollectionReviewVO> getList(Criteria cri, long seq) {
		log.info("getList with cri......." + cri);
		return mapper.getListWithPaging(cri, seq);
	}

	@Override
	public int register(CollectionReviewVO review) {
		log.info("register......." + review);
		return mapper.insert(review);
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
	public int modify(CollectionReviewVO review) {
		log.info("modify....." + review);
		return mapper.update(review);
	}

}
