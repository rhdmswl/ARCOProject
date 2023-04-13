package com.collection.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;

public interface CollectionReviewMapper {
	
//	@Select("select * from collectionRev where revSeq > 0")
	public List<CollectionReviewVO> getList();
	
	public int insert(CollectionReviewVO vo);
		
	public CollectionReviewVO read(long seq);
	
	public int delete(long seq);
	
	public int update(CollectionReviewVO vo);
	
	public List<CollectionReviewVO> getListWithPaging(Criteria cri);
	
}
