package com.kbook.infra.modules.member;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbook.infra.modules.code.CodeServiceImpl;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="/xdmin/member/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
		
		int count = service.selectOneCount(vo);
		
		System.out.println("vo.getShKbmmDelNy() : "+vo.getShKbmmDelNy());
		System.out.println("vo.getShStartDate() : "+vo.getShStartDate());
		System.out.println("vo.getShEndDate() : "+vo.getShEndDate());
		System.out.println("vo.getShDate() : "+vo.getShDate());
		
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
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
		
		System.out.println("############################");
		System.out.println("vo.getShOption() : "+vo.getShOption());		
		System.out.println("vo.getShKbmmDelNy() : "+vo.getShKbmmDelNy());		
		System.out.println("vo.getShValue() : "+vo.getShValue());		
		System.out.println("vo.getThisPage() : "+vo.getThisPage());		
		System.out.println("vo.getkbmmSeq() : "+vo.getKbmmSeq());	
		System.out.println("vo.getShStartDate() : "+vo.getShStartDate());
		System.out.println("vo.getShEndDate() : "+vo.getShEndDate());
		System.out.println("vo.getShDate() : "+vo.getShDate());
		System.out.println("############################");
		
		Member rt = service.selectOne(vo);	
		model.addAttribute("item", rt);

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone",list);
			 
		
		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		model.addAttribute("CodeGrade", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("CodeDeviceCd", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("CodeKorean", CodeServiceImpl.selectListCachedCode("30"));
		
		return "/xdmin/member/memberView";
		
	}
	
	@RequestMapping(value = "/user/memberForm_user")
	public String memberForm( Model model) throws Exception {
		
		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		model.addAttribute("CodeGrade", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("CodeDeviceCd", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("CodeKorean", CodeServiceImpl.selectListCachedCode("30"));
		
		return "/user/memberForm_user";
	}
	
	@RequestMapping(value = "/xdmin/member/memberForm_xdmin")
	public String memberForm_xdmin(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {
		
		System.out.println("############################");
		System.out.println("vo.getShOption() : "+vo.getShOption());		
		System.out.println("vo.getShKbmmDelNy() : "+vo.getShKbmmDelNy());		
		System.out.println("vo.getShValue() : "+vo.getShValue());		
		System.out.println("vo.getThisPage() : "+vo.getThisPage());	
		System.out.println("vo.getShStartDate() : "+vo.getShStartDate());
		System.out.println("vo.getShEndDate() : "+vo.getShEndDate());
		System.out.println("vo.getShDate() : "+vo.getShDate());
		System.out.println("############################");
		
		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone",list);
		
		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		model.addAttribute("CodeGrade", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("CodeDeviceCd", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("CodeKorean", CodeServiceImpl.selectListCachedCode("30"));
		
		return "/xdmin/member/memberForm_xdmin";
	}
	

	@RequestMapping(value = "/xdmin/member/memberInst")
	public String memberInst(Member dto, MemberVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		System.out.println("getKbmmSeq() : "+dto.getKbmmSeq());
				
		redirectAttributes.addAttribute("kbmmSeq", dto.getKbmmSeq());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		redirectAttributes.addAttribute("shDate", vo.getShDate());
		redirectAttributes.addAttribute("shEndDate", vo.getShEndDate());
		redirectAttributes.addAttribute("shStartDate", vo.getShStartDate());
		redirectAttributes.addAttribute("shKbmmDelNy", vo.getShKbmmDelNy());
		
		
		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone",list);
		
		return "redirect:/xdmin/member/memberView";
	}
	
	@RequestMapping(value = "/xdmin/member/memberEditForm")
	public String memberEditForm(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {
		
		System.out.println("############################");
		System.out.println("vo.getShOption() : "+vo.getShOption());		
		System.out.println("vo.getShKbmmDelNy() : "+vo.getShKbmmDelNy());		
		System.out.println("vo.getShValue() : "+vo.getShValue());		
		System.out.println("vo.getThisPage() : "+vo.getThisPage());		
		System.out.println("vo.getShStartDate() : "+vo.getShStartDate());
		System.out.println("vo.getShEndDate() : "+vo.getShEndDate());
		System.out.println("vo.getShDate() : "+vo.getShDate());
		System.out.println("############################");
		
		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone",list);
		 
		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		model.addAttribute("CodeGrade", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("CodeDeviceCd", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("CodeKorean", CodeServiceImpl.selectListCachedCode("30"));
		
		Member rt =  service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		return "/xdmin/member/memberEditForm";
	}
	
	@RequestMapping(value = "/xdmin/member/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		
		redirectAttributes.addAttribute("kbmmSeq", dto.getKbmmSeq());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		redirectAttributes.addAttribute("shDate", vo.getShDate());
		redirectAttributes.addAttribute("shEndDate", vo.getShEndDate());
		redirectAttributes.addAttribute("shStartDate", vo.getShStartDate());
		redirectAttributes.addAttribute("shKbmmDelNy", vo.getShKbmmDelNy());
		
		return "redirect:/xdmin/member/memberView";
		
	}

	@RequestMapping(value = "/xdmin/member/updateDelete")
	public String updateDelete(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.updateDelete(vo);
		
		redirectAttributes.addAttribute("kbmmSeq", dto.getKbmmSeq());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		redirectAttributes.addAttribute("shDate", vo.getShDate());
		redirectAttributes.addAttribute("shEndDate", vo.getShEndDate());
		redirectAttributes.addAttribute("shStartDate", vo.getShStartDate());
		redirectAttributes.addAttribute("shKbmmDelNy", vo.getShKbmmDelNy());
		
		return "redirect:/xdmin/member/memberList";
	}
	
	
	@RequestMapping(value = "xdmin/login/login")
	public String memberLogin(Member dto) throws Exception {
		
		return "/xdmin/login/login";
	}
	
	

	
}
