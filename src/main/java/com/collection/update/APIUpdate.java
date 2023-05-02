package com.collection.update;

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
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.collection.domain.CollectionVO;
import com.collection.service.CollectionService;

@Component
public class APIUpdate {

	
	@Autowired
	private CollectionService service;

	@Scheduled(cron = "0 0 4 ? * MON *")
	public void updateAPI() throws IOException, ParseException {
		System.out.println("스케쥴러 작동2");
		
		CollectionVO vo = new CollectionVO();
		
		StringBuilder urlBuilder = new StringBuilder("http://www.culture.go.kr/openapi/rest/publicperformancedisplays/realm"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=lJ%2BBihwM3wPhDb4kWeiLuyd3dLOR5DG%2Bzf3WZ5uAKjK6L9jTiPHwgNSufWJb1eIfSEzBSTIoc69EYj1E3Oipng%3D%3D");
//		urlBuilder.append("&" + URLEncoder.encode("keyword", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8"));
//		urlBuilder.append("&" + URLEncoder.encode("sortStdr", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 1:등록일, 2:공연명, 3:지역 */
//		urlBuilder.append("&" + URLEncoder.encode("ComMsgHeader", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
//		urlBuilder.append("&" + URLEncoder.encode("RequestTime", "UTF-8") + "="  + URLEncoder.encode("20230411:00000000", "UTF-8")); /* Optional 필드 */
//		urlBuilder.append("&" + URLEncoder.encode("CallBackURI", "UTF-8") + "="  + URLEncoder.encode("", "UTF-8")); /* Optional 필드 */
		urlBuilder.append("&" + URLEncoder.encode("MsgBody", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("cPage", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /**/
		urlBuilder.append("&" + URLEncoder.encode("rows", "UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /* 3~100 */
		urlBuilder.append("&" + URLEncoder.encode("realmCode", "UTF-8") + "=" + URLEncoder.encode("D000", "UTF-8"));

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
		System.out.println("1단계 성공");

		JSONParser parser = new JSONParser();
		JSONObject obj = (JSONObject) parser.parse(json.toString());
		System.out.println("2단계 성공");
		try {
			JSONObject response = (JSONObject) obj.get("response");
			JSONObject msgBody = (JSONObject) response.get("msgBody");
//				  JSONObject perforList = (JSONObject) msgBody.get("perforList");

			JSONArray objArr = (JSONArray) msgBody.get("perforList");
				
			
			for (int i = 0; i < objArr.size(); i++) {
				JSONObject perfor = (JSONObject) objArr.get(i);
				long seq = (long) perfor.get("seq");
				String seq_ = String.valueOf(seq);
				//String title = (String) perfor.get("title");
				String title = org.springframework.web.util.HtmlUtils.htmlUnescape((String) perfor.get("title"));
				String startDate_ = perfor.get("startDate").toString();
				String endDate_ = perfor.get("endDate").toString();
				String startDate = ""; 
				String endDate = "";
				 
				startDate = startDate_.substring(0, 4) + "-" + startDate_.substring(4, 6) +
				  "-" + startDate_.substring(6); 
				
				endDate = endDate_.substring(0, 4) + "-" +
				  endDate_.substring(4, 6) + "-" + endDate_.substring(6);
				 
				 
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
					e.printStackTrace();
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
				urlBuilder2.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=lJ%2BBihwM3wPhDb4kWeiLuyd3dLOR5DG%2Bzf3WZ5uAKjK6L9jTiPHwgNSufWJb1eIfSEzBSTIoc69EYj1E3Oipng%3D%3D");
//						urlBuilder.append("&" + URLEncoder.encode("keyword", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8"));
//						urlBuilder.append("&" + URLEncoder.encode("sortStdr", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 1:등록일, 2:공연명, 3:지역 */
//				urlBuilder2.append("&" + URLEncoder.encode("ComMsgHeader", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /**/
//				urlBuilder2.append("&" + URLEncoder.encode("RequestTime", "UTF-8") + "=" + URLEncoder.encode("20230411:00000000", "UTF-8")); /* Optional 필드 */
//				urlBuilder2.append("&" + URLEncoder.encode("CallBackURI", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* Optional 필드 */
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
					System.out.println("obj=" + obj2);
					JSONObject response2 = (JSONObject) obj2.get("response");
					System.out.println("response2=" + response2);
					JSONObject msgBody2 = (JSONObject) response2.get("msgBody");
					System.out.println("msgBody2=" + msgBody2);
					
					JSONObject perforInfo = (JSONObject) msgBody2.get("perforInfo");
					System.out.println("perforInfo=" + perforInfo);
					price = (String) perforInfo.get("price");
					collectionUrl = (String) perforInfo.get("url");
					place = (String) perforInfo.get("place");
					phone = (String) perforInfo.get("phone");
					placeAddr = (String) perforInfo.get("placeAddr");
					area = (String) perforInfo.get("area");
					imgUrl = (String) perforInfo.get("imgUrl");

				} catch (NullPointerException e) {
					System.out.println("NullPointerException ocuured!!");
					e.printStackTrace();
				} catch (Exception e) {
					
				}

				vo.setSeq(seq);
				vo.setTitle(title);
				vo.setStartDate(startDate);
				vo.setEndDate(endDate);
				vo.setRealmName(realmName);
				vo.setThumbnail(thumbnail);
				vo.setGpsX(gpsX);
				vo.setGpsY(gpsY);
				vo.setPrice(price);
				vo.setUrl(collectionUrl);
				vo.setPlace(place);
				vo.setPhone(phone);
				vo.setArea(area);
				vo.setPlaceAddr(placeAddr);
				vo.setImgUrl(imgUrl);

				service.insert(vo);
				
				System.out.println(vo);
				System.out.println("끝1");
				
			}
		} catch (NullPointerException e) {
			System.out.println("NullPointerException ocuured!!");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
	}
		service.deleteCollection();
		rd.close();
		conn.disconnect();
	}
}
