package com.collection.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.collection.domain.CollectionDibsVO;
import com.collection.domain.CollectionReviewVO;
import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;

public interface CollectionDibsMapper {

	
	public int add(CollectionDibsVO vo);
	public int check(CollectionDibsVO vo);
	public int cancel(CollectionDibsVO vo);
		
}
