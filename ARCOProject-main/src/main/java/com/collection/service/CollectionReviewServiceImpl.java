package com.collection.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collection.domain.CollectionReviewVO;
import com.collection.mapper.CollectionReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class CollectionReviewServiceImpl implements CollectionReviewService {

	@Autowired
	private CollectionReviewMapper mapper;
	
	
	@Override
	public List<CollectionReviewVO> getList() {
		log.info("get list.............");
		return mapper.getList();
	}
	
	
	@Override
	public int register(CollectionReviewVO reviewVO) {
		log.info(reviewVO);
		return mapper.insert(reviewVO);
	}

	@Override
	public CollectionReviewVO get(long seq) {
		log.info("get....." + seq);
		return mapper.read(seq);
	}

}
