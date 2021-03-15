package com.soldesk.order.login;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;

@Controller
public class LoginController {
	
	@Autowired
	private RestTemplate resttemplate;
	
	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private MemberVO member;
	
	private static final Logger logger  = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		
		logger.info("로그인 페이지로 들어 왔습니다.");
		
		return "member/login";
	}
	
	@RequestMapping(value = "login2", method = RequestMethod.GET)
	public String login2() {
		
		logger.info("로그인 페이지로 들어 왔습니다.");
		
		return "member/login2";
	}
		
	@RequestMapping(value = "callback", method = RequestMethod.GET)
	public String naverLogin () {
		logger.info("네이버 로그인으로 들어왔음");
		return "member/callback";
	}
	
	@RequestMapping(value = "sendtoken", method = RequestMethod.GET)
	@ResponseBody
	public String sendToken (String access_token, HttpSession session, HttpServletRequest request) throws Exception{
		
		logger.info("토큰 값 받음");
		
		String header = "Bearer " + access_token; // token 해더에 싣기 위한 준비
		
		HttpHeaders headers  = new HttpHeaders();
		
		headers.set("Content-Type", "application/json; charset=UTF-8");
		headers.set("Authorization", header);
		//encoding 설정
		HttpEntity entity = new HttpEntity(headers);
		
		Map<String, Object> result = resttemplate.exchange("https://openapi.naver.com/v1/nid/me", HttpMethod.GET, entity, Map.class).getBody();
		Map<String, String> naverInfo = (LinkedHashMap<String, String>) result.get("response");
		
		String id = naverInfo.get("id");
		String name = naverInfo.get("name");
		String email = naverInfo.get("email");
		String gender = naverInfo.get("gender");
		String birthday = naverInfo.get("birthday");
		
//		member.setMem_id(id);
//		member.setMem_name(name);
//		member.setMem_email(email);
//		member.setMem_gender(gender);
//		member.setMem_age(birthday);
//		
//		if(dao.getMember(id) == null) {
//			
//			dao.insertMember(member);
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("email", email);
			session.setAttribute("gender", gender);
			session.setAttribute("age", birthday);
//			
//		} else if (dao.getMember(id) != null) {
//			session.setAttribute("Naver_id", id);
//			session.setAttribute("Naver_name", name);
//			session.setAttribute("Naver_email", email);
//			session.setAttribute("Naver_gender", gender);
//			session.setAttribute("Naver_age", birthday);
//		}
		
		return "";
		
	}//end naverCallback
	
	
	@RequestMapping(value = "callbackGoo", method = RequestMethod.POST)
	public String googleLogin (HttpServletRequest request, HttpSession httpsession) throws GeneralSecurityException, IOException {
		logger.info("구글 로그인으로 들어왔음");
		
				//api 통신을 위한 객체
				NetHttpTransport transport = new NetHttpTransport();
				//JSON 받아옴
				JacksonFactory jacksonfactory = new JacksonFactory();
				
				GoogleIdTokenVerifier verifeier =  new GoogleIdTokenVerifier.Builder(transport, jacksonfactory)
				.setAudience(Collections.singletonList("414429822888-7neu48e5nudefscmm42ega9hts2duc9o.apps.googleusercontent.com")).build();
				
				String idTokenString = request.getParameter("idtoken");
				GoogleIdToken idToken = verifeier.verify(idTokenString);
				
				if(idToken != null) {
					Payload payload = idToken.getPayload();
					//Print user identifier
					String userId = payload.getSubject();
					System.out.println("UserId : " + userId);
					//Get profile information from payload
					String email = payload.getEmail();
					boolean emailVerified = Boolean.valueOf(payload.getEmailVerified());
					String name = (String) payload.get("name");
					String pictureUrl = (String) payload.get("picture");
					
					System.out.println(userId);
					System.out.println(email);
					System.out.println(name);
					System.out.println(pictureUrl);
					
					httpsession.setAttribute("name", name);
					httpsession.setAttribute("id", userId);
					httpsession.setAttribute("email", email);
					httpsession.setAttribute("pictureUrl", pictureUrl);
					
				} else {
				System.out.println("Invalid ID token.");
				}
				return "";
			}
	
		
		@RequestMapping(value = "logout", method = RequestMethod.GET)
		public String logout(HttpSession session) {
			
			logger.info("로그아웃하였습니다.");
			
			session.invalidate();
			
			return "redirect:map.go";
		}
	
}
