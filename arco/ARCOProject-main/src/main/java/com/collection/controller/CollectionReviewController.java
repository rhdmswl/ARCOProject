package com.collection.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;
import com.collection.domain.PageDTO;
import com.collection.service.CollectionReviewService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/review")

public class CollectionReviewController {

	@Autowired
	private CollectionReviewService service;

	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody CollectionReviewVO vo) {
		log.info("CollectionReviewVO : " + vo);
		int insertCount = service.register(vo);
		log.info("Review Insert Count : " + insertCount);

		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@GetMapping(value = "/pages/{seq}/{pageNum}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<CollectionReviewVO>> getList(@PathVariable("pageNum") int pageNum,
			@PathVariable("seq") long seq) {
		log.info("getList.............");
		Criteria cri = new Criteria(pageNum, 10);
		log.info(cri);

		return new ResponseEntity<>(service.getList(cri, seq), HttpStatus.OK);

	}

	@GetMapping(value = "/{revSeq}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<CollectionReviewVO> get(@PathVariable("revSeq") long revSeq) {
		log.info("get" + revSeq);
		return new ResponseEntity<>(service.get(revSeq), HttpStatus.OK);
	}

	 @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value="/{revSeq}",
			  consumes = "application/json",
			  produces = {MediaType.TEXT_PLAIN_VALUE}) 
	  public ResponseEntity<String> modify(@RequestBody CollectionReviewVO vo, @PathVariable("revSeq") long revSeq) { 
		  log.info("modify......" + vo);
		  
		  vo.setRevSeq(revSeq);
		  log.info("revSeq : " + revSeq);
		  log.info("modify: " + vo);
		  
	  
	  return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) :
		  new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	  }
	 
	
	
	@DeleteMapping(value="/{revSeq}", produces = {MediaType.APPLICATION_XML_VALUE,
			  								  MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<String> remove(@PathVariable("revSeq") long revSeq) {
		log.info("remove......" + revSeq);
		return service.remove(revSeq) == 1 ? new ResponseEntity<>("success", HttpStatus.OK):
			new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

//	
//	@GetMapping("/list")
//	public String list(Criteria cri, Model model) {
//		log.info("list:" + cri);
//		model.addAttribute("list", service.getList(cri));
//		model.addAttribute("pageMaker",new PageDTO(cri, 123));
//		
//		return "get";
//	}
//	
//	@GetMapping("/register")
//	public String register(CollectionReviewVO review, RedirectAttributes rttr) {
//		log.info("register: " + review);
//		
//		service.register(review);
//		
//		rttr.addFlashAttribute("result" + review.getRevSeq());
//		
//		return "redirect:/review/lsit";
//	}

	@PostMapping("/register")
	public String register(CollectionReviewVO review, RedirectAttributes rttr) {
		log.info("register : " + review);
		service.register(review);
		rttr.addFlashAttribute("result", review.getSeq());

		return "redirect:/collection/get?seq=" + review.getSeq();
	}

//	
//	@GetMapping({"/get","/modify"})
//	public void get(@RequestParam("seq") long seq,@ModelAttribute("cri") Criteria cri, Model model) {
//		log.info("/get or modify");
//		model.addAttribute("review", service.get(seq));
//	}
//	
//	
//	@PostMapping("/modify") public String modify(CollectionReviewVO review, RedirectAttributes rttr) { 
//		log.info("modify......" + review);
//		if(service.modify(review)) { rttr.addFlashAttribute("resulst", "success"); }
//			  return "redirect::/review/get?seq=" + review.getSeq(); }
//
//			
//	
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