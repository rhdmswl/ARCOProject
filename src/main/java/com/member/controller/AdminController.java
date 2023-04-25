package com.member.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.member.service.AdminService;
import com.member.vo.CollectionReviewVO;
import com.member.vo.Criteria;
import com.member.vo.MemberVO;
import com.member.vo.PageMaker;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Inject
	AdminService service;
	

	
	@Autowired
	BCryptPasswordEncoder pwdEncoder;
	
//	// 관리자화면
//	@RequestMapping(value = "/index", method = RequestMethod.GET)
//	public void getIndex() throws Exception {
//		logger.info("get index");
//	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	  public String admin(Model model, HttpSession session,
			@RequestParam(value="memberPage", defaultValue="1") int memberPage,
			@RequestParam(value="revPage", defaultValue="1") int revPage,
	        @RequestParam(value="postPage", defaultValue="1") int postPage,
	        @RequestParam(value="commentPage", defaultValue="1") int commentPage,
	        Criteria criteria) throws Exception {
		
		Criteria memberCriteria = new Criteria(memberPage);
	    Criteria revCri = new Criteria(revPage);
	    Criteria postCri = new Criteria(postPage);
	    Criteria commentCri = new Criteria(commentPage);
	    
	    model.addAttribute("member", service.listAllMembers(memberCriteria));
	    model.addAttribute("collectionRev", service.listAllReviews(revCri));
	    model.addAttribute("posts", service.listAllPosts(postCri));
	    model.addAttribute("comments", service.listAllComments(commentCri));

	    PageMaker memberPageMaker = new PageMaker(memberCriteria, service.countAllMembers());
	    PageMaker collectionRevPageMaker = new PageMaker(revCri, service.countAllCollectionRevs());
	    PageMaker postPageMaker = new PageMaker(postCri, service.countAllPosts());
	    PageMaker commentPageMaker = new PageMaker(commentCri, service.countAllComments());
	    
	    List<CollectionReviewVO> collectionReviews = service.listAllReviews(revCri);
	    for (CollectionReviewVO review : collectionReviews) {
	        review.setCollectionSeq(review.getCollectionSeq());
	    }
	    model.addAttribute("collectionRev", collectionReviews);

	    model.addAttribute("memberPageMaker", memberPageMaker);
	    model.addAttribute("collectionRevPageMaker", collectionRevPageMaker);
	    model.addAttribute("postPageMaker", postPageMaker);
	    model.addAttribute("commentPageMaker", commentPageMaker);
	    
//	    // 사용자 정보를 가져와서 모델에 추가
//	    model.addAttribute("member", vo);

	    return "admin/admin";
	    
		
//	    // 관리자용 회원 목록 조회
//	    List<MemberVO> allMembers = service.listAllMembers(criteria);
//	    model.addAttribute("allMembers", allMembers);
//
//	    // 관리자용 게시글 목록 조회
//	    List<BoardVO> allPosts = service.listAllPosts(criteria);
//	    model.addAttribute("allPosts", allPosts);
//
//	    // 관리자용 한줄평 목록 조회
//	    List<CollectionReviewVO> allReviews = service.listAllReviews(criteria);
//	    model.addAttribute("allReviews", allReviews);
//
//	    // 관리자용 댓글 목록 조회
//	    List<ReplyVO> allComments = service.listAllComments(criteria);
//	    model.addAttribute("allComments", allComments);
//
//	    // 페이징 처리
//	    PageMaker pageMaker = new PageMaker(criteria, service.countPosts(null));
//	    model.addAttribute("pageMaker", pageMaker);

	  }


		// 회원 삭제 post
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public @ResponseBody String deleteUser(@RequestParam("userId") String userId, HttpSession session) throws Exception {
	    // 해당 유저 삭제하기
	    service.deleteUser(userId);

	    // 업데이트된 회원 리스트 가져오기
	    Criteria criteria = new Criteria();
	    List<MemberVO> userList = service.listAllMembers(criteria);

	    // 세션에 업데이트된 회원 리스트 저장하기
	    session.setAttribute("userList", userList);

	    return "success";
	}



}
