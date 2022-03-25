package com.kbook.infra.modules.member;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	
	@Autowired
	MemberDao dao;

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public List<Member> selectListPhone(MemberVo vo) throws Exception {
		return dao.selectListPhone(vo);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int insert(Member dto) throws Exception {
		
		dao.insert(dto);
		dao.insertPhone(dto);
		dao.insertEmail(dto);
		dao.insertAddress(dto);
		
		return 1;
	}

	@Override
	public int update(Member dto) throws Exception {
		
		dao.update(dto);
		dao.updateEmail(dto);
		dao.updateAddress(dto);
		dao.updatePhone(dto);
		
		return 1;
	}













	
}
