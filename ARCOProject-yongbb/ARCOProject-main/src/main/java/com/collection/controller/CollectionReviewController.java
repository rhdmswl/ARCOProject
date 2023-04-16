package com.collection.controller;

import java.util.List;

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

import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;
import com.collection.service.CollectionReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/review")
@AllArgsConstructor
public class CollectionReviewController {
	
	private CollectionReviewService service;
	
	
	
	@GetMapping(value="/pages/{seq}/{pageNum}", produces = {MediaType.APPLICATION_XML_VALUE,
														MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<CollectionReviewVO>> getlist(@PathVariable("pageNum") int pageNum, @PathVariable("seq") long seq) {
		log.info("getList................");
		Criteria cri = new Criteria(pageNum,10);
		log.info(cri);
		return new ResponseEntity<>(service.getList(cri, seq), HttpStatus.OK); 
	}
	
	@PostMapping(value="/new", consumes ="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody CollectionReviewVO review) {
		log.info("CollectionReviewVO : " + review);

		int insertCount = service.register(review);
		
		log.info("Review insert count : " + insertCount);
		
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) :
			new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value="/{revSeq}", produces = {MediaType.APPLICATION_XML_VALUE,
										  MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<CollectionReviewVO> get(@PathVariable("revSeq") long revSeq) {
		log.info("get" + revSeq);
		return new ResponseEntity<>(service.get(revSeq), HttpStatus.OK);
	}
	
	  @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value="/{revSeq}",
			  consumes = "application/json",
			  produces = {MediaType.TEXT_PLAIN_VALUE}) 
	  public ResponseEntity<String> modify(@RequestBody CollectionReviewVO review, @PathVariable("revSeq") long revSeq) { 
		  log.info("modify......" + review);
		  
		  review.setRevSeq(revSeq);
		  log.info("revSeq : " + revSeq);
		  log.info("modify: " + review);
		  
	  
	  return service.modify(review) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) :
		  new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	  }
	 
	
	
	@DeleteMapping(value="/{revSeq}", produces = {MediaType.APPLICATION_XML_VALUE,
			  								  MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<String> remove(@PathVariable("revSeq") long revSeq) {
		log.info("remove......" + revSeq);
		return service.remove(revSeq) == 1 ? new ResponseEntity<>("success", HttpStatus.OK):
			new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
