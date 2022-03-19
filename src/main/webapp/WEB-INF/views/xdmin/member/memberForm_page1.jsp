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
		<form action="/xdmin/member/memberInst" method="get" id="memberForm" name="memberForm" enctype="multipart/form-data" class="row">
			<!-- 정보입력 s -->
				<div class="mt-4 mb-4">
					<h3 class="text-center">정보입력</h3>
				</div>
				<div class="col-12 mx-auto mb-4">
					<label for="inputId" class="form-label"><b>이름</b></label>
					<input type="text" class="form-control" id="kbmmName" name="kbmmName" placeholder="10자리 내 입력"> 
				</div>
				<div class="col-8 mb-4">
					<label for="inputId" class="form-label"><b>생년월일/성별</b></label>
					<input type="text" class="form-control" id="kbmmDob" name="kbmmDob" placeholder="8자리 입력(예.19850101)"> 
				</div>
				<div class="col-4 mb-4">
					<label for="kbmmGenderCd" class="form-label">&nbsp;</label>
					<select class="form-select" id="kbmmGenderCd" name="kbmmGenderCd">
						<option selected value=0>성별</option>
						<option value=1>남성</option>
						<option value=2>여성</option>
						<option value=3>기타</option>
					</select>
				</div>
				<div class="col-8 mb-1">
					<label for="inputId" class="form-label"><b>휴대폰번호</b></label>
					<input type="text" class="form-control" id="kbmpPhoneFull" name="kbmpPhoneFull" placeholder="숫자만 입력(예.01012341231)"> 
				</div>
				<div class="col-4 mb-1">
					<label for="inputId" class="form-label">&nbsp;</label>
					<button type="button" class="btn btn-certification">인증번호 요청</button>
				</div>
				<div class="col-12 mx-auto mb-4">
					<input type="text" class="form-control" id="inputNum" name="" placeholder="인증번호 입력"> 
				</div>
				<div class="d-grid gap-2 col-12 mx-auto mt-3">
					<button class="btn btn-naver" type="button" id="btn_chk1"><strong>동의 및 인증 확인</strong></button>
				</div>
			<!-- 정보입력 e -->
			
			<!-- 약관동의 s -->	
			<div id="divToggle1">		
				<div class="mt-4 mb-4">
					<h3 class="text-center">약관동의</h3>
				</div>
				<div class="form-check mb-3">
					<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
					<label class="form-check-label" for="flexCheckDefault"><strong>전체동의</strong></label>
					<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
				</div>	
				<hr class="w-100" style="color: #A2969C">
				<div class="form-check mb-3">
					<input class="form-check-input" type="checkbox" value="1" id="kbmmUseConsentNy_c" name="kbmmUseConsentNy_c">
					<label class="form-check-label" for="flexCheckDefault">교보문고 이용약관<span style="color: red;">(필수)</span></label>
					<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
				</div>	
				<div class="form-check mb-3">
					<input class="form-check-input" type="checkbox" value="1" id="kbmmPersonalinfoConsentNy_c" name="kbmmPersonalinfoConsentNy_c">
					<label class="form-check-label" for="flexCheckDefault">개인정보 수집 및 이용안내<span style="color: red;">(필수)</span></label>
					<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
				</div>	
				<hr class="w-100" style="color: #A2969C">
				<div class="form-check mb-3">
					<input class="form-check-input" type="checkbox" value="1" id="kbmmPersonalinfoConsentNy_s" name="kbmmPersonalinfoConsentNy_s">
					<label class="form-check-label" for="flexCheckDefault">개인정보 수집 및 이용안내(선택)</label>
					<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
				</div>	
				<div class="form-check mb-3">
					<input class="form-check-input" type="checkbox" value="1" id="kbmmOfferinfo1ConsentNy_s" name="kbmmOfferinfo1ConsentNy_s">
					<label class="form-check-label" for="kbmmOfferinfo1ConsentNy_s">제3자 정보제공 동의<br>교보핫트랙스. 꾸밍(선택)</label>
					<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
				</div>	
				<div class="form-check mb-3">
					<input class="form-check-input" type="checkbox" value="1" id="kbmmOfferinfo2ConsentNy_s" name="kbmmOfferinfo2ConsentNy_s">
					<label class="form-check-label" for="kbmmOfferinfo2ConsentNy_s">제3자 정보제공 동의<br>교보라이프플래닛 생명보험(선택)
					</label>
					<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
				</div>	
				<hr class="w-100" style="color: #A2969C">
				<div class="form-check mb-2">
					<input class="form-check-input" type="checkbox" value="kbmmAllConsentNy" id="kbmmAllConsentNy">
					<label class="form-check-label" for="kbmmAllConsentNy">마케팅(광고) 수신여부 동의(선택)</label>
				</div>		
				<div class="form-check">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="kbmmSmsConsentNy" value="1" name="kbmmSmsConsentNy">
						<label class="form-check-label" for="kbmmSmsConsentNy">SMS</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" id="kbmmEmailConsentNy" value="1" name="kbmmEmailConsentNy">
						<label class="form-check-label" for="kbmmEmailConsentNy">이메일</label>
					</div>
					<div class="mb-2">
						<p class="" style="font-size: 11px; color: #A2969C;">
							*회원가입,주문배송,약관안내,회사 주요정책 관련 내용은 수신동의여부와 관계없이 발송됩니다.
						</p>
					</div>
				</div>
				<hr class="w-100" style="color: #A2969C">
				<div class="mb-3">
				<label class="form-check-label d-block mb-2">개인정보 유효기간제</label>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd" value="1" >
						<label class="form-check-label" for="1">1년</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd" value="2">
						<label class="form-check-label" for="2">3년</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd" value="3">
						<label class="form-check-label" for="3">5년</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="kbmmSavedCd" id="kbmmSavedCd" value="4">
						<label class="form-check-label" for="4">탈퇴시까지</label>
					</div>
		 		</div>
				<div class="mb-3">
					<label>개인정보 위탁안내(고지)</label>
					<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
				</div>	
		 		<hr class="w-100" style="color: #A2969C">	
		 		<div class="d-grid gap-2 col-xs-8 mx-auto">
					<button class="btn btn-naver" type="button" id="btn_chk2">동의하기</button>
				</div>
			</div>
	 		<!-- 약관동의 e -->
	 		
	 		<!-- 정보입력 s -->
	 		<div id="divToggle2">
				<div class="mt-4 mb-4">
					<h3 class="text-center">정보입력</h3>
				</div>
				<div class="col-12 mx-auto mb-4">
					<label for="inputId" class="form-label"><b>아이디</b></label>
					<input type="text" class="form-control" id="kbmmId" name="kbmmId" placeholder="영소문자/숫자 5~10자리"> 
				</div>
				<div class="col-12 mb-4">
					<label for="inputId" class="form-label"><b>비밀번호</b></label>
					<input type="text" class="form-control mb-2" id="kbmmPassword" name="kbmmPassword" placeholder="영문/숫자/특수문자 조합 8~15자리(대소문자 구분)"> 
					<input type="text" class="form-control" id="kbmmPasswordChk" name="kbmmPasswordChk" placeholder="비밀번호 확인"> 
				</div>
				<div class="col-12 mb-4">
					<label for="inputId" class="form-label"><b>이메일</b></label>
					<input type="text" class="form-control" id="kbmeEmailFull" name="kbmeEmailFull" placeholder="이메일주소 입력"> 
				</div>
		
				<div class="d-grid gap-2 col-xs-8 mx-auto">
					<button class="btn btn-naver" type="submit" id="btn_submit">가입완료</button>
				</div>
			</div>
			<!-- 정보입력 e-->
		</form>	
	</div>	
		
		
		
<%@ include file="/WEB-INF/views/xdmin/include/memberForm_footer.jsp" %>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>

<script type="text/javascript">

	

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
