package com.member.service;

import java.util.List;

import com.member.vo.BoardVO;
import com.member.vo.CollectionReviewVO;
import com.member.vo.Criteria;
import com.member.vo.MemberVO;
import com.member.vo.ReplyVO;

public interface AdminService {
	
	 public void deleteUser(String userId) throws Exception;
	 
	// admin
		public List<MemberVO> listAllMembers(Criteria criteria);
		public List<CollectionReviewVO> listAllReviews(Criteria criteria);
		public List<BoardVO> listAllPosts(Criteria criteria);
		public List<ReplyVO> listAllComments(Criteria criteria);
		
		// admin PageMaker
		public int countAllMembers() throws Exception;
		public int countAllCollectionRevs() throws Exception;
		public int countAllPosts() throws Exception;
		public int countAllComments() throws Exception;

		

}
