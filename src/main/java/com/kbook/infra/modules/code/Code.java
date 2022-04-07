package com.kbook.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;


public class Code {
	
//	DTO
	
//	infrCodeGroup
	private String ifcgSeq;
	private String ifcgName;
	private String ifcgNameEng;
	private Integer ifcgDelNy;
	private String uuidName;
	private String originalFileName;
	
//	infrCode
	private String ifcdSeq;
	private String ifcdName;
	private Integer ifcdDelNy;
	private Integer ifcdOrder;
	private String ifcdReferenceI1;
	private String ifcdReferenceI2;
//	private String ifcgSeq;
	
	private MultipartFile file;
	private MultipartFile file1;
	
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

	public String getIfcgNameEng() {
		return ifcgNameEng;
	}

	public void setIfcgNameEng(String ifcgNameEng) {
		this.ifcgNameEng = ifcgNameEng;
	}

	public Integer getIfcgDelNy() {
		return ifcgDelNy;
	}

	public void setIfcgDelNy(Integer ifcgDelNy) {
		this.ifcgDelNy = ifcgDelNy;
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

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public MultipartFile getFile1() {
		return file1;
	}

	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}

	public String getUuidName() {
		return uuidName;
	}

	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}


	
	
	
	
	
}
