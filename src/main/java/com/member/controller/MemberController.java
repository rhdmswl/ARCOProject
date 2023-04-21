package com.member.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.io.IOUtils;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.RequestParam;

import com.member.service.MemberService;
import com.member.vo.Criteria;
import com.member.vo.ImageVO;
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
	private DataSource dataSource;

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

//	// 회원정보 수정 get
//	@RequestMapping(value = "/memberUpdateView", method = RequestMethod.GET)
//	public String registerUpdateView() throws Exception {
//		return "member/memberUpdateView";
//	}

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

	
	
	// mypage - 나의 글 보기 (페이징 적용)
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String myPage(Model model, HttpSession session,
			@RequestParam(value="revPage", defaultValue="1") int revPage,
            @RequestParam(value="postPage", defaultValue="1") int postPage,
            @RequestParam(value="commentPage", defaultValue="1") int commentPage
            ) throws Exception {
		
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

	    model.addAttribute("collectionRevs", service.getMemberCollectionRevsWithPaging(userId, revCri));
	    model.addAttribute("posts", service.getMemberPostsWithPaging(userId, postCri));
	    model.addAttribute("comments", service.getMemberCommentsWithPaging(userId, commentCri));

	    PageMaker collectionRevPageMaker = new PageMaker(revCri, service.countCollectionRevs(userId));
	    PageMaker postPageMaker = new PageMaker(postCri, service.countPosts(userId));
	    PageMaker commentPageMaker = new PageMaker(commentCri, service.countComments(userId));

	    model.addAttribute("collectionRevPageMaker", collectionRevPageMaker);
	    model.addAttribute("postPageMaker", postPageMaker);
	    model.addAttribute("commentPageMaker", commentPageMaker);
	    
	 // 사용자 정보를 가져와서 모델에 추가
	    model.addAttribute("member", vo);

	    return "member/mypage";
	}
	
	// 회원정보 수정 post
	@RequestMapping(value = "/mypage", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		
		
	    service.mypageUpdate(vo);
	   
	    session.setAttribute("member", vo);
	    
	    model.addAttribute("member", vo);
		
	    return "redirect:/member/mypage";
	}





	@RequestMapping(value = "/passUpdateView", method = RequestMethod.GET)
	public String pwUpdateView() throws Exception {
		return "member/passUpdateView";
	}

	// 패스워드 체크
	@ResponseBody
	@RequestMapping(value = "/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {

		MemberVO login = service.login(vo);
		boolean pwdChk = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());
		return pwdChk;
	}

	// 패스워드 변경
	@RequestMapping(value = "/passUpdate", method = RequestMethod.POST)
	public String passUpdate(@RequestParam("userPass") String userPass, @RequestParam("newPass") String newPass,
			@RequestParam("confirmPass") String confirmPass, HttpSession session, Model model, RedirectAttributes rttr) throws Exception {

		MemberVO vo = (MemberVO) session.getAttribute("member");

		boolean pwdMatch = pwdEncoder.matches(userPass, vo.getUserPass());
		if (!pwdMatch) {
			model.addAttribute("error", "입력한 현재 비밀번호가 일치하지 않습니다.");
			return "member/passUpdateView";
		}

		if (!newPass.equals(confirmPass)) {
			model.addAttribute("error", "새로운 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			return "member/passUpdateView";
		}

		String encodedNewPass = pwdEncoder.encode(newPass);

		vo.setUserPass(encodedNewPass);
		service.memberUpdate(vo);
		

		 session.invalidate();
		
	
	    
		return "member/login";
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	
	@RequestMapping(value = "/getProfileImg", method = RequestMethod.GET)
	public void getProfileImg(String userId, HttpServletResponse response) throws Exception {

		ImageVO imageVO = service.getProfileImg(userId);
		if (imageVO != null) {
			response.setContentType(imageVO.getContent_type());
			try (InputStream in = new ByteArrayInputStream(imageVO.getImage_data())) {
				IOUtils.copy(in, response.getOutputStream());
			}
		}
	}

	@RequestMapping(value = "/updateProfileImg", method = RequestMethod.POST)
	public String updateProfileImg(MemberVO vo, MultipartFile file, HttpSession session) throws Exception {
		String profileImg = file.getOriginalFilename();
		String contentType = file.getContentType();
		byte[] imageData = file.getBytes();

		ImageVO imageVO = new ImageVO();
		imageVO.setFile_name(profileImg);
		imageVO.setContent_type(contentType);
		imageVO.setImage_data(imageData);
		imageVO.setUser_id(vo.getUserId());

		service.updateProfileImg(imageVO);

		return "redirect:/";
	}
}