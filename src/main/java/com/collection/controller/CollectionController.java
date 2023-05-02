package com.collection.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.collection.domain.CollectionDibsVO;
import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;
import com.collection.domain.PageDTO;
import com.collection.service.CollectionDibsService;
import com.collection.service.CollectionService;
import com.member.vo.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/collection/")
@AllArgsConstructor
public class CollectionController {

	private CollectionService service;
	private CollectionDibsService dibsService;
	
	@PostMapping("/register")
	public void register(CollectionVO collection) {
		service.insert(collection);
	}
	
	
	@GetMapping("/index")
	public void index(Model model, Criteria cri) { 
		int total = service.getTotal(cri); log.info(total); 
		log.info(cri);
	    cri.setpageNumForLimit(); 
	    model.addAttribute("list", service.getList(cri));
	    model.addAttribute("pageMaker", new PageDTO(cri, total)); }
	 
	
	@GetMapping("/get")
	public void get(@RequestParam("seq") long seq, Model model,HttpSession session) {
		log.info("/get");
		MemberVO vo = (MemberVO) session.getAttribute("member");
	    String userId = null;
	    if (vo != null) {
	    	userId = vo.getUserId();
	    }
	    CollectionDibsVO dibsvo= new CollectionDibsVO();
	    dibsvo.setUserId(userId);
	    dibsvo.setSeq(seq);
	    
	    model.addAttribute("dibs",dibsService.check(dibsvo));
		model.addAttribute("collection", service.get(seq));
		service.revViewCount(seq);
		service.reviewCount(seq);
		service.starAvg(seq);
	}
	
	@GetMapping("/list")
	public void getList(Model model, Criteria cri) {
		int total = service.getTotal(cri);
		log.info(total);
		log.info(cri);
		cri.setpageNumForLimit();
		model.addAttribute("list", service.getList(cri));
//		model.addAttribute("sort", service.getListSort(cri));      
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
}


