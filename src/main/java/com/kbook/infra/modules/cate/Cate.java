package com.kbook.infra.modules.cate;

import java.util.ArrayList;
import java.util.List;

public class Cate {

	private String ifctSeq;
	private String ifctName;
	private String ifctParents;
	private String ifctDepth;
	private String ifctUseNy;
	private String ifctOrder;
	private String ifctDelNy;
	
	public static List<Cate> cachedCateArrayList = new ArrayList<Cate>();
	
	public String getIfctSeq() {
		return ifctSeq;
	}
	public void setIfctSeq(String ifctSeq) {
		this.ifctSeq = ifctSeq;
	}
	public String getIfctName() {
		return ifctName;
	}
	public void setIfctName(String ifctName) {
		this.ifctName = ifctName;
	}
	public String getIfctParents() {
		return ifctParents;
	}
	public void setIfctParents(String ifctParents) {
		this.ifctParents = ifctParents;
	}
	public String getIfctDepth() {
		return ifctDepth;
	}
	public void setIfctDepth(String ifctDepth) {
		this.ifctDepth = ifctDepth;
	}
	public String getIfctUseNy() {
		return ifctUseNy;
	}
	public void setIfctUseNy(String ifctUseNy) {
		this.ifctUseNy = ifctUseNy;
	}
	public String getIfctOrder() {
		return ifctOrder;
	}
	public void setIfctOrder(String ifctOrder) {
		this.ifctOrder = ifctOrder;
	}
	public String getIfctDelNy() {
		return ifctDelNy;
	}
	public void setIfctDelNy(String ifctDelNy) {
		this.ifctDelNy = ifctDelNy;
	}
	
	
}
