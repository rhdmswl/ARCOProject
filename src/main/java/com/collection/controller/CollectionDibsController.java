package com.collection.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;


import com.collection.domain.CollectionDibsVO;

import com.collection.service.CollectionDibsService;


import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/dibs")

public class CollectionDibsController {

	@Autowired
	private CollectionDibsService service;

	@PostMapping(value = "/add", consumes = "application/json", produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> create(@RequestBody CollectionDibsVO vo) {
		log.info("CollectionDibsVO : " + vo);
		ResponseEntity<String> result;
		int checkDibs=service.check(vo);
		if (checkDibs>0) {
			service.cancel(vo);
			result = new ResponseEntity<>("찜을 취소하였습니다", HttpStatus.OK);
		}
		else {
			service.add(vo);
			result = new ResponseEntity<>("전시를 찜하였습니다", HttpStatus.OK);
		}
		
		return result;
	}
}