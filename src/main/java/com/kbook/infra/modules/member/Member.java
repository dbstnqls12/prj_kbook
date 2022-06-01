package com.kbook.infra.modules.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Member {

//	memberList
	private String kbmmSeq;
	private String kbmmName;
	private String kbmmId;
	private String kbmpNumberFull;
	private String kbmeEmailFull;
	private String kbmmAdminNy;
	private String kbmmKoreanNy;
	
	private Date regDateTime;
	private Date regDateTimeSvr;
	private Date modDateTime;
	private Date modDateTimeSvr;
	
//	memberView
	private String kbmmPassword;
	private String kbmmDob;
	
//	memberForm
	private String kbmmGenderCd;
	private String kbmmUseConsentNy_c;
	private String kbmmPersonalinfoConsentNy_c;
	private String kbmmPersonalinfoConsentNy_s;
	private String kbmmOfferinfo1ConsentNy_s;
	private String kbmmOfferinfo2ConsentNy_s;
	private String kbmmSmsConsentNy;
	private String kbmmEmailConsentNy;
	private String kbmmSavedCd;
	private String kbmmDelNy;
	private String kbmmGradeCd;
	private String kbmmdormancyNy;
	private String kbmmDesc;
	
	private String kbmpSeq;
	private Integer kbmpDefaultNy;
	private Integer kbmpTypeCd;
	private Integer kbmpDeviceCd;
	private Integer kbmpTelecomCd;
	private String kbmpNumber1Cd;
	private String kbmpNumber2;
	private String kbmpNumber3;
	private Integer kbmpDelNy;

	private String kbmaDefaultNy;
	private String kbmaTypeCd;
	private String kbmaTitle;
	private String kbmaAddress1;
	private String kbmaAddress2;
	private String kbmaZipcode;
	private String kbmaAddress1_abroad;
	private String kbmaAddress2_abroad;
	private String kbmaAddress3_abroad;
	private String kbmaZipcode_abroad;
	private String kbmaDelNy;
	private Double kbmaLat;
	private Double kbmaLng;

	private String kbmeDefaultNy;
	private String kbmeTypeCd;
	private String kbmeEmailAccount;
	private String kbmeEmailDomain;
	private String kbmeEmailDomainCd;
	private String kbmeDelNy;
	private String ifcgSeq;
	
	private String tableName;
	
	private String seq;
	private Integer type;
	private String uuidName;
	private String originalName;
	private Integer defaultNy;
	private Integer sort;
	private String ext;
	private String path;
	private long size;
	private Integer delNy;
	private String pseq;

	private Integer[] kbmpDefaultNyArray;
	private Integer[] kbmpDeviceCdArray;
	private String[] kbmpNumberFullArray;
	private Integer[] kbmpTelecomCdArray;
	
	private MultipartFile[] file0;
	private MultipartFile[] file1;
	
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
	public String getKbmmAdminNy() {
		return kbmmAdminNy;
	}
	public void setKbmmAdminNy(String kbmmAdminNy) {
		this.kbmmAdminNy = kbmmAdminNy;
	}
	public String getKbmmKoreanNy() {
		return kbmmKoreanNy;
	}
	public void setKbmmKoreanNy(String kbmmKoreanNy) {
		this.kbmmKoreanNy = kbmmKoreanNy;
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
	public String getKbmmPassword() {
		return kbmmPassword;
	}
	public void setKbmmPassword(String kbmmPassword) {
		this.kbmmPassword = kbmmPassword;
	}
	public String getKbmmDob() {
		return kbmmDob;
	}
	public void setKbmmDob(String kbmmDob) {
		this.kbmmDob = kbmmDob;
	}
	public String getKbmmGenderCd() {
		return kbmmGenderCd;
	}
	public void setKbmmGenderCd(String kbmmGenderCd) {
		this.kbmmGenderCd = kbmmGenderCd;
	}
	public String getKbmmUseConsentNy_c() {
		return kbmmUseConsentNy_c;
	}
	public void setKbmmUseConsentNy_c(String kbmmUseConsentNy_c) {
		this.kbmmUseConsentNy_c = kbmmUseConsentNy_c;
	}
	public String getKbmmPersonalinfoConsentNy_c() {
		return kbmmPersonalinfoConsentNy_c;
	}
	public void setKbmmPersonalinfoConsentNy_c(String kbmmPersonalinfoConsentNy_c) {
		this.kbmmPersonalinfoConsentNy_c = kbmmPersonalinfoConsentNy_c;
	}
	public String getKbmmPersonalinfoConsentNy_s() {
		return kbmmPersonalinfoConsentNy_s;
	}
	public void setKbmmPersonalinfoConsentNy_s(String kbmmPersonalinfoConsentNy_s) {
		this.kbmmPersonalinfoConsentNy_s = kbmmPersonalinfoConsentNy_s;
	}
	public String getKbmmOfferinfo1ConsentNy_s() {
		return kbmmOfferinfo1ConsentNy_s;
	}
	public void setKbmmOfferinfo1ConsentNy_s(String kbmmOfferinfo1ConsentNy_s) {
		this.kbmmOfferinfo1ConsentNy_s = kbmmOfferinfo1ConsentNy_s;
	}
	public String getKbmmOfferinfo2ConsentNy_s() {
		return kbmmOfferinfo2ConsentNy_s;
	}
	public void setKbmmOfferinfo2ConsentNy_s(String kbmmOfferinfo2ConsentNy_s) {
		this.kbmmOfferinfo2ConsentNy_s = kbmmOfferinfo2ConsentNy_s;
	}
	public String getKbmmSmsConsentNy() {
		return kbmmSmsConsentNy;
	}
	public void setKbmmSmsConsentNy(String kbmmSmsConsentNy) {
		this.kbmmSmsConsentNy = kbmmSmsConsentNy;
	}
	public String getKbmmEmailConsentNy() {
		return kbmmEmailConsentNy;
	}
	public void setKbmmEmailConsentNy(String kbmmEmailConsentNy) {
		this.kbmmEmailConsentNy = kbmmEmailConsentNy;
	}
	public String getKbmmSavedCd() {
		return kbmmSavedCd;
	}
	public void setKbmmSavedCd(String kbmmSavedCd) {
		this.kbmmSavedCd = kbmmSavedCd;
	}
	public String getKbmmDelNy() {
		return kbmmDelNy;
	}
	public void setKbmmDelNy(String kbmmDelNy) {
		this.kbmmDelNy = kbmmDelNy;
	}
	public String getKbmmGradeCd() {
		return kbmmGradeCd;
	}
	public void setKbmmGradeCd(String kbmmGradeCd) {
		this.kbmmGradeCd = kbmmGradeCd;
	}
	public String getKbmmdormancyNy() {
		return kbmmdormancyNy;
	}
	public void setKbmmdormancyNy(String kbmmdormancyNy) {
		this.kbmmdormancyNy = kbmmdormancyNy;
	}
	public String getKbmmDesc() {
		return kbmmDesc;
	}
	public void setKbmmDesc(String kbmmDesc) {
		this.kbmmDesc = kbmmDesc;
	}
	public String getKbmpSeq() {
		return kbmpSeq;
	}
	public void setKbmpSeq(String kbmpSeq) {
		this.kbmpSeq = kbmpSeq;
	}
	public Integer getKbmpDefaultNy() {
		return kbmpDefaultNy;
	}
	public void setKbmpDefaultNy(Integer kbmpDefaultNy) {
		this.kbmpDefaultNy = kbmpDefaultNy;
	}
	public Integer getKbmpTypeCd() {
		return kbmpTypeCd;
	}
	public void setKbmpTypeCd(Integer kbmpTypeCd) {
		this.kbmpTypeCd = kbmpTypeCd;
	}
	public Integer getKbmpDeviceCd() {
		return kbmpDeviceCd;
	}
	public void setKbmpDeviceCd(Integer kbmpDeviceCd) {
		this.kbmpDeviceCd = kbmpDeviceCd;
	}
	public Integer getKbmpTelecomCd() {
		return kbmpTelecomCd;
	}
	public void setKbmpTelecomCd(Integer kbmpTelecomCd) {
		this.kbmpTelecomCd = kbmpTelecomCd;
	}
	public String getKbmpNumber1Cd() {
		return kbmpNumber1Cd;
	}
	public void setKbmpNumber1Cd(String kbmpNumber1Cd) {
		this.kbmpNumber1Cd = kbmpNumber1Cd;
	}
	public String getKbmpNumber2() {
		return kbmpNumber2;
	}
	public void setKbmpNumber2(String kbmpNumber2) {
		this.kbmpNumber2 = kbmpNumber2;
	}
	public String getKbmpNumber3() {
		return kbmpNumber3;
	}
	public void setKbmpNumber3(String kbmpNumber3) {
		this.kbmpNumber3 = kbmpNumber3;
	}
	public Integer getKbmpDelNy() {
		return kbmpDelNy;
	}
	public void setKbmpDelNy(Integer kbmpDelNy) {
		this.kbmpDelNy = kbmpDelNy;
	}
	public String getKbmaDefaultNy() {
		return kbmaDefaultNy;
	}
	public void setKbmaDefaultNy(String kbmaDefaultNy) {
		this.kbmaDefaultNy = kbmaDefaultNy;
	}
	public String getKbmaTypeCd() {
		return kbmaTypeCd;
	}
	public void setKbmaTypeCd(String kbmaTypeCd) {
		this.kbmaTypeCd = kbmaTypeCd;
	}
	public String getKbmaTitle() {
		return kbmaTitle;
	}
	public void setKbmaTitle(String kbmaTitle) {
		this.kbmaTitle = kbmaTitle;
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
	public String getKbmaDelNy() {
		return kbmaDelNy;
	}
	public void setKbmaDelNy(String kbmaDelNy) {
		this.kbmaDelNy = kbmaDelNy;
	}
	public Double getKbmaLat() {
		return kbmaLat;
	}
	public void setKbmaLat(Double kbmaLat) {
		this.kbmaLat = kbmaLat;
	}
	public Double getKbmaLng() {
		return kbmaLng;
	}
	public void setKbmaLng(Double kbmaLng) {
		this.kbmaLng = kbmaLng;
	}
	public String getKbmeDefaultNy() {
		return kbmeDefaultNy;
	}
	public void setKbmeDefaultNy(String kbmeDefaultNy) {
		this.kbmeDefaultNy = kbmeDefaultNy;
	}
	public String getKbmeTypeCd() {
		return kbmeTypeCd;
	}
	public void setKbmeTypeCd(String kbmeTypeCd) {
		this.kbmeTypeCd = kbmeTypeCd;
	}
	public String getKbmeEmailAccount() {
		return kbmeEmailAccount;
	}
	public void setKbmeEmailAccount(String kbmeEmailAccount) {
		this.kbmeEmailAccount = kbmeEmailAccount;
	}
	public String getKbmeEmailDomain() {
		return kbmeEmailDomain;
	}
	public void setKbmeEmailDomain(String kbmeEmailDomain) {
		this.kbmeEmailDomain = kbmeEmailDomain;
	}
	public String getKbmeEmailDomainCd() {
		return kbmeEmailDomainCd;
	}
	public void setKbmeEmailDomainCd(String kbmeEmailDomainCd) {
		this.kbmeEmailDomainCd = kbmeEmailDomainCd;
	}
	public String getKbmeDelNy() {
		return kbmeDelNy;
	}
	public void setKbmeDelNy(String kbmeDelNy) {
		this.kbmeDelNy = kbmeDelNy;
	}
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
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
	public Integer[] getKbmpDefaultNyArray() {
		return kbmpDefaultNyArray;
	}
	public void setKbmpDefaultNyArray(Integer[] kbmpDefaultNyArray) {
		this.kbmpDefaultNyArray = kbmpDefaultNyArray;
	}
	public Integer[] getKbmpDeviceCdArray() {
		return kbmpDeviceCdArray;
	}
	public void setKbmpDeviceCdArray(Integer[] kbmpDeviceCdArray) {
		this.kbmpDeviceCdArray = kbmpDeviceCdArray;
	}
	public String[] getKbmpNumberFullArray() {
		return kbmpNumberFullArray;
	}
	public void setKbmpNumberFullArray(String[] kbmpNumberFullArray) {
		this.kbmpNumberFullArray = kbmpNumberFullArray;
	}
	public Integer[] getKbmpTelecomCdArray() {
		return kbmpTelecomCdArray;
	}
	public void setKbmpTelecomCdArray(Integer[] kbmpTelecomCdArray) {
		this.kbmpTelecomCdArray = kbmpTelecomCdArray;
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
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	


	
	

	
	
} 
