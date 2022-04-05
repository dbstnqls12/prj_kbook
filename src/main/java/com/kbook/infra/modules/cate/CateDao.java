package com.kbook.infra.modules.cate;

import java.util.List;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CateDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbook.infra.modules.cate.CateMpp";
	
	public List<Cate> selectListCateForCache(){List<Cate> list = sqlSession.selectList(namespace + ".selectListCateForCache",""); return list;}
	
}
