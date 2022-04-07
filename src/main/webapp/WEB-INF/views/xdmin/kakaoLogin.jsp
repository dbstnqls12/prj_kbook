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

<title>Kyobo_Login</title>
</head>
<body>

 
<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>

<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0&appId=2175623275927646 nonce="JutAfaKH"></script><!-- &autoLogAppEvents=1 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script type="text/javascript">
	
	function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
	  console.log('statusChangeCallback');
	  console.log(response);                   // The current login status of the person.
	  if (response.status === 'connected') {   // Logged into your webpage and Facebook.
	    testAPI();  
	  } else {                                 // Not logged into your webpage or we are unable to tell.
	    document.getElementById('status').innerHTML = 'Please log ' +
	      'into this webpage.';
	  }
	}
	
	
	function checkLoginState() {               // Called when a person is finished with the Login Button.
	  FB.getLoginStatus(function(response) {   // See the onlogin handler
	    statusChangeCallback(response);
	  });
	}
	
	
	window.fbAsyncInit = function() {
	  FB.init({
	    appId      : '2175623275927646',
	    cookie     : true,                     // Enable cookies to allow the server to access the session.
	    xfbml      : true,                     // Parse social plugins on this webpage.
	    version    : 'v13.0'           // Use this Graph API version for this call.
	  });
	
	
	  FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
	    statusChangeCallback(response);        // Returns the login status.
	  });
	};
	
 	function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
	  console.log('Welcome!  Fetching your information.... ');
	  FB.api('/me', function(response) {
	    console.log('Successful login for: ' + response.name);
	    document.getElementById('status').innerHTML =
	      'Thanks for logging in, ' + response.name + '!';
	  }); 
	}
</script>

<!-- Optional JavaScript; choose one of the two! -->


</body>
</html>