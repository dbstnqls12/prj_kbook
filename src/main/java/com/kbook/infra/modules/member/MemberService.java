package com.kbook.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception;

	public Member selectOne(MemberVo vo) throws Exception;
}
