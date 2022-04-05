package com.kbook.infra.modules.author;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AuthorDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbook.infra.modules.author.AuthorMpp";
	
	public List<Author> selectListAuthorForCache(){List<Author> list = sqlSession.selectList(namespace + ".selectListAuthorForCache",""); return list;}
	
}
