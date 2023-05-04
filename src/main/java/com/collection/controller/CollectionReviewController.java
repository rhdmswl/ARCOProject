package com.collection.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.collection.domain.CollectionReviewPageDTO;
import com.collection.domain.CollectionReviewVO;
import com.collection.domain.Criteria;
import com.collection.service.CollectionReviewService;

import lombok.extern.log4j.Log4j;

@RestController
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
    public ResponseEntity<CollectionReviewPageDTO> getList(@PathVariable("pageNum") int pageNum,
            @PathVariable("seq") long seq) {
        log.info("getList.............");
        Criteria cri = new Criteria(pageNum, 12);
        cri.setSeq(seq);
        log.info(cri);
        log.info("결과"+service.getListPage(cri, seq));
        return new ResponseEntity<>(service.getListPage(cri, seq), HttpStatus.OK);

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

}