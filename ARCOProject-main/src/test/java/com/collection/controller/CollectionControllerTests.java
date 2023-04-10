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
public class CollectionControllerTests {

	@Autowired
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}

	@Test
	public void testRegister() throws Exception {

		StringBuilder urlBuilder = new StringBuilder("http://www.culture.go.kr/openapi/rest/publicperformancedisplays/period"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=RWSgJIZJGBT%2Ffvaa0MRUzKHyhOGU4o8aFquLScMfTvtKypjNwb9U4oJ9KbK9UvkBNPiovUrxZGj4K%2Fa651ZaXA%3D%3D");
//		urlBuilder.append("&" + URLEncoder.encode("keyword", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8"));
//		urlBuilder.append("&" + URLEncoder.encode("sortStdr", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 1:등록일, 2:공연명, 3:지역 */
		urlBuilder.append("&" + URLEncoder.encode("ComMsgHeader", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("RequestTime", "UTF-8") + "="  + URLEncoder.encode("20230410:00000000", "UTF-8")); /* Optional 필드 */
		urlBuilder.append("&" + URLEncoder.encode("CallBackURI", "UTF-8") + "="  + URLEncoder.encode("", "UTF-8")); /* Optional 필드 */
		urlBuilder.append("&" + URLEncoder.encode("MsgBody", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("from", "UTF-8") + "=" + URLEncoder.encode("20230101", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("to", "UTF-8") + "=" + URLEncoder.encode("20230601", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("cPage", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("rows", "UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /* 3~100 */

		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}

		org.json.JSONObject json = XML.toJSONObject(sb.toString());

		String result = json.toString();
//				  System.out.println(result);
		System.out.println();

		JSONParser parser = new JSONParser();
		JSONObject obj = (JSONObject) parser.parse(json.toString());
		System.out.println();
		try {
			JSONObject response = (JSONObject) obj.get("response");
			JSONObject msgBody = (JSONObject) response.get("msgBody");
//				  JSONObject perforList = (JSONObject) msgBody.get("perforList");

			JSONArray objArr = (JSONArray) msgBody.get("perforList");

			for (int i = 0; i < objArr.size(); i++) {
				JSONObject perfor = (JSONObject) objArr.get(i);
				long seq = (long) perfor.get("seq");
				String seq_ = String.valueOf(seq);
				String title = (String) perfor.get("title");
				String startDate_ = perfor.get("startDate").toString();
				String endDate_ = perfor.get("endDate").toString();
				String startDate = "";
				String endDate = "";
				startDate = startDate_.substring(0, 4) + "/" + startDate_.substring(4, 6) + "/"
						+ startDate_.substring(6);
				endDate = endDate_.substring(0, 4) + "/" + endDate_.substring(4, 6) + "/" + endDate_.substring(6);
				String realmName = (String) perfor.get("realmName");
				String thumbnail = (String) perfor.get("thumbnail");
				String gpsX_ = ((Object) perfor.get("gpsX")).toString();
				String gpsY_ = ((Object) perfor.get("gpsY")).toString();

				double gpsX = 0.0;
				double gpsY = 0.0;
				try {
					gpsX = Double.valueOf(gpsX_).doubleValue();
					gpsY = Double.valueOf(gpsY_).doubleValue();
				} catch (NumberFormatException e) {
					System.out.println("NumberFormatException occurred!");
				} catch (Exception e) {
				}

				String price = "";
				String collectionUrl = "";
				String place = "";
				String phone = "";
				String placeAddr = "";
				String area = "";
				String imgUrl = "";

				StringBuilder urlBuilder2 = new StringBuilder("http://www.culture.go.kr/openapi/rest/publicperformancedisplays/d/"); /* URL */
				urlBuilder2.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=RWSgJIZJGBT%2Ffvaa0MRUzKHyhOGU4o8aFquLScMfTvtKypjNwb9U4oJ9KbK9UvkBNPiovUrxZGj4K%2Fa651ZaXA%3D%3D");
//						urlBuilder.append("&" + URLEncoder.encode("keyword", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8"));
//						urlBuilder.append("&" + URLEncoder.encode("sortStdr", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 1:등록일, 2:공연명, 3:지역 */
				urlBuilder2.append("&" + URLEncoder.encode("ComMsgHeader", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
				urlBuilder2.append("&" + URLEncoder.encode("RequestTime", "UTF-8") + "=" + URLEncoder.encode("00000000:00000000", "UTF-8")); /* Optional 필드 */
				urlBuilder2.append("&" + URLEncoder.encode("CallBackURI", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* Optional 필드 */
				urlBuilder2.append("&" + URLEncoder.encode("MsgBody", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
				urlBuilder2.append("&" + URLEncoder.encode("seq", "UTF-8") + "=" + URLEncoder.encode(seq_, "UTF-8")); /**/

				URL url2 = new URL(urlBuilder2.toString());
				HttpURLConnection conn2 = (HttpURLConnection) url2.openConnection();
				conn2.setRequestMethod("GET");
				conn2.setRequestProperty("Content-type", "application/json");
				System.out.println("Response code: " + conn2.getResponseCode());
				BufferedReader rd2;
				if (conn2.getResponseCode() >= 200 && conn2.getResponseCode() <= 300) {
					rd2 = new BufferedReader(new InputStreamReader(conn2.getInputStream()));
				} else {
					rd2 = new BufferedReader(new InputStreamReader(conn2.getErrorStream()));
				}
				StringBuilder sb2 = new StringBuilder();
				String line2;
				while ((line2 = rd2.readLine()) != null) {
					sb2.append(line2);
				}

				try {
				json = XML.toJSONObject(sb2.toString());
				parser = new JSONParser();

					JSONObject obj2 = (JSONObject) parser.parse(json.toString());

					JSONObject response2 = (JSONObject) obj2.get("response");
					JSONObject msgBody2 = (JSONObject) response2.get("msgBody");

					JSONObject perforInfo = (JSONObject) msgBody2.get("perforInfo");
					price = (String) perforInfo.get("price");
					collectionUrl = (String) perforInfo.get("url");
					place = (String) perforInfo.get("place");
					phone = (String) perforInfo.get("phone");
					placeAddr = (String) perforInfo.get("placeAddr");
					area = (String) perforInfo.get("area");
					imgUrl = (String) perforInfo.get("imgUrl");

				} catch (NullPointerException e) {
					System.out.println("NullPointerException ocuured!!");
				} catch (Exception e) {
				}

				String resultPage = mockMvc
						.perform(MockMvcRequestBuilders.post("/collection/register")
								.param("seq", String.valueOf(seq))
								.param("title", title)
								.param("startDate", startDate)
								.param("endDate", endDate)
								.param("realmName", realmName)
								.param("thumbnail", thumbnail)
								.param("gpsX", gpsX_)
								.param("gpsY", gpsY_)
								.param("price", price)
								.param("url", collectionUrl)
								.param("place", place)
								.param("phone", phone)
								.param("placeAddr", placeAddr)
								.param("area", area)
								.param("imgUrl", imgUrl))
						.andReturn().getModelAndView().getViewName();
				log.info(resultPage);

				/*
				 * String resultPage = mockMvc
				 * .perform(MockMvcRequestBuilders.post("/collection/registerOthers")
				 * .param("seq", String.valueOf(seq_info)) .param("price", price) .param("url",
				 * collectionUrl) .param("place", place) .param("phone", phone)
				 * .param("placeAddr", placeAddr) .param("area", area)
				 * ).andReturn().getModelAndView().getViewName(); log.info(resultPage);
				 */

			}
		} catch (NullPointerException e) {
			System.out.println("NullPointerException ocuured!!");
		} catch (Exception e) {
	}

		rd.close();
		conn.disconnect();

	}

}
