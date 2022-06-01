package com.kbook.infra.modules.member;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kbook.infra.common.util.UtilDateTime;
import com.kbook.infra.common.util.UtilMail;
import com.kbook.infra.common.util.UtilUpload;

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
		for(int i=0; i<dto.getKbmpNumberFullArray().length; i++) {
			
			dto.setKbmpDefaultNy(dto.getKbmpDefaultNyArray()[i]);
			dto.setKbmpTelecomCd(dto.getKbmpTelecomCdArray()[i]);
			dto.setKbmpDeviceCd(dto.getKbmpDeviceCdArray()[i]);
			dto.setKbmpNumberFull(dto.getKbmpNumberFullArray()[i]);
			dao.insertPhone(dto);
		}
		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			UtilUpload.upload(multipartFile, pathModule, dto);
			
			dto.setTableName("kbMemberUploaded");
			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setDelNy(0);
			dto.setPseq(dto.getKbmmSeq());
			
			dao.insertUploaded(dto);
			j++;
			
		}
		
		dao.insertEmail(dto);
		dao.insertAddress(dto);
		
//		UtilMail.sendMail();
		
		return 1;
	}

	@Override
	public int update(Member dto) throws Exception {
		
		dto.setModDateTime(UtilDateTime.nowDate());
		
		dao.update(dto);
		for(int i=0; i<dto.getKbmpNumberFullArray().length; i++) {
			dto.setKbmpDefaultNy(dto.getKbmpDefaultNyArray()[i]);
			dto.setKbmpTelecomCd(dto.getKbmpTelecomCdArray()[i]);
			dto.setKbmpDeviceCd(dto.getKbmpDeviceCdArray()[i]);
			dto.setKbmpNumberFull(dto.getKbmpNumberFullArray()[i]); 
			dao.updatePhone(dto);
		}
		
		dao.updateEmail(dto);
		dao.updateAddress(dto);
		
		return 1;
	}

	@Override
	public int updateDelete(MemberVo vo) throws Exception {
		return dao.updateDelete(vo);
	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public int insertRest(Member dto) throws Exception {
		return dao.insertRest(dto);
	}

	@Override
	public int updateRest(Member dto) throws Exception {
		return dao.updateRest(dto);
	}















	
}
