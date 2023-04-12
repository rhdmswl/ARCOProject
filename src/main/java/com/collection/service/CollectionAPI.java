package com.collection.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.json.XML;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.collection.domain.CollectionVO;

public class CollectionAPI {
	
	public static void main(String[] args) throws IOException, ParseException {
		// 기간별
		StringBuilder urlBuilder = new StringBuilder(
				"http://www.culture.go.kr/openapi/rest/publicperformancedisplays/period"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=egRwJCG3SGkAZ82SPT3oRYlbbuZGTU6yDn5oUNHoj07yCst4ynaHqJnigaas910jwFhHr23p3IHHgi5kgOOaDw%3D%3D");																											
//		urlBuilder.append("&" + URLEncoder.encode("keyword", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8"));
//		urlBuilder.append("&" + URLEncoder.encode("sortStdr", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 1:등록일, 2:공연명, 3:지역 */
		urlBuilder.append("&" + URLEncoder.encode("ComMsgHeader", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("RequestTime", "UTF-8") + "=" + URLEncoder.encode("20230401:20230601", "UTF-8")); /* Optional 필드 */
		urlBuilder.append("&" + URLEncoder.encode("CallBackURI", "UTF-8") + "="+ URLEncoder.encode("", "UTF-8")); /* Optional 필드 */
		urlBuilder.append("&" + URLEncoder.encode("MsgBody", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("from", "UTF-8") + "=" + URLEncoder.encode("20230401", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("to", "UTF-8") + "=" + URLEncoder.encode("20230501", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("cPage", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("rows", "UTF-8") + "=" + URLEncoder.encode("300", "UTF-8")); /* 3~100 */
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
						  
				  for(int i = 0; i < objArr.size(); i++) {
					  JSONObject perfor = (JSONObject) objArr.get(i);
					  long seq = (long)perfor.get("seq");
					  String title = (String)perfor.get("title");
					  String startDate_ = perfor.get("startDate").toString();
					  String endDate_ = perfor.get("endDate").toString();
					  String startDate = "";
					  String endDate = "";
					  startDate = startDate_.substring(0,4) + "/" + startDate_.substring(4,6) + "/" + startDate_.substring(6);
					  endDate = endDate_.substring(0,4) + "/" + endDate_.substring(4,6) + "/" + endDate_.substring(6);

					  
					  String place = (String) perfor.get("place");
					  String realmName = (String) perfor.get("realmName");
					  String thumbnail = (String) perfor.get("realmName");
//					  Double gpsX =   (double)perfor.get("gpsX");
//					  Double gpsY =  (double)perfor.get("gpsY");
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
					  
					  CollectionVO vo = new CollectionVO();
					  vo.setSeq(seq);
					  vo.setTitle(title);
					  vo.setStartDate(startDate);
					  vo.setEndDate(endDate);
					  vo.setPlace(place);
					  vo.setRealmName(realmName);
					  vo.setThumbnail(thumbnail);
					  vo.setGpsX(gpsX);
					  vo.setGpsY(gpsY);
					  //CollectionServiceImpl service = new CollectionServiceImpl();
					  //service.insert(vo);
					  
					  System.out.println(seq +" " + title + " " + startDate + " " + endDate + " " + place + " " + realmName + " " +  thumbnail + " " +  gpsX + " " + gpsY);	  
				  
				  }
				  
//				  	String gpsX_ = ((Object)perfor.get("gpsX")).toString();
//					String gpsY_ = ((Object)perfor.get("gpsY")).toString();
//					
//					double gpsX = 0.0;
//					double gpsY = 0.0;
//					
//					
//					  try {
//						  gpsX = Double.valueOf(gpsX_).doubleValue();
//						  gpsY = Double.valueOf(gpsY_).doubleValue();
//				        } catch (NumberFormatException e) {

//				        	System.out.println("NumberFormatException occurred!"); 
//				        } catch (Exception e) {
				  
//				        }
				  
				rd.close();
				conn.disconnect();	
	
	}
}
