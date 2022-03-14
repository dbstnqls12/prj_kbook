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