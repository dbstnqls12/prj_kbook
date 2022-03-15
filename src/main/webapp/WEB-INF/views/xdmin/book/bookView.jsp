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
		
		<!-- 9단길이의 첫번째 열 -->
		<hr class="d-block d-sm-none">
		<div class="col-md-10">
		<div class="mb-3"><h4>도서정보</h4></div>
			<div class="container ">
			<form action="" method="post" id="bookForm" name="bookForm" enctype="multipart/form-data" class="row g-3">
				<div class="col-md-6">
					<label class="form-label">제목</label>
					<input type="text" class="form-control form-control-sm" id="inputTitle" name="tditTitle" >
				</div>
				<div class="col-6 d-none d-sm-block"></div>
				<div class="col-md-6">
					<label class="form-label">소제목</label>
					<input type="text" class="form-control form-control-sm" id="inputSubTitle" name="tditSubTitle">
				</div>
				<div class="col-md-6">
					<label class="form-label">출판일</label>
					<input type="date" id="inputPublishingDate" class="form-control form-control-sm" name="tditPublishingDate" >
				</div>
				<div class="col-md-6">
					<label for="inputId" class="form-label">저자명</label>
					<input type="text" class="form-control form-control-sm" id="inputAuthorCd"name="tdatAuthorCd" placeholder="저자명을 검색하세요"> 
					<span class="badge bg-light text-dark">저자 찾기</span>
				</div>
				<div class="col-md-6">
					<label for="inputPwd" class="form-label">출판사</label>
					<input type="password" class="form-control form-control-sm" id="inputPublisherCd" name="tditPublisherCd" placeholder="출판사를 검색하세요">
					<span class="badge bg-light text-dark">출판사 찾기</span>
				</div>
				<div class="col-md-6">
					<label class="form-label">정가</label>
					<input type="text" id="inputPrice" class="form-control form-control-sm" name="tditPrice">
				</div>
				<div class="col-md-6">
					<label class="col-form-label pt-0">장르</label>
					<input type="text" class="form-control form-control-sm" id="inputEmail">
				</div>
				<div class="col-md-6">
					<label class="form-label">ISBN</label>
					<input type="text" class="form-control form-control-sm" id="inputIsbn" name="tditIsbn">
				</div>
				<div class="col-md-6">
					<label class="form-label">쪽수</label>
					<input type="text" class="form-control form-control-sm" id="inputPage" name="tditPage">
				</div>
				<div class="col-md-6">
					<label class="form-label">크기</label>
					<input type="text" class="form-control form-control-sm" id="inputSize" name="tditSize">
				</div>
				<div class="col-md-6">
					<label class="form-label">판매상태</label>
					<select class="form-select form-select-sm" id="inputState" name="tditStateCd">
						<option value="">::판매상태::</option>
						<option value="1">판매중</option>
						<option value="2">예약판매중</option>
						<option value="3">판매예정</option>
						<option value="4">품절</option>
						<option value="5">절판</option>
					</select>
				</div>	
				<div class="col-md-6">
					<label class="form-label">키워드</label>
					<input type="text" class="form-control form-control-sm" id="inputKeyword" name="tdkwKeyWord">
				</div>
				<div class="col-md-6">
					<label class="form-label">시리즈</label>
					<input type="text" class="form-control form-control-sm" id="inputSeries" placeholder="시리즈를 검색하세요" name="tdsiBookCd">
					<span class="badge bg-light text-dark">시리즈 검색</span>
				</div>
				<div class="col-md-6">
					<label class="form-label">책설명(image)</label>
					<input type="text" class="form-control form-control-sm" id="inputBookDescImage">
				</div>
				<div class="col-md-6">
					<label class="form-label">책설명(text)</label>
					<input type="text" class="form-control form-control-sm" id="inputBookDesc" name="tditBookDesc">
				</div>
				<div class="col-md-6">
					<label class="form-label">목차</label>
					<input type="text" class="form-control form-control-sm" id="inputTableOfContents" name="tditTableOfContents">
				</div>
				<div class="col-md-6">
					<label class="form-label">책속으로</label>
					<input type="text" class="form-control form-control-sm" id="inputBookDesc2" name="tditBookDesc2">
				</div>
				<div class="col-md-6">
					<label class="form-label">이벤트</label>
					<input type="text" class="form-control form-control-sm" id="inputEvent" name="tdpeTypeCd">
				</div>

				<div class="col-6 d-none d-sm-block"></div>
<!-- 				<div class="col-6 d-none d-sm-block"></div>줄바꿈

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
		 		</div>	 -->		

		 		
<!-- 				<div class="col-md-3">
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
				</div> -->
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