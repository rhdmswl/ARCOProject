package com.arco.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.arco.domain.Criteria;
import com.arco.domain.ReplyVO;

public interface ReplyMapper {
	
	public int insert(ReplyVO vo);	
	public ReplyVO read(Long com_id);
	public int delete(Long com_id); 
	public int update(ReplyVO reply);

	public List<ReplyVO> getListWithPaging(
	          @Param("cri") Criteria cri, 
	          @Param("post_id") Long post_id);
	
	public int getCountByComId(Long com_id);
	public void deleteWithBoard(Long post_id);
	
}
