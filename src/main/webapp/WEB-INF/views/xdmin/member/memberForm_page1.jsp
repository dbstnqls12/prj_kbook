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

<link href="../../../css/sidebars.css" rel="stylesheet" type="text/css">
<link href="../../../css/footers.css" rel="stylesheet" type="text/css">
<title>Kyobo_memberForm_1</title>
<style type="text/css">
	body{
		background-color: #F5F6F8;
	}
	.my-wrap{
		width: 380px;
		
	}
	.btn-certification{
		border: 1px solid #BCBCBC;
		background-color: white;
		height: 50px; 
		font-size: 14px;
	}
	.btn-naver{
		font-size: 20px;
		border: 1px solid #56a900;
		height: 60px;
		color: #56A900;
		background-color: white;
		margin-top: 2px;
	}

	.btn-naver:hover,
	.btn-naver:active,
	.btn-naver:visited,
	.btn-naver:focus{
		
		background-color :#56A900;
		color: #ffffff;
		
	}
	
	a:Link,
	a:hover,
	a:active,
	a:visited,
	a:focus{
		color: gray;
		text-decoration: underline;
	}
	.form-control,
	.form-select,
	.btn-certification{
		font-size: 13px;
		height: 50px;
	}
 	footer{
		margin-top: 100px;
	} 
	input::placeholder {
		  color: #A2969C;
		  font-size: 13px;

	}
	

</style>
</head>
<body>
<!-- 헤더 s -->
<div class="container my-wrap"><!-- d-none d-sm-block : sm사이즈에서는 보이지 않음 d-block d-sm-none : sm에서만 보임 -->
	<div class="row mt-5 mb-4 ">
		<div class="col-7 mt-3 mx-auto"> 
			<img src="../../../images/xdmin_img/kb_logo11-removebg.png" style="width: 210px; height: 60px;" >
		</div>	
	</div>
</div>	
<!-- 헤더 e-->

<!-- 본문 s -->		
<hr class="w-100" style="color: #DDDDDD">
	<div class="container my-wrap">
		<form action="" method="post" id="memberForm" name="memberForm" enctype="multipart/form-data" class="row">
			
			<div class="mt-4 mb-4">
				<h3 class="text-center"><strong style="color: #41B327; font-weight: normal;">정보입력</strong></h3>
			</div>
	
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				<label class="form-check-label" for="flexCheckDefault">개인정보 수집 및 이용안내 <span style="color: red;">(필수)</span></label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<div class="mb-2">
				<p class="p-3" style="font-size: 14px;">
					입력하신 정보는 회원 유무 확인용으로 수집/이용 되며, 가입 회원에 한해 입력하신 모든 정보가 저장되는데 동의합니다.
				</p>
			</div>
	
			<div class="col-12 mx-auto mb-4">
				<label for="inputId" class="form-label"><b>이름</b></label>
				<input type="text" class="form-control" id="inputId" name="kbmmName" placeholder="10자리 내 입력"> 
			</div>
			<div class="col-8 mb-4">
				<label for="inputId" class="form-label"><b>생년월일/성별</b></label>
				<input type="text" class="form-control" id="inputId" name="kbmmDob" placeholder="8자리 입력(예.19850101)"> 
			</div>
			<div class="col-4 mb-4">
				<label for="inputId" class="form-label">&nbsp;</label>
				<select class="form-select" id="inputGender" name="kbmmGenderCd">
					<option selected>성별</option>
					<option value="1">남성</option>
					<option value="2">여성</option>
					<option value="3">기타</option>
				</select>
			</div>
			<div class="col-8 mb-1">
				<label for="inputId" class="form-label"><b>휴대폰번호</b></label>
				<input type="text" class="form-control" id="inputId" name="" placeholder="숫자만 입력(예.01012341231)"> 
			</div>
			<div class="col-4 mb-1">
				<label for="inputId" class="form-label">&nbsp;</label>
				<button type="button" class="btn btn-certification">인증번호 요청</button>
			</div>
			<div class="col-12 mx-auto mb-4">
				<input type="text" class="form-control" id="inputNum" name="" placeholder="인증번호 입력"> 
			</div>

			
			<div class="mt-4 mb-4">
				<h3 class="text-center"><strong style="color: #41B327; font-weight: normal;">약관동의</strong></h3>
			</div>
	
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				<label class="form-check-label" for="flexCheckDefault"><strong>전체동의</strong></label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<hr class="w-100" style="color: #A2969C">
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="kbmmUseConsentNy_c">
				<label class="form-check-label" for="flexCheckDefault">교보문고 이용약관<span style="color: red;">(필수)</span></label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="kbmmPersonalinfoConsentNy_c">
				<label class="form-check-label" for="flexCheckDefault">개인정보 수집 및 이용안내<span style="color: red;">(필수)</span></label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<hr class="w-100" style="color: #A2969C">
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="kbmmPersonalinfoConsentNy_s">
				<label class="form-check-label" for="flexCheckDefault">개인정보 수집 및 이용안내(선택)</label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="kbmmOfferinfo1ConsentNy_s">
				<label class="form-check-label" for="flexCheckDefault">제3자 정보제공 동의<br>
				 교보핫트랙스. 꾸밍(선택)</label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<div class="form-check mb-3">
				<input class="form-check-input" type="checkbox" value="1" id="flexCheckDefault" name="kbmmOfferinfo2ConsentNy_s">
				<label class="form-check-label" for="flexCheckDefault">제3자 정보제공 동의<br>
					교보라이프플래닛 생명보험(선택)
				</label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	
			<hr class="w-100" style="color: #A2969C">
			<div class="form-check mb-2">
				<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				<label class="form-check-label" for="flexCheckDefault">마케팅(광고) 수신여부 동의(선택)</label>
			</div>		
			<div class="form-check">
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="1" name="kbmmSmsConsentNy">
					<label class="form-check-label" for="inlineCheckbox1">SMS</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="1" name="kbmmEmailConsentNy">
					<label class="form-check-label" for="inlineCheckbox2">이메일</label>
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
					<input class="form-check-input" type="radio" name="kbmmSavedCd" id="personalinfoPeriod1" value="1" >
					<label class="form-check-label" for="1">1년</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="kbmmSavedCd" id="personalinfoPeriod2" value="2">
					<label class="form-check-label" for="2">3년</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="kbmmSavedCd" id="personalinfoPeriod3" value="3">
					<label class="form-check-label" for="3">5년</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="kbmmSavedCd" id="personalinfoPeriod4" value="4">
					<label class="form-check-label" for="4">탈퇴시까지</label>
				</div>
	 		</div>

			<div class="mb-3">
				<label>개인정보 위탁안내(고지)</label>
				<i class="fa-solid fa-angle-right float-end pt-1" style="color: gray;"></i>
			</div>	

	 		<hr class="w-100" style="color: #A2969C">	
			<div class="mt-4 mb-4">
				<h3 class="text-center"><strong style="color: #41B327; font-weight: normal;">정보입력</strong></h3>
			</div>
	
			<div class="col-12 mx-auto mb-4">
				<label for="inputId" class="form-label"><b>아이디</b></label>
				<input type="text" class="form-control" id="inputId" name="kbmmId" placeholder="영소문자/숫자 5~10자리"> 
			</div>
			<div class="col-12 mb-4">
				<label for="inputId" class="form-label"><b>비밀번호</b></label>
				<input type="text" class="form-control mb-2" id="inputId" name="kbmmPassword" placeholder="영문/숫자/특수문자 조합 8~15자리(대소문자 구분)"> 
				<input type="text" class="form-control" id="inputId" name="kbmmPasswordChk" placeholder="비밀번호 확인"> 
			</div>
			<div class="col-12 mb-4">
				<label for="inputId" class="form-label"><b>이메일</b></label>
				<input type="text" class="form-control" id="inputId" name="" placeholder="이메일주소 입력"> 
			</div>
	
			<div class="d-grid gap-2 col-xs-8 mx-auto">
				<button class="btn btn-naver" type="button" onclick="location.href=''">가입완료</button>
			</div>
			
		</form>	
	</div>




<footer>
	<p class="text-center" style="font-size: 12px; color: #BCBCBC;">
	Copyright ⓒ Kyobo Book Center All right reserved.&nbsp; <a href="http://www.kyobobook.co.kr/cscenter/csCenterMain.laf"> 고객센터</a>
</footer>


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
