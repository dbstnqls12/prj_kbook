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
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link href="/resources/common/css/user/login.css"  rel="stylesheet" >
</head>
<body>
<!--  -->
<div class="container my-wrap">
	<div class="header">
		<div class="logo"><a href="/visitor/kyobo_Vmain"><img src="/resources/xdmin/image/kyobo2.png" id="logo"></a></div>
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
	
	<div class="d-grid gap-2 col-xs-8 mx-auto"><%--  --%><!-- onclick="location.href='${url}'" -->
		<button class="btn btn-naver" type="button" onclick="location.href='/xdmin/Login'"><img src="/resources/xdmin/image/navericon.png" id="icon"><b> 네이버</b> 로그인</button>
		<button class="btn btn-kakao" type="button" ><img src="/resources/xdmin/image/kakaoicon.png" id="icon"><b> 카카오</b> 로그인</button>
		<%--  <div style="text-align:center" id="naver_id_login"><a href="${url}">NaverIdLogin</a></div> --%>
		<button class="btn btn-facebook" type="button" id="btn-facebook" onclick="fnFbCustomLogin();"><img src="/resources/xdmin/image/fbicon.png" id="icon"><b> 페이스북</b> 로그인</button>
	</div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0&appId=2175623275927646" nonce="JutAfaKH"></script><!-- &autoLogAppEvents=1 -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<script type="text/javascript">

 	/*  $("#btn-naver").on("click",function(){	   */ 
		//네이버 로그인
		var naver_id_login = new naver_id_login("sp11vVbZCiR4lPwGCFnm", "http://localhost/xdmin/callback");
		var state = naver_id_login.getUniqState();
		/* naver_id_login.setButton("white", 2,40); */
		naver_id_login.setDomain("http://localhost/member/kyobo_main");
		naver_id_login.setState(state);
		naver_id_login.setPopup();
		/* naver_id_login.init_naver_id_login(); */
/* });	 */	
//페이스북 (로그인) 기본 설정

 	function checkLoginState() {               					//로그인 클릭시 호출
 	    FB.getLoginStatus(function(response) {  
 	      statusChangeCallback(response);
 	    });
 	  }

	function statusChangeCallback(response) { 					// FB.getLoginStatus()의 결과호출
		
	 console.log(response);             			 			//사용자의 현재 로그인 상태.
		if (response.status === 'connected') {   				// 웹페이지와 페이스북에 로그인이 되어있다면
			testAPI();  
		} else {         			                       		// 웹페이지와 페이스북에 로그인이 되어있지 않다면
			console.log('Please log into this webpage.'); 
		}
	}
	
 	function fnFbCustomLogin(){
		FB.login(function(response) {
			if (response.status === 'connected') {
				FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
					console.log(r);
					console.log('Successful login for: ' + r.name);
				/* 	console.log(testAPI(response)); */
				})
			} 
		}, {scope: 'public_profile,email'});		//profile, email 권한을 나중에 추가하려는 경우 FB.login() 함수로 다시 실행할 수 있다.
	}
	
	window.fbAsyncInit = function() {
		FB.init({
			appId      : '2175623275927646', // 내 앱 ID.
			cookie     : true,
			xfbml      : true,
			version    : 'v13.0'
		});
		FB.getLoginStatus(function(response) {   
			statusChangeCallback(response);        // 로그인 상태를 말해줌
		});
	}; 

 	function testAPI(response) {                      
		console.log('Welcome!  Fetching your information.... ');
		FB.api('/me', function(response) {
			console.log('Thanks for logging in ' + response.name);
		});
	} 

	  
	  
  	$("#btnLogin").on("click",function(){
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/loginProc"
			,data : { "kbmmId" : $("#kbmmId").val(), "kbmmPassword" : $("#kbmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") { 
				/* 	if($("#kbmmAdminNy").val() == 1){ */
						location.href = "/member/kyobo_main";
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
