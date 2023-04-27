package com.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.member.vo.BoardVO;
import com.member.vo.CollectionReviewVO;
import com.member.vo.Criteria;
import com.member.vo.MemberVO;
import com.member.vo.ReplyVO;
@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Inject
	SqlSession sql;

	@Override
	public void deleteUser(String userId) throws Exception {
		 // 유저가 작성한 글 전체 삭제
		 sql.delete("memberMapper.deleteReviewsByUserId", userId);
		 sql.delete("memberMapper.deletePostsByUserId", userId);
		 sql.delete("memberMapper.deleteCommentsByUserId", userId);
		 
		 // 유저 삭제
		 sql.delete("memberMapper.deleteUser", userId);
	}
	
	// admin
    @Override
    public List<MemberVO> listAllMembers(Criteria criteria) {
    	Map<String, Object> paramMap = new HashMap<>();
    	paramMap.put("start", criteria.getStart());
      return sql.selectList("memberMapper.listAllMembers", paramMap);
    }

    @Override
    public List<CollectionReviewVO> listAllReviews(Criteria criteria) {
    	Map<String, Object> paramMap = new HashMap<>();
    	paramMap.put("start", criteria.getStart());
      return sql.selectList("memberMapper.listAllReviews", paramMap);
    }

    @Override
    public List<BoardVO> listAllPosts(Criteria criteria) {
    	Map<String, Object> paramMap = new HashMap<>();
    	paramMap.put("start", criteria.getStart());
      return sql.selectList("memberMapper.listAllPosts", paramMap);
    }

    @Override
    public List<ReplyVO> listAllComments(Criteria criteria) {
    	Map<String, Object> paramMap = new HashMap<>();
    	paramMap.put("start", criteria.getStart());
      return sql.selectList("memberMapper.listAllComments", paramMap);
    }
    
    // admin PageMaker
    @Override
    public int countAllMembers() throws Exception {
        return sql.selectOne("memberMapper.countAllMembers");
    }
    
    @Override
    public int countAllCollectionRevs() throws Exception {
        return sql.selectOne("memberMapper.countAllCollectionRevs");
    }

    @Override
    public int countAllPosts() throws Exception {
        return sql.selectOne("memberMapper.countAllPosts");
    }

    @Override
    public int countAllComments() throws Exception {
        return sql.selectOne("memberMapper.countAllComments");
    }

}
