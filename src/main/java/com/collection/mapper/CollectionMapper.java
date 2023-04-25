package com.collection.mapper;

import java.util.List;

import com.arco.domain.BoardVO;
import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;

public interface CollectionMapper {
	
	public List<CollectionVO> getCollectionList();
	public CollectionVO getCollection(long seq);
//	public String[] getCollectionImgTitle();
	public float getCollectionGpsX(long seq);
	public float getCollectionGpsY(long seq);
	public void updateAPI();
	public void insertCollection(CollectionVO collection);
//	public void updateCollectionOthers(CollectionVO collection);
	public int getTotalCount(Criteria cri);
	public List<CollectionVO> getListWithPaging(Criteria cri);
	public int revViewCount(long Seq);
	
	public List<BoardVO> getIndexList();
}
