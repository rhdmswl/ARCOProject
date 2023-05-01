package com.collection.mapper;

import java.util.List;

import com.arco.domain.BoardVO;
import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;

public interface CollectionMapper {
	
	public List<CollectionVO> getCollectionList();
	public CollectionVO getCollection(long seq);
	public float getCollectionGpsX(long seq);
	public float getCollectionGpsY(long seq);
	public void updateAPI();
	public void insertCollection(CollectionVO collection);
	public int getTotalCount(Criteria cri);
	public List<CollectionVO> getListWithPaging(Criteria cri);
	public int revViewCount(long seq);
	public void reviewCount(long seq);
	public void starAvg(long seq);
	
	
	public List<BoardVO> getIndexList();
}
