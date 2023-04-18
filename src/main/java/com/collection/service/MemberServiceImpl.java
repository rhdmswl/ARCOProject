package com.collection.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.collection.dao.MemberDAO;

import com.collection.vo.BoardVO;
import com.collection.vo.CollectionReviewVO;
import com.collection.vo.ImageVO;
import com.collection.vo.MemberVO;
import com.collection.vo.ReplyVO;

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
	public void memberUpdate(MemberVO vo) throws Exception {

		dao.memberUpdate(vo);

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

//    @Override
//    public String getProfileImg(String userId) throws Exception {
//        return dao.getProfileImg(userId);
//    }
//    
//    @Override
//    public void updateProfileImg(MemberVO vo) throws Exception {
//        dao.updateProfileImg(vo);
//    }

	@Override
	public void updateProfileImg(ImageVO imageVO) {
		dao.insertImage(imageVO);
	}

	@Override
	public ImageVO getProfileImg(String userId) {
		return dao.selectImageByUserId(userId);
	}

	@Override
	public List<CollectionReviewVO> getMemberCollectionRevs(String userId) throws Exception {
		return dao.getMemberCollectionRevs(userId);
	}

	@Override
	public List<BoardVO> getMemberPosts(String userId) throws Exception {
		return dao.getMemberPosts(userId);
	}

	@Override
	public List<ReplyVO> getMemberComments(String userId) throws Exception {
		return dao.getMemberComments(userId);
	}

}