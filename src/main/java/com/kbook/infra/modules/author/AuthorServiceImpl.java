package com.kbook.infra.modules.author;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthorServiceImpl implements AuthorService {

	@Autowired
	AuthorDao dao;
	
	@PostConstruct
	public void selectListAuthorForCache() {
		
		List<Author> authorListFromDb = (ArrayList<Author>) dao.selectListAuthorForCache();
		
		Author.cachedAuthorArrayList.clear();
		Author.cachedAuthorArrayList.addAll(authorListFromDb);
		System.out.println("cachedAuthorArrayList : "+Author.cachedAuthorArrayList.size());
	}
	
	public static List<Author> selelctListCachedAuthor(String ifcgSeq) throws Exception{
		List<Author> rt = new ArrayList<Author>();
		for(Author authorRow : Author.cachedAuthorArrayList) {
			if(authorRow.getIfcgSeq().equals(ifcgSeq)) {
				rt.add(authorRow);
			}else {
				//
			}
		}
		return rt;
	}
	
}
