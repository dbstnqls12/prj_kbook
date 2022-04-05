package com.kbook.infra.modules.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {

	@Autowired 
	BookDao dao;


	@Override
	public List<Book> selectListDomesticNew(BookVo vo) throws Exception {
		return dao.selectListDomesticNew(vo);
	}

	@Override
	public List<Book> selectListAbroadNew(BookVo vo) throws Exception {
		return dao.selectListAbroadNew(vo);
	}

	@Override
	public List<Book> selectListEbookNew(BookVo vo) throws Exception {
		return dao.selectListEbookNew(vo);
	}

	@Override
	public List<Book> selectListBest(BookVo vo) throws Exception {
		return dao.selectListBest(vo);
	}

	@Override
	public List<Book> selectListToday(BookVo vo) throws Exception {
		return dao.selectListToday(vo);
	}

	
	/* bookInfo */
	@Override
	public Book selectOne(BookVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public List<Book> selectListAuthor(BookVo vo) throws Exception {
		return dao.selectListAuthor(vo);
	}

	@Override
	public List<Book> selectListKeyword(BookVo vo) throws Exception {
		return dao.selectListKeyword(vo);
	}

}
