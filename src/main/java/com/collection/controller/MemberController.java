package com.collection.controller;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.collection.service.MemberService;
import com.collection.vo.ImageVO;
import com.collection.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
    private ServletContext servletContext;
	
	@Autowired
	private DataSource dataSource;
	
	// ȸ������ get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");
		int result = service.idChk(vo);

			if(result == 1) {
				return "/member/register";
			}else if(result == 0) {
				String inputPass = vo.getUserPass();
				String pwd = pwdEncoder.encode(inputPass);
				vo.setUserPass(pwd);
				
				service.register(vo);
			}
			// 요기에서~ 입력된 아이디가 존재한다면 -> 다시 회원가입 페이지로 돌아가기
			// 존재하지 않는다면 -> register
		return "redirect:/";
	}
	
	// �α��� post
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
	
		session.getAttribute("member");
		MemberVO login = service.login(vo);

		// add id chk		
		boolean pwdMatch;
		if (login != null) {
			pwdMatch = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());
		} else {
			pwdMatch = false;
		}
		if (login != null && pwdMatch == true) {
			session.setAttribute("member", login);
		} else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}
		return "redirect:/";
	}
	
	// �α׾ƿ� post
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	// ȸ������ ���� get
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		return "member/memberUpdateView";
	}
	
	// ȸ������ ����  post
	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		
/*		MemberVO login = service.login(vo);
		
		boolean pwdMatch = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());
		if(pwdMatch) {
			service.memberUpdate(vo);
			session.invalidate();
		}else {
			return "member/memberUpdateView";
		}*/
		service.memberUpdate(vo);
		return "redirect:/";
	}
	
	// ȸ�� Ż�� get
	@RequestMapping(value="/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception{
		return "member/memberDeleteView";
	}
	
	// ȸ�� Ż�� post
	@RequestMapping(value="/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
		
		service.memberDelete(vo);
		session.invalidate();
		
		return "redirect:/";
	}
	
	// �н����� üũ
	@ResponseBody
	@RequestMapping(value="/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {

		MemberVO login = service.login(vo);
		boolean pwdChk = pwdEncoder.matches(vo.getUserPass(), login.getUserPass());
		return pwdChk;
	}
	
	// ���̵� �ߺ� üũ
	@ResponseBody
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
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
		
//	    try (Connection conn = dataSource.getConnection()) {
//	        String sql = "SELECT file_name, content_type, image_data FROM image WHERE user_id = ?";
//	        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
//	            pstmt.setString(1, userId);
//	            try (ResultSet rs = pstmt.executeQuery()) {
//	                if (rs.next()) {
//	                    String fileName = rs.getString("file_name");
//	                    String contentType = rs.getString("content_type");
//	                    byte[] imageData = rs.getBytes("image_data");
//
//	                    response.setContentType(contentType);
//	                    try (InputStream in = new ByteArrayInputStream(imageData)) {
//	                        IOUtils.copy(in, response.getOutputStream());
//	                    }
//	                }
//	            }
//	        }
//	    }
	}
	
//	@RequestMapping(value = "/getProfileImg", method = RequestMethod.GET)
//    public void getProfileImg(String userId, HttpServletResponse response) throws Exception {
//        String profileImg = service.getProfileImg(userId);
//        if (profileImg != null) {
//            File file = new File(servletContext.getRealPath("/") + "resources/profileImages/" + profileImg);
//            if (file.exists()) {
//                try (InputStream in = new FileInputStream(file)) {
//                    IOUtils.copy(in, response.getOutputStream());
//                }
//            }
//        }
//    }
	
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

//	    try (Connection conn = dataSource.getConnection()) {
//	        String sql = "INSERT INTO image (file_name, content_type, image_data, user_id) VALUES (?, ?, ?, ?)";
//	        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
//	            pstmt.setString(1, profileImg);
//	            pstmt.setString(2, contentType);
//	            pstmt.setBytes(3, imageData);
//	            pstmt.setString(4, vo.getUserId()); // user_id를 저장할 때 사용자 ID를 이용합니다.
//	            pstmt.executeUpdate();
//	        }
//	    }

	    return "redirect:/";
	}
    
//    @RequestMapping(value = "/updateProfileImg", method = RequestMethod.POST)
//    public String updateProfileImg(MemberVO vo, MultipartFile file, HttpSession session) throws Exception {
//        String profileImg = file.getOriginalFilename();
//        if (!profileImg.isEmpty()) {
//        	vo.setProfileImg(profileImg);
//            String savePath = servletContext.getRealPath("/") + "resources/profileImages/";
//            File saveDir = new File(savePath);
//            if (!saveDir.exists()) {
//                saveDir.mkdirs();
//            }
//            File targetFile = new File(savePath + profileImg);
//            try {
//                file.transferTo(targetFile);
//            } catch (Exception e) {
//                // 파일 저장 실패 시 예외 처리
//            }
//        }
//        service.updateProfileImg(vo);
//        session.setAttribute("profile", vo);
//        return "redirect:/member/mypage";
//    }

	// mypage my writings
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String myPage(Model model, HttpSession session) throws Exception {
		MemberVO member = (MemberVO) session.getAttribute("member");
		String userId = member.getUserId();

		model.addAttribute("collectionRevs", service.getMemberCollectionRevs(userId));
		model.addAttribute("posts", service.getMemberPosts(userId));
		model.addAttribute("comments", service.getMemberComments(userId));

		return "member/mypage";
	}
}




