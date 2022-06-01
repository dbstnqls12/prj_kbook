package com.kbook.infra.modules.book;

public class BookVo {
	
	private String tditSeq;
	private String tditDelNy;
	private String tditItemCate;
	private String tdkwSeq;
	private String tdkwOrder;
	private String type;
	
//	bookList Search
	private Integer shTditDelNy;
	private String shTditSeq;
	
//	common
	private String shOption;
	private String shValue;
	private String ifpcSeq;
	private String ifacSeq;
	private Integer shOptionDate;
	private String shDateStart;
	private String shDateEnd;
	private String pseq;
	
	private String listChk;
	
	private String[] checkboxSeqArray;
	private String[] tditSeqArray;
	
	private int result;

	private String kbmmSeq;
	
	//	paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = 5;								// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;
	
	private int startRnumForMysql = 0;

	//------------
	public void setParamsPaging(int totalRowsParam) {
		
		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (getTotalRows() == 0) {
			setTotalPages(1);
		} else {
			setTotalPages(getTotalRows() / getRowNumToShow());
		}

		if (getTotalRows() % getRowNumToShow() > 0) {
			setTotalPages(getTotalPages() + 1);
		}

		if (getTotalPages() < getThisPage()) {
			setThisPage(getTotalPages());
		}
		
		setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);

		setEndPage(getStartPage() + getPageNumToShow() - 1);

		if (getEndPage() > getTotalPages()) {
			setEndPage(getTotalPages());
		}
		
		setEndRnumForOracle((getRowNumToShow() * getThisPage()));
		setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
		if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
		
		if (thisPage == 1) {
			setStartRnumForMysql(0);
		} else {
			setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
		}
		
		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);		
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
		

		
	}
	//------------

	public String getTditSeq() {
		return tditSeq;
	}

	public void setTditSeq(String tditSeq) {
		this.tditSeq = tditSeq;
	}

	public String getTditDelNy() {
		return tditDelNy;
	}

	public void setTditDelNy(String tditDelNy) {
		this.tditDelNy = tditDelNy;
	}

	public Integer getShTditDelNy() {
		return shTditDelNy;
	}

	public void setShTditDelNy(Integer shTditDelNy) {
		this.shTditDelNy = shTditDelNy;
	}

	public String getShTditSeq() {
		return shTditSeq;
	}

	public void setShTditSeq(String shTditSeq) {
		this.shTditSeq = shTditSeq;
	}

	public String getShOption() {
		return shOption;
	}

	public void setShOption(String shOption) {
		this.shOption = shOption;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
	}

	public String getIfpcSeq() {
		return ifpcSeq;
	}

	public void setIfpcSeq(String ifpcSeq) {
		this.ifpcSeq = ifpcSeq;
	}

	public String getIfacSeq() {
		return ifacSeq;
	}

	public void setIfacSeq(String ifacSeq) {
		this.ifacSeq = ifacSeq;
	}

	public Integer getShOptionDate() {
		return shOptionDate;
	}

	public void setShOptionDate(Integer shOptionDate) {
		this.shOptionDate = shOptionDate;
	}

	public String getShDateStart() {
		return shDateStart;
	}

	public void setShDateStart(String shDateStart) {
		this.shDateStart = shDateStart;
	}

	public String getShDateEnd() {
		return shDateEnd;
	}

	public void setShDateEnd(String shDateEnd) {
		this.shDateEnd = shDateEnd;
	}

	public String getListChk() {
		return listChk;
	}

	public void setListChk(String listChk) {
		this.listChk = listChk;
	}

	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}

	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}

	public String getTditItemCate() {
		return tditItemCate;
	}

	public void setTditItemCate(String tditItemCate) {
		this.tditItemCate = tditItemCate;
	}

	public String getTdkwSeq() {
		return tdkwSeq;
	}

	public void setTdkwSeq(String tdkwSeq) {
		this.tdkwSeq = tdkwSeq;
	}

	public String getPseq() {
		return pseq;
	}

	public void setPseq(String pseq) {
		this.pseq = pseq;
	}

	public String[] getTditSeqArray() {
		return tditSeqArray;
	}

	public void setTditSeqArray(String[] tditSeqArray) {
		this.tditSeqArray = tditSeqArray;
	}

	public String getTdkwOrder() {
		return tdkwOrder;
	}

	public void setTdkwOrder(String tdkwOrder) {
		this.tdkwOrder = tdkwOrder;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public String getKbmmSeq() {
		return kbmmSeq;
	}

	public void setKbmmSeq(String kbmmSeq) {
		this.kbmmSeq = kbmmSeq;
	}
	
	
	
	
	

	

}
