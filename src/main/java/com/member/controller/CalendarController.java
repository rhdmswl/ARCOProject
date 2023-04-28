package com.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.member.service.CalendarService;
import com.member.vo.CalendarVO;
import com.member.vo.MemberVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/calendar")
public class CalendarController {
	
	@Autowired
	public CalendarService service;
	
	@GetMapping(value="/list", produces = { MediaType.TEXT_PLAIN_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE })
	@ResponseBody
	public String calendarList(Model model, HttpSession session) {
		
		MemberVO vo = (MemberVO) session.getAttribute("member");
		
		String userId = null;
		if (vo != null) {
			userId = vo.getUserId();
		}
		System.out.println(userId);
		
		List<CalendarVO> list = (List<CalendarVO>) service.calendarList(userId);
		
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		
		HashMap<String, Object> hash = new HashMap<>();
		
		for (CalendarVO calendar : list) {
			hash.put("userId", calendar.getUser_id());
			hash.put("seq", calendar.getSeq());
			hash.put("title", calendar.getTitle());
			hash.put("start", calendar.getStart_date());
			hash.put("end", calendar.getEnd_date());
			hash.put("color", calendar.getColor());
			jsonObj = new JSONObject(hash);
			jsonArr.add(jsonObj);
		}
		
		String result = jsonArr.toString();
		
		return result;
	}
	
	
	@RequestMapping(method = {RequestMethod.POST}, value="/update")
	public String colorUpdate(@RequestBody String filterJSON, HttpServletRequest request, 
			HttpServletResponse response, Model model, HttpSession session) throws JsonParseException, Exception, IOException {
		
		MemberVO vo = (MemberVO) session.getAttribute("member");
		
		JSONObject obj = new JSONObject();
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		ObjectMapper mapper = new ObjectMapper();
		CalendarVO calendar = (CalendarVO) mapper.readValue(filterJSON, new TypeReference<CalendarVO>() {});
		
		Long seq = calendar.getSeq();
		String color = calendar.getColor();
		
		calendar.setUser_id(vo.getUserId());
		calendar.setSeq(seq);
		calendar.setColor(color);
		
		service.colorUpdate(calendar);
		
		log.info("user_id : " + vo.getUserId());
		log.info("colorUpdate : " + calendar);
		
		obj.put("success", "ok");
		out.print(obj);
		
		return null;
		
	}
	
}
