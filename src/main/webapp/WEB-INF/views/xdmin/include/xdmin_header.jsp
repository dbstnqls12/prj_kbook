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

<div class="container"> <!-- d-none d-sm-block : sm사이즈에서는 보이지 않음 d-block d-sm-none : sm에서만 보임 -->
	<div class="row">	
		<div class="col-2 float-start">
			<img src="/resources/xdmin/image/SU-BOOK4.png"  class="img-fluid rounded mx-auto d-block" onclick="location.href='/xdmin/member/memberList'">
		</div>				
		
<%-- 			<c:choose>
				<c:when test="${empty sessUuidName}">
					<img id="profilePhoto" style="width:; height: 100px;" src="/resources/common/bookProfile.png" class="img-fluid rounded-pill">
				</c:when>
				<c:otherwise>
					<img id="profilePhoto" style="width: 100px; height: 100px;" src="<c:out value="${sessPath}"/><c:out value="${sessUuidName}"/>" class="img-fluid rounded-pill">
				</c:otherwise>
			</c:choose> --%>
		
		
		
		<div class="col-8 d-none d-md-block mt-4 float-end">	
			<div class="row">
			<c:choose>
				<c:when test="${empty sessUuidName}">
					<div class="col" style=" margin-top: 5px; "><img src="/resources/uploaded/bookProfile.jpg" class="image rounded-circle img-thumbnail float-end" style="width: 50px; height: 50px;"></div>
				</c:when>
				<c:otherwise>
					<div class="col" style=" margin-top: 5px; "><img src="<c:out value="${sessPath}"/><c:out value="${sessUuidName}"/>" class="image rounded-circle img-thumbnail float-end" style="width: 50px; height: 50px;"></div>
				</c:otherwise>
			</c:choose>
			</div>
		</div>
		
		
		
		
		<div class="col-1 d-none d-md-block">	
			<div class="row">
				<div class="col" style=" margin-top: 40px; "><p class="name" style="font-size: 16px; font-weight:bold;display: inline;">${sessName} <span>님</span></p> </div>
			</div>
		</div>
		<div class="col-1 d-none d-md-block float-end">	
			<div class="row">
				<span class="badge bg-primary" role="button" id="btn-Logout" style="width: 100px; height:30px; margin-top: 38px;"><p style="font-size: 13px; margin-top: 5px; ">로그아웃 <i class="fa-solid fa-right-from-bracket"></i></p></span>
			</div>
		</div>
	</div>
</div>	