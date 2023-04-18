package com.collection.service;

import java.util.List;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;

public interface CollectionReviewService {
	
	public int register(CollectionReviewVO review);
	
	public CollectionReviewVO get(long revSeq);
	
	public int remove(long revSeq);
	
	public int modify(CollectionReviewVO review);
	
	public List<CollectionReviewVO> getList(Criteria cri, long seq);
	
}
