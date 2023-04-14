package com.collection.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.collection.domain.CollectionReviewVO;
import com.collection.mapper.CollectionReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CollectionReviewServiceImpl implements CollectionReviewService {
	
	
	private CollectionReviewMapper mapper;
	
	@Override
	public List<CollectionReviewVO> getList() {
		log.info("register.......");
		return mapper.getList();
	}

	@Override
	public void register(CollectionReviewVO review) {
		log.info("register......." + review);
		mapper.insert(review);
	}

	@Override
	public List<CollectionReviewVO> get(long seq) {
		log.info("get......." + seq);
		return mapper.read(seq);
	}

	@Override
	public boolean remove(long reSeq) {
		log.info("remove....." + reSeq);
		return mapper.delete(reSeq) == 1;
	}

	@Override
	public boolean modify(CollectionReviewVO review) {
		log.info("modify....." + review);
		return mapper.update(review) == 1;
	}

}
