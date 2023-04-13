package com.collection.service;

import java.util.List;

import com.collection.domain.CollectionReviewVO;

public interface CollectionReviewService {
	
	public List<CollectionReviewVO> getList();
	
	public int register(CollectionReviewVO reviewVO);
	
	public CollectionReviewVO get(long seq);
	

}
