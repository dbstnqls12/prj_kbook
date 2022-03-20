package com.kbook.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kbook.infra.modules.member.MemberMpp";
	
//	kbmmMember
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace+".selectOneCount",vo);}
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectList",vo); }
	public Member selectOne(MemberVo vo) {return sqlSession.selectOne(namespace +".selectOne", vo);}
	
//	kbmmMemberForm
	public int insert(Member dto) {return sqlSession.insert(namespace +".insert", dto);}
	public int insertPhone(Member dto) {return sqlSession.insert(namespace +".insertPhone", dto);}
	public int insertEmail(Member dto) {return sqlSession.insert(namespace +".insertEmail", dto);}
}
