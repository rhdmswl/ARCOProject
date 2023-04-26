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
import com.member.vo.ImageVO;
import com.member.vo.MemberVO;
import com.member.vo.ReplyVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	SqlSession sql;

	// 회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert("memberMapper.register", vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {

		return sql.selectOne("memberMapper.login", vo);
	}

	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		// vo에 담긴 파라미터들은 memberMapper.xml에 memberMapper라는 namespace에
		// 아이디가 memberUpdate인 쿼리에 파라미터들을 넣어줍니다.
		sql.update("memberMapper.memberUpdate", vo);
	}
	
	@Override
	public void mypageUpdate(MemberVO vo) throws Exception {
		
		sql.update("memberMapper.mypageUpdate", vo);
	}
	


	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		
		// 유저가 작성한 글 전체 삭제
		sql.delete("memberMapper.deleteReviewsByUserId", vo.getUserId());
		sql.delete("memberMapper.deletePostsByUserId", vo.getUserId());
		sql.delete("memberMapper.deleteCommentsByUserId", vo.getUserId());

		// MemberVO에 담긴 값들을 보내줍니다.
		// 그럼 xml에서 memberMapper.memberDelete에 보시면
		// #{userId}, #{userPass}에 파라미터값이 매칭이 되겠지요.
		sql.delete("memberMapper.memberDelete", vo);

	}

	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = sql.selectOne("memberMapper.passChk", vo);
		return result;
	}

	@Override
	public void passUpdate(MemberVO login) throws Exception {
		sql.update("memberMapper.passUpdate", login);
	}

	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = sql.selectOne("memberMapper.idChk", vo);
		return result;
	}
	
	@Override
	public int nameChk(MemberVO vo) throws Exception {
		int result = sql.selectOne("memberMapper.nameChk", vo);
		return result;
	}

//	@Override
//  public String getProfileImg(String userId) throws Exception {
//        return sql.selectOne("memberMapper.getProfileImg", userId);
//    }
//    
//  @Override
//  public void updateProfileImg(MemberVO vo) throws Exception {
//        sql.update("memberMapper.updateProfileImg", vo);
//  }

	@Override
	public void insertImage(ImageVO imageVO) {
		sql.insert("memberMapper.insertImage", imageVO);
	}

	@Override
	public ImageVO selectImageByUserId(String userId) {
		return sql.selectOne("memberMapper.selectImageByUserId", userId);
	}

//	// mypage - my writings
//	@Override
//	public List<CollectionReviewVO> getMemberCollectionRevs(String userId) throws Exception {
//		return sql.selectList("memberMapper.getMemberCollectionRevs", userId);
//	}
//
//	@Override
//	public List<BoardVO> getMemberPosts(String userId) throws Exception {
//		return sql.selectList("memberMapper.getMemberPosts", userId);
//	}
//
//	@Override
//	public List<ReplyVO> getMemberComments(String userId) throws Exception {
//		return sql.selectList("memberMapper.getMemberComments", userId);
//	}
	
    // 페이징이 적용된 메소드
    @Override
    public List<CollectionReviewVO> getMemberCollectionRevsWithPaging(String userId, Criteria cri) throws Exception {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("userId", userId);
        paramMap.put("start", cri.getStart());
        return sql.selectList("memberMapper.getMemberCollectionRevsWithPaging", paramMap);
        
    }

    @Override
    public List<BoardVO> getMemberPostsWithPaging(String userId, Criteria cri) throws Exception {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("userId", userId);
        paramMap.put("start", cri.getStart());
        return sql.selectList("memberMapper.getMemberPostsWithPaging", paramMap);
    }

    @Override
    public List<ReplyVO> getMemberCommentsWithPaging(String userId, Criteria cri) throws Exception {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("userId", userId);
        paramMap.put("start", cri.getStart());
        return sql.selectList("memberMapper.getMemberCommentsWithPaging", paramMap);
    }
    
    @Override
    public int countCollectionRevs(String userId) throws Exception {
        return sql.selectOne("memberMapper.countCollectionRevs", userId);
    }

    @Override
    public int countPosts(String userId) throws Exception {
        return sql.selectOne("memberMapper.countPosts", userId);
    }

    @Override
    public int countComments(String userId) throws Exception {
        return sql.selectOne("memberMapper.countComments", userId);
    }
    
   

}