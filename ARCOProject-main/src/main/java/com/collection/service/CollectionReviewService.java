package com.collection.service;

import java.util.List;

import com.collection.domain.CollectionReviewVO;

public interface CollectionReviewService {
	
	public List<CollectionReviewVO> getList();
	
	public void register(CollectionReviewVO review);
	
	public List<CollectionReviewVO> get(long seq);
	
	public boolean remove(long reSeq);
	
	public boolean modify(CollectionReviewVO review);
	
	
}
