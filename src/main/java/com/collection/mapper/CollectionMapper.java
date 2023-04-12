package com.collection.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.collection.domain.CollectionVO;

public interface CollectionMapper {

	@Select("select * from collection2 where seq >0")
	public List<CollectionVO> getList();
}
