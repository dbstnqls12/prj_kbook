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
<title>Kyobo_memberList</title>

</head>
<body>
<!-- 헤더 s-->			
<div class="container-fluid"> <!--d-none d-sm-block : sm사이즈에서는 보이지 않음 --><!-- d-block d-sm-none : sm에서만 보임 -->
	<div class="row ">	
		<div class="col-5 col-md-2 col-lg-2 my-auto">
			<img src="/resources/xdmin/image/kyobo2_removebg.png"  class="img-fluid rounded mx-auto d-block">
		</div>				
		<div class="col-7 col-md-5 col-lg-6 my-auto text-end">
			<a class="d-block d-md-none" data-bs-toggle="offcanvas" href="#offcanvasRight" aria-controls="offcanvasRight">
				<i class="bi bi-list"></i>
			</a>
		</div>		
		<div class="col-md-5 col-lg-4 my-auto d-none d-md-block mt-4">	
			<div class="row">
				<div class="col my-auto"><img src="/resources/xdmin/image/2.jpg" class="image rounded-circle img-thumbnail float-end" style="width: 50px; height: 50px;"></div>
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
		<div class="col-md-10">
			<!-- 검색 s -->
			<div class="mb-2"><h4>검색</h4></div>
			<form id="" name="" method="get" action="memberList">
			<div class="border p-3 ">
				<div class="row">
					<div class="col-6 col-md-3 mt-2 mb-2">	 	
						<select class="form-select form-select-sm" name="shKbmmDelNy">
							<option value="">::삭제여부::</option>
							<option value="1">Y</option>
							<option value="0">N</option>
						</select>				
					</div>
					<div class="col-6 col-md-3 mt-2 mb-2">	
						<select class="form-select form-select-sm col-sm-6">
							<option selected>날짜</option>
							<option value="1">one</option>
							<option value="2">Two</option>
						</select>
					</div>
					<div class="col-6 col-md-3 mt-2 mb-2"><input type="text" class="form-control form-control-sm " id="input_sdate" placeholder="시작일"></div>
					<div class="col-6 col-md-3 mt-2 mb-2"><input type="text" class="form-control form-control-sm " id="input_edate" placeholder="종료일"></div>
					<div class="col-6 col-md-3 mt-2 mb-2">	
						<select class="form-select form-select-sm">
							<option selected>회원구분</option>
							<option value="1">프렌즈</option>
							<option value="2">실버</option>
							<option value="2">골드</option>
							<option value="2">플래티넘</option>
						</select>
					</div>
					<div class="col-6 col-md-3 mt-2 "><input type="text" class="form-control form-control-sm " id="input_search" placeholder="회원명"></div>
					<div class="col-6 col-md-3 mt-2">
						<button type="submit" class="btn btn-warning btn-sm" id="search_icon"><i class="fas fa-search"></i></button>
						<button type="button" class="btn btn-danger btn-sm" id="search_icon"><i class="fa-solid fa-arrow-rotate-left"></i></button>
					</div>
				</div>
			</div>	
			</form>
			<!-- 검색 e -->
			<!-- table s -->
			<div class="table-responsive">
				<table class="table table-striped table-hover caption-top mt-2">
				<caption>Total : 12,123</caption>
			 		<thead class="table-light">	
						<tr>
						<th><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
						<th>번호</th>
						<th>이름</th>
						<th>아이디</th>
						<th>전화번호</th>
						<th>이메일</th>
						</tr>
					</thead>	
					<tr>
					<c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<tr>
								<td class="text-center" colspan="9">There is no data!</td>
							</tr>	
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="item" varStatus="status">	
							<tr>
								<td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
								<td><c:out value="${item.kbmmSeq}"/></td>
								<td><a href="/xdmin/member/memberView?kbmmSeq=${item.kbmmSeq}"><c:out value="${item.kbmmName}"/></a></td>
								<td><c:out value="${item.kbmmId}"/></td>
								<td><c:out value="${item.kbmpNumberFull}"/></td>
								<td><c:out value="${item.kbmeEmailFull}"/></td>
							</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>	
					</tr>
				</table> 
			</div>
			<!-- table e -->
			<!-- page s -->
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
			</nav>
			<div class="clearfix mb-3">	
				<div class="float-start"><button type="button" class="btn btn-danger btn-sm float-start"><i class="fas fa-trash"></i></button></div>
				<div class="float-end">
					<button type="button" class="btn btn-success btn-sm" id="search_icon"><i class="bi bi-file-earmark-x"></i></button>
					<button type="button" class="btn btn-primary btn-sm" id="search_icon"><i class="fas fa-plus"></i></button>
				</div>
			</div>
		</div>
	</div>
</div>




	
	


<!-- <div class="container">align-items-center justify-content-center -->
<footer class="d-flex flex-wrap justify-content-center align-items-center py-3 my-4 border-top">
	<p class="col-md-5 mb-0 text-muted">
		<a href="#" class="col-md-4 d-flex mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
			<img src="/resources/xdmin/image/kyobo2_removebg.png"  class="img-fluid" style="width: 100px; height: 40px;">
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
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>-->
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>
