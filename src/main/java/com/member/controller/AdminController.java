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
	        @RequestParam(value = "admin_id", defaultValue = "1") int admin_id,
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
	    
	    // 페이징을 위한 admin 메뉴 탭 번호
	    model.addAttribute("admin_id", admin_id);

	    return "admin/admin";
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
