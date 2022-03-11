<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 -->
<link href="resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

<link href="resources/xdmin/css/sidebars.css" rel="stylesheet" type="text/css">
<link href="resources/xdmin/css/footers.css" rel="stylesheet" type="text/css">
<title>Kyobo_Login</title>
<style type="text/css">
	.my-wrap{
		width: 380px;
		
	}

	#logo{
		display: block;
 		margin-left:auto;
		margin-right: auto; 
		width: 130px;
		height: 90px;
		margin-top: 30px; 
		margin-bottom: 20px;
	
	}
	hr{
		margin-bottom: 15px;
	}
	
	.btn-kakao,
	.btn-kakao:hover,
	.btn-kakao:active,
	.btn-kakao:visited,
	.btn-kakao:focus {
	    background-color: #F7E600;
	    border-color: #F7E600;
	    color: #3A1D1D;
	}
	.btn-naver,
	.btn-naver:hover,
	.btn-naver:active,
	.btn-naver:visited,
	.btn-naver:focus {
	    background-color: #2DB400;
	    border-color: #2DB400;
	    color: white;
	}
	
	.btn-facebook,
	.btn-facebook:hover,
	.btn-facebook:active,
	.btn-facebook:visited,
	.btn-facebook:focus {
	    background-color: #3b5998;
	    border-color: #3b5998;
	    color: white;
	}
	
	.btn-google,
	.btn-google:hover,
	.btn-google:active,
	.btn-google:visited,
	.btn-google:focus {
	    background-color: #ea4335;
	    border-color: #ea4335;
	    color: white;
	}
	a:link,
	a:visited
	{
		color: gray;
		text-decoration: none;
	}
	a:hover{
		color: gray;
		text-decoration: underline;
	}
	a:active{
		color: gray;
		text-decoration: none;
	}
	
	#searchpwd{
		text-align: center;
		padding: 15px;
		padding-bottom: 30px;
		
	}
	#inputusername, #inputpwd{
		margin-bottom: 15px; 
	}
	#loginbtn{
		margin-top: 15px;
	}
	#icon{
		width: 25px;
		padding-bottom: 3px;
	}

</style>
</head>
<body>
<!--  -->
<div class="container my-wrap">
	<div class="header">
		<div class="logo"><a href=""><img src="../../../images/xdmin_img/kyobo2.png" id="logo"></a></div>
		<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">홈</li>
				<li class="breadcrumb-item active" aria-current="page">로그인</li>
			</ol>
		</nav>
	</div>
	<hr>
	<div class="col-xs-8 mx-auto">
		<input class="form-control" type="text" id="inputusername" placeholder="username" aria-label="input id">	
		<input class="form-control" type="password" id="inputpwd" placeholder="password" aria-label="input pwd">
		
		<div class="form-check col-xs-8">
			<input class="form-check-input" type="checkbox" name="autologin" value="autologin" id="autologin">
			<span class="form-check-label" for="autologin" id="autologin" >자동 로그인</span>
		</div>
	</div>	
	
	<div class="d-grid gap-2 col-xs-8 mx-auto">
		<button class="btn btn-primary" type="button" onclick="location.href=''" id="loginbtn">로그인</button>	
		<button class="btn btn-secondary" type="button" onclick="location.href=''">회원가입</button>
	</div>
		
	<hr class="col-xs-8 mx-auto">
	
	<div class="col-xs-8 mx-auto text-secondary" id="searchpwd">
	  <small><a href=""> 아이디/비밀번호 찾기 > </a></small>
	</div>
	
	<div class="d-grid gap-2 col-xs-8 mx-auto">
		<!-- <button class="btn btn-outline-secondary" type="button"><img src="../../../images/emailicon.png"> 번호로 로그인</button> -->
		<button class="btn btn-naver" type="button"><img src="../../../images/xdmin_img/navericon.png" id="icon"><b> 네이버</b> 로그인</button>
		<button class="btn btn-kakao" type="button"><img src="../../../images/xdmin_img/kakaoicon.png" id="icon"><b> 카카오</b> 로그인</button>
		<button class="btn btn-facebook" type="button"><img src="../../../images/xdmin_img/fbicon.png" id="icon"><b> 페이스북</b> 로그인</button>
	</div>
	
</div>


<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"> --></script>
<script src="resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>
