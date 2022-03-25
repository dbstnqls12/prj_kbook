package com.kbook.infra.modules.code;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "/code/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		System.out.println("vo.getThisPage() : "+vo.getThisPage());
		
		int count = service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
		
		if(count!=0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		}else {
			
		}
		return "/code/codeGroupList";
	}

	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeVo vo) throws Exception {
		
		return "/code/codeGroupForm";
	}

	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);
		
		System.out.println("dto.getIfcgSeq() : "+dto.getIfcgSeq());
		
		redirectAttributes.addAttribute("ifcgSeq", dto.getIfcgSeq());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		
		return "redirect:/code/codeGroupView";
//		return "redirect:/code/codeGroupView?ifcgSeq="+dto.getIfcgSeq() + makeQueryString(vo);
	}
	
	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		System.out.println("############################");
		System.out.println("vo.getShOption() : "+vo.getShOption());		
		System.out.println("vo.getShValue() : "+vo.getShValue());		
		System.out.println("vo.getThisPage() : "+vo.getThisPage());		
		System.out.println("vo.getIfcgSeq() : "+vo.getIfcgSeq());		
		System.out.println("############################");
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "/code/codeGroupView";
	}
	
	@RequestMapping(value = "/code/codeGroupForm2")
	public String codeGroupForm2(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		return "/code/codeGroupForm2";
	}
	
	@RequestMapping(value = "/code/codeGroupUpdt")
	public String codeGroupUpdt(CodeVo vo, Code dto) throws Exception {
		
		service.update(dto);
		return "redirect:/code/codeGroupView?ifcgSeq="+dto.getIfcgSeq() + makeQueryString(vo);
	}
	
	@RequestMapping(value = "/code/codeGroupDele")
	public String codeGroupDele(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {

		service.delete(vo);
		
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		
		return "redirect:/code/codeGroupList";
	}
	
	@RequestMapping(value = "/code/codeGroupNele")
	public String codeGroupNele(@ModelAttribute("vo") CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.updateDelete(vo);
		
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());

		return "redirect:/code/codeGroupView";
	}
	
	public String makeQueryString(CodeVo vo) {
		String tmp = "&thisPage=" + vo.getThisPage()
					+"&shOption=" + vo.getShOption()
					+"&shValue=" + vo.getShValue();
					
		return tmp;
	}
//	code---------------------------------------------------------------

	@RequestMapping(value = "/code/codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		int count = service.selectOneCodeCount(vo);
		
		vo.setParamsPaging(count);
		
		if(count!=0) {
			List<Code> list = service.selectListCode(vo);
			model.addAttribute("list", list);
	
			List<Code> listCodeGroup = service.selectListCodeGroup(vo);
			model.addAttribute("listCodeGroup", listCodeGroup);
		}else {
		
		}
		return "code/codeList";
	}


	@RequestMapping(value = "/code/codeForm")
	public String codeForm(CodeVo vo, Model model) throws Exception {
		
		List<Code> list = service.selectListCode(vo);
		model.addAttribute("list", list);
		
		List<Code> listCodeGroup = service.selectListCodeGroup(vo);
		model.addAttribute("listCodeGroup", listCodeGroup);

		return "code/codeForm";
	}

	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto) throws Exception {

		service.insertCode(dto);
		return "redirect:/code/codeList";
	}

 	@RequestMapping(value = "/code/codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {
		
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("item", rt);
	
		return "code/codeView";
	}
	
	@RequestMapping(value = "/code/codeEditForm")
	public String codeEditForm(CodeVo vo, Model model) throws Exception {
		
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeEditForm";
	}
	
	@RequestMapping(value = "/code/codeUpdt")
	public String codeUpdt(Code dto) throws Exception {
		
		service.updateCode(dto);
		return "redirect:/code/codeView?ifcdSeq="+dto.getIfcdSeq();
	}
}
