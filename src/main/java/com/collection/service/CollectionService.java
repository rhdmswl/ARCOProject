package com.collection.service;

import java.util.List;

import com.collection.domain.CollectionVO;

public interface CollectionService {
	
	public void insert(CollectionVO collection);
//	public void insertOthers(CollectionVO collection);
//	public String[] getCollectionImgTitle();
	public List<CollectionVO> getList();
	public CollectionVO get(long seq);
	
	
	
}
