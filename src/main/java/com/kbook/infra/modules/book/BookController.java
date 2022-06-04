package com.kbook.infra.modules.book;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbook.infra.common.constants.Constants;
import com.kbook.infra.common.util.UtilUpload;
import com.kbook.infra.modules.member.Member;
import com.kbook.infra.modules.member.MemberVo;

import org.springframework.ui.Model;

@Controller
public class BookController {

	@Autowired
	BookServiceImpl service;
	
	
	@RequestMapping(value = "member/kyobo_main")
	public String kyobo_main(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
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
		
		List<Book> listUploaded = service.selectListBookUploaded(vo);
		model.addAttribute("listUploaded", listUploaded);
		
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
		
		List<Book> listUploaded = service.selectListBookUploaded(vo);
		model.addAttribute("listUploaded", listUploaded);
		
		return "visitor/kyobo_Vmain";
	}
	
	@RequestMapping(value="/visitor/kyobo_VbookInfo")
	public String kyobo_VbookInfo(@ModelAttribute("vo") BookVo vo, Book dto, Model model) throws Exception {
		
		List<Book> listAuthor = service.selectListAuthor(vo);
		model.addAttribute("listAuthorL", listAuthor);

		List<Book> listKeyword = service.selectListKeyword(vo);
		model.addAttribute("listKeyword", listKeyword);

		Book rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		
		List<Book> listUploaded = service.selectListBookUploaded(vo);
		model.addAttribute("listUploaded", listUploaded);
		
		return "/visitor/kyobo_VbookInfo";
	}
	
	@RequestMapping(value="/member/kyobo_bookInfo")
	public String kyobo_bookInfo(@ModelAttribute("vo") BookVo vo, Book dto, Model model) throws Exception {
		
		List<Book> listAuthor = service.selectListAuthor(vo);
		model.addAttribute("listAuthorL", listAuthor);

		List<Book> listKeyword = service.selectListKeyword(vo);
		model.addAttribute("listKeyword", listKeyword);

		Book rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		
		List<Book> listUploaded = service.selectListBookUploaded(vo);
		model.addAttribute("listUploaded", listUploaded);
		
		
		return "/member/kyobo_bookInfo";
	}
	
	@RequestMapping(value = "member/kyobo_purchase")
	public String kyobo_purchase(@ModelAttribute("vo") BookVo vo, MemberVo vo2, Book dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setKbmmSeq((String) httpSession.getAttribute("sessSeq"));
		System.out.println("vo.getKbmmSeq() : "+vo.getKbmmSeq());
		System.out.println("vo.getTditSeq() : "+vo.getTditSeq());
		
		Book rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		
		List<Book> listUploaded = service.selectListBookUploaded(vo);
		model.addAttribute("listUploaded", listUploaded);
		
		Book rt2 = service.selectOneMember(vo);
		model.addAttribute("itemMember", rt2);
		
		return "member/kyobo_purchase";
	}
	
//	관리자
	
	@RequestMapping(value = "xdmin/book/bookList")
	public String bookList(@ModelAttribute("vo") BookVo vo, Model model) throws Exception {
		
		//vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.add00TimeString(vo.getShDateStart()));
		//vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addNowTimeString(vo.getShDateEnd()));
		
		int count = service.selectOneCount(vo);
		
		System.out.println("vo.getShTditDelNy() : " + vo.getShTditDelNy());
		System.out.println("vo.getShStartDate() : " + vo.getShDateStart());
		System.out.println("vo.getShEndDate() : " + vo.getShDateEnd());
		System.out.println("vo.getShDate() : " + vo.getShOptionDate());
		
		vo.setParamsPaging(count);
		
		if (count != 0) {
			List<Book> list = service.selectList(vo);
			model.addAttribute("list", list);
		}else {
			//
		}
		return "xdmin/book/bookList";
	}

	@RequestMapping(value = "xdmin/book/bookView")
	public String bookView(@ModelAttribute("vo") BookVo vo, Book dto,Model model) throws Exception {
	
		
		Book rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		
		List<Book> listAuthor = service.selectListAuthor(vo);
		model.addAttribute("listAuthorL", listAuthor);

		List<Book> listKeyword = service.selectListKeyword(vo);
		model.addAttribute("listKeyword", listKeyword);

		List<Book> listUploaded = service.selectListBookUploaded(vo);
		model.addAttribute("listUploaded", listUploaded);
		
		
		return "xdmin/book/bookView";
	}

	@RequestMapping(value = "xdmin/book/bookForm")
	public String bookForm(@ModelAttribute("vo") BookVo vo, Book dto, Model model) throws Exception {
		
		List<Book> listAuthor = service.selectListAuthor(vo);
		model.addAttribute("listAuthorL", listAuthor);

		List<Book> listKeyword = service.selectListKeyword(vo);
		model.addAttribute("listKeyword", listKeyword);

//		List<Book> listRelatedItem= service.selectListRelatedItem(vo);
//		model.addAttribute("listRelatedItem", listRelatedItem);
		
		
		
		return "xdmin/book/bookForm";
	}
	@RequestMapping(value = "xdmin/book/bookInst")
	public String bookInst(BookVo vo, Book dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);

		vo.setTditSeq(dto.getTditSeq());
		
		List<Book> listAuthor = service.selectListAuthor(vo);
		model.addAttribute("listAuthorL", listAuthor);
		
		List<Book> listKeyword = service.selectListKeyword(vo);
		model.addAttribute("listKeyword", listKeyword);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/book/bookView";
		
	}
	@RequestMapping(value = "xdmin/book/bookEditForm")
	public String bookEditForm(@ModelAttribute("vo") BookVo vo, Book dto, Model model) throws Exception {
		
		Book rt = service.selectOne(vo);
		model.addAttribute("rt", rt);
		
		List<Book> listAuthor = service.selectListAuthor(vo);
		model.addAttribute("listAuthorL", listAuthor);

		List<Book> listKeyword = service.selectListKeyword(vo);
		model.addAttribute("listKeyword", listKeyword);
		
		List<Book> listUploaded = service.selectListBookUploaded(vo);
		model.addAttribute("listUploaded", listUploaded);

		return "xdmin/book/bookEditForm";
	}
	@RequestMapping(value = "xdmin/book/bookUpdt")
	public String bookUpdt(@ModelAttribute("vo") BookVo vo, Book dto, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		service.update(dto);
		

		List<Book> listKeyword = service.selectListKeyword(vo);
		model.addAttribute("listKeyword", listKeyword);
		
		List<Book> listUploaded = service.selectListBookUploaded(vo);
		model.addAttribute("listUploaded", listUploaded);
		
		vo.setTditSeq(dto.getTditSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/book/bookView";
	}
}
