package com.kbook.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="/xdmin/member/memberList")
	public String memberList(MemberVo vo, Model model) throws Exception{
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list",list);
		
		return "/xdmin/member/memberList";
	}
	
	@RequestMapping(value="/xdmin/member/memberView")
	public String memberView(MemberVo vo, Model model) throws Exception{
		
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "/xdmin/member/memberView";
		
	}
}
