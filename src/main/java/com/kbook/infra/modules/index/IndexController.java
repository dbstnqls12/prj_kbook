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

	@RequestMapping(value = "index/indexView")
	public String indexView() throws Exception {
		
		return "index/indexView";
	}
	@RequestMapping(value = "index/index")
	public String index() throws Exception {
		
		return "index/index";
	}
	

	}
