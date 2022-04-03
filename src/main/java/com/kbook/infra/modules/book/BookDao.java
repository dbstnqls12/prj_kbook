package com.kbook.infra.modules.book;

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
	
	public Book selectOne(BookVo vo) {return sqlSession.selectOne(namespace +".selectOne", vo);}
}
