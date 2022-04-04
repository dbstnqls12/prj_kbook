package com.kbook.infra.modules.cate;

import java.util.ArrayList;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CateServiceImpl implements CateService {

	@Autowired
	CateDao dao;
	
	@PostConstruct
	public void selectListCateForCache() {
		
		List<Cate> cateListFromDb = (ArrayList<Cate>) dao.selectListCateForCache();
		
		Cate.cachedCateArrayList.clear();
		Cate.cachedCateArrayList.addAll(cateListFromDb);
		System.out.println("cachedCateArrayList : "+Cate.cachedCateArrayList.size());
	}
	
	public static List<Cate> selelctListCachedCate(String ifctDepth) throws Exception{
		List<Cate> rt = new ArrayList<Cate>();
		for(Cate cateRow : Cate.cachedCateArrayList) {
			if(cateRow.getIfctDepth().equals(ifctDepth)) {
				rt.add(cateRow);
			}else {
				//
			}
		}
		return rt;
	}
	
	

}