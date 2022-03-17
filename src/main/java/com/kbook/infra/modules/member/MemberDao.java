package com.kbook.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kbook.infra.modules.code.Code;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbook.infra.modules.member.MemberMpp";
	
//	memberList
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace+".selectOneCount",vo);}
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectList",vo); }
	public Member selectOne(MemberVo vo) {return sqlSession.selectOne(namespace +".selectOne", vo);}
	public int insert(Member dto) {return sqlSession.insert(namespace +".insert", dto);}
}
