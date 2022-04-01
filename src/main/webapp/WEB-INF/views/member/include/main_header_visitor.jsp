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
	<div class="row">	
		<div class="col-6 col-md-2 col-lg-2">
			<img src="../../images/xdmin_img/kyobo2_removebg.png"  class="img-fluid mx-auto" onclick="location.href='../main.html'">
		</div>				
		<div class="col-6 d-block d-md-none mt-2 text-end">
			<a class="d-block d-md-none mt-3 ml-1" data-bs-toggle="offcanvas" href="#offcanvasRight" aria-controls="offcanvasRight">
				<i class="fa-solid fa-bars"></i>
			</a>
		</div>		
		<form class="d-flex col-lg-5 mx-auto mt-4"  style="height: 40px;">
			<input class="form-control form-control-sm rounded-pill" type="search"" placeholder="Search" aria-label="Search">
			<button class="btn rounded-pill" type="button" onclick="location.href='book/bookSearch.html'"><i class="fa-solid fa-magnifying-glass"></i></button>
		</form>
		<div class="col-lg-2 my-auto d-none d-md-block">	
	        <div class="dropdown">
	          <a href="#" class="d-inline link-dark text-decoration-none" id="dropdownUser1" >
	            <span><u>로그인하기</u></span>
	          </a>

	          <span class="badge bg-light text-dark" role="button">회원가입</span>
	        <!--   <button type="button" class="btn btn-sm btn-outline-secondary" role="" name="" id="" >로그아웃</button> -->
	        </div>
		</div>
	</div>
</div>		