package com.kbook.infra;

public class Home {

	private String resultCode;
	private String resultMsg;
	private String pageNo;
	private String totalCount;
	private String numOfRows;

	private String YYYY;
	private String MM;
	private String KIT_PROD_QTY;
	private String KIT_EXPRT_QTY;
	private String KIT_STOCK_QTY;
	
	
	public String getYYYY() {
		return YYYY;
	}
	public void setYYYY(String yYYY) {
		YYYY = yYYY;
	}
	public String getMM() {
		return MM;
	}
	public void setMM(String mM) {
		MM = mM;
	}
	public String getKIT_PROD_QTY() {
		return KIT_PROD_QTY;
	}
	public void setKIT_PROD_QTY(String kIT_PROD_QTY) {
		KIT_PROD_QTY = kIT_PROD_QTY;
	}
	public String getKIT_EXPRT_QTY() {
		return KIT_EXPRT_QTY;
	}
	public void setKIT_EXPRT_QTY(String kIT_EXPRT_QTY) {
		KIT_EXPRT_QTY = kIT_EXPRT_QTY;
	}
	public String getKIT_STOCK_QTY() {
		return KIT_STOCK_QTY;
	}
	public void setKIT_STOCK_QTY(String kIT_STOCK_QTY) {
		KIT_STOCK_QTY = kIT_STOCK_QTY;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public String getPageNo() {
		return pageNo;
	}
	public void setPageNo(String pageNo) {
		this.pageNo = pageNo;
	}
	public String getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(String totalCount) {
		this.totalCount = totalCount;
	}
	public String getNumOfRows() {
		return numOfRows;
	}
	public void setNumOfRows(String numOfRows) {
		this.numOfRows = numOfRows;
	}
	
	
}
