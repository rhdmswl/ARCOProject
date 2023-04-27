package com.collection.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collection.domain.CollectionDibsVO;
import com.collection.domain.CollectionReviewPageDTO;
import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;
import com.collection.mapper.CollectionDibsMapper;
import com.collection.mapper.CollectionReviewMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CollectionDibsServiceImpl implements CollectionDibsService {
	
	@Autowired
	private CollectionDibsMapper mapper;
	
	
	@Override
	public int add(CollectionDibsVO vo) {
		log.info("add dibs......." + vo);
		return mapper.add(vo);
	}
	
	@Override
	public int check(CollectionDibsVO vo) {
		log.info("check dibs......." + vo);
		return mapper.check(vo);
	}

	@Override
	public int cancel(CollectionDibsVO vo) {
		log.info("cancel dibs......." + vo);
		return mapper.cancel(vo);
	}
}
