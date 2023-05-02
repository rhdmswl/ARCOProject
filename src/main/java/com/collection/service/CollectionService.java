package com.collection.service;

import java.util.List;

import com.arco.domain.BoardVO;
import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;

public interface CollectionService {
	
	public void insert(CollectionVO collection);
	public List<CollectionVO> getList(Criteria cri);
	public CollectionVO get(long seq);
	public int getTotal(Criteria cri);
	public int revViewCount(long seq);
	public void reviewCount(long seq);
	public void starAvg(long seq);
	public void deleteCollection();

	public List<BoardVO> getIndexList();
	
}
