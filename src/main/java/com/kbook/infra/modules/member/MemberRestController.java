package com.kbook.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/rest/member")
public class MemberRestController{
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public List<Member> selectList(MemberVo vo) throws Exception{
		List<Member> list = service.selectList(vo);
		return list;
	}
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
	public Member selectOne(@PathVariable String seq, MemberVo vo) throws Exception{
		vo.setKbmmSeq(seq);
		Member item = service.selectOne(vo);
		return item;
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String insert(@RequestBody Member dto) throws Exception{
		service.insertRest(dto);
		return dto.getKbmmSeq();
	}
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.PATCH)
	public void update(@PathVariable String seq, @RequestBody Member dto) throws Exception{
		dto.setKbmmSeq(seq);
		service.updateRest(dto);
	}
}
