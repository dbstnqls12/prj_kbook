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
<!-- Bootstrap CSS -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

<title>Kyobo_Login</title>
<link href="/resources/common/css/user/login.css"  rel="stylesheet" >
</head>
<body>
<!--  -->
<div class="container my-wrap">
	<div class="header">
		<div class="logo"><a href=""><img src="/resources/xdmin/image/kyobo2.png" id="logo"></a></div>
		<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">홈</li>
				<li class="breadcrumb-item active" aria-current="page">로그인</li>
			</ol>
		</nav>
	</div>
	<hr>
	<div class="col-xs-8 mx-auto">
		<input class="form-control mb-2" type="text" id="kbmmId" name="kbmmId" placeholder="kbmmId">	
		<input class="form-control mb-2" type="password" id="kbmmPassword" name="kbmmPassword" placeholder="password" >
		
		<div class="form-check col-xs-8 mb-3">
			<input class="form-check-input" type="checkbox" name="autologin" value="autologin" id="autologin">
			<span class="form-check-label" id="autologin" >자동 로그인</span>
		</div>
	</div>	
	
	<div class="d-grid gap-2 col-xs-8 mx-auto">
		<button class="btn btn-primary" type="button" id="btnLogin" name="">로그인</button>	
		<button class="btn btn-secondary" type="button" onclick="location.href=''">회원가입</button>
	</div>
		
	<hr class="col-xs-8 mx-auto">
	
	<div class="col-xs-8 mx-auto text-secondary" id="searchpwd">
	  <small><a href=""> 아이디/비밀번호 찾기 > </a></small>
	</div>
	
	<div class="d-grid gap-2 col-xs-8 mx-auto">
		<!-- <button class="btn btn-outline-secondary" type="button"><img src="../../../images/emailicon.png"> 번호로 로그인</button> -->
		<button class="btn btn-naver" type="button"><img src="/resources/xdmin/image/navericon.png" id="icon"><b> 네이버</b> 로그인</button>
		<button class="btn btn-kakao" type="button"><img src="/resources/xdmin/image/kakaoicon.png" id="icon"><b> 카카오</b> 로그인</button>
		<button class="btn btn-facebook" type="button"><img src="/resources/xdmin/image/fbicon.png" id="icon"><b> 페이스북</b> 로그인</button>
	</div>
	
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/javascript">
	$("#btnLogin").on("click",function(){
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/loginProc"
			,data : { "kbmmId" : $("#kbmmId").val(), "kbmmPassword" : $("#kbmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					if($("#kbmmAdminNy").val() == 1){
						location.href = "/index/indexView";
					}else{
						location.href = "/member/kyobo_main";
					}	
				} else {
					alert("회원없음");
				}
			}			
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});

	});

</script>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"> --></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>
