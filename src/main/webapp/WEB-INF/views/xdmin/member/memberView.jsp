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
<link href="../../../bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

<link href="../../../css/sidebars.css" rel="stylesheet" type="text/css">
<link href="../../../css/footers.css" rel="stylesheet" type="text/css">
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
<!-- 헤더 s-->			
<div class="container-fluid"> <!--d-none d-sm-block : sm사이즈에서는 보이지 않음 --><!-- d-block d-sm-none : sm에서만 보임 -->
	<div class="row ">	
		<div class="col-5 col-md-2 col-lg-2 my-auto">
			<img src="../../../images/xdmin_img/kyobo2_removebg.png"  class="img-fluid rounded mx-auto d-block">
		</div>
		<div class="col-7 col-md-5 col-lg-6 my-auto text-end">
			<a class="d-block d-md-none" data-bs-toggle="offcanvas" href="#offcanvasRight" aria-controls="offcanvasRight">
				<i class="bi bi-list"></i>
			</a>
		</div>		
		<div class="col-md-5 col-lg-4 my-auto d-none d-md-block mt-4">	
			<div class="row">
				<div class="col my-auto"><img src="../../../images/xdmin_img/2.jpg" class="image rounded-circle img-thumbnail float-end" style="width: 50px; height: 50px;"  id="profile1"></div>
				<div class="col my-auto">
					<p class="profile2 mb-0">Youn Subin (CEO)</p>
					<p class="profile3 mb-0"><small>Administrator</small></p>
				</div>
			</div>
		</div>
	</div>
</div>			
<!-- 헤더 e-->

<!-- offcanvas s -->
<nav class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" data-bs-keyboard="false" data-bs-backdrop="true" data-bs-scroll="true">
	<div class="offcanvas-header border-bottom">
		<a href="#" class="d-flex align-items-center text-decoration-none offcanvas-title d-sm-block"><h3>Menu</h3></a>
		<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	</div>
		<div class="offcanvas-body px-0">
		<ul class="list-unstyled ps-0">
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">Home</button>
				<div class="collapse show" id="home-collapse" style="">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="rounded">Overview</a></li>
						<li><a href="#" class="rounded">Updates</a></li>
						<li><a href="#" class="rounded">Reports</a></li>
					</ul>
				</div>
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">Dashboard</button>
				<div class="collapse" id="dashboard-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="rounded">Overview</a></li>
						<li><a href="#" class="rounded">Weekly</a></li>
						<li><a href="#" class="rounded">Monthly</a></li>
						<li><a href="#" class="rounded">Annually</a></li>
					</ul>
				</div>
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">Orders</button>
				<div class="collapse" id="orders-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="rounded">New</a></li>
						<li><a href="#" class="rounded">Processed</a></li>
						<li><a href="#" class="rounded">Shipped</a></li>
						<li><a href="#" class="rounded">Returned</a></li>
					</ul>
				</div>
			</li>
			<li class="border-top my-3"></li>
			<li class="mb-1">
			<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">Account</button>
				<div class="collapse" id="account-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="rounded">New...</a></li>
						<li><a href="#" class="rounded">Profile</a></li>
						<li><a href="#" class="rounded">Settings</a></li>
						<li><a href="#" class="rounded">Sign out</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
</nav>
<!-- offcanvas e -->

<!-- navbar1 s -->
<nav class="navbar navbar-expand-md navbar-light bg-light d-none d-md-block mb-4">
	<div class="container-fluid">
		<a class="navbar-brand d-block d-sm-none" href="#">Navbar</a>
		<a class="navbar-brand d-none d-sm-block" href="#">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-md-0">

				<li class="nav-item">
					<a class="nav-link" aria-current="page" href="#">회원관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link " href="#">서비스관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link " href="#">사이트관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link " href="#">로그관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link " href="#">시스템관리</a>
				</li>
			</ul>
			<form class="d-flex col-3">
				<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</div>
	</div>
</nav>
<!-- navbar1 e -->
<!-- 본문 s-->
<div class="container-fluid">
	<div class="row">
		<!-- 3단길이의 첫번째 열 -->
		<div class="col-md-2 d-none d-md-block">
			<div class="px-0 ">
				<ul class="list-unstyled ps-0">
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">Home</button>
						<div class="collapse" id="home-collapse" style="">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a href="#" class="rounded">Overview</a></li>
								<li><a href="#" class="rounded">Updates</a></li>
								<li><a href="#" class="rounded">Reports</a></li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">Dashboard</button>
						<div class="collapse" id="dashboard-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a href="#" class="rounded">Overview</a></li>
								<li><a href="#" class="rounded">Weekly</a></li>
								<li><a href="#" class="rounded">Monthly</a></li>
								<li><a href="#" class="rounded">Annually</a></li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">Orders</button>
						<div class="collapse" id="orders-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a href="#" class="rounded">New</a></li>
								<li><a href="#" class="rounded">Processed</a></li>
								<li><a href="#" class="rounded">Shipped</a></li>
								<li><a href="#" class="rounded">Returned</a></li>
							</ul>
						</div>
					</li>
					<li class="border-top my-3"></li>
					<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">Account</button>
						<div class="collapse" id="account-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a href="#" class="rounded">New...</a></li>
								<li><a href="#" class="rounded">Profile</a></li>
								<li><a href="#" class="rounded">Settings</a></li>
								<li><a href="#" class="rounded">Sign out</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
		
		<!-- 9단길이의 첫번째 열 -->
		<hr class="d-block d-sm-none">
		<div class="col-md-10">
		<div class="mb-3"><h4>회원정보</h4></div>
			<div class="container ">
			<form action="" method="post" id="memberForm" name="memberView" enctype="multipart/form-data" class="row g-3">
				<div class="col-md-6">
					<label class="form-label">이름</label>
					<input type="text" class="form-control form-control-sm" id="inputName" placeholder="윤수빈" disabled>
				</div>
				<div class="col-md-6">
					<label class="form-label">이름(영문)</label>
					<input type="text" class="form-control form-control-sm" id="inputnameEng" placeholder="Youn Subin">
				</div>
				<div class="col-md-6">
					<label for="inputId" class="form-label">아이디</label>
					<input type="text" class="form-control form-control-sm" id="inputId" placeholder="asdasd123"> 
				</div>
				<div class="col-md-6">
					<label for="inputPwd" class="form-label">비밀번호</label>
					<input type="password" class="form-control form-control-sm" id="inputPwd" placeholder="asdasd123!">
				</div>

				<div class="col-md-6">
					<label class="form-label">생년월일</label>
					<input type="text" id="inputDob" name="inputDob" max="2022-01-08" class="form-control form-control-sm" placeholder="2020-12-12">
				</div>
				<div class="col-md-6">
					<label class="form-label">성별</label>
					<select class="form-select form-select-sm" id="inputGender">
						<option selected>::선택::</option>
						<option value="1">남성</option>
						<option value="2" selected>여성</option>
						<option value="3">기타</option>
					</select>
				</div>	
				<div class="col-md-6">
					<label class="form-label">핸드폰번호</label>
					<select class="form-select form-select-sm" id="inputTelecom">
						<option selected>::통신사::</option>
						<option value="1">SKT</option>
						<option value="2">KT</option>
						<option value="3" selected>LGU</option>
						<option value="3">기타</option>
					</select>
					<input type="text" class="form-control form-control-sm" id="inputMobile" placeholder="010-1231-1231">
				</div>
				<div class="col-md-6">
					<label class="col-form-label pt-0">이메일</label>
					<input type="text" class="form-control form-control-sm" id="inputEmail" placeholder="asd123@naver.com">
				</div>
				<div class="col-md-6">
					<label class="form-label">전화번호</label>
					<input type="text" class="form-control form-control-sm" id="inputTel" placeholder="02-386-123">
				</div>
				<div class="col-md-6">
					<label class="form-label">팩스번호</label>
					<input type="text" class="form-control form-control-sm" id="inputFax" placeholder="123123"	>
				</div>
				<div class="col-md-6">
					<label class="form-label">국적</label>
					<select class="form-select form-select-sm" id="inputNationality">
						<option selected>::선택::</option>
						<option value="1" selected>대한민국</option>
						<option value="2"></option>
						<option value="3"></option>
						<option value="3"></option>
					</select>
				</div>
				<div class="col-6 d-none d-sm-block"></div><!-- 줄바꿈 -->
				<div class="col-md-6">
					<label class="form-label">주소 (한국전용)</label>
					<input type="text" class="form-control form-control-sm" id="inputZipcode" placeholder="02221">
					<input type="text" class="form-control form-control-sm" id="inputAddress1" placeholder="서울특별시 무슨동">
					<input type="text" class="form-control form-control-sm" id="inputAddress2" placeholder="어느구">
				</div>
				<div class="col-md-6">
					<label class="form-label">주소 (국외전용)</label>
					<input type="text" class="form-control form-control-sm" id="inputZipcode" placeholder="우편번호">
					<input type="text" class="form-control form-control-sm" id="inputAddress1" placeholder="주소">
					<input type="text" class="form-control form-control-sm" id="inputAddress2" placeholder="상세주소">
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




	
	


<!-- <div class="container">align-items-center justify-content-center -->
<footer class="d-flex flex-wrap justify-content-center align-items-center py-3 my-4 border-top">
	<p class="col-md-5 mb-0 text-muted">
		<a href="#" class="col-md-4 d-flex mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
			<img src="../../../images/xdmin_img/kyobo2_removebg.png"  class="img-fluid" style="width: 100px; height: 40px;">
		</a>
		<small>㈜ 교보문고   서울시 종로구 종로 1<br>   
			대표이사 : 안병현<br>
			사업자등록번호 : 102-81-11670<br>
			<b>대표전화 : 1544-1900 (발신자 부담전화)</b>   팩스 : 0502-987-5711 (지역번호공통)<br>
			서울특별시 통신판매업신고번호 : 제 653호 ▶사업자정보확인 <br>
			COPYRIGHT(C) KYOBO BOOK CENTRE ALL RIGHTS RESERVED.
			2021 Company, Inc</p></small> 

</footer>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"> --></script>
<script src="../../../bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>
