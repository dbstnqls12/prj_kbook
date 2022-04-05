package com.kbook.infra.modules.code;

import java.util.ArrayList;
import java.util.List;


public class Code {
	
//	DTO
	
//	infrCodeGroup
	private String ifcgSeq;
	private String ifcgName;
	private String ifcgNameEng;
	private Integer ifcgDelNy;
	
//	infrCode
	private String ifcdSeq;
	private String ifcdName;
	private Integer ifcdDelNy;
	private Integer ifcdOrder;
	private String ifcdReferenceI1;
	private String ifcdReferenceI2;
//	private String ifcgSeq;
	
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
//------------
	
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	public String getIfcgName() {
		return ifcgName;
	}
	public void setIfcgName(String ifcgName) {
		this.ifcgName = ifcgName;
	}
	public Integer getIfcgDelNy() {
		return ifcgDelNy;
	}
	public void setIfcgDelNy(Integer ifcgDelNy) {
		this.ifcgDelNy = ifcgDelNy;
	}
	
	
	
	
	
	public String getIfcgNameEng() {
		return ifcgNameEng;
	}
	public void setIfcgNameEng(String ifcgNameEng) {
		this.ifcgNameEng = ifcgNameEng;
	}
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}

	public Integer getIfcdDelNy() {
		return ifcdDelNy;
	}
	public void setIfcdDelNy(Integer ifcdDelNy) {
		this.ifcdDelNy = ifcdDelNy;
	}
	public Integer getIfcdOrder() {
		return ifcdOrder;
	}
	public void setIfcdOrder(Integer ifcdOrder) {
		this.ifcdOrder = ifcdOrder;
	}
	public String getIfcdReferenceI1() {
		return ifcdReferenceI1;
	}
	public void setIfcdReferenceI1(String ifcdReferenceI1) {
		this.ifcdReferenceI1 = ifcdReferenceI1;
	}
	public String getIfcdReferenceI2() {
		return ifcdReferenceI2;
	}
	public void setIfcdReferenceI2(String ifcdReferenceI2) {
		this.ifcdReferenceI2 = ifcdReferenceI2;
	}
	public static List<Code> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Code> cachedCodeArrayList) {
		Code.cachedCodeArrayList = cachedCodeArrayList;
	}
	
	
	
	
	
}
