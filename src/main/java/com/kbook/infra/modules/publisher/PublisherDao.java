package com.kbook.infra.modules.publisher;

import java.util.List;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PublisherDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbook.infra.modules.publisher.PublisherMpp";
	
	public List<Publisher> selectListPublisherForCache(){List<Publisher> list = sqlSession.selectList(namespace + ".selectListPublisherForCache",""); return list;}

}
