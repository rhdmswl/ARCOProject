package com.member.service;

import java.util.List;

import com.member.vo.BoardVO;
import com.member.vo.CollectionReviewVO;
import com.member.vo.Criteria;
import com.member.vo.ImageVO;
import com.member.vo.MemberVO;
import com.member.vo.PageMaker;
import com.member.vo.ReplyVO;

public interface MemberService {

	public void register(MemberVO vo) throws Exception;
	
	public MemberVO login(MemberVO vo) throws Exception;

	public int findPw(MemberVO vo) throws Exception;
	
	public void findPwUpdate(MemberVO vo) throws Exception;
	
	public String findId(MemberVO vo) throws Exception;
	
	public void memberUpdate(MemberVO vo) throws Exception;
	
	public void mypageUpdate(MemberVO vo) throws Exception;
	
	public void memberDelete(MemberVO vo) throws Exception;
	
	public int passChk(MemberVO vo) throws Exception;
	
	public void passUpdate(MemberVO login) throws Exception;
	
	public int idChk(MemberVO vo) throws Exception;
	
	public int nameChk(MemberVO vo) throws Exception;
	
//	public String getProfileImg(String userId) throws Exception;
//	
//	public void updateProfileImg(MemberVO vo) throws Exception;
	
	public void updateProfileImg(ImageVO imageVO);
	
	public ImageVO getProfileImg(String userId);
	
//	List<CollectionReviewVO> getMemberCollectionRevs(String userId) throws Exception;
//
//	List<BoardVO> getMemberPosts(String userId) throws Exception;
//
//	List<ReplyVO> getMemberComments(String userId) throws Exception;
	
	// 페이징이 적용된 메소드
	public List<CollectionReviewVO> getMemberCollectionRevsWithPaging(String userId, Criteria cri) throws Exception;
	public List<BoardVO> getMemberPostsWithPaging(String userId, Criteria cri) throws Exception;
	public List<ReplyVO> getMemberCommentsWithPaging(String userId, Criteria cri) throws Exception;

	// PageMaker
	public int countCollectionRevs(String userId) throws Exception;
	public int countPosts(String userId) throws Exception;
	public int countComments(String userId) throws Exception;

	

	

}