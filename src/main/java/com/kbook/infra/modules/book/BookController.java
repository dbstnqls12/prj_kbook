package com.kbook.infra.modules.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Controller
public class BookController {

	@Autowired
	BookServiceImpl service;
	
	@RequestMapping(value="/visitor/kyobo_VbookInfo")
	public String kyobo_VbookInfo(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		Book rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		
		return "/visitor/kyobo_VbookInfo";
	}
	
	@RequestMapping(value="/member/kyobo_bookInfo")
	public String kyobo_bookInfo(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		Book rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		
		return "/member/kyobo_bookInfo";
	}
}
