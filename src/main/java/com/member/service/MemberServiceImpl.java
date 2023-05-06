package com.member.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.member.dao.MemberDAO;
import com.member.vo.BoardVO;
import com.member.vo.CollectionReviewVO;
import com.member.vo.Criteria;
import com.member.vo.ImageVO;
import com.member.vo.MemberVO;
import com.member.vo.PageMaker;
import com.member.vo.ReplyVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO dao;

	@Override
	public void register(MemberVO vo) throws Exception {

		dao.register(vo);

	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}

	@Override
	public int findPw(MemberVO vo) throws Exception {
		int result = dao.findPw(vo);
		return result;
	}
	
	@Override
	public void findPwUpdate(MemberVO vo) throws Exception {
		dao.findPwUpdate(vo);
	}
	
	@Override
	public String findId(MemberVO vo) throws Exception {
		String result = dao.findId(vo);
		return result;
	}


	@Override
	public void memberUpdate(MemberVO vo) throws Exception {

		dao.memberUpdate(vo);

	}

	@Override
	public void mypageUpdate(MemberVO vo) throws Exception {

		dao.mypageUpdate(vo);

	}

	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		dao.memberDelete(vo);
	}

	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = dao.passChk(vo);
		return result;
	}

	@Override
	public void passUpdate(MemberVO login) throws Exception {
		dao.passUpdate(login);
	}
	
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}

	@Override
	public int nameChk(MemberVO vo) throws Exception {
		int result = dao.nameChk(vo);
		return result;
	}
	
	@Override
	public int emailChk(MemberVO vo) throws Exception {
		int result = dao.emailChk(vo);
		return result;
	}

	@Override
	public void updateProfileImg(ImageVO imageVO) {
		dao.insertImage(imageVO);
	}

	@Override
	public ImageVO getProfileImg(String userId) {
		return dao.selectImageByUserId(userId);
	}

	// 페이징 적용
	@Override
	public List<CollectionReviewVO> getMemberCollectionRevsWithPaging(String userId, Criteria cri) throws Exception {
		return dao.getMemberCollectionRevsWithPaging(userId, cri);
	}

	@Override
	public List<BoardVO> getMemberPostsWithPaging(String userId, Criteria cri) throws Exception {
		return dao.getMemberPostsWithPaging(userId, cri);
	}

	@Override
	public List<ReplyVO> getMemberCommentsWithPaging(String userId, Criteria cri) throws Exception {
		return dao.getMemberCommentsWithPaging(userId, cri);
	}

	// PageMaker
	@Override
	public int countCollectionRevs(String userId) throws Exception {
		return dao.countCollectionRevs(userId);
	}

	@Override
	public int countPosts(String userId) throws Exception {
		return dao.countPosts(userId);
	}

	@Override
	public int countComments(String userId) throws Exception {
		return dao.countComments(userId);
	}

//  @Override
//  public String getProfileImg(String userId) throws Exception {
//      return dao.getProfileImg(userId);
//  }
//  
//  @Override
//  public void updateProfileImg(MemberVO vo) throws Exception {
//      dao.updateProfileImg(vo);
//  }

}