package com.kbook.infra.modules.member;

import java.util.List;


public interface MemberService {

//	memberList
	public int selectOneCount(MemberVo vo) throws Exception;
	public List<Member> selectList(MemberVo vo) throws Exception;
	public List<Member> selectListPhone(MemberVo vo) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public int update(Member dto) throws Exception;
	public int updateDelete(MemberVo vo) throws Exception;
	public int updateDeleteList(MemberVo vo) throws Exception;
	
	

}
