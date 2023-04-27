package com.member.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
			hash.put("title", calendar.getTitle());
			hash.put("start", calendar.getStart_date());
			hash.put("end", calendar.getEnd_date());
			jsonObj = new JSONObject(hash);
			jsonArr.add(jsonObj);
		}
		
		String result = jsonArr.toString();
		
		return result;
	}
}
