package com.collection.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.collection.domain.CollectionDibsVO;
import com.collection.domain.CollectionReviewPageDTO;
import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;
import com.collection.service.CollectionDibsService;
import com.collection.service.CollectionReviewService;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/dibs")

public class CollectionDibsController {

	@Autowired
	private CollectionDibsService service;

	@PostMapping(value = "/add", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody CollectionDibsVO vo) {
		log.info("CollectionDibsVO : " + vo);
		int insertCount = service.add(vo);

		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}



}