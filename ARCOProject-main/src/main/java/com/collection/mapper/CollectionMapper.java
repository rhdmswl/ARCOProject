package com.collection.mapper;

import java.util.List;

import com.collection.domain.CollectionVO;

public interface CollectionMapper {
	
	public List<CollectionVO> getCollectionList();
	public CollectionVO getCollection(long seq);
//	public String[] getCollectionImgTitle();
	public float getCollectionGpsX(long seq);
	public float getCollectionGpsY(long seq);
	public void updateAPI();
	public void insertCollection(CollectionVO collection);
//	public void updateCollectionOthers(CollectionVO collection);
	
	
}
