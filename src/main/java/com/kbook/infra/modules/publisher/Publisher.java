package com.kbook.infra.modules.publisher;

import java.util.ArrayList;
import java.util.List;

public class Publisher {
	
	private String ifpcSeq;
	private String ifpcName;
	private String ifpcDelNy;
	private String ifpcUseNy;
	private String ifpcOrder;
	private String ifcgSeq;
	
	public static List<Publisher> cachedPublisherArrayList = new ArrayList<Publisher>();
	
	public String getIfpcSeq() {
		return ifpcSeq;
	}
	public void setIfpcSeq(String ifpcSeq) {
		this.ifpcSeq = ifpcSeq;
	}
	public String getIfpcName() {
		return ifpcName;
	}
	public void setIfpcName(String ifpcName) {
		this.ifpcName = ifpcName;
	}
	public String getIfpcDelNy() {
		return ifpcDelNy;
	}
	public void setIfpcDelNy(String ifpcDelNy) {
		this.ifpcDelNy = ifpcDelNy;
	}
	public String getIfpcUseNy() {
		return ifpcUseNy;
	}
	public void setIfpcUseNy(String ifpcUseNy) {
		this.ifpcUseNy = ifpcUseNy;
	}
	public String getIfpcOrder() {
		return ifpcOrder;
	}
	public void setIfpcOrder(String ifpcOrder) {
		this.ifpcOrder = ifpcOrder;
	}
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}

	
}
