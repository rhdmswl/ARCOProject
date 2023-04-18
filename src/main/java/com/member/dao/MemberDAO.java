package com.member.dao;

import java.util.List;

import com.member.vo.BoardVO;
import com.member.vo.CollectionReviewVO;
import com.member.vo.ImageVO;
import com.member.vo.MemberVO;
import com.member.vo.ReplyVO;

public interface MemberDAO {

	// 회원가입
	public void register(MemberVO vo) throws Exception;

	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;

	// 회원정보 수정
	public void memberUpdate(MemberVO vo) throws Exception;

	// 회원 탈퇴
	public void memberDelete(MemberVO vo) throws Exception;

	// 패스워드 체크
	public int passChk(MemberVO vo) throws Exception;

	//  패스워드 수정
	public void passUpdate(MemberVO login) throws Exception;

	// 아이디 중복체크
	public int idChk(MemberVO vo) throws Exception;

	// public String getProfileImg(String userId) throws Exception;

	// public void updateProfileImg(MemberVO vo) throws Exception;

	// 프로필 이미지 등록
	public void insertImage(ImageVO imageVO);

	// 프로필 이미지 조회
	public ImageVO selectImageByUserId(String userId);

	// 나의 한줄평
	List<CollectionReviewVO> getMemberCollectionRevs(String userId) throws Exception;

	// 나의 게시글
	List<BoardVO> getMemberPosts(String userId) throws Exception;

	// 나의 댓글
	List<ReplyVO> getMemberComments(String userId) throws Exception;

}