package com.collection.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arco.domain.BoardVO;
import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;
import com.collection.mapper.CollectionMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CollectionServiceImpl implements CollectionService {
	
	@Autowired
	private CollectionMapper mapper;
	
	public CollectionServiceImpl() {}
	
	@Override
	public void insert(CollectionVO collection) { 
		log.info("insert : " + collection);
		mapper.insertCollection(collection);
	}

	@Override
	public List<CollectionVO> getList(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}
	

	@Override
	public CollectionVO get(long seq) {
		log.info(seq);
		return mapper.getCollection(seq);
	}


	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public int revViewCount(long seq) {
		log.info(seq);
		return mapper.revViewCount(seq);
	}

	@Override
	public void reviewCount(long seq) {
		log.info(seq);
		mapper.reviewCount(seq);
	}

	@Override
	public void starAvg(long seq) {
		log.info(log);
		mapper.starAvg(seq);
	}

	@Override
	public List<BoardVO> getIndexList() {
		
		return mapper.getIndexList();
	}

}
