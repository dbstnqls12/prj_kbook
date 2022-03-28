package com.kbook.infra.modules.member;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kbook.infra.common.util.UtilDateTime;

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
		
		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		
		dao.insert(dto);
		dao.insertPhone(dto);
		dao.insertEmail(dto);
		dao.insertAddress(dto);
		
		return 1;
	}

	@Override
	public int update(Member dto) throws Exception {
		
		dto.setModDateTime(UtilDateTime.nowDate());
		
		dao.update(dto);
		dao.updateEmail(dto);
		dao.updateAddress(dto);
		dao.updatePhone(dto);
		
		return 1;
	}

	@Override
	public int updateDelete(MemberVo vo) throws Exception {
		return dao.updateDelete(vo);
	}













	
}
