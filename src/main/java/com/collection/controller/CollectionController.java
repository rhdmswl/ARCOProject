package com.collection.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;
import com.collection.domain.PageDTO;
import com.collection.service.CollectionService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/collection/")
@AllArgsConstructor
public class CollectionController {

	private CollectionService service;
	
	@PostMapping("/register")
	public void register(CollectionVO collection) {
		service.insert(collection);
	}
	
	@GetMapping("/index")
	public String index(Model model, Criteria cri) {
		model.addAttribute("list", service.getList(cri));
		return "/index";
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("seq") long seq, Model model) {
		log.info("/get");
		model.addAttribute("collection", service.get(seq));
		service.revViewCount(seq);
	}
	
	@GetMapping("/list")
	public void getList(Model model, Criteria cri) {
		int total = service.getTotal(cri);
		log.info(total);
		log.info(cri);
		cri.setpageNumForLimit();
		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
}
