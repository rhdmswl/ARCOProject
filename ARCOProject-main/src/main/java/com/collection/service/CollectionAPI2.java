package com.collection.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.XML;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;

import com.collection.domain.CollectionVO;

public class CollectionAPI2 {
		
	public static void main(String[] args)throws IOException, ParseException {
		
		
		// 기간별
		StringBuilder urlBuilder = new StringBuilder(
				"http://www.culture.go.kr/openapi/rest/publicperformancedisplays/d/"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=egRwJCG3SGkAZ82SPT3oRYlbbuZGTU6yDn5oUNHoj07yCst4ynaHqJnigaas910jwFhHr23p3IHHgi5kgOOaDw%3D%3D");																											
//		urlBuilder.append("&" + URLEncoder.encode("keyword", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8"));
//		urlBuilder.append("&" + URLEncoder.encode("sortStdr", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 1:등록일, 2:공연명, 3:지역 */
		urlBuilder.append("&" + URLEncoder.encode("ComMsgHeader", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("RequestTime", "UTF-8") + "=" + URLEncoder.encode("20230401:20230601", "UTF-8")); /* Optional 필드 */
		urlBuilder.append("&" + URLEncoder.encode("CallBackURI", "UTF-8") + "="+ URLEncoder.encode("", "UTF-8")); /* Optional 필드 */
		urlBuilder.append("&" + URLEncoder.encode("MsgBody", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("seq", "UTF-8") + "=" + URLEncoder.encode("240024", "UTF-8")); /**/
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
				
				
//				System.out.println(sb.toString());
				

				org.json.JSONObject json = XML.toJSONObject(sb.toString());
				  
				  String result = json.toString(); 
				  System.out.println(result);
				  System.out.println();
				  
				  JSONParser parser = new JSONParser(); 
				  JSONObject obj = (JSONObject)parser.parse(json.toString()); 
				  System.out.println();
				  
				  JSONObject response = (JSONObject) obj.get("response");		  
				  JSONObject msgBody = (JSONObject) response.get("msgBody");
//				  System.out.println(msgBody);
				  JSONObject perforInfo = (JSONObject) msgBody.get("perforInfo");

								  long seq = (long) perforInfo.get("seq");
								  String price = (String) perforInfo.get("price");
								  String collectionUrl = (String)perforInfo.get("url");
								  String place = (String)perforInfo.get("place");
								  String phone = (String)perforInfo.get("phone");
								  String placeAddr = (String)perforInfo.get("placeAddr");
//								  
								  System.out.println(seq + " " + place + " " + price + " " + collectionUrl + " " + phone + " " + placeAddr);	 
								  
							  
						 
					 
				  
				  
				rd.close();
				conn.disconnect();	
	
	}
}
