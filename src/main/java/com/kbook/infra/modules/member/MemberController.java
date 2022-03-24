package com.kbook.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbook.infra.modules.code.CodeServiceImpl;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="/xdmin/member/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
		
		int count = service.selectOneCount(vo);
		
		vo.setParamsPaging(count);

		if(count!=0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list",list);
		}else {
			//by pass
		}
		
		return "/xdmin/member/memberList";
	}
	
	@RequestMapping(value="/xdmin/member/memberView")
	public String memberView(MemberVo vo, Model model) throws Exception{
		
		Member rt = service.selectOne(vo);	
		model.addAttribute("item", rt);
		
		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		
		return "/xdmin/member/memberView";
		
	}
	
	@RequestMapping(value = "/user/memberForm_user")
	public String memberForm(Model model) throws Exception {
		
		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		
		return "/user/memberForm_user";
	}
	
	@RequestMapping(value = "/xdmin/member/memberForm_xdmin")
	public String memberForm_xdmin(Model model) throws Exception {
		
		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		
		return "/xdmin/member/memberForm_xdmin";
	}
	
	@RequestMapping(value = "xdmin/member/memberInst")
	public String memberInst(Member dto) throws Exception {
		
		service.insert(dto);
				
		return "redirect:/xdmin/login/login";
	}
	@RequestMapping(value = "xdmin/login/login")
	public String memberLogin(Member dto) throws Exception {
		
		return "/xdmin/login/login";
	}

	
}
