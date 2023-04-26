package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.member.service.CalendarService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/calendar")
public class CalendarController {
	
	@Autowired
	public CalendarService service;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public String calendarList(Model model) {
		
		log.info("calendar list");
		model.addAttribute(service.calendarList());
		return "/calendarList";
	}
}
