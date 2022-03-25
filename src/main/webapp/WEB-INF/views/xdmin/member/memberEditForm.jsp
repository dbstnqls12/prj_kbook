<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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

<link href="/resources/xdmin/css/sidebars.css" rel="stylesheet" type="text/css">
<link href="/resources/xdmin/css/footers.css" rel="stylesheet" type="text/css">
<title>Kyobo_memberView</title>

</head>
<body>
<%@ include file="/WEB-INF/views/xdmin/include/xdmin_header.jsp" %><!-- xdmin_header -->
<%@ include file="/WEB-INF/views/xdmin/include/offcanvas.jsp" %><!-- offcanvas -->
<%@ include file="/WEB-INF/views/xdmin/include/navbar.jsp" %><!-- navbar -->



<!-- 본문 s-->
<div class="container-fluid">
	<div class="row">
		<%@ include file="/WEB-INF/views/xdmin/include/sidebar.jsp" %><!-- sidebar -->
		
				
		<hr class="d-block d-sm-none">
		<div class="col-md-10">
		<div class="mb-3"><h4>회원정보 수정</h4></div>
			<div class="container">
		
			<form method="post" id="memberEditForm" name="memberEditForm" action ="/xdmin/member/memberUpdt" class="row g-3">
				<input type="hidden" id="thisPage" name="thisPage"  value="<c:out value="${vo.thisPage}"/>">
				<input type="hidden" id="kbmmSeq" name="kbmmSeq" value="<c:out value="${vo.kbmmSeq}"/>">
				<input type="hidden" id="shKbmmDelNy" name="shKbmmDelNy" value="<c:out value="${vo.shKbmmDelNy}"/>">
				<input type="hidden" id="shOption" name="shOption"  value="<c:out value="${vo.shOption}"/>">
				<input type="hidden" id="shValue" name="shValue"  value="<c:out value="${vo.shValue}"/>">
				<div class="col-md-6">
					<label class="form-label">이름</label>
					<input type="text" class="form-control form-control-sm" id="kbmmName" name="kbmmName" value= <c:out value="${rt.kbmmName}"/>>
				</div>
				<div class="col-6 d-none d-sm-block"></div><!-- 줄바꿈 -->
				<div class="col-md-6">
					<label for="inputId" class="form-label">아이디</label>
					<input type="text" class="form-control form-control-sm" id="kbmmId" name="kbmmId" value="<c:out value="${rt.kbmmId}"/>"> 
				</div>
				<div class="col-md-6">
					<label for="inputPwd" class="form-label">비밀번호</label>
					<input type="password" class="form-control form-control-sm" id="kbmmPassword" name="kbmmPassword" value="<c:out value="${rt.kbmmPassword}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">생년월일</label>
					<input type="text" id="kbmmDob" name="kbmmDob" max="2022-01-08" class="form-control form-control-sm" value="<c:out value="${rt.kbmmDob}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">성별</label>
					<select class="form-select form-select-sm" id="kbmmGenderCd" name="kbmmGenderCd">
						<option value="">::성별::</option>
							<c:forEach items="${CodeGender}" var="itemGender" varStatus="statusGender">
						<option value="<c:out value="${itemGender.ifcdOrder}"/>" <c:if test="${rt.kbmmGenderCd eq itemGender.ifcdOrder }">selected</c:if> ><c:out value="${itemGender.ifcdName}"/></option>	
							</c:forEach>
					</select>
				</div>	
				<div class="col-md-6">
					<label class="form-label">핸드폰번호</label>
					<select class="form-select form-select-sm mb-1" id="kbmpTelecomCd" name="kbmpTelecomCd">
						<option selected>::통신사::</option>
							<c:forEach items="${CodeTelecom}" var="itemTelecom" varStatus="statusTelecom">
						<option value="<c:out value="${itemTelecom.ifcdOrder}"/>" <c:if test="${rt.kbmpTelecomCd eq itemTelecom.ifcdOrder }">selected</c:if> ><c:out value="${itemTelecom.ifcdName}"/></option>	
							</c:forEach>
					</select>
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFull" name="kbmpNumberFull"  <c:if test="${rt.kbmpDeviceCd eq 2 }">value="<c:out value="${rt.kbmpNumberFull}"/>"</c:if> >
				</div>

 				<div class="col-md-6">
					<label class="form-label">전화번호</label>
					<input type="text" class="form-control form-control-sm" id="kbmpNumberHome" name="kbmpNumberHome" <c:if test="${rt.kbmpDeviceCd eq 1 }">value="<c:out value="${rt.kbmpNumberFull}"/>"</c:if> >
				</div>
				<div class="col-md-6">
					<label class="form-label">팩스번호</label>
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFax" name="kbmpNumberFax" <c:if test="${rt.kbmpDeviceCd eq 3 }">value="<c:out value="${rt.kbmpNumberFull}"/>"</c:if>  >
				</div> 
				<div class="col-md-6">
					<label class="col-form-label pt-0">이메일</label>
					<input type="text" class="form-control form-control-sm" id="kbmeEmailFull" name="kbmeEmailFull" value="<c:out value="${rt.kbmeEmailFull}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">국적</label>
					<select class="form-select form-select-sm" id="inputNationality">
						<option selected>::선택::</option>
						<option value="1">대한민국</option>
						<option value="2"></option>
						<option value="3"></option>
						<option value="3"></option>
					</select>
				</div>
				<div class="col-md-6">
					<label class="form-label">회원등급</label>
					<select class="form-select form-select-sm mb-1" id="kbmmGradeCd" name="kbmmGradeCd">
						<option selected>::회원등급::</option>
							<c:forEach items="${CodeGrade}" var="itemGrade" varStatus="statusGrade">
						<option value="<c:out value="${itemGrade.ifcdOrder}"/>" <c:if test="${rt.kbmmGradeCd eq itemGrade.ifcdOrder }">selected</c:if> ><c:out value="${itemGrade.ifcdName}"/></option>	
							</c:forEach>
					</select>
				</div>
				<div class="col-md-6">
					<label class="form-label">주소 (한국전용)</label>
					<div class="input-group">
						<input class="form-control form-control-sm mb-1" type="text" id="kbmaZipcode" name="kbmaZipcode" placeholder="<c:out value="${rt.kbmaZipcode}"/>" readonly>
						<button class="btn btn-outline-secondary btn-sm mb-1" type="button" id="btnAddress"><i class= "fas fa-search"></i></button>
						<button class="btn btn-outline-secondary btn-sm mb-1" type="button" id="btnClear"><i class= "fas fa-solid fa-x"></i></button>
					</div>
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress1" name="kbmaAddress1"  placeholder="<c:out value="${rt.kbmaAddress1}"/>"> 
					<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress2" name="kbmaAddress2" placeholder="<c:out value="${rt.kbmaAddress2}"/>"> 
				</div>		
				<div class="col-md-6">
					<label class="form-label">주소 (국외전용)</label>
					<input type="text" class="form-control form-control-sm mb-1" id="inputZipcode" placeholder="">
					<input type="text" class="form-control form-control-sm mb-1" id="inputAddress1" placeholder="">
					<input type="text" class="form-control form-control-sm mb-1" id="inputAddress2" placeholder="">
				</div>
								<div class="col-md-6">
					<label class="col-form-label">개인정보 수집 및 이용안내(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmPersonalinfoConsentNy_s" id="personalinfoConsentNy_sy" value="1" <c:if test="${rt.kbmmPersonalinfoConsentNy_s eq 1 }">checked</c:if>>
							<label class="form-check-label" for="personalinfoConsentNy_sy">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmPersonalinfoConsentNy_s" id="personalinfoConsentNy_sn" value="0" <c:if test="${rt.kbmmPersonalinfoConsentNy_s eq 0 || rt.kbmmPersonalinfoConsentNy_s eq null}">checked</c:if>>
							<label class="form-check-label" for="personalinfoConsentNy_sn">비동의</label>
						</div>
		 			</div>
		 		</div>			
				<div class="col-md-6">
					<label class="col-form-label">개인정보 유효기간</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd1" value="1" <c:if test="${rt.kbmmSavedCd eq 1 }">checked</c:if>>
							<label class="form-check-label" for="kbmmSavedCd1">1년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd2" value="2" <c:if test="${rt.kbmmSavedCd eq 2 }">checked</c:if>>
							<label class="form-check-label" for="kbmmSavedCd2">3년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd3" value="3" <c:if test="${rt.kbmmSavedCd eq 3 }">checked</c:if>>
							<label class="form-check-label" for="kbmmSavedCd3">5년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd4" value="4" <c:if test="${rt.kbmmSavedCd eq 4 }">checked</c:if>>
							<label class="form-check-label" for="kbmmSavedCd4">탈퇴시</label>
						</div>
		 			</div>
		 		</div>
				<div class="col-md-6">
					<label class="col-form-label">제3자 정보제공 동의 교보 핫트랙스, 꾸밍(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo1ConsentNy_s" id="offerinfo1ConsentY" value="1" <c:if test="${rt.kbmmOfferinfo1ConsentNy_s eq 1 }">checked</c:if>>
							<label class="form-check-label" for="offerinfo1ConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo1ConsentNy_s" id="offerinfo1ConsentN" value="0" <c:if test="${rt.kbmmOfferinfo1ConsentNy_s eq 0 || rt.kbmmOfferinfo1ConsentNy_s eq null}">checked</c:if>>
							<label class="form-check-label" for="offerinfo1ConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	
				<div class="col-md-6">
					<label class="col-form-label">제3자 정보제공 동의 교보라이프플래닛 생명보험(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo2ConsentNy_s" id="offerinfo2ConsentY" value="1" <c:if test="${rt.kbmmOfferinfo2ConsentNy_s eq 1 }">checked</c:if>>
							<label class="form-check-label" for="offerinfo2ConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmOfferinfo2ConsentNy_s" id="offerinfo2ConsentN" value="0" <c:if test="${rt.kbmmOfferinfo2ConsentNy_s eq 0  || rt.kbmmOfferinfo2ConsentNy_s eq null}">checked</c:if>>
							<label class="form-check-label" for="offerinfo2ConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	
				<div class="col-md-6">
					<label class="col-form-label">이메일 마케팅 수신여부</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmEmailConsentNy" id="emailMarketingConsentY" value="1" <c:if test="${rt.kbmmEmailConsentNy eq 1 }">checked</c:if>>
							<label class="form-check-label" for="emailMarketingConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmEmailConsentNy" id="emailMarketingConsentN" value="0" <c:if test="${rt.kbmmEmailConsentNy eq 0  || rt.kbmmEmailConsentNy eq null}">checked</c:if>>
							<label class="form-check-label" for="emailMarketingConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	

				<div class="col-md-6">
					<label class="col-form-label">모바일 마케팅 수신여부</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSmsConsentNy" id="mobileMarketingConsentY" value="1" <c:if test="${rt.kbmmSmsConsentNy eq 1 }">checked</c:if>>
							<label class="form-check-label" for="mobileMarketingConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="kbmmSmsConsentNy" id="mobileMarketingConsentN" value="0" <c:if test="${rt.kbmmSmsConsentNy eq 0 || rt.kbmmSmsConsentNy eq null}">checked</c:if>>
							<label class="form-check-label" for="mobileMarketingConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>
			</form>
			<div class="col-mb-3 mt-3">	
				<div class="float-start">
					<button type="button" class="btn btn-danger btn-sm float-start" id="btn-delete" name="btn-delete"><i class="fas fa-trash"></i></button>
				</div>
				<div class="float-end">
					<button type="button" class="btn btn-secondary btn-sm" id="btn-list" name="btn-list" onclick="javascript:goList();"><i class="fa-solid fa-list"></i></button>
					<button type="submit" class="btn btn-primary btn-sm" id="btn-Form" name="btn-Form" ><i class="fa-solid fa-floppy-disk"></i></button>
				</div>
			</div>	
				
				

			</div>
		</div>	

	</div>
</div>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	goList = function(){
		$("#memberEditForm").attr("action", "/xdmin/member/memberList");
		$("#memberEditForm").submit();
	};
	
/* 	goSave = function(seq){
		alert("수정하시겠습니까?");
		$("#memberEditForm").attr("action", "/xdmin/member/memberView");
		$("#memberEditForm").submit();
	}; */
$("#btn-Form").on("click", function(){
	var answer = confirm("수정하시겠습니까?");
	
	if(answer){
		$("#memberEditForm").attr("action", "/xdmin/member/memberUpdt");
		$("#memberEditForm").submit();
	}else{
		return false;
	}
	
});
	$("#btnAddress").on("click",function(){
		sample6_execDaumPostcode();
		
	});	
	$("#btnClear").on("click",function(){
		$("#kbmaZipcode").val("");
		$("#kbmaAddress1").val("");
		
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
	        }
	    }).open();
	}

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
