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

<link rel="shortcut icon" href="https://ifh.cc/g/74QNWX.png" type="image/x-icon" />
<title id="ctl00_headerTitle">책이 수북수북</title>
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
		<div class="logo mt-5 mb-4"><a href="/"><img src="/resources/xdmin/image/SU-BOOK5.png" width="250px;" style="margin-left: 50px;"></a></div>
		<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
			<ol class="breadcrumb" style="cursor: pointer;">
				<li class="breadcrumb-item" onclick="location.href='/'">홈</li>
				<li class="breadcrumb-item active" onclick="location.href='/member/findPwd'" aria-current="page">비밀번호 찾기</li>
			</ol>
		</nav>
	</div>
	<hr>
    <form action="/member/getPassword" id="findPassword" name="findPassword" method="post" class="form-box">
    <input type="hidden" id="kbmmDelNy" name="kbmmDelNy" value="0">
    <input type="hidden" id="kbmpDefaultNy" name="kbmpDefaultNy" value="1">
		<div class="col-xs-8 mx-auto">
			<input class="form-control mb-2" type="text" id="kbmmName" name="kbmmName" value="윤수빈" placeholder="이름입력">
			<input class="form-control mb-2" type="text" id="kbmmId" name="kbmmId" value="qwe123" placeholder="아이디 입력">				
			<input class="form-control mb-4" type="text" id="kbmpNumberFull" name="kbmpNumberFull" value="01011223344" placeholder="전화번호 입력 (숫자만 입력)" >
	
		</div>	
		<div class="d-grid gap-2 col-xs-8 mx-auto mt-4 mb-2">
			<p class="mb-4" id="showPwd" style="color: black;"></p>
		</div>
		
		<div class="d-grid gap-2 col-xs-8 mx-auto">
			<button class="btn btn-primary" type="button" id="btnFindPwd" name="btnFindPwd">비밀번호 찾기</button>	
			<button class="btn btn-success" type="button" onclick="location.href='/'">홈으로 돌아가기</button>
		</div>
		<hr class="col-xs-8 mx-auto">
		<div class="col-xs-8 mx-auto text-secondary" id="goBack">
		  <small><a href="/member/findPwd"><i class="fa-solid fa-rotate-left"></i> 비밀번호 다시 찾기</a></small>
		</div>
	</form>	
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/javascript">
$("#goBack").hide();


$("#btnFindPwd").on("click",function(seq){ 
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/getPassword"
		,dataType : "JSON"
		,data : { "kbmmName" : $("#kbmmName").val(), "kbmpNumberFull": $("#kbmpNumberFull").val(), "kbmmId": $("#kbmmId").val(), "kbmmDelNy": $("#kbmmDelNy").val(), "kbmpDefaultNy": $("#kbmpDefaultNy").val()}
		,success: function(data) {
  			$("#goBack").show(); 
 			$("#btnFindPwd").hide();
		/* 	alert(data); 
			alert(JSON.stringify(data));    */
 		/* 	alert(JSON.stringify(data['pwdList'][0]['mmPassword'])); */
 			
			var name = data['pwdList'][0]['kbmmName']; 
			
			$('#showPwd').append(name+' 님의 비밀번호는 '+'<span style="color: red; font-weight: bold;">' + data['pwdList'][0]['kbmmPassword'] + '</span>'+' 입니다.' );
		
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
