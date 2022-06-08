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

	@Inject
	@Resource(name = "sqlSessionOracle")
	private SqlSession sqlSessionOracle;
	
	private static String namespace = "com.kbook.infra.modules.member.MemberMpp";
	
//	kbmmMember
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace+".selectOneCount",vo);}
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectList",vo); }
	public List<Member> selectListPhone(MemberVo vo){ return sqlSession.selectList(namespace + ".selectListPhone",vo); }
	public Member selectOne(MemberVo vo) {return sqlSession.selectOne(namespace +".selectOne", vo);}
	public int update(Member dto) {return sqlSession.update(namespace +".update", dto);}
	public int updatePhone(Member dto) {return sqlSession.update(namespace +".updatePhone", dto);}
	public int updateEmail(Member dto) {return sqlSession.update(namespace +".updateEmail", dto);}
	public int updateAddress(Member dto) {return sqlSession.update(namespace +".updateAddress", dto);}
	public int updateDelete(MemberVo vo) {return sqlSession.update(namespace +".updateDelete", vo);}
	public int delete(MemberVo vo) {return sqlSession.delete(namespace +".delete", vo);}
	
//	findId/Pwd
	public List<Member> selectListId(MemberVo vo){ return sqlSession.selectList(namespace + ".selectListId",vo); }
	public List<Member> selectListPassword(MemberVo vo){ return sqlSession.selectList(namespace + ".selectListPassword",vo); }
	
	
//	kbmmMemberForm
	public int insert(Member dto) {return sqlSession.insert(namespace +".insert", dto);}
	public int insertPhone(Member dto) {return sqlSession.insert(namespace +".insertPhone", dto);}
	public int insertEmail(Member dto) {return sqlSession.insert(namespace +".insertEmail", dto);}
	public int insertAddress(Member dto) {return sqlSession.insert(namespace +".insertAddress", dto);}
	public int insertUploaded(Member dto) {return sqlSession.insert(namespace +".insertUploaded", dto);}

	public Member selectOneLogin(Member dto) {return sqlSession.selectOne(namespace +".selectOneLogin", dto);}
	
	public int insertRest(Member dto) {return sqlSession.insert(namespace +".insertRest", dto);}	
	public int updateRest(Member dto) {return sqlSession.update(namespace +".updateRest", dto);}
	
//	oracle
	public List<Member> selectListOracle(MemberVo vo){ return sqlSessionOracle.selectList(namespace + ".selectListOracle",vo); }
	
}
