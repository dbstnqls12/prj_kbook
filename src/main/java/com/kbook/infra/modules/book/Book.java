package com.kbook.infra.modules.book;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Book {
	
	private String tditSeq;
	private String tditTitle;
	private String tditSubTitle;
	private String tditPublisherCd;
	private String tditPublishingDate;
	private String tditPrice;
	private String tditDiscountCd;
	private Double tditDiscountRate;
	private String tditStateCd;
	private String tditItemCate;
	private String tditItemCate2;
	private String tditIsbn;
	private String tditPage;
	private String tditSize;
	private String tditWeight;
	private String tditBookDesc;
	private String tditBookDesc2;
	private String tditTableOfContents;
	private String tditDelNy;

	private Date regDateTime;
	private Date regDateTimeSvr;
	private Date modDateTime;
	private Date modDateTimeSvr;
	
	private Integer tdatAuthorCd;
	private String tdatSeq;
	private Integer tdatTranslatorCd;
	private Integer tdatDelNy;
	private Integer tdatDefaultNy;
	
	private String tdkwSeq;
	private String tdkwKeyword;
	private Integer tdkwDefaultNy;
	private Integer tdkwOrder;
	
	private String tdriSeq;
	private String tdriTypeCd;
	private String tdriTitle;
	private String tdriAuthorCd;
	private String tdriPrice;
	private String tdriDelNy;
	
	private String tableName;
	private String seq;
	private Integer type;
	private String uuidName;
	private String originalName;
	private Integer defaultNy;
	private Integer sort;
	private String ext;
	private long size;
	private Integer delNy;
	private String pseq;
	private String path;
	
	private Integer[] tditSeqArray;
	
	private Integer[] tdatAuthorCdArray;
	private Integer[] tdatDefaultNyArray;
	private String[] tdatTransLatorCdArray;
	private Integer[] tdatDelNyArray;
	
	private String[] tdkwKeywordArray;
	private Integer[] tdkwDefaultNyArray; 
	private Integer[] tdkwOrderArray; 

	private String[] tdriTypeCdArray;
	private String[] tdriTitleArray;
	private String[] tdriAuthorCdArray;
	private String[] tdriPriceArray;
	private String[] tdriDelNyArray;

	private MultipartFile[] file0;
	private MultipartFile[] file1;
	
	private int result;
	
	private String rtCount;
	private String rtFinalPrice;
	private String rtCoupon;
	private Date rtDoP;
	private String rtPoint;
	private Date rtDoA;
	private String rtPayment;
	private String rtAddress1;
	private String rtAddress2;
	private String rtZipcode;
	private String rtName;
	private String rtNumber;
	
	
	private String kbmmSeq;
	private String kbmmName;
	private String kbmmId;
	private String kbmpNumberFull;
	private String kbmeEmailFull;
	private String kbmaAddress1;
	private String kbmaAddress2;
	private String kbmaZipcode;
	private String kbmaAddress1_abroad;
	private String kbmaAddress2_abroad;
	private String kbmaAddress3_abroad;
	private String kbmaZipcode_abroad;
	
	public String getTditSeq() {
		return tditSeq;
	}
	public void setTditSeq(String tditSeq) {
		this.tditSeq = tditSeq;
	}
	public String getTditTitle() {
		return tditTitle;
	}
	public void setTditTitle(String tditTitle) {
		this.tditTitle = tditTitle;
	}
	public String getTditSubTitle() {
		return tditSubTitle;
	}
	public void setTditSubTitle(String tditSubTitle) {
		this.tditSubTitle = tditSubTitle;
	}
	public String getTditPublisherCd() {
		return tditPublisherCd;
	}
	public void setTditPublisherCd(String tditPublisherCd) {
		this.tditPublisherCd = tditPublisherCd;
	}
	public String getTditPublishingDate() {
		return tditPublishingDate;
	}
	public void setTditPublishingDate(String tditPublishingDate) {
		this.tditPublishingDate = tditPublishingDate;
	}
	public String getTditPrice() {
		return tditPrice;
	}
	public void setTditPrice(String tditPrice) {
		this.tditPrice = tditPrice;
	}
	public String getTditDiscountCd() {
		return tditDiscountCd;
	}
	public void setTditDiscountCd(String tditDiscountCd) {
		this.tditDiscountCd = tditDiscountCd;
	}
	public Double getTditDiscountRate() {
		return tditDiscountRate;
	}
	public void setTditDiscountRate(Double tditDiscountRate) {
		this.tditDiscountRate = tditDiscountRate;
	}
	public String getTditStateCd() {
		return tditStateCd;
	}
	public void setTditStateCd(String tditStateCd) {
		this.tditStateCd = tditStateCd;
	}
	public String getTditItemCate() {
		return tditItemCate;
	}
	public void setTditItemCate(String tditItemCate) {
		this.tditItemCate = tditItemCate;
	}
	public String getTditItemCate2() {
		return tditItemCate2;
	}
	public void setTditItemCate2(String tditItemCate2) {
		this.tditItemCate2 = tditItemCate2;
	}
	public String getTditIsbn() {
		return tditIsbn;
	}
	public void setTditIsbn(String tditIsbn) {
		this.tditIsbn = tditIsbn;
	}
	public String getTditPage() {
		return tditPage;
	}
	public void setTditPage(String tditPage) {
		this.tditPage = tditPage;
	}
	public String getTditSize() {
		return tditSize;
	}
	public void setTditSize(String tditSize) {
		this.tditSize = tditSize;
	}
	public String getTditWeight() {
		return tditWeight;
	}
	public void setTditWeight(String tditWeight) {
		this.tditWeight = tditWeight;
	}
	public String getTditBookDesc() {
		return tditBookDesc;
	}
	public void setTditBookDesc(String tditBookDesc) {
		this.tditBookDesc = tditBookDesc;
	}
	public String getTditBookDesc2() {
		return tditBookDesc2;
	}
	public void setTditBookDesc2(String tditBookDesc2) {
		this.tditBookDesc2 = tditBookDesc2;
	}
	public String getTditTableOfContents() {
		return tditTableOfContents;
	}
	public void setTditTableOfContents(String tditTableOfContents) {
		this.tditTableOfContents = tditTableOfContents;
	}
	public String getTditDelNy() {
		return tditDelNy;
	}
	public void setTditDelNy(String tditDelNy) {
		this.tditDelNy = tditDelNy;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getRegDateTimeSvr() {
		return regDateTimeSvr;
	}
	public void setRegDateTimeSvr(Date regDateTimeSvr) {
		this.regDateTimeSvr = regDateTimeSvr;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}
	public Date getModDateTimeSvr() {
		return modDateTimeSvr;
	}
	public void setModDateTimeSvr(Date modDateTimeSvr) {
		this.modDateTimeSvr = modDateTimeSvr;
	}
	public Integer getTdatAuthorCd() {
		return tdatAuthorCd;
	}
	public void setTdatAuthorCd(Integer tdatAuthorCd) {
		this.tdatAuthorCd = tdatAuthorCd;
	}
	public String getTdatSeq() {
		return tdatSeq;
	}
	public void setTdatSeq(String tdatSeq) {
		this.tdatSeq = tdatSeq;
	}
	public Integer getTdatTranslatorCd() {
		return tdatTranslatorCd;
	}
	public void setTdatTranslatorCd(Integer tdatTranslatorCd) {
		this.tdatTranslatorCd = tdatTranslatorCd;
	}
	public Integer getTdatDelNy() {
		return tdatDelNy;
	}
	public void setTdatDelNy(Integer tdatDelNy) {
		this.tdatDelNy = tdatDelNy;
	}
	public Integer getTdatDefaultNy() {
		return tdatDefaultNy;
	}
	public void setTdatDefaultNy(Integer tdatDefaultNy) {
		this.tdatDefaultNy = tdatDefaultNy;
	}
	public String getTdkwSeq() {
		return tdkwSeq;
	}
	public void setTdkwSeq(String tdkwSeq) {
		this.tdkwSeq = tdkwSeq;
	}
	public String getTdkwKeyword() {
		return tdkwKeyword;
	}
	public void setTdkwKeyword(String tdkwKeyword) {
		this.tdkwKeyword = tdkwKeyword;
	}
	public String getTdriSeq() {
		return tdriSeq;
	}
	public void setTdriSeq(String tdriSeq) {
		this.tdriSeq = tdriSeq;
	}
	public String getTdriTypeCd() {
		return tdriTypeCd;
	}
	public void setTdriTypeCd(String tdriTypeCd) {
		this.tdriTypeCd = tdriTypeCd;
	}
	public String getTdriTitle() {
		return tdriTitle;
	}
	public void setTdriTitle(String tdriTitle) {
		this.tdriTitle = tdriTitle;
	}
	public String getTdriAuthorCd() {
		return tdriAuthorCd;
	}
	public void setTdriAuthorCd(String tdriAuthorCd) {
		this.tdriAuthorCd = tdriAuthorCd;
	}
	public String getTdriPrice() {
		return tdriPrice;
	}
	public void setTdriPrice(String tdriPrice) {
		this.tdriPrice = tdriPrice;
	}
	public String getTdriDelNy() {
		return tdriDelNy;
	}
	public void setTdriDelNy(String tdriDelNy) {
		this.tdriDelNy = tdriDelNy;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public Integer[] getTdatAuthorCdArray() {
		return tdatAuthorCdArray;
	}
	public void setTdatAuthorCdArray(Integer[] tdatAuthorCdArray) {
		this.tdatAuthorCdArray = tdatAuthorCdArray;
	}
	public Integer[] getTdatDefaultNyArray() {
		return tdatDefaultNyArray;
	}
	public void setTdatDefaultNyArray(Integer[] tdatDefaultNyArray) {
		this.tdatDefaultNyArray = tdatDefaultNyArray;
	}
	public String[] getTdatTransLatorCdArray() {
		return tdatTransLatorCdArray;
	}
	public void setTdatTransLatorCdArray(String[] tdatTransLatorCdArray) {
		this.tdatTransLatorCdArray = tdatTransLatorCdArray;
	}
	public Integer[] getTdatDelNyArray() {
		return tdatDelNyArray;
	}
	public void setTdatDelNyArray(Integer[] tdatDelNyArray) {
		this.tdatDelNyArray = tdatDelNyArray;
	}
	public String[] getTdkwKeywordArray() {
		return tdkwKeywordArray;
	}
	public void setTdkwKeywordArray(String[] tdkwKeywordArray) {
		this.tdkwKeywordArray = tdkwKeywordArray;
	}
	public String[] getTdriTypeCdArray() {
		return tdriTypeCdArray;
	}
	public void setTdriTypeCdArray(String[] tdriTypeCdArray) {
		this.tdriTypeCdArray = tdriTypeCdArray;
	}
	public String[] getTdriTitleArray() {
		return tdriTitleArray;
	}
	public void setTdriTitleArray(String[] tdriTitleArray) {
		this.tdriTitleArray = tdriTitleArray;
	}
	public String[] getTdriAuthorCdArray() {
		return tdriAuthorCdArray;
	}
	public void setTdriAuthorCdArray(String[] tdriAuthorCdArray) {
		this.tdriAuthorCdArray = tdriAuthorCdArray;
	}
	public String[] getTdriPriceArray() {
		return tdriPriceArray;
	}
	public void setTdriPriceArray(String[] tdriPriceArray) {
		this.tdriPriceArray = tdriPriceArray;
	}
	public String[] getTdriDelNyArray() {
		return tdriDelNyArray;
	}
	public void setTdriDelNyArray(String[] tdriDelNyArray) {
		this.tdriDelNyArray = tdriDelNyArray;
	}
	public MultipartFile[] getFile0() {
		return file0;
	}
	public void setFile0(MultipartFile[] file0) {
		this.file0 = file0;
	}
	public MultipartFile[] getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}
	public Integer getTdkwDefaultNy() {
		return tdkwDefaultNy;
	}
	public void setTdkwDefaultNy(Integer tdkwDefaultNy) {
		this.tdkwDefaultNy = tdkwDefaultNy;
	}
	public Integer getTdkwOrder() {
		return tdkwOrder;
	}
	public void setTdkwOrder(Integer tdkwOrder) {
		this.tdkwOrder = tdkwOrder;
	}
	public Integer[] getTdkwDefaultNyArray() {
		return tdkwDefaultNyArray;
	}
	public void setTdkwDefaultNyArray(Integer[] tdkwDefaultNyArray) {
		this.tdkwDefaultNyArray = tdkwDefaultNyArray;
	}
	public Integer[] getTdkwOrderArray() {
		return tdkwOrderArray;
	}
	public void setTdkwOrderArray(Integer[] tdkwOrderArray) {
		this.tdkwOrderArray = tdkwOrderArray;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Integer[] getTditSeqArray() {
		return tditSeqArray;
	}
	public void setTditSeqArray(Integer[] tditSeqArray) {
		this.tditSeqArray = tditSeqArray;
	}
	public String getKbmmSeq() {
		return kbmmSeq;
	}
	public void setKbmmSeq(String kbmmSeq) {
		this.kbmmSeq = kbmmSeq;
	}
	public String getKbmmName() {
		return kbmmName;
	}
	public void setKbmmName(String kbmmName) {
		this.kbmmName = kbmmName;
	}
	public String getKbmmId() {
		return kbmmId;
	}
	public void setKbmmId(String kbmmId) {
		this.kbmmId = kbmmId;
	}
	public String getKbmpNumberFull() {
		return kbmpNumberFull;
	}
	public void setKbmpNumberFull(String kbmpNumberFull) {
		this.kbmpNumberFull = kbmpNumberFull;
	}
	public String getKbmeEmailFull() {
		return kbmeEmailFull;
	}
	public void setKbmeEmailFull(String kbmeEmailFull) {
		this.kbmeEmailFull = kbmeEmailFull;
	}
	public String getKbmaAddress1() {
		return kbmaAddress1;
	}
	public void setKbmaAddress1(String kbmaAddress1) {
		this.kbmaAddress1 = kbmaAddress1;
	}
	public String getKbmaAddress2() {
		return kbmaAddress2;
	}
	public void setKbmaAddress2(String kbmaAddress2) {
		this.kbmaAddress2 = kbmaAddress2;
	}
	public String getKbmaZipcode() {
		return kbmaZipcode;
	}
	public void setKbmaZipcode(String kbmaZipcode) {
		this.kbmaZipcode = kbmaZipcode;
	}
	public String getKbmaAddress1_abroad() {
		return kbmaAddress1_abroad;
	}
	public void setKbmaAddress1_abroad(String kbmaAddress1_abroad) {
		this.kbmaAddress1_abroad = kbmaAddress1_abroad;
	}
	public String getKbmaAddress2_abroad() {
		return kbmaAddress2_abroad;
	}
	public void setKbmaAddress2_abroad(String kbmaAddress2_abroad) {
		this.kbmaAddress2_abroad = kbmaAddress2_abroad;
	}
	public String getKbmaAddress3_abroad() {
		return kbmaAddress3_abroad;
	}
	public void setKbmaAddress3_abroad(String kbmaAddress3_abroad) {
		this.kbmaAddress3_abroad = kbmaAddress3_abroad;
	}
	public String getKbmaZipcode_abroad() {
		return kbmaZipcode_abroad;
	}
	public void setKbmaZipcode_abroad(String kbmaZipcode_abroad) {
		this.kbmaZipcode_abroad = kbmaZipcode_abroad;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public String getRtCount() {
		return rtCount;
	}
	public void setRtCount(String rtCount) {
		this.rtCount = rtCount;
	}
	public String getRtFinalPrice() {
		return rtFinalPrice;
	}
	public void setRtFinalPrice(String rtFinalPrice) {
		this.rtFinalPrice = rtFinalPrice;
	}
	public Date getRtDoP() {
		return rtDoP;
	}
	public void setRtDoP(Date rtDoP) {
		this.rtDoP = rtDoP;
	}
	public String getRtPoint() {
		return rtPoint;
	}
	public void setRtPoint(String rtPoint) {
		this.rtPoint = rtPoint;
	}
	public Date getRtDoA() {
		return rtDoA;
	}
	public void setRtDoA(Date rtDoA) {
		this.rtDoA = rtDoA;
	}
	public String getRtCoupon() {
		return rtCoupon;
	}
	public void setRtCoupon(String rtCoupon) {
		this.rtCoupon = rtCoupon;
	}
	public String getRtPayment() {
		return rtPayment;
	}
	public void setRtPayment(String rtPayment) {
		this.rtPayment = rtPayment;
	}
	public String getRtAddress1() {
		return rtAddress1;
	}
	public void setRtAddress1(String rtAddress1) {
		this.rtAddress1 = rtAddress1;
	}
	public String getRtAddress2() {
		return rtAddress2;
	}
	public void setRtAddress2(String rtAddress2) {
		this.rtAddress2 = rtAddress2;
	}
	public String getRtZipcode() {
		return rtZipcode;
	}
	public void setRtZipcode(String rtZipcode) {
		this.rtZipcode = rtZipcode;
	}
	public String getRtName() {
		return rtName;
	}
	public void setRtName(String rtName) {
		this.rtName = rtName;
	}
	public String getRtNumber() {
		return rtNumber;
	}
	public void setRtNumber(String rtNumber) {
		this.rtNumber = rtNumber;
	}

	
	
	
	
}
