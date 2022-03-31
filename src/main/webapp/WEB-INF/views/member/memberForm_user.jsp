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
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

<title>Kyobo_memberForm_1</title>
<link href="/resources/common/css/user/memberForm.css"  rel="stylesheet" >
</head>
<body>
<%@ include file="/WEB-INF/views/xdmin/include/memberForm_header.jsp" %>

<!-- 본문 s -->		
<hr class="w-100" style="color: #DDDDDD">
<div class="container my-wrap">
	<form action="/xdmin/member/memberInst" method="post" id="memberForm" name="memberForm" class="row">
		<input type="hidden" id="kbmmSeq" name="kbmmSeq" value="<c:out value="${vo.kbmmSeq}"/>">
		<input type="hidden" id="kbmmGradeCd" name="kbmmGradeCd"  value="1">
		<!-- 정보입력 s -->
			<div class="mt-4 mb-4">
				<h3 class="text-center">정보입력</h3>
			</div>
			<div class="col-12 mx-auto mb-4">
				<label class="form-label"><b>이름</b></label>
				<input type="text" class="form-control" id="kbmmName" name="kbmmName" placeholder="한글로 입력"> 
			</div>
			<div class="col-8 mb-4">
				<label class="form-label"><b>생년월일/성별</b></label>
				<input type="text" class="form-control" id="kbmmDob" name="kbmmDob" placeholder="8자리 입력(예.19850101)"> 
			</div>
			<div class="col-4 mb-4">
				<label class="form-label">&nbsp;</label>
				<select class="form-select" id="kbmmGenderCd" name="kbmmGenderCd">
					<option selected value="">성별</option>
						<c:forEach items="${CodeGender}" var="itemGender" varStatus="statusGender">
					<option value="<c:out value="${itemGender.ifcdSeq}"/>"><c:out value="${itemGender.ifcdName}"/></option>	
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
			
			<div class="col-4 mb-1">
				<label class="form-label">핸드폰번호</label>
				<input type="hidden" id="kbmpDefaultNyArray0" name="kbmpDefaultNyArray" value="1">
				<input type="hidden" id="kbmpDeviceCdArray0" name="kbmpDeviceCdArray" value="2">
					<select class="form-select" id="kbmpTelecomCdArray0" name="kbmpTelecomCdArray">
					<option selected>::통신사::</option>
						<c:forEach items="${CodeTelecom}" var="itemTelecom" varStatus="statusTelecom">
							<option value="<c:out value="${itemTelecom.ifcdOrder}"/>" <c:if test="${kbmmNumberTelecom eq itemTelecom.ifcdOrder }">selected</c:if> ><c:out value="${itemTelecom.ifcdName}"/></option>	
						</c:forEach>	
					</select>
			</div>	
			<div class="col-8 mb-1">
				<label class="form-label">&nbsp;</label>
				<input type="text" class="form-control" id="kbmpNumberFullArray0" name="kbmpNumberFullArray"  value="<c:out value="${kbmmNumberMobile}"/>"  placeholder="숫자만 입력(예.01012341231)">
			</div>
			<div class="d-none">
				<input type="hidden" id="kbmpDefaultNyArray1" name="kbmpDefaultNyArray" value="0">
				<input type="hidden" id="kbmpDeviceCdArray1" name="kbmpDeviceCdArray" value="1">
				<input type="hidden" id="kbmpTelecomCdArray1" name="kbmpTelecomCdArray" value="">
				<input type="hidden" id="kbmpNumberFullArray1" name="kbmpNumberFullArray" value="<c:out value="${kbmmNumberHome}"/>" >
			</div>	
			<div class="d-none">
				<input type="hidden" id="kbmpDefaultNyArray2" name="kbmpDefaultNyArray" value="0">
				<input type="hidden" id="kbmpDeviceCdArray2" name="kbmpDeviceCdArray" value="3">
				<input type="hidden" id="kbmpTelecomCdArray2" name="kbmpTelecomCdArray" value="">
				<input type="hidden" id="kbmpNumberFullArray2" name="kbmpNumberFullArray" value="<c:out value="${kbmmNumberFax}"/>" >
			</div>
			
			<div class="col-4 mb-4">
				<button type="button" class="btn btn-certification p-2" id="btn-certification" name="btn-certification">인증번호 요청</button>
			</div>
			<div class="col-8 mb-4">
				<input type="text" class="form-control" id="certificationNumber" name="certificationNumber" placeholder="인증번호 입력"> 
			</div>
			<div class="d-grid gap-2 col-12 mx-auto mt-3">
				<button class="btn btn-naver" type="button" id="btn_chk1"><strong>동의 및 인증 확인</strong></button>
			</div>
		<!-- 정보입력 e -->
		
		<!-- 약관동의 s -->	
		<div id="divShow1">		
			<div class="mt-4 mb-4">
				<h3 class="text-center">약관동의</h3>
			</div>
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="" id="consentAll" name="consentAll">
				<label class="form-check-label"><strong>전체동의</strong></label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<hr class="w-100" style="color: #A2969C">
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="kbmmUseConsentNy_c" name="kbmmUseConsentNy_c">
				<label class="form-check-label" >교보문고 이용약관<span style="color: red;">(필수)</span></label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="kbmmPersonalinfoConsentNy_c" name="kbmmPersonalinfoConsentNy_c">
				<label class="form-check-label" >개인정보 수집 및 이용안내<span style="color: red;">(필수)</span></label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<hr class="w-100" style="color: #A2969C">
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="kbmmPersonalinfoConsentNy_s" name="kbmmPersonalinfoConsentNy_s">
				<label class="form-check-label" >개인정보 수집 및 이용안내(선택)</label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="kbmmOfferinfo1ConsentNy_s" name="kbmmOfferinfo1ConsentNy_s">
				<label class="form-check-label" >제3자 정보제공 동의<br>교보핫트랙스. 꾸밍(선택)</label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="kbmmOfferinfo2ConsentNy_s" name="kbmmOfferinfo2ConsentNy_s">
				<label class="form-check-label" >제3자 정보제공 동의<br>교보라이프플래닛 생명보험(선택)
				</label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<hr class="w-100" style="color: #A2969C">
			<div class="form-check mb-2">
				<label class="form-check-label" for="kbmmAllConsentNy">마케팅(광고) 수신여부 동의(선택)</label>
			</div>		
			<div class="form-check">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="kbmmSmsConsentNy" value="1" name="kbmmSmsConsentNy">
					<label class="form-check-label" >SMS</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="kbmmEmailConsentNy" value="1" name="kbmmEmailConsentNy">
					<label class="form-check-label" >이메일</label>
				</div>
				<div class="mb-2">
					<p class="" style="font-size: 11px; color: #A2969C;">
						*회원가입,주문배송,약관안내,회사 주요정책 관련 내용은 수신동의여부와 관계없이 발송됩니다.
					</p>
				</div>
			</div>
			<hr class="w-100" style="color: #A2969C">
			<div class="mb-3">
			<label class="form-check-label d-block mb-2">개인정보 유효기간</label>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd1" value="1" >
					<label class="form-check-label">1년</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd2" value="2">
					<label class="form-check-label">3년</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd3" value="3">
					<label class="form-check-label">5년</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd4" value="4">
					<label class="form-check-label">탈퇴시까지</label>
				</div>
	 		</div>
			<div class="mb-3">
				<label>개인정보 위탁안내(고지)</label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
	 		<hr class="w-100" style="color: #A2969C">	
	 		<div class="d-grid gap-2 col-xs-8 mx-auto">
				<button class="btn btn-naver" type="button" id="btn_chk2" name="btn_chk2">동의하기</button>
			</div>
		</div>
 		<!-- 약관동의 e -->
 		
 		<!-- 정보입력 s -->
 		<div id="divShow2">
			<div class="mt-4 mb-4">
				<h3 class="text-center">정보입력</h3>
			</div>
			<div class="col-12 mx-auto mb-4">
				<label class="form-label"><b>아이디</b></label>
				<input type="text" class="form-control" id="kbmmId" name="kbmmId" placeholder="영소문자/숫자 5~20자리"> 
			</div>
			<div class="col-12 mb-4">
				<label class="form-label"><b>비밀번호</b></label>
				<input type="password" class="form-control mb-2" id="kbmmPassword" name="kbmmPassword" placeholder="영문/숫자/특수문자 조합 8~20자리(대소문자 포함)"> 
				<input type="password" class="form-control" id="kbmmPasswordChk" name="kbmmPasswordChk" placeholder="비밀번호 확인"> 
			</div>
			<div class="col-7 mb-4">
				<label class="form-label"><b>이메일/국적</b></label>
				<input type="text" class="form-control" id="kbmeEmailFull" name="kbmeEmailFull" placeholder="이메일주소 입력"> 
			</div>
			<div class="col-4 mb-4">
				<label class="form-label">&nbsp;</label>
				<select class="form-select" id="kbmmKoreanNy" name="kbmmKoreanNy" >
					<option selected>국적</option>
						<c:forEach items="${CodeKorean}" var="itemKorean" varStatus="statusKorean">
					<option value="<c:out value="${itemKorean.ifcdOrder}"/>" <c:if test="${item.kbmmKoreanNy eq itemKorean.ifcdOrder }">selected</c:if> ><c:out value="${itemKorean.ifcdName}"/></option>	
						</c:forEach>	
				</select>
			</div>
			
			<div class="col-8 mb-4">
				<label class="form-label"><b>생년월일/성별</b></label>
				<input type="text" class="form-control" id="kbmmDob" name="kbmmDob" placeholder="8자리 입력(예.19850101)"> 
			</div>
			<div class="col-4 mb-4">
				<label class="form-label">&nbsp;</label>
				<select class="form-select" id="kbmmGenderCd" name="kbmmGenderCd">
					<option selected value="">성별</option>
						<c:forEach items="${CodeGender}" var="itemGender" varStatus="statusGender">
					<option value="<c:out value="${itemGender.ifcdSeq}"/>"><c:out value="${itemGender.ifcdName}"/></option>	
						</c:forEach>
				</select>
			</div>
			
			
			
			
			
			<div class="col-12 mb-4">
				<label class="form-label"><b>주소</b></label>
				<div class="input-group">
					<input class="form-control mb-1" type="text" id="kbmaZipcode" name="kbmaZipcode" placeholder="우편번호" readonly>
					<button class="btn btn-outline-secondary mb-1" type="button" id="btnAddress"><i class= "fas fa-search"></i></button>
					<button class="btn btn-outline-secondary mb-1" type="button" id="btnClear"><i class= "fas fa-solid fa-x"></i></button>
				</div>
				<input type="text" class="form-control mb-1" id="kbmaAddress1" name="kbmaAddress1" placeholder="기본주소"> 
				<input type="text" class="form-control mb-1" id="kbmaAddress2" name="kbmaAddress2" placeholder="상세주소"> 
			</div>
			<div class="d-grid gap-2 col-xs-8 mx-auto">
				<button class="btn btn-naver" type="submit" id="btnSubmit" name="btnSubmit">가입완료</button>
			</div>
		</div>
		<!-- 정보입력 e-->
	</form>	
</div>	
	
		
		
<%@ include file="/WEB-INF/views/xdmin/include/memberForm_footer.jsp" %>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">

$("#btn_chk1").on("click",function(){
	
	/* kbmmName */
	if(!checkNull($("#kbmmName"), $("#kbmmName").val(), "이름을 입력하세요.")) return false;
		
	/* kbmmDob */
	if(!checkNull($("#kbmmDob"), $("#kbmmDob").val(), "생년월일을 입력하세요")) return false;
 	if(!checkDob($("#kbmmDob"), $("#kbmmDob").val(), "생년월일을 8자리 숫자로 입력 가능해주세요.")) return false;	
	
	/* kbmmGenderCd, kbmpTelecomCd*/
	if(!checkNull($("#kbmmGenderCd"), $("#kbmmGenderCd").val(), "성별을 선택하세요.")) return false;
	
	
	/* "kbmpNumberFull" */
	if(!checkNull($("#kbmpTelecomCdArray0"), $("#kbmpTelecomCdArray0").val(), "통신사를 선택하세요.")) return false;
	if(!checkNull($("#kbmpNumberFullArray0"), $("#kbmpNumberFullArray0").val(), "휴대폰번호를 입력하세요.")) return false;
 	if(!checkOnlyNumber($("#kbmpNumberFullArray0"), $("#kbmpNumberFullArray0").val(), "휴대폰번호는 숫자만 입력 가능합니다.")) return false;
	
 	/* certificationNumber */
 	/* if(!checkNull($("#certificationNumber"), $("#certificationNumber").val(), "인증번호를 입력하세요.")) return false; */
	/* 보낸인증번호와 인증번호 value값이 같다면 return true, 다르다면 return false */
	
	$("#divShow1").show();
 	
});

$("#btn-certification").on("click",function(){
	
	/* "kbmpNumberFull" */
	if(!checkNull($("#kbmpTelecomCdArray0"), $("#kbmpTelecomCdArray0").val(), "통신사를 선택하세요.")) return false;
	if(!checkNull($("#kbmpNumberFullArray0"), $("#kbmpNumberFullArray0").val(), "휴대폰번호를 입력하세요.")) return false;
 	if(!checkOnlyNumber($("#kbmpNumberFullArray0"), $("#kbmpNumberFullArray0").val(), "휴대폰번호는 숫자만 입력 가능합니다.")) return false;

 	
});
	
/* consentAll */
$('#consentAll').click(function(){
	var checked = $('#consentAll').is(':checked');
	if(checked)
		$('input:checkbox').prop('checked',true);
});
	
$("#btn_chk2").on("click",function(){
	
	if ($("input:checkbox[name=kbmmUseConsentNy_c]").is(":checked") == false) {
		alert("필수항목은 반드시 동의하세요. (교보문고 이용약관)");
		return false;
	} 
	 
	if ($("input:checkbox[name=kbmmPersonalinfoConsentNy_c]").is(":checked") == false) {
		alert("필수항목은 반드시 동의하세요. (개인정보 수집 및 이용안내)");
		return false;
	}
	
	if ($("input:radio[name=kbmmSavedCd]").is(":checked") == false) {
		alert("개인정보 유효기간을 선택하세요.");
		return false;
	}
	
	
	$("#divShow2").show();

});

$("#btnSubmit").on("click",function(){
 	
	/* kbmmId */
 	if(!checkNull($("#kbmmId"), $("#kbmmId").val(), "아이디를 입력하세요.")) return false;
 	if(!checkId($("#kbmmId"), $("#kbmmId").val(), "아이디를 형식에 맞게 입력하세요. (영문/숫자/특수문자 조합 8~15자리(대소문자 구분))")) return false;
	
 	/* kbmmPassword */
 	if(!checkNull($("#kbmmPassword"), $("#kbmmPassword").val(), "비밀번호를 입력하세요.")) return false;
 	if(!checkPassword($("#kbmmPassword"), $("#kbmmPassword").val(), "비밀번호를 형식에 맞게 입력하세요. (영문/숫자/특수문자 조합 8~20자리(대소문자 구분))")) return false;

 	/* kbmmPasswordChk */
 	if(!checkNull($("#kbmmPasswordChk"), $("#kbmmPasswordChk").val(), "비밀번호 확인을 입력하세요.")) return false;
 	
 	if($("#kbmmPassword").val() == $("#kbmmPasswordChk").val()){
 	}else{
 		alert("비밀번호 확인이 틀립니다.");
 		return false;
 	}
 	
 	
 	
 	/* kbmeEmailFull */
 	if(!checkNull($("#kbmeEmailFull"), $("#kbmeEmailFull").val(), "이메일을 입력하세요.")) return false;
 	if(!checkEmail($("#kbmeEmailFull"), $("#kbmeEmailFull").val(), "이메일을 형식에 맞게 입력하세요. (@를 포함한 형태)")) return false;
 	
 	alert("회원가입이 완료되었습니다!");

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
