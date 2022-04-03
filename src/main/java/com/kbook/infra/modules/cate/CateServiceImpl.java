package com.kbook.infra.modules.cate;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;

public class CateServiceImpl implements CateService {

	@Autowired
	CateDao dao;

	@PostConstruct
	public void selectListCate() {
		
		List<Cate> cateListFromDb = (ArrayList<Cate>) dao.selectListCateForCache();
		
		Cate.cachedCateArrayList.clear();
		Cate.cachedCateArrayList.addAll(cateListFromDb);
		System.out.println("CateArrayList : "+Cate.cachedCateArrayList.size());
	}
	
	public static List<Cate> selelctListCachedCate(String ifctParents) throws Exception{
		List<Cate> rt = new ArrayList<Cate>();
		for(Cate cateRow : Cate.cachedCateArrayList) {
			if(cateRow.getIfctParents().equals(ifctParents)) {
				rt.add(cateRow);
			}else {
				//
			}
		}
		return rt;
	}

}