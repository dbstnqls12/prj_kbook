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
<title>Kyobo_memberForm</title>
<style type="text/css">
	body{
		background-color: #F5F6F8;
	}
	.my-wrap{
		width: 380px;
		
	}
	hr{
		margin-bottom: 15px;
	}
	.btn{
		font-size: 20px;
		border: 1px solid #56a900;
		height: 60px;
		color: #56A900;
		background-color: white;
		margin-top: 2px;
	}
	.btn-naver{
		background-color: #ffffff;
		border: 1px solid #E0E0E0;
		color: black;
	}

	.btn:hover,
	.btn:active,
	.btn:visited,
	.btn:focus{
		
		background-color :#56A900;
		color: #ffffff;
		
	}
	
	.btn-naver:hover,
	.btn-naver:active,
	.btn-naver:visited,
	.btn-naver:focus{
		text-decoration: none;
		background-color: #ffffff;	
		color: black;	

	}
	a:Link,
	a:hover,
	a:active,
	a:visited,
	a:focus{
		color: gray;
		text-decoration: underline;
	}
 	footer{
		margin-top: 100px;
	} 
	

</style>
</head>
<body>
<!-- 헤더 s -->
<div class="container my-wrap"><!-- d-none d-sm-block : sm사이즈에서는 보이지 않음 d-block d-sm-none : sm에서만 보임 -->
	<div class="row mt-5 mb-4 ">
		<div class="col-12 mt-3 mx-auto"> 
			<img src="/resources/user/image/kb_logo11-removebg.png" style="width: 210px; height: 60px;" >
			<h4 class="pt-4">회원가입</h4>
		</div>	
	</div>
</div>	
<!-- 헤더 e-->

<!-- 본문 s -->		
<hr class="w-100" style="color: #DDDDDD">
	<div class="container my-wrap">
		<div class="mt-5 mb-4">
			<h6 class="text-center">교보북클럽 <strong style="color: #6eb327; font-weight: normal;">회원가입</strong>을 환영합니다</h6>
		</div>
		<div class="d-grid gap-2 col-xs-8 mx-auto">
			<button class="btn " type="button" onclick="location.href='/memberForm_page1.html'" >개인회원</button>	
			<button class="btn" type="button" onclick="location.href=''">법인회원</button>
			<button class="btn" type="button" onclick="location.href=''">기존매장/제휴회원</button>
		</div>
		
		<div class="mt-5 mb-4">
			<p class="text-center" style="font-size: 14px;">매장 및 제휴 기가입한 회원의 아이디를 생성 하세요</p>
		</div>

		<div class="d-grid gap-2 col-xs-8 mx-auto">
			<button class="btn btn-naver" type="button"><img src="/resources/user/image/naver_head.png" style="width: 80px; height: 17px; margin-bottom: 5px;" > 아이디로 가입/로그인</button>
		</div>	
	</div>

<footer>
	<p class="text-center" style="font-size: 12px; color: #BCBCBC;">
	Copyright ⓒ Kyobo Book Center All right reserved.&nbsp; <a href="http://www.kyobobook.co.kr/cscenter/csCenterMain.laf"> 고객센터</a>
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