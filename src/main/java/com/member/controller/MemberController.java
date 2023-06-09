package com.member.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.member.service.FindPwMailSendService;
import com.member.service.MailSendService;
import com.member.service.MemberService;
import com.member.vo.CollectionReviewVO;
import com.member.vo.Criteria;
import com.member.vo.MemberVO;
import com.member.vo.PageMaker;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	MemberService service;

	@Autowired
	BCryptPasswordEncoder pwdEncoder;

	@Autowired
	MailSendService mailService;

	@Autowired
	FindPwMailSendService findPwmailService;

	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}

	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");
		int result = service.idChk(vo);

		if (result == 1) {
			return "/member/register";
		} else if (result == 0) {
			String inputPass = vo.getUserPass();
			String pwd = pwdEncoder.encode(inputPass);
			vo.setUserPass(pwd);

			service.register(vo);
		}

		return "member/login";
	}

	// 개인정보처리방침 get
	@RequestMapping(value = "/privacypolicy", method = RequestMethod.GET)
	public void getPrivacyPolicy() throws Exception {
		logger.info("get privacypolicy");
	}

	// 로그인 get
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginView() throws Exception {
		return "member/login";
	}

	// 로그인 post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, Model model) throws Exception {
		logger.info("post login");

		session.getAttribute("member");
		MemberVO login = service.login(vo);
		boolean pwdMatch;
		if (login != null) {
			pwdMatch = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());
		} else {
			pwdMatch = false;
		}

		if (login != null && pwdMatch == true) {
			session.setAttribute("member", login);
			return "redirect:/";
		} else {
			session.setAttribute("member", null);
			model.addAttribute("msg", "아이디와 비밀번호를 확인해주세요.");
			return "member/login";
		}
	}

	// 로그아웃 post
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {

		session.invalidate();

		return "redirect:/";
	}

	// 회원 탈퇴 get
	@RequestMapping(value = "/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception {
		return "member/memberDeleteView";
	}

	// 회원 탈퇴 post
	@RequestMapping(value = "/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {

		service.memberDelete(vo);
		session.invalidate();

		return "redirect:/";
	}

	// mypage get - 나의 글 보기 (페이징 적용)
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String myPage(Model model, HttpSession session,
			@RequestParam(value = "revPage", defaultValue = "1") int revPage,
			@RequestParam(value = "postPage", defaultValue = "1") int postPage,
			@RequestParam(value = "commentPage", defaultValue = "1") int commentPage,
		    @RequestParam(value = "mypage_id", defaultValue = "1") int mypage_id) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");
		String userId = null;
		if (vo != null) {
			userId = vo.getUserId();
		}

		Criteria revCri = new Criteria(revPage);
		Criteria postCri = new Criteria(postPage);
		Criteria commentCri = new Criteria(commentPage);

		revCri.setUserId(userId);
		postCri.setUserId(userId);
		commentCri.setUserId(userId);

		model.addAttribute("collectionRev", service.getMemberCollectionRevsWithPaging(userId, revCri));
		model.addAttribute("posts", service.getMemberPostsWithPaging(userId, postCri));
		model.addAttribute("comments", service.getMemberCommentsWithPaging(userId, commentCri));

		PageMaker collectionRevPageMaker = new PageMaker(revCri, service.countCollectionRevs(userId));
		PageMaker postPageMaker = new PageMaker(postCri, service.countPosts(userId));
		PageMaker commentPageMaker = new PageMaker(commentCri, service.countComments(userId));

		List<CollectionReviewVO> collectionReviews = service.getMemberCollectionRevsWithPaging(userId, revCri);
		for (CollectionReviewVO review : collectionReviews) {
			review.setCollectionSeq(review.getCollectionSeq());
		}
		model.addAttribute("collectionRev", collectionReviews);

		model.addAttribute("collectionRevPageMaker", collectionRevPageMaker);
		model.addAttribute("postPageMaker", postPageMaker);
		model.addAttribute("commentPageMaker", commentPageMaker);

		// 사용자 정보를 가져와서 모델에 추가
		model.addAttribute("member", vo);
		
	    model.addAttribute("mypage_id", mypage_id);

		return "member/mypage";
	}

	// mypage post - 회원정보 수정
	@RequestMapping(value = "/mypage", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session, RedirectAttributes rttr, Model model)
			throws Exception {

		service.mypageUpdate(vo);
		session.setAttribute("member", vo);
		model.addAttribute("member", vo);

		return "redirect:/member/mypage";
	}

	
	// 패스워드 체크 post
	@ResponseBody
	@RequestMapping(value = "/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {

		MemberVO login = service.login(vo);
		boolean pwdChk = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());
		return pwdChk;
	}
	
	// 패스워드 변경 get
	@RequestMapping(value = "/passUpdateView", method = RequestMethod.GET)
	public String pwUpdateView() throws Exception {
		return "member/passUpdateView";
	}


	// 패스워드 변경 post
	@RequestMapping(value = "/passUpdate", method = RequestMethod.POST)
	public String passUpdate(@RequestParam("newPass") String newPass, HttpSession session, Model model,
			RedirectAttributes rttr) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");

		// 세션에 로그인한 사용자 정보가 없는 경우
		if (vo == null) {
			rttr.addFlashAttribute("msg", "로그인이 필요합니다.");
			return "redirect:/member/login";
		}

		String encodedNewPass = pwdEncoder.encode(newPass);

		vo.setUserPass(encodedNewPass);
		service.memberUpdate(vo);

		session.invalidate();

		return "member/login";
	}

	// 아이디 중복 체크 post
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}

	// 닉네임 중복 체크 post
	@ResponseBody
	@RequestMapping(value = "/nameChk", method = RequestMethod.POST)
	public int nameChk(MemberVO vo) throws Exception {
		int result = service.nameChk(vo);
		return result;
	}
	
	// 이메일 중복 체크
	@ResponseBody
	@RequestMapping(value = "/emailChk", method = RequestMethod.POST)
	public int emailChk(MemberVO vo) throws Exception {
		int result = service.emailChk(vo);
		return result;
	}

	// 이메일 인증 get
	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
	}

	// 비밀번호 찾기 이메일 인증 get
	@RequestMapping(value = "/findPwmailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String findPwmailCheck(String userId, String email) throws Exception {
		System.out.println("임시비밀번호 이메일 인증 요청이 들어옴!");
		System.out.println("임시비밀번호 이메일 인증 이메일 : " + email);
		return findPwmailService.findPwEmail(userId, email);
	}

	// 비밀번호 찾기 get
	@RequestMapping(value = "/findPw", method = RequestMethod.GET)
	public String findPwView() throws Exception {
		return "member/findPw";
	}

	// 비밀번호 찾기 post
	@ResponseBody
	@RequestMapping(value = "/findPw", method = RequestMethod.POST)
	public int findPw(MemberVO vo) throws Exception {

		int result = service.findPw(vo);
		
		return result;
	}
	
	// 아이디 찾기 get
  @RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findIdView() throws Exception {
		return "member/findId";
	}

	// 아이디 찾기 post
	@ResponseBody
	@RequestMapping(value = "/findId", method = RequestMethod.POST)
	public String findId(String phone, String email) throws Exception {
			
		MemberVO vo = new MemberVO("","","",phone,email,"");
		String result = service.findId(vo);
			
		return result;
	}

}