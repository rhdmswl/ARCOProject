package com.member.dao;

import java.util.List;

import com.member.vo.BoardVO;
import com.member.vo.CollectionReviewVO;
import com.member.vo.Criteria;
import com.member.vo.MemberVO;
import com.member.vo.ReplyVO;

public interface MemberDAO {

	// 회원가입
	public void register(MemberVO vo) throws Exception;

	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;

	// 비밀번호 찾기
	public int findPw(MemberVO vo) throws Exception;

	// 임시 패스워드 발급
	public void findPwUpdate(MemberVO vo) throws Exception;
	
	// 아이디 찾기
	public String findId(MemberVO vo) throws Exception;

	// 회원정보 수정
	public void mypageUpdate(MemberVO vo) throws Exception;

	// 회원 탈퇴
	public void memberDelete(MemberVO vo) throws Exception;

	// 패스워드 체크
	public int passChk(MemberVO vo) throws Exception;

	// 패스워드 수정1
	public void memberUpdate(MemberVO vo) throws Exception;

	// 패스워드 수정2
	public void passUpdate(MemberVO login) throws Exception;

	// 아이디 중복체크
	public int idChk(MemberVO vo) throws Exception;

	// 닉네임 중복체크
	public int nameChk(MemberVO vo) throws Exception;
	
	// 이메일 중복체크
	public int emailChk(MemberVO vo) throws Exception;

	// 페이징이 적용된 나의 한줄평
	public List<CollectionReviewVO> getMemberCollectionRevsWithPaging(String userId, Criteria cri) throws Exception;

	// 페이징이 적용된 나의 게시글
	public List<BoardVO> getMemberPostsWithPaging(String userId, Criteria cri) throws Exception;

	// 페이징이 적용된 나의 댓글
	public List<ReplyVO> getMemberCommentsWithPaging(String userId, Criteria cri) throws Exception;

	// 각 글의 개수, PageMaker
	public int countCollectionRevs(String userId) throws Exception;

	public int countPosts(String userId) throws Exception;

	public int countComments(String userId) throws Exception;

	

}