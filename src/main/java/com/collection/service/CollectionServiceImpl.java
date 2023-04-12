package com.collection.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.collection.domain.CollectionVO;
import com.collection.mapper.CollectionMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CollectionServiceImpl implements CollectionService {
	
	@Autowired
	private CollectionMapper mapper;
	
	@Override
	public void insert(CollectionVO collection) { 
		mapper.insertCollection(collection);
	}

}
