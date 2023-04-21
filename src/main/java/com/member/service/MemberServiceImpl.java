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

//	@Override
//	public List<CollectionReviewVO> getMemberCollectionRevs(String userId) throws Exception {
//		return dao.getMemberCollectionRevs(userId);
//	}
//
//	@Override
//	public List<BoardVO> getMemberPosts(String userId) throws Exception {
//		return dao.getMemberPosts(userId);
//	}
//
//	@Override
//	public List<ReplyVO> getMemberComments(String userId) throws Exception {
//		return dao.getMemberComments(userId);
//	}
	
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
	
//	@Override
//	public PageMaker getPageMaker(String userId, Criteria cri, String type) throws Exception {
//	    PageMaker pageMaker = new PageMaker();
//	    pageMaker.setCri(cri);
//
//	    int totalCount;
//	    if (type.equals("collectionRevs")) {
//	        totalCount = dao.getMemberCollectionRevsCount(userId);
//	    } else if (type.equals("posts")) {
//	        totalCount = dao.getMemberPostsCount(userId);
//	    } else { // type.equals("comments")
//	        totalCount = dao.getMemberCommentsCount(userId);
//	    }
//	    pageMaker.setTotalCount(totalCount);
//
//	    return pageMaker;
//	}

}