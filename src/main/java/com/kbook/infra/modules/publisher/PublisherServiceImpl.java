package com.kbook.infra.modules.publisher;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PublisherServiceImpl implements PublisherService {

	@Autowired
	PublisherDao dao;
	
	@PostConstruct
	public void selectListPublisherForCache() {
		
		List<Publisher> publisherListFromDb = (ArrayList<Publisher>) dao.selectListPublisherForCache();
		
		Publisher.cachedPublisherArrayList.clear();
		Publisher.cachedPublisherArrayList.addAll(publisherListFromDb);
		System.out.println("cachedPublisherArrayList : "+Publisher.cachedPublisherArrayList.size());
	}
	
	public static List<Publisher> selelctListCachedPublisher(String ifcgSeq) throws Exception{
		List<Publisher> rt = new ArrayList<Publisher>();
		for(Publisher publisherRow : Publisher.cachedPublisherArrayList) {
			if(publisherRow.getIfcgSeq().equals(ifcgSeq)) {
				rt.add(publisherRow);
			}else {
				//
			}
		}
		return rt;
	}
	
}
