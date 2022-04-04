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
</head>
<body>

<!-- navbar1 s -->
<nav class="navbar navbar-expand-md navbar-dark d-none d-md-block mb-4" id="cate">
	<div class="container">
		<div class="dropdown">
			<a class="navbar-brand navbar-toggle d-none d-sm-block" type="button" data-bs-toggle="dropdown" id="menu" aria-expanded="false"><i class="fa-solid fa-bars"></i></a>
				<ul class="list-unstyled ps-0 dropdown-menu" id="subMenu1">
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">국내도서</button>
								          <ul class="subMenu">
			            <li><a href="#">Item 1.2.1 </a></li>
			            <li><a href="#">Item 1.2.2 &nbsp;<i class="fa fa-angle-right"></i></a></li>
			          </ul>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">외국도서</button>
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
						<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">ebook</button>
						<div class="collapse" id="orders-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a href="#" class="rounded">New</a></li>
								<li><a href="#" class="rounded">Processed</a></li>
								<li><a href="#" class="rounded">Shipped</a></li>
								<li><a href="#" class="rounded">Returned</a></li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">음반</button>
						<div class="collapse" id="orders-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a href="#" class="rounded">New</a></li>
								<li><a href="#" class="rounded">Processed</a></li>
								<li><a href="#" class="rounded">Shipped</a></li>
								<li><a href="#" class="rounded">Returned</a></li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">DVD</button>
						<div class="collapse" id="orders-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li><a href="#" class="rounded">New</a></li>
								<li><a href="#" class="rounded">Processed</a></li>
								<li><a href="#" class="rounded">Shipped</a></li>
								<li><a href="#" class="rounded">Returned</a></li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">중고장터</button>
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
					<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">ONLY 교보문고</button>
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
	
<%-- 				<c:forEach items="${listCateParent1}" var="itemCateNum1" varStatus="statusCateNum1">
					<li class="nav-item">
						<a class="nav-link" aria-current="page" href="#">
							<c:out value="${itemCateNum1.ifctName}"/>	
						</a>
					</li>
				</c:forEach> --%>
		<div class="collapse navbar-collapse" id="menuListY">
			<ul class="navbar-nav me-auto mb-2 mb-md-0">
				<li class="nav-item">
					<a class="nav-link" aria-current="page" href="#">국내도서</a>
				</li>
				<li class="nav-item">
					<a class="nav-link " href="#">외국도서</a>
				</li>
				 <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">ebook</a>
		          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item" href="#">일반도서</a></li>
		            <li><a class="dropdown-item" href="#">로맨스</a></li>
		            <li><a class="dropdown-item" href="#">판타지</a></li>
		            <li><a class="dropdown-item" href="#">코믹스</a></li>
		          </ul>
       			 </li>
	
				<li class="nav-item">
					<a class="nav-link " href="#">웹소설</a>
				</li>
				<li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">기프트</a>
		          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item" href="#">2022 DIARY</a></li>
		            <li><a class="dropdown-item" href="#">디자인 문구</a></li>
		            <li><a class="dropdown-item" href="#">디지털</a></li>
		            <li><a class="dropdown-item" href="#">오피스</a></li>
		            <li><a class="dropdown-item" href="#">필기구</a></li>
		          </ul>
		        </li>
				<li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">음반</a>
		          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item" href="#">음반</a></li>
		            <li><a class="dropdown-item" href="#">DVD</a></li>
		            <li><a class="dropdown-item" href="#">블루레이</a></li>
		          </ul>
		        </li>
				<li class="nav-item">
					<a class="nav-link" href="#">중고장터</a>
				</li>
			</ul>
		</div>
	</div>
</nav> 
<!-- navbar1 e -->
