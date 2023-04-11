package com.arco.controller;

import javax.lang.model.element.ModuleElement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.arco.domain.BoardVO;
import com.arco.domain.Criteria;
import com.arco.domain.PageDTO;
import com.arco.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor

public class BoardController {

	private BoardService service;

	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list : "+cri);
		
		model.addAttribute("list", service.getList(cri));

	}


	@GetMapping("/register")
	public void register() {
	}		
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register: " + board);
		service.register(board);
		rttr.addFlashAttribute("result", board.getPost_id());

		return "redirect:/board/list";
	}

	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("post_id") Long post_id, Model model) {

		log.info("/get or modify");
		model.addAttribute("board", service.get(post_id));
	}

	@PostMapping("/modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		log.info("modify:" + board);

		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/list";
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("post_id") Long post_id, RedirectAttributes rttr) {
		log.info("remove..." + post_id);
		if (service.remove(post_id)) {
			rttr.addFlashAttribute("result", "succes");
		}
		return "redirect:/board/list";
	}
}