<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name ="google-signin-client_id" content="576534236545-g5mu42l7eup81kd6d8majpgh6lj4n3eb.apps.googleusercontent.com">
  <title>구글 로그인</title>
</head>
<body>

<button class="w-100 btn btn-lg" id="GgCustomLogin" onclick="javascript:void(0)">구글 로그인</button>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>

<script type="text/javascript">

//처음 실행하는 함수
<script>
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
</script>
</body>





</html>