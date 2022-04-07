package com.kbook.infra.modules.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping(value = "index/indexView")
	public String indexView() throws Exception {
		
		return "index/indexView";
	}
	@RequestMapping(value = "xdmin/facebookLogin")
	public String facebookLogin() throws Exception {
		
		return "xdmin/facebookLogin";
	}
}
