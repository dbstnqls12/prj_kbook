package com.kbook.infra.modules.index;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kbook.infra.modules.naver.NaverLoginBO;



@Controller
public class IndexController {

//	@RequestMapping(value = "index/indexView")
//	public String indexView() throws Exception {
//		
//		return "index/indexView";
//	}
//	@RequestMapping(value = "xdmin/facebookLogin")
//	public String facebookLogin() throws Exception {
//		
//		return "xdmin/facebookLogin";
//	}
		
		/* NaverLoginBO */
		private NaverLoginBO naverLoginBO;
		
		@Autowired
		private void setNaverLoginBO(NaverLoginBO naverLoginBO){
			this.naverLoginBO = naverLoginBO;
		}

		@RequestMapping("/xdmin/naverLogin")
		public ModelAndView login(HttpSession session) {
			/* 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
			
			/* 생성한 인증 URL을 View로 전달 */
			return new ModelAndView("xdmin/naverLogin", "url", naverAuthUrl);
		}
	
		@RequestMapping("/xdmin/callback")
		public String callback(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException {
			OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
			
			//로그인 사용자 정보를 읽어온다.
			String apiResult = naverLoginBO.getUserProfile(oauthToken);
//	        System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
			session.setAttribute("result", apiResult);
			System.out.println("result"+apiResult);
			
//			session.setAttribute("sessSeq", 0); //생략 가능
			return "redirect:/member/kyobo_main";
	 }
	

	}
