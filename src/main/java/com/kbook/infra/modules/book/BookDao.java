package com.kbook.infra.modules.book;

import java.util.List;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class BookDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbook.infra.modules.book.BookMpp";
	
	public int selectOneCount(BookVo vo) {return sqlSession.selectOne(namespace+".selectOneCount",vo);}	
	public List<Book> selectList(BookVo vo){ return sqlSession.selectList(namespace + ".selectList",vo); }
	
	/* bookMain */
	public List<Book> selectListDomesticNew(BookVo vo){ return sqlSession.selectList(namespace + ".selectListDomesticNew",vo); }
	public List<Book> selectListAbroadNew(BookVo vo){ return sqlSession.selectList(namespace + ".selectListAbroadNew",vo); }
	public List<Book> selectListEbookNew(BookVo vo){ return sqlSession.selectList(namespace + ".selectListEbookNew",vo); }
	public List<Book> selectListBest(BookVo vo){ return sqlSession.selectList(namespace + ".selectListBest",vo); }
	public List<Book> selectListToday(BookVo vo){ return sqlSession.selectList(namespace + ".selectListToday",vo); }
	
	/* bookInfo */
	public List<Book> selectListAuthor(BookVo vo){ return sqlSession.selectList(namespace + ".selectListAuthor",vo); }
	public List<Book> selectListKeyword(BookVo vo){ return sqlSession.selectList(namespace + ".selectListKeyword",vo); }
	public List<Book> selectListRelatedItem(BookVo vo){ return sqlSession.selectList(namespace + ".selectListRelatedItem",vo); }
	public Book selectOne(BookVo vo) {return sqlSession.selectOne(namespace +".selectOne", vo);}

	public int update(Book dto) {return sqlSession.update(namespace +".update", dto);}
	public int updateKeyword(Book dto) {return sqlSession.update(namespace +".updateKeyword", dto);}
	public int updateUploaded(Book dto) {return sqlSession.update(namespace +".updateUploaded", dto);}

}
