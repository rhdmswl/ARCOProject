package com.arco.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.arco.domain.Criteria;
import com.arco.domain.ReplyVO;
import com.arco.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/replies/")
@RestController
@Log4j
@AllArgsConstructor
public class ReplyController {
	
	private ReplyService service;
	
	// 댓글 등록
	// 브라우저(JSON 타입의 댓글 데이터 전송)
	// 서버(댓글 처리 결과 문자열로 반환)
	@PostMapping(value="/new",
			consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReplyVO vo) {
		
		log.info("ReplyVO:" + vo);
		
		int insertCount = service.register(vo);
		
		log.info("Reply INSERT COUNT:" + insertCount);
		
		return insertCount == 1 
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 특정 게시물 댓글 목록 확인
	@GetMapping(value = "/pages/{post_id}/{pageNum}",
			produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<ReplyVO>> getList(
			@PathVariable("pageNum") int pageNum, @PathVariable("post_id") Long post_id) {
		
		log.info("getList......");
		Criteria cri = new Criteria(pageNum, 10);
		log.info(cri);
		
		return new ResponseEntity<>(service.getList(cri, post_id), HttpStatus.OK);
	}
	
	
	// 댓글 조회
	@GetMapping(value = "/{com_id}",
			produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyVO> get(@PathVariable("com_id") Long com_id) {
		
		log.info("get : " + com_id);
		
		return new ResponseEntity<>(service.get(com_id), HttpStatus.OK);
	}
	
	
	// 댓글 삭제
	@DeleteMapping(value = "/{com_id}",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("com_id") Long com_id) {
		
		log.info("remove : " + com_id);
		
		return service.remove(com_id) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	// 댓글 수정
	
	  @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value =
	  "/{com_id}", consumes = "application/json", produces =
	  {MediaType.TEXT_PLAIN_VALUE}) public ResponseEntity<String> modify(
	  
	  @RequestBody ReplyVO vo, @PathVariable("com_id") Long com_id) {
	  
	  vo.setCom_id(com_id);
	  
	  log.info("com_id : " + com_id); log.info("modify : " + vo);
	  
	  return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) 
			  : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	  
	  }
	 
}

