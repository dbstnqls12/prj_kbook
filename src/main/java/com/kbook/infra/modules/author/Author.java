package com.kbook.infra.modules.author;

import java.util.ArrayList;
import java.util.List;

public class Author {

	private String ifacSeq;
	private String ifacName;
	private String ifacNameEng;
	private String ifacDelNy;
	private String ifcgSeq;
	
	public static List<Author> cachedAuthorArrayList = new ArrayList<Author>();
	
	public String getIfacSeq() {
		return ifacSeq;
	}
	public void setIfacSeq(String ifacSeq) {
		this.ifacSeq = ifacSeq;
	}
	public String getIfacName() {
		return ifacName;
	}
	public void setIfacName(String ifacName) {
		this.ifacName = ifacName;
	}
	public String getIfacNameEng() {
		return ifacNameEng;
	}
	public void setIfacNameEng(String ifacNameEng) {
		this.ifacNameEng = ifacNameEng;
	}
	public String getIfacDelNy() {
		return ifacDelNy;
	}
	public void setIfacDelNy(String ifacDelNy) {
		this.ifacDelNy = ifacDelNy;
	}
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	
	
}
