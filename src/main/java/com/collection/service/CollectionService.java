package com.collection.service;

import java.util.List;

import com.collection.domain.Criteria;
import com.collection.domain.CollectionVO;

public interface CollectionService {
	
	public void insert(CollectionVO collection);
//	public void insertOthers(CollectionVO collection);
//	public String[] getCollectionImgTitle();
	public List<CollectionVO> getList(Criteria cri);
//	public List<CollectionVO> getListSort(Criteria cri);
	public CollectionVO get(long seq);
	public int getTotal(Criteria cri);
	public int revViewCount(long seq);
	public void reviewCount(long seq);
	public void starAvg(long seq);

	
	
}
