package com.collection.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collection.domain.CollectionVO;
import com.collection.mapper.CollectionMapper;

import lombok.AllArgsConstructor;
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
	public void insertOthers(CollectionVO collection) {
		log.info("insert : " + collection);
		mapper.updateCollectionOthers(collection);
		
	}

	

}
