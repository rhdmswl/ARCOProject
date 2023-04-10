package com.collection.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@PostMapping("/registerOthers")
	public void resisterOthers(CollectionVO collection) {
		service.insertOthers(collection);
	}
	
	@GetMapping("/index")
	public String idex() {
		return "index";
	}
	
	@GetMapping("/get")
	public String get() {
		return "single";
	}
	
	
}
