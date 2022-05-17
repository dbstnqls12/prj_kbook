package com.kbook.infra;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kbook.infra.Home;
import com.kbook.infra.modules.member.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}

	
	@RequestMapping(value = "/test/memberView")
	public String memberView(Model model) throws Exception {

//		api 호출해서 값을 가져온다.
		String apiUrl = "http://localhost/rest/member/103";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}

		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while((line = bufferedReader.readLine()) != null) {
			System.out.println("line : "+line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		System.out.println("final line : "+stringBuilder.append(line));
		
		ObjectMapper objectMapper = new ObjectMapper();
		Member member = objectMapper.readValue(stringBuilder.toString(), Member.class);
	   
		model.addAttribute("item", member);
//			json Object
//				json String, json객체가 아니다
		
//			json Object -> 객체로 변환 : convert
//			json String -> 객체로 변환
		
//		model 객체를 이용해서 jsp로 데이터를 넘겨준다
//			객체:Member
		
		return "/test/memberView";
	}
	
	@RequestMapping(value = "/test/memberList")
	public String memberList(Model model) throws Exception {
		
//		api 호출해서 값을 가져온다.
		String apiUrl = "http://localhost/rest/member";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line; 
		while((line = bufferedReader.readLine()) != null) {
			System.out.println("line : "+line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		System.out.println("final line : "+stringBuilder.append(line));
		
		ObjectMapper objectMapper = new ObjectMapper();
		List<Member> memberList = objectMapper.readValue(stringBuilder.toString(), new TypeReference<List<Member>>() {});
		
		model.addAttribute("list", memberList);
		
		return "/test/memberList";
	}
	
	@RequestMapping(value = "/test/publicCorona1List")
	public String publicCorona1List(Model model) throws Exception {
		
//		api 호출해서 값을 가져온다.
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=T3HrNl6n1tVJSnDZZkXFejhqLurfLKpoU1KSaTbBnvuM49Q%2FFbBPVqta6Cw2912Sjyc4zsS1CTUM3whVseApKQ%3D%3D&numOfRows=3&pageNo=1&type=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line; 
		while((line = bufferedReader.readLine()) != null) {
			System.out.println("line : "+line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		System.out.println("final line : "+stringBuilder.append(line));
		
//		json object + array string -> java map
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		
		System.out.println("#####Map");
		for(String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]: "+key + ", [value]: " + value);
		}
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>)map.get("header");
		
		System.out.println("#####Header");
		for(String key : header.keySet()) {
			String value = String.valueOf(header.get(key));
			System.out.println("[key]: "+key + ", [value]: " + value);
		}
		System.out.println("header.get(\"resultCode\") : "+header.get("resultCode"));
		System.out.println("header.get(\"resultMsg\") : "+header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>)map.get("body");
		
		List<Home> items = new ArrayList<Home>();
		items = (List<Home>) body.get("items");
		
		System.out.println("items.size() : "+items.size());
		
		for(int i=0; i < items.size(); i++) {
			
		}
//		map X
		
//		header -> java 객체 (Home)
		
//		body -> java 객체 (Home)
		
//		item -> java 객체 (Home)
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		
		return "/test/publicCorona1List";
	}
	
	@RequestMapping(value = "/test/weather")
	public String weather(Model model) throws Exception {
		
//		api 호출해서 값을 가져온다.
		String apiUrl = "http://apis.data.go.kr/1360000/VilageFcstMsgService/getWthrSituation?serviceKey=T3HrNl6n1tVJSnDZZkXFejhqLurfLKpoU1KSaTbBnvuM49Q%2FFbBPVqta6Cw2912Sjyc4zsS1CTUM3whVseApKQ%3D%3D&numOfRows=10&pageNo=1&stnId=108&dataType=JSON";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line; 
		while((line = bufferedReader.readLine()) != null) {
			System.out.println("line : "+line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		System.out.println("final line : "+stringBuilder.append(line));
		
//		json object + array string -> java map
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		
		System.out.println("#####Map");
		for(String key : map.keySet()) {
//			String value = (String)map.get(key);
//			String value = map.get(key).toString();
			String value = String.valueOf(map.get(key));
			System.out.println("[key]: "+key + ", [value]: " + value);
		}
		
		Map<String, Object> response = new HashMap<String, Object>();
		response = (Map<String, Object>)map.get("response");
		
		System.out.println("#####response");
		for(String key : response.keySet()) {
			String value = String.valueOf(response.get(key));
			System.out.println("[key]: "+key + ", [value]: " + value);
		}
		System.out.println("header.get(\"resultCode\") : "+response.get("resultCode"));
		System.out.println("header.get(\"resultMsg\") : "+response.get("resultMsg"));
		
//		Map<String, Object> header = new HashMap<String, Object>();
//		header = (Map<String, Object>)map.get("header");
//		
//		System.out.println("#####Header");
//		for(String key : header.keySet()) {
//			String value = String.valueOf(header.get(key));
//			System.out.println("[key]: "+key + ", [value]: " + value);
//		}
//		System.out.println("header.get(\"resultCode\") : "+header.get("resultCode"));
//		System.out.println("header.get(\"resultMsg\") : "+header.get("resultMsg"));
	
		return "/test/weather";
	}
	
	
	
	
	
	
	
	
}
