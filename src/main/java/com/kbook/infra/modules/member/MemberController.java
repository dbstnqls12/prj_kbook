package com.kbook.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbook.infra.common.constants.Constants;
import com.kbook.infra.common.util.UtilDateTime;
import com.kbook.infra.modules.code.CodeServiceImpl;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping(value = "/xdmin/member/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.addStringTime(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addStringTime(vo.getShDateEnd()));

//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addNowTimeString(vo.getShDateEnd()));
		
		int count = service.selectOneCount(vo);

		System.out.println("vo.getShKbmmDelNy() : " + vo.getShKbmmDelNy());
		System.out.println("vo.getShStartDate() : " + vo.getShDateStart());
		System.out.println("vo.getShEndDate() : " + vo.getShDateEnd());
		System.out.println("vo.getShDate() : " + vo.getShOptionDate());

		vo.setParamsPaging(count);

		if (count != 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}

		return "/xdmin/member/memberList";
	}

	@RequestMapping(value = "/xdmin/member/memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		
		System.out.println("############################");
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShKbmmDelNy() : " + vo.getShKbmmDelNy());
		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getThisPage() : " + vo.getThisPage());
		System.out.println("vo.getkbmmSeq() : " + vo.getKbmmSeq());
		System.out.println("vo.getShStartDate() : " + vo.getShDateStart());
		System.out.println("vo.getShEndDate() : " + vo.getShDateEnd());
		System.out.println("vo.getShDate() : " + vo.getShOptionDate());
		System.out.println("############################");

		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);

		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		model.addAttribute("CodeGrade", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("CodeDeviceCd", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("CodeKorean", CodeServiceImpl.selectListCachedCode("30"));

		return "/xdmin/member/memberView";

	}

	@RequestMapping(value = "/member/memberForm_user")
	public String memberForm_user(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		
		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		model.addAttribute("CodeGrade", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("CodeDeviceCd", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("CodeKorean", CodeServiceImpl.selectListCachedCode("30"));

		return "/member/memberForm_user";
	}

	@RequestMapping(value = "/xdmin/member/memberForm_xdmin")
	public String memberForm_xdmin(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {

		System.out.println("############################");
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShKbmmDelNy() : " + vo.getShKbmmDelNy());
		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getThisPage() : " + vo.getThisPage());
		System.out.println("vo.getShStartDate() : " + vo.getShDateStart());
		System.out.println("vo.getShEndDate() : " + vo.getShDateEnd());
		System.out.println("vo.getShDate() : " + vo.getShOptionDate());
		System.out.println("############################");
		
		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);

		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		model.addAttribute("CodeGrade", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("CodeDeviceCd", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("CodeKorean", CodeServiceImpl.selectListCachedCode("30"));

		return "/xdmin/member/memberForm_xdmin";
	}

	@RequestMapping(value = "/xdmin/member/memberInst")
	public String memberInst(Member dto, MemberVo vo, Model model, RedirectAttributes redirectAttributes)
			throws Exception {

		service.insert(dto);

		System.out.println("getKbmmSeq() : " + dto.getKbmmSeq());

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);

		vo.setKbmmSeq(dto.getKbmmSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/xdmin/member/memberView";
	}

	@RequestMapping(value = "/xdmin/member/memberEditForm")
	public String memberEditForm(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {

		System.out.println("############################");
		System.out.println("vo.getShOption() : " + vo.getShOption());
		System.out.println("vo.getShKbmmDelNy() : " + vo.getShKbmmDelNy());
		System.out.println("vo.getShValue() : " + vo.getShValue());
		System.out.println("vo.getThisPage() : " + vo.getThisPage());
		System.out.println("vo.getShStartDate() : " + vo.getShDateStart());
		System.out.println("vo.getShEndDate() : " + vo.getShDateEnd());
		System.out.println("vo.getShDate() : " + vo.getShOptionDate());
		System.out.println("############################");

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);

		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeTelecom", CodeServiceImpl.selectListCachedCode("10"));
		model.addAttribute("CodeGrade", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("CodeDeviceCd", CodeServiceImpl.selectListCachedCode("9"));
		model.addAttribute("CodeKorean", CodeServiceImpl.selectListCachedCode("30"));

		Member rt = service.selectOne(vo);

		model.addAttribute("rt", rt);

		return "/xdmin/member/memberEditForm";
	}

	@RequestMapping(value = "/xdmin/member/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, RedirectAttributes redirectAttributes) throws Exception {

		service.update(dto);

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		
		vo.setKbmmSeq(dto.getKbmmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/member/memberView";
	}

	@RequestMapping(value = "/xdmin/member/updateDelete")
	public String updateDelete(MemberVo vo,  Member dto,RedirectAttributes redirectAttributes) throws Exception {

		service.updateDelete(vo);

		vo.setKbmmSeq(dto.getKbmmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/xdmin/member/memberList";
	}
	
	@RequestMapping(value = "/xdmin/member/delete")
	public String delete(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/member/memberList";
	}
	
	@RequestMapping(value = "/xdmin/member/updateDeleteMulti")
	public String updateDeleteMulti(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		  String[] checkboxSeqArray = vo.getCheckboxSeqArray();	
		  
		  for(String checkboxSeq : checkboxSeqArray) {
			  vo.setKbmmSeq(checkboxSeq);
			  service.updateDelete(vo); 
		  }
		 
		vo.setKbmmSeq(dto.getKbmmSeq());  
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/member/memberList";
	}
	
	@RequestMapping(value = "/xdmin/member/deleteMulti")
	public String deleteMulti(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setKbmmSeq(checkboxSeq);
			service.delete(vo);
		}
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/member/memberList";
	}

	
	
	@RequestMapping(value = "member/login")
	public String memberLogin() throws Exception {

		return "member/login";
	}
	
	@ResponseBody
	@RequestMapping(value = "member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLogin(dto);
		
		if(rtMember != null) {
//			rtMember = service.selectOneLogin(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			 httpSession.setAttribute("sessSeq", rtMember.getKbmmSeq());
			 httpSession.setAttribute("sessId", rtMember.getKbmmId());
			 httpSession.setAttribute("sessName", rtMember.getKbmmName());
			 
			returnMap.put("rt", "success");
			
		} else {
			returnMap.put("rt", "fail");
		}
		
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "member/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		httpSession.invalidate();
		returnMap.put("rt","success");
		return returnMap;
		
	}
	
	
	
	
	
	
	
	

	@RequestMapping(value = "member/kyobo_main")
	public String kyobo_main() throws Exception {
		
		return "member/kyobo_main";
}

}