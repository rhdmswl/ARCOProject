package com.collection.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.XML;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.collection.domain.CollectionVO;
import com.collection.service.CollectionServiceImpl;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class CollectionReviewControllerTests {

	@Autowired
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void testList() throws Exception {
		
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/review/list"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
			
	}
	
	@Test
	public void testRegister() throws Exception {
		
		String resultPage = mockMvc
				.perform(MockMvcRequestBuilders.post("/review/register")
						.param("seq", String.valueOf(207375))
						.param("nickName", "아웃사이드히터")
						.param("revComment", "올해우승은현건"))
				.andReturn().getModelAndView().getViewName();
		log.info(resultPage);
		
	}
	
	@Test
	public void testGet() throws Exception {
		
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/review/get").param("seq", "207375"))
				.andReturn()
				.getModelAndView()
				.getModelMap());
		
	}
	
	@Test
	public void testmodify() throws Exception {
		
		String resultPage = mockMvc
				.perform(MockMvcRequestBuilders.post("/review/modify")
						.param("seq", String.valueOf(207375))
						.param("revSeq", String.valueOf(130))
						.param("revComment", "아포짓스파이커"))
				.andReturn().getModelAndView().getViewName();
		log.info(resultPage);
		
	}
	
	@Test
	public void testRemove() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/review/remove")
						.param("revSeq", "132"))
				.andReturn().getModelAndView().getViewName();
		log.info(resultPage);
		
	}
	
	
	@Test
	public void testListPaging() throws Exception {
		
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/review/list")
				.param("seq", "207375")
				.param("pageNum", "1"))
				.andReturn().getModelAndView().getModelMap());
		
	}
	
	
	
				



}
