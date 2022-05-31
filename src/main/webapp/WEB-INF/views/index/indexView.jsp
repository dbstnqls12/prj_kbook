<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.kbook.infra.modules.code.CodeServiceImpl"/>

<!DOCTYPE HTML>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Surjith S M">
    <meta name="keywords" content="GGV, 지지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Ggv, ggv, 예매, 상영작" />
    <meta name="description" content="GGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. GGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다." />
    <meta property="og:site_name" content="영화 그 이상의 감동. GGV"/>
    <meta id="ctl00_og_title" property="og:title" content="영화 그 이상의 감동. GGV"></meta>
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png"></meta>    
    
    <!-- Favicons -->
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" /> <!-- cj아이콘 -->
    <!-- Page Title -->
    <title id="ctl00_headerTitle">영화 그 이상의 감동. GGV</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/xdmin/assets/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="/resources/xdmin/assets/css/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/resources/xdmin/assets/css/font-awesome.min.css">
    <!-- Hover Effects -->
    <link href="/resources/xdmin/assets/css/set1.css" rel="stylesheet">
    <!-- Main CSS -->
    <link rel="stylesheet" href="/resources/xdmin/assets/css/style.css">
</head>

<body>
    <!--============================= HEADER =============================-->
    <div class="nav-menu sticky-top">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg">
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item" style="padding : 10px;">
                                        <c:out value="${sessName}"/>
                                    </li>
                                    <li> </li>
                                    <li><a href="" id="btnLogout" class="btn btn-outline-danger top-btn"> logout</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--//END HEADER -->
    <!--============================= SUBPAGE HEADER BG =============================-->
    <section class="subpage-bg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block title-block_subpage">
                        <h2>portfolio</h2>
                        <p> <a href="index.html"> 영화예매 페이지(GGV)</a> / 회원관리 페이지</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SUBPAGE HEADER BG -->
    <!--============================= PRICING =============================-->
    <section class="main-block">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 article-first">
                    <div class="pricing-wrap">
                        <div class="pricing-head">
                            <h2>영화예매</h2>
                            <span>웹 / HTML</span>
                        </div>
                        <ul class="pricing-text-block">
                            <li><img src="/resources/xdmin/image/ggv.JPG" width="100%" height="339px"/></li>
                            <li>홈 / 영화상세 / 예매 / 결제 / 결제완료</li>
                        </ul>
                        <div class="pricing-signup">
                            <a href="/movie/userHome" class="btn btn-danger">입장하기</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 article-first">
                    <div class="pricing-wrap">
                        <div class="pricing-head">
                            <h2>회원관리</h2>
                            <span>웹 / HTML</span>
                        </div>
                        <ul class="pricing-text-block">
                            <li><img src="/resources/xdmin/image/member.JPG" width="100%" height="339px"/></li>
                            <li>회원리스트 / 회원상세 / 회원등록 / 회원수정 / 회원삭제</li>
                        </ul>
                        <div class="pricing-signup">
                            <a href="/member/memberList" class="btn btn-danger">입장하기</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--//END PRICING -->






<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="/resources/xdmin/assets/js/jquery-3.2.1.min.js"></script>
<script src="/resources/xdmin/assets/js/popper.min.js"></script>
<script src="/resources/xdmin/assets/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>

<!-- Jquery ui -->
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script>
	$("#btnLogout").on("click", function(){
		/* if(validation() == false) return false; */
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			/* ,data : { "mvmmId" : $("#mvmmId").val(), "mvmmPassword" : $("#mvmmPassword").val()} */
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/member/loginForm";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});	
	});

	validation = function(){
		if(!checkNull($("mvmmId"), $.trim($("#mfmmId").val()), "아이디를 입력해 주세요!")) return false;
		if(!checkNull($("mvmmPassword"), $.trim($("#mvmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
	}
</script>

</body>

</html>
