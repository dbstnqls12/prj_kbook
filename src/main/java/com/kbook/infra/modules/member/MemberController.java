
package com.kbook.infra.modules.member;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kbook.infra.common.constants.Constants;
import com.kbook.infra.common.util.UtilDateTime;
import com.kbook.infra.modules.code.CodeServiceImpl;
import com.kbook.infra.modules.naver.NaverLoginBO;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping(value = "/xdmin/member/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
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
			model.addAttribute("list", list);	//????????? ????????? jsp??? ???????????????(jsp?????? ?????? ???, 59????????? ????????? list)
		} else {
			// by pass
		}

		return "/xdmin/member/memberList";
	}

	@RequestMapping(value = "/xdmin/member/memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
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
	public String memberInst(Member dto, MemberVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);

		System.out.println("getKbmmSeq() : " + dto.getKbmmSeq());

		vo.setKbmmSeq(dto.getKbmmSeq());

		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);

		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/xdmin/member/memberView";
	}
	@RequestMapping(value = "/member/member_userInst")
	public String member_userInst(Member dto, MemberVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		System.out.println("getKbmmSeq() : " + dto.getKbmmSeq());
		System.out.println("??????????");
		
		List<Member> list = service.selectListPhone(vo);
		model.addAttribute("listPhone", list);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/login";
	}

	@RequestMapping(value = "/xdmin/member/memberEditForm")
	public String memberEditForm(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {

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
///////////////////////////////////////////////////////////////////////////////////////// ?????????
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO){
		this.naverLoginBO = naverLoginBO;
	}

//	??????????????? + ?????????
	@RequestMapping(value = "/member/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String memberLogin(Model model, HttpSession session) throws Exception {
		
		/* ????????????????????? ?????? URL??? ???????????? ????????? naverLoginBO???????????? getAuthorizationUrl????????? ?????? */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

//        //????????? 
        model.addAttribute("url", naverAuthUrl);
		return "member/login";
	}
//	???????????????
	@ResponseBody
	@RequestMapping(value = "member/loginProc", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLogin(dto);
		
		if(rtMember != null) {
//			rtMember = service.selectOneLogin(dto);
			if(rtMember.getKbmmSeq() != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				
				httpSession.setAttribute("sessSeq", rtMember.getKbmmSeq());
				httpSession.setAttribute("sessId", rtMember.getKbmmId());
				httpSession.setAttribute("sessName", rtMember.getKbmmName());
				httpSession.setAttribute("sessGrade", rtMember.getKbmmGradeCd());
				httpSession.setAttribute("sessPath", rtMember.getPath());
				httpSession.setAttribute("sessUuidName", rtMember.getUuidName());
				
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	

	@ResponseBody	//	????????????
	@RequestMapping(value = "/member/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

//	???????????????
	@ResponseBody 
	@RequestMapping(value = "member/loginProcGoogle")
	public Map<String, Object> GloginProc(@RequestParam("kbmmName")String name, Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("?????? " + name);
		httpSession.setAttribute("sessName",name);
		httpSession.setAttribute("sessId","?????? ???????????????");
		httpSession.setAttribute("sessSeq","?????? ???????????????");
		
		returnMap.put("rt", "success");
		
		return returnMap;
		
	}
//	?????????
   @RequestMapping(value = "/member/callback", method = { RequestMethod.GET, RequestMethod.POST })	//????????? ?????????
    public String callback(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException {
	
	   OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
		//????????? ????????? ????????? ????????????.
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
//	      System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
        session.setAttribute("result", apiResult);
        System.out.println("result : "+apiResult);
        
        session.setAttribute("sessSeq", 0); //?????? ??????
        /* ????????? ????????? ?????? ????????? View ?????? */
        return "redirect:/member/subookMain";
    }	//    //????????? ????????? ????????? callback?????? ?????????

//	??????????????????
	@ResponseBody //????????? ?????????
	@RequestMapping(value = "/member/KakaoLgProc", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> KakaoLgProc(@RequestParam("kbmmName") String name, Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("????????? "+name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId","0");
		httpSession.setAttribute("sessSeq","0");
		
		returnMap.put("item", "success");
		
		return returnMap;	
	}
//?????? ?????????
	@ResponseBody
	@RequestMapping(value = "/member/FBLgProc")
	public Map<String, Object> FBLgProc(@RequestParam("kbmmName")String name, Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("??????"+name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId","???????????? ???????????????");
		httpSession.setAttribute("sessSeq","???????????? ???????????????");
		
		returnMap.put("item", "success");
		
		return returnMap;	
	}

//	findId
	@RequestMapping(value = "/member/findId")
	public String findId(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {
		
		List<Member> list = service.selectListId(vo);
		model.addAttribute("list", list);
		
		return "member/findId";
	}

	@ResponseBody
	@RequestMapping(value = "/member/getId")
	public Map<String, Object> getId(MemberVo vo, Member dto, HttpSession httpSession, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		List<Member> idList = service.selectListId(vo);
		model.addAttribute("idList", idList);
		
		returnMap.put("idList", idList);
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
//	findPwd
	@RequestMapping(value = "/member/findPwd")
	public String findPwd(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception {
		
		List<Member> list = service.selectListPassword(vo);
		model.addAttribute("list", list);
		
		return "member/findPwd";
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/getPassword")
	public Map<String, Object> getPassword(MemberVo vo, Member dto, HttpSession httpSession, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		List<Member> pwdList = service.selectListPassword(vo);
		model.addAttribute("pwdList", pwdList);
		
		returnMap.put("pwdList", pwdList);
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
//	oracle
	@RequestMapping(value = "/xdmin/member/memberListOracle")
	public String memberListOracle(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		List<Member> list = service.selectListOracle(vo);
		model.addAttribute("list", list);

		return "/xdmin/member/memberListOracle";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}