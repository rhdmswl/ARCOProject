package com.member.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.member.dao.AdminDAO;
import com.member.vo.BoardVO;
import com.member.vo.CollectionReviewVO;
import com.member.vo.Criteria;
import com.member.vo.MemberVO;
import com.member.vo.ReplyVO;
@Service
public class AdminServiceImpl implements AdminService {
	
	@Inject
	AdminDAO dao;

	@Override
	public void deleteUser(String userId) throws Exception {
		dao.deleteUser(userId);

	}
	
	// admin
		  @Override
		  public List<MemberVO> listAllMembers(Criteria criteria) {
		    return dao.listAllMembers(criteria);
		  }

		  @Override
		  public List<CollectionReviewVO> listAllReviews(Criteria criteria) {
		    return dao.listAllReviews(criteria);
		  }

		  @Override
		  public List<BoardVO> listAllPosts(Criteria criteria) {
		    return dao.listAllPosts(criteria);
		  }

		  @Override
		  public List<ReplyVO> listAllComments(Criteria criteria) {
		    return dao.listAllComments(criteria);
		  }

	    @Override
		public int countAllMembers() throws Exception {
			return dao.countAllMembers();
		}
		  
		@Override
		public int countAllCollectionRevs() throws Exception {
			return dao.countAllCollectionRevs();
		}

		@Override
		public int countAllPosts() throws Exception {
			return dao.countAllPosts();
		}

		@Override
		public int countAllComments() throws Exception {
			return dao.countAllComments();
		}

}
