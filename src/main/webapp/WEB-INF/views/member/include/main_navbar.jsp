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
<nav class="navbar navbar-expand-md navbar-dark d-none d-md-block mb-4">
	<div class="container">
		<div class="dropdown">
			<a class="navbar-brand navbar-toggle d-none d-sm-block" type="button" data-bs-toggle="dropdown" id="menu" aria-expanded="false"><i class="fa-solid fa-bars"></i></a>
				<ul class="dropdown-menu" aria-labelledby="menu1">
					<li><a class="dropdown-item" href="#">국내도서</a></li>
					<li><a class="dropdown-item" href="#">외국도서</a></li>
					<li><a class="dropdown-item" href="#">ebook</a></li>
					<li><a class="dropdown-item" href="#">장르/코믹스</a></li>
					<li><a class="dropdown-item" href="#">sam</a></li>
					<li><a class="dropdown-item" href="#">기프트</a></li>
					<li><a class="dropdown-item" href="#">음반/DVD</a></li>
					<li><a class="dropdown-item" href="#">중고장터</a></li>
					<li><a class="dropdown-item" href="#">Only 교보문고</a></li>
				</ul>	
		</div>
	
		<div class="collapse navbar-collapse" id="menuListY">
			<ul class="navbar-nav me-auto mb-2 mb-md-0">
<%-- 				<c:forEach items="${listCateParent1}" var="itemCateNum1" varStatus="statusCateNum1">
					<li class="nav-item">
						<a class="nav-link" aria-current="page" href="#">
							<c:out value="${itemCateNum1.ifctName}"/>	
						</a>
					</li>
				</c:forEach> --%>
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
