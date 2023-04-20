package com.collection.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.collection.domain.CollectionVO;
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
	
//	@PostMapping("/registerOthers")
//	public void resisterOthers(CollectionVO collection) {
//		service.insertOthers(collection);
//	}
	
	@GetMapping("/index")
	public String index(Model model) {
		model.addAttribute("list", service.getList());
		return "index";
	}

	
//	@GetMapping("/get")
//	public String get(Model model) {
//		model.addAttribute("207375L", service.getList());
//		return "single";
//	}
	
	@GetMapping("/get")
	public String get(@RequestParam("seq") long seq, Model model) {
		log.info("/get");
		model.addAttribute("collection", service.get(seq));
		return "collection/get";
	}
	
	@GetMapping("/list")
	public String getList(Model model) {
		model.addAttribute("list", service.getList());
		return "collection/list";
	}
	
}
