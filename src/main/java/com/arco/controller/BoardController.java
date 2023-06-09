package com.arco.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arco.domain.BoardVO;
import com.arco.domain.Criteria;
import com.arco.domain.LikeVO;
import com.arco.domain.PageDTO;
import com.arco.service.BoardService;
import com.member.vo.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor

public class BoardController {

	@Autowired
	private BoardService service;

	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		cri.setpageNumForLimit();
		log.info("list : "+cri);
		
		model.addAttribute("list", service.getList(cri));
		
		int total= service.getTotal(cri);
		log.info("best : "+cri);
		log.info("total: "+total);
		
		model.addAttribute("pageMaker", new PageDTO(cri,total));
	}


	@GetMapping("/register")
	public String register(@ModelAttribute("cri") Criteria cri){
		log.info("register");
		
		return "/board/register";
	}		
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr, @ModelAttribute("cri") Criteria cri) {
		log.info("register: " + board);
		
		String contents = ((String)board.getPost_content()).replace("\r\n","<br>");
		board.setPost_content(contents);
		service.register(board);
		
		rttr.addFlashAttribute("result", board.getPost_id());
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("brd_id", cri.getBrd_id());
		

		return "redirect:/board/list";
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("post_id") Long post_id, @ModelAttribute("cri") Criteria cri,Model model) {
		log.info("/get or modify");

		BoardVO board= new BoardVO();
		service.updateViewCount(post_id);
		board=service.get(post_id);
		
		String content = board.getPost_content();
	    model.addAttribute("content", content);//조회용
	    
		String contents = ((String)board.getPost_content()).replace("<br>","\r\n");
		board.setPost_content(contents);
		model.addAttribute("board", board);//수정용
		
		
		log.info("post_id: " + post_id);	
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/updateLike", method = RequestMethod.POST)
	public int updateLike(@RequestBody LikeVO like,Model model) {
		
		int findLike=service.findLike(like);
		if(findLike == 0) {
			//좋아요 처음누름
			service.insertLike(like);
			service.updateLike(like.getPost_id());	//게시판테이블 +1
		}else if(findLike == 1) {
			service.updateLikeCancel(like.getPost_id()); //게시판테이블 - 1
			service.deleteLike(like); //like테이블 삭제
		}
		log.info(findLike);
		return findLike;
	}

	@PostMapping("/modify")
	public String modify(BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify:" + board);

		String contents = ((String)board.getPost_content()).replace("\r\n","<br>");
		board.setPost_content(contents);
		
		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("brd_id", cri.getBrd_id());
		
		return "redirect:/board/list";
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("role") String role,@RequestParam("post_id") Long post_id,@ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("remove..." + post_id);
		System.out.println(role);
		if (service.remove(post_id)) {
			service.removeComment(post_id);
			rttr.addFlashAttribute("result", "succes");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("brd_id", cri.getBrd_id());
		return "redirect:/board/list";
	}
	
	@PostMapping("/moveboard")
	public String moveboard(BoardVO board,@RequestParam("moveBoardId") Integer moveBoardId,@RequestParam("postId") Long postId, RedirectAttributes rttr) {
		board.setBrd_id(moveBoardId);
		board.setPost_id(postId);
		log.info("moveBoard:" + board);
		service.moveBoard(board);

		rttr.addAttribute("brd_id", board.getBrd_id());
		
		return "redirect:/board/list";
	}
}