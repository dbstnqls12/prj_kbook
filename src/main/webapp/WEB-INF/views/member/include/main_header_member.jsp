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

<div class="container"> <!--d-none d-sm-block : sm사이즈에서는 보이지 않음 --><!-- d-block d-sm-none : sm에서만 보임 -->
<c:set var="CodeGrade" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
	<div class="row">	
		<div class="col-6 col-md-2 col-lg-2">
			<img src="/resources/xdmin/image/SU-BOOK5.png"  class="img-fluid mx-auto" onclick="location.href='subookMain'">
		</div>				
		<div class="col-6 d-block d-md-none mt-2 text-end">
			<a class="d-block d-md-none mt-3 ml-1" data-bs-toggle="offcanvas" href="#offcanvasRight" aria-controls="offcanvasRight">
				<i class="fa-solid fa-bars"></i>
			</a>
		</div>		
		<form class="d-flex col-lg-5 mx-auto"  style="height: 40px; margin-top: 30px;">
		</form>
		<c:if test="${sessSeq ne null}">
			<div class="col-lg-2 my-auto d-none d-md-block">	
		        <div class="dropdown">
		          <a href="#" class="d-inline link-dark text-decoration-none">
		            <span>${sessName}${name} 회원님 
		            <c:forEach items="${CodeGrade}" var="itemGrade" varStatus="statusGrade">
		           		 <c:if test="${sessGrade eq itemGrade.ifcdOrder }"><u><c:out value="${itemGrade.ifcdName}"/></u></c:if>
		         	</c:forEach>
		         	</span>

		          </a>
		          	<c:if test="${not empty sessSeq}">
						<span class="badge bg-light text-dark" role="button" id="btnLogout">로그아웃</span>
					</c:if>
		          	<c:if test="${sessSeq eq '0'}">
						<span class="badge bg-warning text-dark"id="kakao">카카오로그인</span>
					</c:if>
		        </div>
			</div>
		</c:if>
		<c:if test="${sessSeq eq null}">
			<div class="col-lg-2 my-auto d-none d-md-block">
		        <div class="dropdown">
		          <span class="badge bg-light text-dark" role="button" onclick="location.href='../member/login'">로그인</span> |
		          <span class="badge bg-light text-dark" role="button" onclick="location.href='../member/memberForm_user'">회원가입</span>
		        </div>
			</div>
		</c:if>
	</div>
</div>		