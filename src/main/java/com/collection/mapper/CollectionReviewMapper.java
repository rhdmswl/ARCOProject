package com.collection.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;

public interface CollectionReviewMapper {

	//@Select("select * from collectionRev where revSeq")
	public List<CollectionReviewVO> getList();
	
	public CollectionReviewVO read(long revSeq);
	
	public int insert(CollectionReviewVO vo);
		
	public int delete(long revSeq);
	
	public int update(CollectionReviewVO vo);
	
	public List<CollectionReviewVO> getListWithPaging(@Param("cri") Criteria cri, @Param("seq") long seq);
	
	public int getCountBySeq(long seq);
}
