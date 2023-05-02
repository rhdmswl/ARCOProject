package com.collection.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arco.service.BoardService;
import com.collection.domain.Criteria;
import com.collection.domain.PageDTO;
import com.collection.service.CollectionService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/")
@AllArgsConstructor
public class HomeController {
	private CollectionService service;
	private BoardService boardService;

	@GetMapping("/")
	public String index(Model model,Criteria cri) {
		 int total = service.getTotal(cri); 
		 log.info(total); 
		 log.info(cri);
		 cri.setpageNumForLimit();
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("board", service.getIndexList());
		model.addAttribute("best", boardService.getBest());
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "/index";
	}
	
	@GetMapping("/about")
	public String about() {
		return "/team";
	}
}
