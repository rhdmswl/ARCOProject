package com.collection.mapper;

import java.util.List;

import com.collection.domain.CollectionVO;

public interface CollectionMapper {
	
	public List<CollectionVO> getCollectionList();
	public List<CollectionVO> getCollection(long seq);
	public String getCollectionImg(long seq);
	public float getCollectionGpsX(long seq);
	public float getCollectionGpsY(long seq);
	public void updateAPI();
	public void insertCollection(CollectionVO collection);
	public void updateCollectionOthers(CollectionVO collection);
	
	
}
