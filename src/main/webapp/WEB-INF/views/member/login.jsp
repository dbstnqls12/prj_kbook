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
<meta name ="google-signin-client_id" content="576534236545-g5mu42l7eup81kd6d8majpgh6lj4n3eb.apps.googleusercontent.com">
<!-- Bootstrap CSS -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 -->
<!-- Bootstrap CSS -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

<title>Kyobo_Login</title>
<style type="text/css">
	body{
		background-color: #F6F9F7;
	}
</style>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link href="/resources/common/css/user/login.css"  rel="stylesheet" >
</head>
<body>
<!--  -->
<div class="container my-wrap">
	<div class="header">
		<div class="logo mt-5 mb-4"><a href="/visitor/kyobo_Vmain"><img src="/resources/xdmin/image/SU-BOOK5.png" width="250px;" style="margin-left: 50px;"></a></div>
		<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">홈</li>
				<li class="breadcrumb-item active" aria-current="page">로그인</li>
			</ol>
		</nav>
	</div>
	<hr>
	<div class="col-xs-8 mx-auto">
		<input class="form-control mb-2" type="text" id="kbmmId" name="kbmmId" placeholder="아이디" value="qwe123">	
		<input class="form-control mb-4" type="password" id="kbmmPassword" name="kbmmPassword" placeholder="비밀번호" value="1111">
<!-- 		<div class="form-check col-xs-8 mb-3">
			<input class="form-check-input" type="checkbox" name="autologin" value="autologin" id="autologin">
			<span class="form-check-label" id="autologin" >자동 로그인</span>
		</div> -->
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
		<div id="naver_id_login" style="display:none;"></div>
		<button class="btn btn-naver" type="button" onclick="location.href='${url}'"><img src="/resources/xdmin/image/navericon.png" id="icon"><b> 네이버</b> 로그인</button>
		<button class="w-100 btn btn-google" type="button" id="GgCustomLogin" onclick="javascript:void(0)">구글 로그인</button>
		<button class="btn btn-kakao" type="button" onclick="javascript:kakaoLogin()"><img src="/resources/xdmin/image/kakaoicon.png" id="icon"><b> 카카오</b> 로그인</button>
		<button class="btn btn-facebook" type="button" id="btn-facebook" onclick="fnFbCustomLogin();"><img src="/resources/xdmin/image/fbicon.png" id="icon"><b> 페이스북</b> 로그인</button>
	</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0&appId=2175623275927646" nonce="JutAfaKH"></script><!-- &autoLogAppEvents=1 -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">

<!--일반 로그인 -->  
$("#btnLogin").on("click",function(){
	 
	if(!checkNull($("kbmmId"), $.trim($("#kbmmId").val()), "아이디를 입력해 주세요!")) return false;
	if(!checkNull($("kbmmPassword"), $.trim($("#kbmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/loginProc"
		,data : { "kbmmId" : $("#kbmmId").val(), "kbmmPassword" : $("#kbmmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") { 
					location.href = "/member/kyobo_main";
			} else {
				alert("아이디 또는 비밀번호를 확인해주세요!");
			}
		}			
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
	
});  

<!-- 구글로그인 -->
//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
       // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
       // 인스턴스의 함수 호출 - element에 로그인 기능 추가
       // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
       // key에 자신의 API 키를 넣습니다.
		 data: {personFields:'birthdays', key:'AIzaSyB8OZaXqmi829PZf7vjIqqgUzcj-cuoOWU', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
       //프로필을 가져온다.
    
		 var profile = googleUser.getBasicProfile();
		var id= profile.getId();
		var username = profile.getName();
		
		console.log(username);
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/loginProcGoogle"	// controller의 loginProc value (url)
			,data : {"kbmmName" : profile.getName()}	
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/member/kyobo_main"; 
				} else {
					alert("구글 로그인 실패");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		})
	})
	.fail(function(e){
		console.log(e);
	})
}

function onSignInFailure(t){	
	console.log(t);
}

<!-- 네이버로그인 -->
//네이버
var naver_id_login = new naver_id_login("sp11vVbZCiR4lPwGCFnm", "http://localhost/member/callback"); // client ID, callBack URL
var state = naver_id_login.getUniqState();
naver_id_login.setButton("white", 2,40);
naver_id_login.setDomain("http://localhost/member/kyobo_main");	// service URL
naver_id_login.setState(state);
naver_id_login.setPopup();
naver_id_login.init_naver_id_login();
<!-- 페이스북 로그인-->

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
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/member/FBLgProc"
					,data : {"kbmmName" : r.name}		// 넘겨줄 데이터를 설정
					,success: function(response) {
						if(response.item == "success") {
							location.href = "/member/kyobo_main";
						} else {
							alert("페이스북 로그인 실패");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				})
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

	
<!-- 카카오 로그인-->
window.Kakao.init('6ec915718ae8d23e16c65e0f6d22a62e');	// 자바스크립트 키 입력
console.log(Kakao.isInitialized()); 
function kakaoLogin() {
   window.Kakao.Auth.login({
       scope: 'profile_nickname', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
       success: function(response) {
           console.log(response) // 로그인 성공하면 받아오는 데이터
           window.Kakao.API.request({ // 사용자 정보 가져오기 
               url: '/v2/user/me',
               success: (res) => {
                   const kakao_account = res.kakao_account; 
                   const profile_nickname = res.properties.nickname; 
                   console.log(kakao_account)		// 받아온 정보들을 출력
                   console.log(profile_nickname)		// 받아온 정보들을 출력
                   $.ajax({
           			async: true 
           			,cache: false
           			,type: "post"
           			,url: "/member/KakaoLgProc"
           			,data : {"kbmmName" : profile_nickname}
           			,success: function(response) {
           				if(response.item == "success") {
           					location.href = "/member/kyobo_main";
           				} else {
           					alert("카카오 로그인 실패");
           				}
           			}
           			,error : function(jqXHR, textStatus, errorThrown){
           				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
           			}
           		})
               }
           });
       }, fail: function(err) { //다른 로그인 일때 실행
   	    $.ajax({
       		
       		type: "post"
       		,url: "/member/logoutProc"
       		
       		,success: function(response) {
       			if(response.rt == "success") {
       				location.href = "/member/KakaoLgProc";
       			} 
       		}
       		,error : function(jqXHR, textStatus, errorThrown){
       			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
       		}
       		
       	}); 
     }
     
   })

}

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
