package com.member.service;

import java.util.List;

import com.member.vo.BoardVO;
import com.member.vo.CollectionReviewVO;
import com.member.vo.ImageVO;
import com.member.vo.MemberVO;
import com.member.vo.ReplyVO;

public interface MemberService {

	public void register(MemberVO vo) throws Exception;
	
	public MemberVO login(MemberVO vo) throws Exception;
	
	public void memberUpdate(MemberVO vo) throws Exception;
	
	public void memberDelete(MemberVO vo) throws Exception;
	
	public int passChk(MemberVO vo) throws Exception;
	
	public void passUpdate(MemberVO login) throws Exception;
	
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