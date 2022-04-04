package com.kbook.infra.modules.book;

import java.util.List;


public interface BookService {
	
	public List<Book> selectListDomesticNew(BookVo vo) throws Exception;
	public List<Book> selectListAbroadNew(BookVo vo) throws Exception;
	public List<Book> selectListEbookNew(BookVo vo) throws Exception;
	
	public Book selectOne(BookVo vo) throws Exception;

}
