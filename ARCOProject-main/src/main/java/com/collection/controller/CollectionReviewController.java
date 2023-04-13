package com.collection.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.collection.domain.CollectionReviewVO;
import com.collection.service.CollectionReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/reviews")
@Controller
@Log4j
@AllArgsConstructor
public class CollectionReviewController {
	
	@Autowired
	private CollectionReviewService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}
	
	@PostMapping("/register")
	public String resiger(CollectionReviewVO review, RedirectAttributes rttr) {
		log.info("register : " + review);
		service.register(review);
		rttr.addFlashAttribute("result", review.getSeq());
		
		return "redirect:/collection/get?seq" + review.getRevSeq();
	}
	
//	@PostMapping(value="/register", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
//	public ResponseEntity<String> create(@RequestBody CollectionReviewVO vo){
//		
//		log.info("CollectionReviewVO :" + vo);
//		int insertCount = service.register(vo);
//		
//		log.info("Review insert count : " + insertCount);
//		
//		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//	}
	
	@GetMapping(value = "/{seq}", produces = { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<CollectionReviewVO> get(@PathVariable("seq") long seq){
		log.info("get : " + seq);
		
		return new ResponseEntity<>(service.get(seq), HttpStatus.OK);
	}
	
}
