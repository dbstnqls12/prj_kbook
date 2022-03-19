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
<style type="text/css">

 	#inputZipcode
	,#inputAddress1
	,#inputTelecom{
		margin-bottom: 5px; 
		
	}


</style>
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
		<div class="mb-3"><h4>회원정보</h4></div>
			<div class="container ">
			<form action="" method="get" id="memberView" name="memberView" enctype="multipart/form-data" class="row g-3">
				<div class="col-md-6">
					<label class="form-label">이름</label>
					<input type="text" class="form-control form-control-sm" id="kbmmName" name="kbmmName" placeholder="<c:out value="${item.kbmmName}"/>">
				</div>
				<div class="col-6 d-none d-sm-block"></div><!-- 줄바꿈 -->
				<div class="col-md-6">
					<label for="inputId" class="form-label">아이디</label>
					<input type="text" class="form-control form-control-sm" id="inputId" name="kbmmName"placeholder="<c:out value="${item.kbmmId}"/>"> 
				</div>
				<div class="col-md-6">
					<label for="inputPwd" class="form-label">비밀번호</label>
					<input type="password" class="form-control form-control-sm" id="inputPwd" name="kbmmName"placeholder="<c:out value="${item.kbmmPassword}"/>">
				</div>

				<div class="col-md-6">
					<label class="form-label">생년월일</label>
					<input type="text" id="inputDob" name="inputDob" max="2022-01-08" class="form-control form-control-sm" placeholder="">
				</div>
				<div class="col-md-6">
					<label class="form-label">성별</label>
					<select class="form-select form-select-sm" id="inputGender" name="kbmmGenderCd">
						<option selected>::선택::</option>
						<option value="1">남성</option>
						<option value="2">여성</option>
						<option value="3">기타</option>
					</select>
				</div>	
				<div class="col-md-6">
					<label class="form-label">핸드폰번호</label>
					<select class="form-select form-select-sm" id="inputTelecom">
						<option selected>::통신사::</option>
						<option value="1">SKT</option>
						<option value="2">KT</option>
						<option value="3">LGU</option>
						<option value="3">기타</option>
					</select>
					<input type="text" class="form-control form-control-sm" id="inputMobile" placeholder="<c:out value="${item.kbmpNumberFull}"/>">
				</div>
				<div class="col-md-6">
					<label class="col-form-label pt-0">이메일</label>
					<input type="text" class="form-control form-control-sm" id="inputEmail" placeholder="<c:out value="${item.kbmeEmailFull}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">전화번호</label>
					<input type="text" class="form-control form-control-sm" id="inputTel" placeholder="">
				</div>
				<div class="col-md-6">
					<label class="form-label">팩스번호</label>
					<input type="text" class="form-control form-control-sm" id="inputFax" placeholder="">
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
				<div class="col-6 d-none d-sm-block"></div><!-- 줄바꿈 -->
				<div class="col-md-6">
					<label class="form-label">주소 (한국전용)</label>
					<input type="text" class="form-control form-control-sm" id="inputZipcode" placeholder="">
					<input type="text" class="form-control form-control-sm" id="inputAddress1" placeholder="">
					<input type="text" class="form-control form-control-sm" id="inputAddress2" placeholder="">
				</div>
				<div class="col-md-6">
					<label class="form-label">주소 (국외전용)</label>
					<input type="text" class="form-control form-control-sm" id="inputZipcode" placeholder="">
					<input type="text" class="form-control form-control-sm" id="inputAddress1" placeholder="">
					<input type="text" class="form-control form-control-sm" id="inputAddress2" placeholder="">
				</div>
				<div class="col-md-6">
					<label class="col-form-label">개인정보 수집 및 이용안내(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="personalinfoConsentNy_s" id="personalinfoConsentNy_sy" value="1" checked>
							<label class="form-check-label" for="personalinfoConsentNy_sy">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="personalinfoConsentNy_s" id="personalinfoConsentNy_sn" value="0" >
							<label class="form-check-label" for="personalinfoConsentNy_sn">비동의</label>
						</div>
		 			</div>
		 		</div>			
				<div class="col-md-6">
					<label class="col-form-label">개인정보 유효기간</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="personalinfoPeriod" id="personalinfoPeriod1" value="personalinfoPeriod1" >
							<label class="form-check-label" for="personalinfoPeriod1">1년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="personalinfoPeriod" id="personalinfoPeriod2" value="personalinfoPeriod2">
							<label class="form-check-label" for="personalinfoPeriod2">3년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="personalinfoPeriod" id="personalinfoPeriod3" value="personalinfoPeriod3">
							<label class="form-check-label" for="personalinfoPeriod3">5년</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="personalinfoPeriod" id="personalinfoPeriod4" value="personalinfoPeriod4" checked>
							<label class="form-check-label" for="personalinfoPeriod4">탈퇴시</label>
						</div>
		 			</div>
		 		</div>
				<div class="col-md-6">
					<label class="col-form-label">제3자 정보제공 동의 교보 핫트랙스, 꾸밍(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="offerinfo1ConsentNy" id="offerinfo1ConsentY" value="1">
							<label class="form-check-label" for="offerinfo1ConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="offerinfo1ConsentNy" id="offerinfo1ConsentN" value="0" checked>
							<label class="form-check-label" for="offerinfo1ConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	
				<div class="col-md-6">
					<label class="col-form-label">제3자 정보제공 동의 교보라이프플래닛 생명보험(선택)</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="offerinfo2ConsentNy" id="offerinfo2ConsentY" value="1" checked>
							<label class="form-check-label" for="offerinfo2ConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="offerinfo2ConsentNy" id="offerinfo2ConsentN" value="0">
							<label class="form-check-label" for="offerinfo2ConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	
				<div class="col-md-6">
					<label class="col-form-label">이메일 마케팅 수신여부</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="emailMarketingConsentNy" id="emailMarketingConsentY" value="1">
							<label class="form-check-label" for="emailMarketingConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="emailMarketingConsentNy" id="emailMarketingConsentN" value="0">
							<label class="form-check-label" for="emailMarketingConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>	

				<div class="col-md-6">
					<label class="col-form-label">모바일 마케팅 수신여부</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="mobileMarketingConsentNy" id="mobileMarketingConsentY" value="1">
							<label class="form-check-label" for="mobileMarketingConsentY">동의</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="mobileMarketingConsentNy" id="mobileMarketingConsentN" value="0" checked>
							<label class="form-check-label" for="mobileMarketingConsentN">비동의</label>
						</div>
		 			</div>
		 		</div>
				<div class="col-md-6">
					<label class="col-form-label">성인 인증</label>
					<div class="col-md-6">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="adultCertification" id="adultCertification1" value="adultCertification1" checked>
							<label class="form-check-label" for="adultCertification1">1회 1년간 인증</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="adultCertification" id="adultCertification2" value="adultCertification2">
							<label class="form-check-label" for="adultCertification2">매회 인증</label>
						</div>
		 			</div>
		 		</div>
		 		
				<div class="col-6 d-none d-sm-block"></div>
				<div class="col-md-3">
					<label class="form-label">최종수정자</label>
					<input type="text" class="form-control form-control-sm" id="inputEditP" placeholder="윤수빈" disabled>
				</div>
				<div class="col-md-3">
					<label class="form-label">최종수정일</label>
					<input type="text" class="form-control form-control-sm" id="inputEditDate" placeholder="2022-12-12 12:12:12" disabled>
				</div>
				<div class="col-md-3">
					<label class="form-label">최초등록자</label>
					<input type="text" class="form-control form-control-sm" id="inputRegP" placeholder="윤수빈" disabled>
				</div>
				<div class="col-md-3">
					<label class="form-label">최초등록일</label>
					<input type="text" class="form-control form-control-sm" id="inputRegDate" placeholder="2020-12-12 12:12:12" disabled>
				</div>
			</form>
			<div class="col-mb-3 mt-3">	
				<div class="float-start"><button type="button" class="btn btn-danger btn-sm float-start"><i class="fas fa-trash"></i></button></div>
				<div class="float-end">
					<button type="button" class="btn btn-primary btn-sm" id="search_icon"><i class="fas fa-plus"></i></button>
				</div>
			</div>
		</div>
		</div>
	</div>
</div>




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
