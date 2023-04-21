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

public class CollectionAPI {
		
	public static void main(String[] args)throws IOException, ParseException {
		
		
		// 기간별
		StringBuilder urlBuilder = new StringBuilder(
				"http://www.culture.go.kr/openapi/rest/publicperformancedisplays/period"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=egRwJCG3SGkAZ82SPT3oRYlbbuZGTU6yDn5oUNHoj07yCst4ynaHqJnigaas910jwFhHr23p3IHHgi5kgOOaDw%3D%3D");																											
//		urlBuilder.append("&" + URLEncoder.encode("keyword", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8"));
//		urlBuilder.append("&" + URLEncoder.encode("sortStdr", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 1:등록일, 2:공연명, 3:지역 */
		urlBuilder.append("&" + URLEncoder.encode("ComMsgHeader", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
//		urlBuilder.append("&" + URLEncoder.encode("RequestTime", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* Optional 필드 */
//		urlBuilder.append("&" + URLEncoder.encode("CallBackURI", "UTF-8") + "="+ URLEncoder.encode("", "UTF-8")); /* Optional 필드 */
		urlBuilder.append("&" + URLEncoder.encode("MsgBody", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("from", "UTF-8") + "=" + URLEncoder.encode("20230401", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("to", "UTF-8") + "=" + URLEncoder.encode("20230601", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("cPage", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("rows", "UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /* 3~100 */
		urlBuilder.append("&" + URLEncoder.encode("place", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
	
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
//				  System.out.println(result);
				  System.out.println();
				  
				  JSONParser parser = new JSONParser(); 
				  JSONObject obj = (JSONObject)parser.parse(json.toString()); 
				  System.out.println();
				  
				  JSONObject response = (JSONObject) obj.get("response");		  
				  JSONObject msgBody = (JSONObject) response.get("msgBody");
//				  JSONObject perforList = (JSONObject) msgBody.get("perforList");
				  
				  JSONArray objArr = (JSONArray) msgBody.get("perforList");
						  
				  
				  CollectionServiceImpl service = new CollectionServiceImpl();
				  CollectionVO vo = new CollectionVO();
				  for(int i = 0; i < objArr.size(); i++) {
					  JSONObject perfor = (JSONObject) objArr.get(i);
					  long seq = (long)perfor.get("seq");
					  String seq_ = String.valueOf(seq);
					  String title = (String)perfor.get("title");
					  String startDate_ = perfor.get("startDate").toString();
					  String endDate_ = perfor.get("endDate").toString();
					  String startDate = "";
					  String endDate = "";
					  startDate = startDate_.substring(0,4) + "/" + startDate_.substring(4,6) + "/" + startDate_.substring(6);
					  endDate = endDate_.substring(0,4) + "/" + endDate_.substring(4,6) + "/" + endDate_.substring(6);	  
					  String realmName = (String) perfor.get("realmName");
					  String thumbnail = (String) perfor.get("realmName");
					  String gpsX_ = ((Object)perfor.get("gpsX")).toString();
					  String gpsY_ = ((Object)perfor.get("gpsY")).toString();
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
						
						
						 StringBuilder urlBuilder2 = new StringBuilder(
									"http://www.culture.go.kr/openapi/rest/publicperformancedisplays/d/"); /* URL */
							urlBuilder2.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=egRwJCG3SGkAZ82SPT3oRYlbbuZGTU6yDn5oUNHoj07yCst4ynaHqJnigaas910jwFhHr23p3IHHgi5kgOOaDw%3D%3D");																											
//							urlBuilder.append("&" + URLEncoder.encode("keyword", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8"));
//							urlBuilder.append("&" + URLEncoder.encode("sortStdr", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 1:등록일, 2:공연명, 3:지역 */
							urlBuilder2.append("&" + URLEncoder.encode("ComMsgHeader", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
							urlBuilder2.append("&" + URLEncoder.encode("RequestTime", "UTF-8") + "=" + URLEncoder.encode("20230401:20230601", "UTF-8")); /* Optional 필드 */
							urlBuilder2.append("&" + URLEncoder.encode("CallBackURI", "UTF-8") + "="+ URLEncoder.encode("", "UTF-8")); /* Optional 필드 */
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
							
							  json = XML.toJSONObject(sb2.toString());
							  parser = new JSONParser(); 
							  JSONObject obj2 = (JSONObject)parser.parse(json.toString()); 
							  try {
							  JSONObject response2 = (JSONObject) obj2.get("response");		  
							  JSONObject msgBody2 = (JSONObject) response2.get("msgBody");
							  
							  JSONObject perforInfo = (JSONObject) msgBody2.get("perforInfo");
							  
							  price = (String) perforInfo.get("price");
							  collectionUrl = (String)perforInfo.get("url");
							  place = (String)perforInfo.get("place");
							  phone = (String)perforInfo.get("phone");
							  placeAddr = (String)perforInfo.get("placeAddr");
							  area = (String)perforInfo.get("area");
							  } catch(NullPointerException e) {
								  System.out.println("NullPointerException ocuured!!");
							  }
					  
//					  vo.setSeq(123);
//					  vo.setTitle("테스트");
//					  vo.setStartDate("2023/04/05");
//					  vo.setEndDate("2023/04/05");
//					  vo.setPlace("테스트");
//					  vo.setRealmName("테스트");
//					  vo.setThumbnail("테스트");
//					  vo.setGpsX(20230405.0405);
//					  vo.setGpsY(20230405.0405);
//					  System.out.println("title" + title);
//					  try {
//					  service.insert(vo);
//					  
//					  }catch(NullPointerException e){
//						  System.out.println("NullPointerException");
//						  e.printStackTrace();
//					  }
					  System.out.println(seq +" \\ " + title + " \\ " + startDate + " \\ " + endDate + " \\ " + place + " \\ " + price + " \\ " + collectionUrl
							  + " \\ " + phone + " \\ " + placeAddr + " \\ " + realmName + " \\ " +  thumbnail + " \\ " +  gpsX + " \\ " + gpsY + " \\ " + area);	  
				  
				  }
				  
				rd.close();
				conn.disconnect();	
	
	}
}
