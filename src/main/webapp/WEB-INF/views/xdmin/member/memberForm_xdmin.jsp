<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<% pageContext.setAttribute("br", "\n"); %>

<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 -->	
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

<link href="/resources/xdmin/css/footers.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="https://ifh.cc/g/74QNWX.png" type="image/x-icon" />
<title id="ctl00_headerTitle">책이 수북수북</title>
<style type="text/css">
	.addScroll {
		overflow: auto;
		height : 90px;
		background-color: #F0F8FF;
	}
	
	.input-file-button {
		padding : auto;
		cursor : pointer;
	}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/xdmin/include/xdmin_header.jsp" %><!-- xdmin_header -->
<%@ include file="/WEB-INF/views/xdmin/include/offcanvas.jsp" %><!-- offcanvas -->
<%@ include file="/WEB-INF/views/xdmin/include/xdmin_navbar.jsp" %><!-- navbar -->


<!-- 본문 s-->
<div class="container">
	<div class="row">
		<div class="mb-3"><h4 style="font-weight: bold;">회원가입</h4></div>
			<div class="container ">
			<form action="/xdmin/member/memberInst" method="post" id="memberForm" name="memberForm" class="row g-3" enctype="multipart/form-data">
				<input type="hidden" id="thisPage" name="thisPage"  value="<c:out value="${vo.thisPage}"/>">
				<input type="hidden" id="kbmmSeq" name="kbmmSeq" value="<c:out value="${vo.kbmmSeq}"/>">
				<input type="hidden" id="shKbmmDelNy" name="shKbmmDelNy" value="<c:out value="${vo.shKbmmDelNy}"/>">
				<input type="hidden" id="shOption" name="shOption"  value="<c:out value="${vo.shOption}"/>">
				<input type="hidden" id="shValue" name="shValue"  value="<c:out value="${vo.shValue}"/>">
				<input type="hidden" id="shOptionDate" name="shOptionDate"  value="<c:out value="${vo.shOptionDate}"/>">
				<input type="hidden" id="shDateStart" name="shDateStart"  value="<c:out value="${vo.shDateStart}"/>">
				<input type="hidden" id="shDateEnd" name=shDateEnd  value="<c:out value="${vo.shDateEnd}"/>">
				<input type="hidden" id="kbmmGradeCd" name="kbmmGradeCd"  value="1">
				<div class="col-md-6">
					<label class="form-label">이름</label>
					<input type="text" class="form-control form-control-sm" id="kbmmName" name="kbmmName">
				</div>
				<div class="col-6 d-none d-sm-block"></div><!-- 줄바꿈 -->
				<div class="col-md-6">
					<label for="inputId" class="form-label">아이디</label>
					<input type="text" class="form-control form-control-sm" id="kbmmId" name="kbmmId" placeholder="영소문자/숫자 5~20자리"> 
				</div>
				<div class="col-6 d-none d-sm-block"></div><!-- 줄바꿈 -->
				<div class="col-md-6">
					<label for="inputPwd" class="form-label">비밀번호</label>
					<input type="password" class="form-control form-control-sm pw" id="kbmmPassword" name="kbmmPassword" placeholder="영문/숫자/특수문자 조합 8~20자리(대소문자 포함)">
					<span id="alert-success" style="display: none; color: blue; text-align: left; font-size: 13px;"><i class="fa-solid fa-check"></i> 비밀번호가 일치합니다.</span>
					<span id="alert-danger" style="display: none; color: red; text-align: left; font-size: 13px;"><i class="fa-solid fa-xmark"></i> 비밀번호가 일치하지 않습니다.</span>	
				</div>
				<div class="col-md-6">
					<label for="inputPwdchk" class="form-label">비밀번호 확인</label>
					<input type="password" class="form-control form-control-sm pw" id="kbmmPasswordchk" name="kbmmPasswordchk" placeholder="비밀번호 재입력">
				</div>
				<div class="col-md-6">
					<label class="form-label">생년월일</label>
					<input type="text" id="kbmmDob" name="kbmmDob" max="2022-01-08" class="form-control form-control-sm" placeholder="8자리 입력(예.19850101)">
				</div>
				<div class="col-md-6">
					<label class="form-label">성별</label>
					<select class="form-select form-select-sm" id="kbmmGenderCd" name="kbmmGenderCd">
						<option value="">::성별::</option>
							<c:forEach items="${CodeGender}" var="itemGender" varStatus="statusGender">
						<option value="<c:out value="${itemGender.ifcdOrder}"/>"><c:out value="${itemGender.ifcdName}"/></option>	
							</c:forEach>
					</select>
				</div>	
					
				<c:forEach items="${listPhone}" var="item" varStatus="statusTelecom">
					<c:choose>
						<c:when test="${item.kbmpDeviceCd eq 1}"> <c:set var="kbmmNumberHome" value="${item.kbmpNumberFull }"/></c:when>
						<c:when test="${item.kbmpDeviceCd eq 2}">
							<c:set var="kbmmNumberMobile" value="${item.kbmpNumberFull}"/>
							<c:set var="kbmmNumberTelecom" value="${item.kbmpTelecomCd}"/>
						</c:when>
						<c:when test="${item.kbmpDeviceCd eq 3 }"><c:set var="kbmmNumberFax" value="${item.kbmpNumberFull}"/></c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
				</c:forEach>	
					
				<div class="col-md-6">
					<label class="form-label">핸드폰번호</label>
					<input type="hidden" id="kbmpDefaultNyArray0" name="kbmpDefaultNyArray" value="1">
					<input type="hidden" id="kbmpDeviceCdArray0" name="kbmpDeviceCdArray" value="2">
						<select class="form-select form-select-sm mb-1" id="kbmpTelecomCdArray0" name="kbmpTelecomCdArray">
						<option selected>::통신사::</option>
							<c:forEach items="${CodeTelecom}" var="itemTelecom" varStatus="statusTelecom">
								<option value="<c:out value="${itemTelecom.ifcdOrder}"/>" <c:if test="${kbmmNumberTelecom eq itemTelecom.ifcdOrder }">selected</c:if> ><c:out value="${itemTelecom.ifcdName}"/></option>	
							</c:forEach>	
						</select>
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFullArray0" name="kbmpNumberFullArray"  value="<c:out value="${kbmmNumberMobile}"/>"  placeholder="숫자만 입력(예.01012341231)">
				</div>	
 				<div class="col-md-6">
					<label class="form-label">전화번호(선택)</label>
					<input type="hidden" id="kbmpDefaultNyArray1" name="kbmpDefaultNyArray" value="0">
					<input type="hidden" id="kbmpDeviceCdArray1" name="kbmpDeviceCdArray" value="1">
					<input type="hidden" id="kbmpTelecomCdArray1" name="kbmpTelecomCdArray" value="">
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFullArray1" name="kbmpNumberFullArray" value="<c:out value="${kbmmNumberHome}"/>" >
				</div>
				<div class="col-md-6">
					<label class="form-label">팩스번호</label>
					<input type="hidden" id="kbmpDefaultNyArray2" name="kbmpDefaultNyArray" value="0">
					<input type="hidden" id="kbmpDeviceCdArray2" name="kbmpDeviceCdArray" value="3">
					<input type="hidden" id="kbmpTelecomCdArray2" name="kbmpTelecomCdArray" value="">
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFullArray2" name="kbmpNumberFullArray" value="<c:out value="${kbmmNumberFax}"/>"  >
				</div> 
				<div class="col-md-6">
					<label class="col-form-label pt-0">이메일</label>
					<input type="text" class="form-control form-control-sm" id="kbmeEmailFull" name="kbmeEmailFull" placeholder="이메일주소 입력">
				</div>
				<div class="col-md-6">
					<label for="file0" class="form-label input-file-button">이미지 파일</label>
					<input type="file" class="form-control form-control-sm mb-1" id="file0" name="file0" multiple onChange="upload(0,2);"style="display: none;" >
					<div class="addScroll">
						<ul id="ulFile0" class="list-group"></ul>
					</div>
				</div>
				<div class="col-md-6">
					<label class="form-label">국적</label>
					<select class="form-select form-select-sm" id="kbmmKoreanNy" name="kbmmKoreanNy" >
						<option selected>::국적::</option>
							<c:forEach items="${CodeKorean}" var="itemKorean" varStatus="statusKorean">
						<option value="<c:out value="${itemKorean.ifcdOrder}"/>" <c:if test="${item.kbmmKoreanNy eq itemKorean.ifcdOrder }">selected</c:if> ><c:out value="${itemKorean.ifcdName}"/></option>	
							</c:forEach>	
					</select>
				</div>
				<div class="col-md-6">
					<label class="form-label">주소 (한국전용)</label>
					<div class="input-group">
						<input class="form-control form-control-sm mb-1" type="text" id="kbmaZipcode" name="kbmaZipcode" placeholder="우편번호" readonly>
						<button class="btn btn-outline-secondary btn-sm mb-1" type="button" id="btnAddress"><i class= "fas fa-search"></i></button>
						<button class="btn btn-outline-secondary btn-sm mb-1" type="button" id="btnClear"><i class= "fas fa-solid fa-x"></i></button>
					</div>
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress1" name="kbmaAddress1" placeholder="기본주소"> 
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress2" name="kbmaAddress2" placeholder="상세주소"> 
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaLat" name="kbmaLat" placeholder="kbmaLat"> 
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaLng" name="kbmaLng" placeholder="kbmaLng"> 
				</div>
				<div class="col-md-6">
					<label class="form-label">주소 (국외전용)</label>
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaZipcode_abroad" name="kbmaZipcode_abroad" placeholder="우편번호">
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress1_abroad" name="kbmaAddress1_abroad" placeholder="기본주소">
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress2_abroad" name="kbmaAddress2_abroad" placeholder="상세주소">
				</div>
				<div class="col-md-6">
					<label class="col-form-label">수분문고 이용약관<span style="color: red;">(필수)</span></label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmUseConsentNy_c" id="kbmmUseConsentNy_cy" value="1" >
							<label class="form-check-label" for="kbmmUseConsentNy_cy">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmUseConsentNy_c" id="kbmmUseConsentNy_cn" value="0" >
							<label class="form-check-label" for="kbmmUseConsentNy_cn">비동의</label>
						</div>
		 			</div>
		 		</div>			
				<div class="col-md-6">
					<label class="col-form-label">개인정보 수집 및 이용안내<span style="color: red;">(필수)</span></label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmPersonalinfoConsentNy_c" id="personalinfoConsentNy_cy" value="1" >
							<label class="form-check-label" for="personalinfoConsentNy_cy">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmPersonalinfoConsentNy_c" id="personalinfoConsentNy_cn" value="0" >
							<label class="form-check-label" for="personalinfoConsentNy_cn">비동의</label>
						</div>
		 			</div>
		 		</div>			
				<div class="col-md-6">
					<label class="col-form-label">개인정보 수집 및 이용안내(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmPersonalinfoConsentNy_s" id="personalinfoConsentNy_sy" value="1" >
							<label class="form-check-label" for="personalinfoConsentNy_sy">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmPersonalinfoConsentNy_s" id="personalinfoConsentNy_sn" value="0" >
							<label class="form-check-label" for="personalinfoConsentNy_sn">비동의</label>
						</div>
		 			</div>
		 		</div>			
				<div class="col-md-6">
					<label class="col-form-label">개인정보 유효기간</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd1" value="1">
							<label class="form-check-label" for="kbmmSavedCd1">1년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd2" value="2">
							<label class="form-check-label" for="kbmmSavedCd2">3년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd3" value="3">
							<label class="form-check-label" for="kbmmSavedCd3">5년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd4" value="4">
							<label class="form-check-label" for="kbmmSavedCd4">탈퇴시</label>
						</div>
		 			</div>
		 		</div>
		 		
				<div class="col-md-6">
					<label class="col-form-label">제3자 정보제공 동의 교보 핫트랙스, 꾸밍(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo1ConsentNy_s" id="offerinfo1ConsentY" value="1">
							<label class="form-check-label" for="offerinfo1ConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo1ConsentNy_s" id="offerinfo1ConsentN" value="0">
							<label class="form-check-label" for="offerinfo1ConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	
				<div class="col-md-6">
					<label class="col-form-label">제3자 정보제공 동의 교보라이프플래닛 생명보험(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo2ConsentNy_s" id="offerinfo2ConsentY" value="1">
							<label class="form-check-label" for="offerinfo2ConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo2ConsentNy_s" id="offerinfo2ConsentN" value="0">
							<label class="form-check-label" for="offerinfo2ConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	
				<div class="col-md-6">
					<label class="col-form-label">이메일 마케팅 수신여부</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmEmailConsentNy" id="emailMarketingConsentY" value="1" >
							<label class="form-check-label" for="emailMarketingConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmEmailConsentNy" id="emailMarketingConsentN" value="0">
							<label class="form-check-label" for="emailMarketingConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	

				<div class="col-md-6">
					<label class="col-form-label">모바일 마케팅 수신여부</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSmsConsentNy" id="mobileMarketingConsentY" value="1">
							<label class="form-check-label" for="mobileMarketingConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSmsConsentNy" id="mobileMarketingConsentN" value="0">
							<label class="form-check-label" for="mobileMarketingConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>
		 		<div class="col-sm-6">
		            <label class="col-form-label">설명</label>
		            <div class="col-md-6">
		            <%-- <p>${fn:replace(item.ifmmDesc, br, '<br/>')}</p> --%>
		            <textarea rows="3" cols="80" id="kbmmDesc" name="kbmmDesc"><c:out value="${item.kbmmDesc}" escapeXml="false"/></textarea>
		            </div>
		        </div>

	</form>	 		

			<div class="col-mb-3 mt-3">	
				<!-- <div class="float-start"><button type="button" class="btn btn-danger btn-sm float-start"><i class="fas fa-trash"></i></button></div> -->
				<div class="float-end">
				<button type="button" class="btn btn-secondary btn-sm" id="btn-list" name="btn-list" onclick="javascript:goList();"><i class="fa-solid fa-list"></i></button>
				<button type="submit" class="btn btn-primary btn-sm" id="btn-add" name="btn-add" ><i class="fas fa-plus"></i></button>
				</div>
			</div>

			

		</div>
		</div>
	</div>




<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/js/commonXdmin.js"></script>
<script src="/resources/common/js/common.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6ec915718ae8d23e16c65e0f6d22a62e&libraries=services"></script>

<script>

	upload = function(seq,div){
		
		$("#ulFile" + seq).children().remove();
		
		var fileCount = $("input[type=file]")[seq].files.length;
		
		if(checkUploadedTotalFileNumber(fileCount, seq) == false) {return false;}
		
		var totalFileSize;
		for(var i = 0; i < fileCount; i++){
			if(div==1){
				if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else if(div==2){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else {
				return false;
			}
			
			if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			totalFileSize += $("input[type=file]")[seq].files[i].size;
		}
		if(checkUploadedTotalFileSize(totalFileSize, seq) == false) {return false;}
		
		for(var i=0; i<fileCount; i++){
			addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
		}
	}

	addUploadLi = function(seq,index,name){
		
		var ul_list = $("#ulFile0");
		
		li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-item-center">';
		li = li + name;
		li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li = li + '</li>';
		
		$("#ulFile"+seq).append(li);
	}
	
	delLi = function(seq, index){
		$("#li_"+seq+"_"+index).remove();
	}


 
goList = function(){
	$("#memberForm").attr("action", "/xdmin/member/memberList");
	$("#memberForm").submit();
};

$('.pw').focusout(function () {
    var pwd1 = $("#kbmmPassword").val();
    var pwd2 = $("#kbmmPasswordchk").val();

    if ( pwd1 != '' && pwd2 == '' ) {
        null;
    } else if (pwd1 != "" || pwd2 != "") {
        if (pwd1 == pwd2) {
            $("#alert-success").css('display', 'inline-block');
            $("#alert-danger").css('display', 'none');
        } else {
            $("#alert-success").css('display', 'none');
            $("#alert-danger").css('display', 'inline-block');
        }
    }
});


$("#btn-add").on("click", function(){
	/* kbmmName */
	if(!checkNull($("#kbmmName"), $("#kbmmName").val(), "이름을 입력하세요.")) return false;
/*   	if(!checkName($("#kbmmName"), $("#kbmmName").val(), "이름을 한글로 입력하세요.")) return false; */
		
	/* kbmmId */
 	if(!checkNull($("#kbmmId"), $("#kbmmId").val(), "아이디를 입력하세요.")) return false;
 	if(!checkId($("#kbmmId"), $("#kbmmId").val(), "아이디를 형식에 맞게 입력하세요. (영문/숫자/특수문자 조합 8~15자리(대소문자 구분))")) return false;
	
 	/* kbmmPassword */
 	if(!checkNull($("#kbmmPassword"), $("#kbmmPassword").val(), "비밀번호를 입력하세요.")) return false;
 	if(!checkPassword($("#kbmmPassword"), $("#kbmmPassword").val(), "비밀번호를 형식에 맞게 입력하세요. (영문/숫자/특수문자 조합 8~20자리(대소문자 구분))")) return false;
 	if($("#kbmmPassword").val()!=$("#kbmmPasswordchk").val()){
 		alert("비밀번호 확인을 다시 입력하세요");
 		return false
 	}else{
 		//by pass
 	}
 	/* kbmmDob */
	if(!checkNull($("#kbmmDob"), $("#kbmmDob").val(), "생년월일을 입력하세요")) return false;
 	if(!checkDob($("#kbmmDob"), $("#kbmmDob").val(), "생년월일을 8자리 숫자로 입력 가능해주세요.")) return false;	
	
	/* kbmmGenderCd, kbmpTelecomCd*/
 	if(!checkNull($("#kbmmGenderCd"), $("#kbmmGenderCd").val(), "성별을 선택하세요.")) return false;
	if(!checkNull($("#kbmpTelecomCdArray0"), $("#kbmpTelecomCdArray0").val(), "통신사를 선택하세요.")) return false;
	if(!checkNull($("#kbmpNumberFullArray0"), $("#kbmpNumberFullArray0").val(), "휴대폰번호를 입력하세요.")) return false;
 	if(!checkOnlyNumber($("#kbmpNumberFullArray0"), $("#kbmpNumberFullArray0").val(), "휴대폰번호는 숫자만 입력 가능합니다.")) return false; 
 	/* if(!checkNumber($("#kbmpNumberFull"), $("#kbmpNumberFull").val(), "휴대폰번호를 11자리로 입력해주세요.")) return false;	  */
 	
 	/* kbmeEmailFull */
 	if(!checkNull($("#kbmeEmailFull"), $("#kbmeEmailFull").val(), "이메일을 입력하세요.")) return false;
 	if(!checkEmail($("#kbmeEmailFull"), $("#kbmeEmailFull").val(), "이메일을 형식에 맞게 입력하세요. (@를 포함한 형태)")) return false;
 	
 	if(!checkNull($("#kbmmKoreanNy"), $("#kbmmKoreanNy").val(), "국적을 선택하세요.")) return false;
 	
 	if(!checkNull($("#kbmaZipcode"), $("#kbmaZipcode").val(), "주소를 입력하세요.")) return false;
 	
	if ($("input:radio[name=kbmmUseConsentNy_c]").is(":checked") == false) {
		alert("필수항목은 반드시 동의하세요. (교보문고 이용약관)");
		return false;
	} 
	 
	if ($("input:radio[name=kbmmPersonalinfoConsentNy_c]").is(":checked") == false) {
		alert("필수항목은 반드시 동의하세요. (개인정보 수집 및 이용안내)");
		return false;
	}
	
	if ($("input:radio[name=kbmmSavedCd]").is(":checked") == false) {
		alert("개인정보 유효기간을 선택하세요.");
		return false;
	}
	
	$("#memberForm").attr("action", "/xdmin/member/memberInst");
	$("#memberForm").submit();

	
});



	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 조합된 참고항목을 해당 필드에 넣는다.
	                /* document.getElementById("kbmaAddress2").value = extraAddr; */
	            
	            } else {
	                /* document.getElementById("kbmaAddress2").value = ''; */
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('kbmaZipcode').value = data.zonecode;
	            document.getElementById("kbmaAddress1").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("kbmaAddress2").focus();
	            
				/* lat and lng from address s */
				        	
		         // 주소-좌표 변환 객체를 생성
		         var geocoder = new daum.maps.services.Geocoder();
		
		         // 주소로 좌표를 검색
		         geocoder.addressSearch(addr, function(result, status) {
		          
		         	// 정상적으로 검색이 완료됐으면,
		         	if (status == daum.maps.services.Status.OK) {
		         		
		         		document.getElementById('kbmaLat').value=result[0].y;
		         		document.getElementById('kbmaLng').value=result[0].x;
		         		
		         /* 						
		         		var coords = new daum.maps.LatLng(result[0].y, result[0].x);
		
		         		y = result[0].x;
		         		x = result[0].y;
		
		         		// 결과값으로 받은 위치를 마커로 표시합니다.
		         		var marker = new daum.maps.Marker({
		         			map: map,
		         			position: coords
		         		});
		
		         		// 인포윈도우로 장소에 대한 설명표시
		         		var infowindow = new daum.maps.InfoWindow({
		         			content: '<div style="width:150px;text-align:center;padding:5px 0;">좌표위치</div>'
		         		});
		
		         		infowindow.open(map,marker);
		
		         		// 지도 중심을 이동
		         		map.setCenter(coords);
		         		
		         		document.getElementById("ifmaLatArray0").value=x;
		         		document.getElementById("ifmaLngArray0").value=y;
		         */						
		         	}
		         });
				/* lat and lng from address e */
	            
	            
	        }
	    }).open();
	}
	$("#btnAddress").on("click",function(){
		sample6_execDaumPostcode();
		
	});	
	$("#btnClear").on("click",function(){
		$("#kbmaZipcode").val("");
		$("#kbmaAddress1").val("");
		
	});	
	
	
	$("#btn-Logout").on("click", function(){
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});	
	});
</script>
<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"> --></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>
