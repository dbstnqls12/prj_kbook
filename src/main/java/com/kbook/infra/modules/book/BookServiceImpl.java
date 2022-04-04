package com.kbook.infra.modules.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {

	@Autowired 
	BookDao dao;

	@Override
	public Book selectOne(BookVo vo) throws Exception {
		return dao.selectOne(vo);
	}

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

}
