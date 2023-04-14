package com.collection.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.collection.domain.CollectionReviewVO;
import com.collection.service.CollectionReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/review")
@AllArgsConstructor
public class CollectionReviewController {
	
	private CollectionReviewService service;
	
	
	@GetMapping
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}
	
//	@PostMapping("/register")
//	public String register(CollectionReviewVO review, RedirectAttributes rttr) {
//		log.info("register : " + review);
//		service.register(review);
//		rttr.addFlashAttribute("result", review.getSeq());
//		
//		return "redirect:/collection/get?seq=" + review.getSeq();
//	}
	
//	@GetMapping({"/get", "/modify"})
//	public void get(@RequestParam("seq") long seq, Model model) {
//		log.info("/get or modify");
//		model.addAttribute("review", service.get(seq));
//	}
	
	/*
	 * @PostMapping("/modify") public String modify(CollectionReviewVO review,
	 * RedirectAttributes rttr) { log.info("modify......" + review);
	 * 
	 * if(service.modify(review)) { rttr.addFlashAttribute("resulst", "success"); }
	 * return "redirect::/review/get?seq=" + review.getSeq(); }
	 */
	
//	@PostMapping("/remove")
//	public String remove(CollectionReviewVO review, RedirectAttributes rttr) {
//		log.info("remove......" + review);
//		
//		if(service.remove(review.getRevSeq())) {
//			rttr.addFlashAttribute("resulst", "success");
//		}
//		return "redirect::/review/get?seq=" + review.getSeq();
//	}
	
}
