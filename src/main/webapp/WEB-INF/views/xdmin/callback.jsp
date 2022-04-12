<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>네이버 로그인2</title>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
  <!-- 네이버 로그인 버튼 노출 영역 -->
  <div id="naver_id_login"></div>
    <%-- <div style="text-align:center">${result}</div> --%>
  
  <div style="text-align:center"><a href="${url}">NaverIdLogin</a></div>
  <!-- //네이버 로그인 버튼 노출 영역 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
  	
  	
  var naver_id_login = new naver_id_login("sp11vVbZCiR4lPwGCFnm", "http://localhost/xdmin/callback");
    // 접근 토큰 값 출력
   /*  alert(naver_id_login.oauthParams.access_token); */
    // 네이버 사용자 프로필 조회
    naver_id_login.get_naver_userprofile("naverSignInCallback()");
    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
    function naverSignInCallback() {
/*       alert(naver_id_login.getProfileData('email'));
      alert(naver_id_login.getProfileData('nickname'));
      alert(naver_id_login.getProfileData('age')); */
/*       console(naver_id_login.getProfileData('email'));
      console(naver_id_login.getProfileData('nickname'));
      console(naver_id_login.getProfileData('age'));  */
    }

</script>


<!-- 2. callback.html
<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  	
</head>
<body>

</script> -->
</body>
</html>