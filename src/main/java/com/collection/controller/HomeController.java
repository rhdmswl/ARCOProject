package com.collection.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.collection.domain.CollectionVO;
import com.collection.domain.Criteria;
import com.collection.service.CollectionService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/")
@AllArgsConstructor
public class HomeController {
	private CollectionService service;

	@GetMapping("/")
	public String index(Model model, Criteria cri) {
		model.addAttribute("list", service.getList(cri));
		return "index";
	}
}
