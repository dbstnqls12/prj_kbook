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
<c:set var="listCateDepth1" value="${CateServiceImpl.selelctListCachedCate('1')}"/>
<c:set var="listCateDepth2" value="${CateServiceImpl.selelctListCachedCate('2')}"/>

<nav class="navbar navbar-expand-md navbar-dark d-none d-md-block mb-4" id="cate">
	<div class="container">
		<div class="dropdown">
			<a class="navbar-brand navbar-toggle d-none d-sm-block" type="button" data-bs-toggle="dropdown" id="menu" aria-expanded="false"><i class="fa-solid fa-bars"></i></a>
				<ul class="list-unstyled ps-0 dropdown-menu" id="subMenu1">
<%-- 				<c:forEach items="${listCateDepth1}" var="item1" varStatus="status1">
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false"><c:out value="${item1.ifctName }"/></button>
						 <ul class="subMenu">
						 <c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
								<c:if test="${item1.ifctSeq eq item2.ifctParents}">
									<li><a class="dropdown-item" href="#"><c:out value="${item2.ifctName}" /></a></li>
								</c:if>
						</c:forEach>		
			          </ul>
					</li>
				</c:forEach>	 --%>
				</ul>
		</div> 
		
		<div class="collapse navbar-collapse" id="menuListY">
			<ul class="navbar-nav me-auto mb-2 mb-md-0" id="menu1">
				<c:forEach items="${listCateDepth1}" var="item1" varStatus="status1">
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><c:out value="${item1.ifctName }"/></a>
						<ul class="dropdown-menu" id="menu2">
							<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
								<c:if test="${item1.ifctSeq eq item2.ifctParents}">
									<li><a class="dropdown-item" href="#"><c:out value="${item2.ifctName}" /></a></li>
								</c:if>
							</c:forEach> 
						</ul>
					</li>
				</c:forEach>
			</ul>
		</div>		
	</div>
</nav> 
<!-- navbar1 e -->
