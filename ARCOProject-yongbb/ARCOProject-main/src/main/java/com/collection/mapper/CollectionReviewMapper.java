package com.collection.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;

public interface CollectionReviewMapper {
	
	public List<CollectionReviewVO> getList();
	
	public List<CollectionReviewVO> getListWithPaging(@Param("cri")Criteria cri, @Param("seq") long seq);
	
	public int insert(CollectionReviewVO review);
	
	public CollectionReviewVO read(long revSeq);
	
	public int delete(long revSeq);
	
	public int update(CollectionReviewVO review);
	
	public int getTotalCount();
	
}
