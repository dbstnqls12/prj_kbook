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

</head>
<body>
<%@ include file="/WEB-INF/views/xdmin/include/xdmin_header.jsp" %><!-- xdmin_header -->
<%@ include file="/WEB-INF/views/xdmin/include/offcanvas.jsp" %><!-- offcanvas -->
<%@ include file="/WEB-INF/views/xdmin/include/xdmin_navbar.jsp" %><!-- navbar -->


<!-- 본문 s-->
<div class="container">
	<div class="row">
		<div class="mb-3"><h4 style="font-weight: bold;">회원정보</h4></div>
			<div class="container ">
			<form action="" method="post" id="memberView" name="memberView" class="row g-3">
				<input type="hidden" id="thisPage" name="thisPage"  value="<c:out value="${vo.thisPage}"/>">
				<input type="hidden" id="kbmmSeq" name="kbmmSeq" value="<c:out value="${vo.kbmmSeq}"/>">
				<input type="hidden" id="shKbmmDelNy" name="shKbmmDelNy" value="<c:out value="${vo.shKbmmDelNy}"/>">
				<input type="hidden" id="shOption" name="shOption"  value="<c:out value="${vo.shOption}"/>">
				<input type="hidden" id="shValue" name="shValue"  value="<c:out value="${vo.shValue}"/>">
				<input type="hidden" id="shOptionDate" name="shOptionDate"  value="<c:out value="${vo.shOptionDate}"/>">
				<input type="hidden" id="shDateStart" name="shDateStart"  value="<c:out value="${vo.shDateStart}"/>">
				<input type="hidden" id="shDateEnd" name=shDateEnd  value="<c:out value="${vo.shDateEnd}"/>">
				<div class="col-md-6 col-12">
					<label class="form-label">프로필</label>
					<c:if test="${item.path eq null}"><p style="font-style: italic;">프로필 사진이 없습니다!</p></c:if>
					<c:if test="${item.path ne null}"><img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" class="img-thumbnail" style="width: 100px; height: 100px;"></c:if>
				</div>
				<div class="col-6 d-none d-sm-block"></div><!-- 줄바꿈 -->
				<div class="col-md-6 col-12">
					<label class="form-label">이름</label>
					<input type="text" class="form-control form-control-sm" id="kbmmName" name="kbmmName" value="<c:out value="${item.kbmmName}"/>" readonly>
				</div>
				<div class="col-6 d-none d-sm-block"></div><!-- 줄바꿈 -->
				<div class="col-md-6">
					<label for="inputId" class="form-label">아이디</label>
					<input type="text" class="form-control form-control-sm" id="kbmmId" name="kbmmId" value="<c:out value="${item.kbmmId}"/>" readonly> 
				</div>
				<div class="col-md-6">
					<label for="inputPwd" class="form-label">비밀번호</label>
					<input type="password" class="form-control form-control-sm" id="kbmmPassword" name="kbmmPassword" value="<c:out value="${item.kbmmPassword}"/>" readonly>
				</div>

				<div class="col-md-6">
					<label class="form-label">생년월일</label>
					<input type="text" id="kbmmDob" name="kbmmDob" max="2022-01-08" class="form-control form-control-sm" value="<c:out value="${item.kbmmDob}"/>" readonly> 
				</div>
				<div class="col-md-6">
					<label class="form-label">성별</label>
					<select class="form-select form-select-sm" id="kbmmGenderCd" name="kbmmGenderCd">
						<option value="">::성별::</option>
							<c:forEach items="${CodeGender}" var="itemGender" varStatus="statusGender">
						<option value="<c:out value="${itemGender.ifcdOrder}"/>" <c:if test="${item.kbmmGenderCd eq itemGender.ifcdOrder }" >selected</c:if> disabled><c:out value="${itemGender.ifcdName}"/></option>	
							</c:forEach>
					</select>
				</div>	
 				
				<c:forEach items="${listPhone}" var="item" varStatus="statusTelecom">
					<c:choose>
						<c:when test="${item.kbmpDeviceCd eq 1}"> <c:set var="kbmmNumberHome" value="${item.kbmpNumberFull }" /></c:when>
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
								<option value="<c:out value="${itemTelecom.ifcdOrder}"/>" <c:if test="${kbmmNumberTelecom eq itemTelecom.ifcdOrder }">selected</c:if> disabled><c:out value="${itemTelecom.ifcdName}"/></option>	
							</c:forEach>	
						</select>
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFullArray0" name="kbmpNumberFullArray"  value="<c:out value="${kbmmNumberMobile}"/>"  placeholder="숫자만 입력(예.01012341231)" readonly>
				</div>	
 				<div class="col-md-6">
					<label class="form-label">전화번호(선택)</label>
					<input type="hidden" id="kbmpDefaultNyArray1" name="kbmpDefaultNyArray" value="0">
					<input type="hidden" id="kbmpDeviceCdArray1" name="kbmpDeviceCdArray" value="1">
					<input type="hidden" id="kbmpTelecomCdArray1" name="kbmpTelecomCdArray" value="">
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFullArray1" name="kbmpNumberFullArray" value="<c:out value="${kbmmNumberHome}"/>" readonly>
				</div>
				<div class="col-md-6">
					<label class="form-label">팩스번호</label>
					<input type="hidden" id="kbmpDefaultNyArray2" name="kbmpDefaultNyArray" value="0">
					<input type="hidden" id="kbmpDeviceCdArray2" name="kbmpDeviceCdArray" value="3">
					<input type="hidden" id="kbmpTelecomCdArray2" name="kbmpTelecomCdArray" value="">
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFullArray2" name="kbmpNumberFullArray" value="<c:out value="${kbmmNumberFax}"/>"  readonly>
				</div> 

					

				<div class="col-md-6">
					<label class="col-form-label pt-0">이메일</label>
					<input type="text" class="form-control form-control-sm" id="kbmeEmailFull" name="kbmeEmailFull" value="<c:out value="${item.kbmeEmailFull}"/>" readonly>
				</div>
				<div class="col-md-6">
					<label class="form-label">국적</label>
					<select class="form-select form-select-sm" id="kbmmKoreanNy" name="kbmmKoreanNy" >
						<option selected>::국적::</option>
							<c:forEach items="${CodeKorean}" var="itemKorean" varStatus="statusKorean">
						<option value="<c:out value="${itemKorean.ifcdOrder}"/>" <c:if test="${item.kbmmKoreanNy eq itemKorean.ifcdOrder }">selected</c:if> disabled><c:out value="${itemKorean.ifcdName}"/></option>	
							</c:forEach>	
					</select>
				</div>
				<div class="col-md-6">
					<label class="form-label">회원등급</label>
					<select class="form-select form-select-sm mb-1" id="kbmmGradeCd" name="kbmmGradeCd">
						<option selected>::회원등급::</option>
							<c:forEach items="${CodeGrade}" var="itemGrade" varStatus="statusGrade">
						<option value="<c:out value="${itemGrade.ifcdOrder}"/>" <c:if test="${item.kbmmGradeCd eq itemGrade.ifcdOrder }">selected</c:if> disabled><c:out value="${itemGrade.ifcdName}"/></option>	
							</c:forEach>
					</select>
				</div>
				<div class="col-md-6">
					<label class="form-label">주소 (한국전용)</label>
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaZipcode" name="kbmaZipcode" placeholder="<c:out value="${item.kbmaZipcode}"/>" readonly>
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress1" name="kbmaAddress1" placeholder="<c:out value="${item.kbmaAddress1}"/>" readonly>
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress2" name="kbmaAddress2" placeholder="<c:out value="${item.kbmaAddress2}"/>" readonly>
				</div>
				<div class="col-md-6">
					<label class="form-label">주소 (국외전용)</label>
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaZipcode_abroad" name="kbmaZipcode_abroad" placeholder="<c:out value="${item.kbmaZipcode_abroad}"/>" readonly>
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress1_abroad" name="kbmaAddress1_abroad" placeholder="<c:out value="${item.kbmaAddress1_abroad}"/>" readonly>
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress2_abroad" name="kbmaAddress2_abroad" placeholder="<c:out value="${item.kbmaAddress2_abroad}"/>" readonly>
				</div>
				<div class="col-md-6">
					<label class="col-form-label">개인정보 수집 및 이용안내(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmPersonalinfoConsentNy_s" id="personalinfoConsentNy_sy" value="1" <c:if test="${item.kbmmPersonalinfoConsentNy_s eq 1 }">checked</c:if>>
							<label class="form-check-label" for="personalinfoConsentNy_sy">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmPersonalinfoConsentNy_s" id="personalinfoConsentNy_sn" value="0" <c:if test="${item.kbmmPersonalinfoConsentNy_s eq 0 || item.kbmmPersonalinfoConsentNy_s eq null}">checked</c:if>>
							<label class="form-check-label" for="personalinfoConsentNy_sn">비동의</label>
						</div>
		 			</div>
		 		</div>			
				<div class="col-md-6">
					<label class="col-form-label">개인정보 유효기간</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd1" value="1" <c:if test="${item.kbmmSavedCd eq 1 }">checked</c:if>>
							<label class="form-check-label" for="kbmmSavedCd1">1년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd2" value="2" <c:if test="${item.kbmmSavedCd eq 2 }">checked</c:if>>
							<label class="form-check-label" for="kbmmSavedCd2">3년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd3" value="3" <c:if test="${item.kbmmSavedCd eq 3 }">checked</c:if>>
							<label class="form-check-label" for="kbmmSavedCd3">5년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd4" value="4" <c:if test="${item.kbmmSavedCd eq 4 }">checked</c:if>>
							<label class="form-check-label" for="kbmmSavedCd4">탈퇴시</label>
						</div>
		 			</div>
		 		</div>
				<div class="col-md-6">
					<label class="col-form-label">제3자 정보제공 동의 교보 핫트랙스, 꾸밍(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo1ConsentNy_s" id="offerinfo1ConsentY" value="1" <c:if test="${item.kbmmOfferinfo1ConsentNy_s eq 1 }">checked</c:if>>
							<label class="form-check-label" for="offerinfo1ConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo1ConsentNy_s" id="offerinfo1ConsentN" value="0" <c:if test="${item.kbmmOfferinfo1ConsentNy_s eq 0 || item.kbmmOfferinfo1ConsentNy_s eq null}">checked</c:if>>
							<label class="form-check-label" for="offerinfo1ConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	
				<div class="col-md-6">
					<label class="col-form-label">제3자 정보제공 동의 교보라이프플래닛 생명보험(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo2ConsentNy_s" id="offerinfo2ConsentY" value="1" <c:if test="${item.kbmmOfferinfo2ConsentNy_s eq 1 }">checked</c:if>>
							<label class="form-check-label" for="offerinfo2ConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo2ConsentNy_s" id="offerinfo2ConsentN" value="0" <c:if test="${item.kbmmOfferinfo2ConsentNy_s eq 0  || item.kbmmOfferinfo2ConsentNy_s eq null}">checked</c:if>>
							<label class="form-check-label" for="offerinfo2ConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	
				<div class="col-md-6">
					<label class="col-form-label">이메일 마케팅 수신여부</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmEmailConsentNy" id="emailMarketingConsentY" value="1" <c:if test="${item.kbmmEmailConsentNy eq 1 }">checked</c:if>>
							<label class="form-check-label" for="emailMarketingConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmEmailConsentNy" id="emailMarketingConsentN" value="0" <c:if test="${item.kbmmEmailConsentNy eq 0  || item.kbmmEmailConsentNy eq null}">checked</c:if>>
							<label class="form-check-label" for="emailMarketingConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	

				<div class="col-md-6">
					<label class="col-form-label">모바일 마케팅 수신여부</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSmsConsentNy" id="mobileMarketingConsentY" value="1" <c:if test="${item.kbmmSmsConsentNy eq 1 }">checked</c:if>>
							<label class="form-check-label" for="mobileMarketingConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSmsConsentNy" id="mobileMarketingConsentN" value="0"  <c:if test="${item.kbmmSmsConsentNy eq 0 || item.kbmmSmsConsentNy eq null}">checked</c:if>>
							<label class="form-check-label" for="mobileMarketingConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>
		 		<div class="col-md-6">
		            <label class="col-form-label">설명</label>
		            <div class="col-md-6">
		            <%-- <p>${fn:replace(item.ifmmDesc, br, '<br/>')}</p> --%>
		            <textarea rows="3" cols="80" id="kbmmDesc" name="kbmmDesc" disabled><c:out value="${item.kbmmDesc}" escapeXml="false"/></textarea>
		            </div>
		        </div>
		 		<div class="col-6 d-none d-sm-block"></div><!-- 줄바꿈 -->
				<div class="col-md-3">
					<label class="form-label">최초등록자</label>
					<input type="text" class="form-control form-control-sm" id="inputRegP"  placeholder="윤수빈" disabled>
				</div>
				<div class="col-md-3">
					<label class="form-label">최초등록일</label>
					<input type="text" class="form-control form-control-sm" id="regDateTime" name="regDateTime" value="<fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>" disabled>
				</div>
				<div class="col-md-3">
					<label class="form-label">최종수정자</label>
					<input type="text" class="form-control form-control-sm" id="inputEditP" placeholder="윤수빈" disabled>
				</div>
				<div class="col-md-3">
					<label class="form-label">최종수정일</label>
					<input type="text" class="form-control form-control-sm" id="modDateTime" name="modDateTime" value="<fmt:formatDate value="${item.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>" disabled>
				</div>
			</form>
			<div class="col-mb-3 mt-3">	
				<div class="float-start">
					<button type="button" class="btn btn-danger btn-sm float-start" id="btn-delete" name="btn-delete"><i class="fas fa-trash"></i></button>
				</div>
				<div class="float-end">
					<button type="button" class="btn btn-secondary btn-sm" id="btn-list" name="btn-list" onclick="javascript:goList();"><i class="fa-solid fa-list"></i></button>
					<button type="button" class="btn btn-primary btn-sm" id="btn-edit" name="btn-edit" onclick="javascript:goEditForm();"><i class="fa-solid fa-pen-to-square"></i></button>
				</div>
			</div>
			

		</div>
		</div>
	</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

$("#btn-delete").on("click", function(){
	var answer = confirm("삭제하시겠습니까?");
	
	if(answer){
		$("#memberView").attr("action", "/xdmin/member/updateDelete");
		$("#memberView").submit();
	}else{
		return false;
	}
	
});

goList = function(){
	$("#memberView").attr("action", "/xdmin/member/memberList");
	$("#memberView").submit();
};
goEditForm = function(){
	$("#memberView").attr("action", "/xdmin/member/memberEditForm");
	$("#memberView").submit();
};

	
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




<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->
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
