package com.kbook.infra.modules.book;

import java.util.List;

public interface BookService {
	
	public int selectOneCount(BookVo vo) throws Exception;
	public List<Book> selectList(BookVo vo) throws Exception;

	/* bookMain */
	public List<Book> selectListDomesticNew(BookVo vo) throws Exception;
	public List<Book> selectListAbroadNew(BookVo vo) throws Exception;
	public List<Book> selectListEbookNew(BookVo vo) throws Exception;
	public List<Book> selectListBest(BookVo vo) throws Exception;
	public List<Book> selectListToday(BookVo vo) throws Exception;
	
	/* bookInfo */
	public List<Book> selectListAuthor(BookVo vo) throws Exception;
	public List<Book> selectListKeyword(BookVo vo) throws Exception;
	public List<Book> selectListRelatedItem(BookVo vo) throws Exception;
	public Book selectOne(BookVo vo) throws Exception;
	
	public int insert(Book dto) throws Exception;
	public int update(Book dto) throws Exception;
	
	

}
