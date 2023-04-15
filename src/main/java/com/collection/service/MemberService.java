package com.collection.service;

import java.util.List;

import com.collection.vo.BoardVO;
import com.collection.vo.CollectionReviewVO;
import com.collection.vo.ImageVO;
import com.collection.vo.MemberVO;
import com.collection.vo.ReplyVO;

public interface MemberService {

	public void register(MemberVO vo) throws Exception;
	
	public MemberVO login(MemberVO vo) throws Exception;
	
	public void memberUpdate(MemberVO vo) throws Exception;
	
	public void memberDelete(MemberVO vo) throws Exception;
	
	public int passChk(MemberVO vo) throws Exception;
	
	public int idChk(MemberVO vo) throws Exception;
	
//	public String getProfileImg(String userId) throws Exception;
//	
//	public void updateProfileImg(MemberVO vo) throws Exception;
	
	public void updateProfileImg(ImageVO imageVO);
	
	public ImageVO getProfileImg(String userId);
	
	List<CollectionReviewVO> getMemberCollectionRevs(String userId) throws Exception;

	List<BoardVO> getMemberPosts(String userId) throws Exception;

	List<ReplyVO> getMemberComments(String userId) throws Exception;

}