package com.kbook.infra.modules.book;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbook.infra.common.constants.Constants;
import com.kbook.infra.common.util.UtilDateTime;

import org.springframework.ui.Model;

@Controller
public class BookController {

	@Autowired
	BookServiceImpl service;
	
	
	@RequestMapping(value = "member/kyobo_main")
	public String kyobo_main(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		

		
		return "member/kyobo_main";
	}

	@RequestMapping(value = "visitor/kyobo_Vmain")
	public String kyobo_Vmain(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		List<Book> listDNew = service.selectListDomesticNew(vo);
		model.addAttribute("listDomesticNew", listDNew);
		List<Book> listANew = service.selectListAbroadNew(vo);
		model.addAttribute("listAbroadNew", listANew);
		List<Book> listENew = service.selectListEbookNew(vo);
		model.addAttribute("listEbookNew", listENew);
		
		List<Book> listBest = service.selectListBest(vo);
		model.addAttribute("listbookBest", listBest);
		
		List<Book> listToday = service.selectListToday(vo);
		model.addAttribute("listbookToday", listToday);
		
		return "visitor/kyobo_Vmain";
	}
	
	@RequestMapping(value="/visitor/kyobo_VbookInfo")
	public String kyobo_VbookInfo(@ModelAttribute("vo") BookVo vo, Book dto, Model model) throws Exception {
		
		System.out.println("vo.getTditSeq() : "+vo.getTditSeq());
		
		List<Book> listAuthor = service.selectListAuthor(vo);
		model.addAttribute("listAuthorL", listAuthor);

		List<Book> listKeyword = service.selectListKeyword(vo);
		model.addAttribute("listKeyword", listKeyword);

		List<Book> listRelatedItem= service.selectListRelatedItem(vo);
		model.addAttribute("listRelatedItem", listRelatedItem);
		
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
	
	@RequestMapping(value = "member/kyobo_purchase")
	public String kyobo_purchase() throws Exception {
		
		return "member/kyobo_purchase";
	}
}
