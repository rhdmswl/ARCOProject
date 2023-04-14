package com.collection.mapper;

import java.util.List;

import com.collection.domain.CollectionReviewVO;

public interface CollectionReviewMapper {


	public List<CollectionReviewVO> getList();
	
	public void insert(CollectionReviewVO review);
	
	public List<CollectionReviewVO> read(long seq);
	
	public int delete(long reSeq);
	
	public int update(CollectionReviewVO review);
	
}
