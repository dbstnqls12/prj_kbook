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
<div class="col">
<a data-ga-action="메인배너" data-ga-label="요즘 이 책_큐피드곰" href="http://digital.kyobobook.co.kr/digital/eventTemplet/eventTempletMain.ink?tmplSeq=5074&amp;orderClick=45a">
<!-- <img src="http://image.kyobobook.co.kr/ink/images/prom/2022/banner/220526/bnV_we02.jpg" alt="전kefs"></a>
<img src="http://image.kyobobook.co.kr/newimages/adcenter/IMAC/creatives/2022/05/27/61856/kyobo_new.jpg"> -->
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<!-- <img src="/resources/user/image/book/ad2.jpg" class="d-block w-100" alt="..."> -->
<!-- 				<a href="http://digital.kyobobook.co.kr/digital/eventTemplet/eventTempletMain.ink?tmplSeq=95715&amp;orderClick=42g">
					<img src="http://image.kyobobook.co.kr/ink/images/prom/2022/banner/220524/bnJ_w01_c2e09b.jpg" class="d-block w-100" alt="[이북]행성 출간">
				</a> -->
				<a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&amp;ejkGb=KOR&amp;barcode=9791191496208&amp;orderClick=43c">
					<img src="http://image.kyobobook.co.kr/newimages/adcenter/IMAC/creatives/2022/05/27/70329/NEW.jpg" class="d-block w-100" alt="설민석의 한국사 대모험 21">
				</a>
			</div>
			<div class="carousel-item">
				<!-- <img src="/resources/user/image/book/ad3.jpg" class="d-block w-100" alt="..."> -->
				<a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&amp;ejkGb=KOR&amp;barcode=9791130690421&amp;orderClick=43a">
					<img src="http://image.kyobobook.co.kr/newimages/adcenter/IMAC/creatives/2022/05/27/51660/e05306.jpg" class="d-block w-100" alt="나는 까칠하게 살기로 했다">
				</a>
			</div>
			<div class="carousel-item">
				<!-- <img src="/resources/user/image/book/ad4.jpg" class="d-block w-100" alt="..."> -->
				<a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&amp;ejkGb=KOR&amp;barcode=9791168340275&amp;orderClick=43b">
					<img src="http://image.kyobobook.co.kr/newimages/adcenter/IMAC/creatives/2022/05/26/61174/kyobo_newbook.jpg" class="d-block w-100" alt="샤일록의 아이들">
				</a>
			</div>
			<div class="carousel-item">
				<!-- <img src="/resources/user/image/book/ad4.jpg" class="d-block w-100" alt="..."> -->
				<a  href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&amp;ejkGb=KOR&amp;barcode=9791191360417&amp;orderClick=43d">
					<img src="http://image.kyobobook.co.kr/newimages/adcenter/IMAC/creatives/2022/05/27/61856/kyobo_new.jpg" class="d-block w-100"  alt="세븐">
				</a>
			</div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Next</span>
		</button>
	</div>
</div>