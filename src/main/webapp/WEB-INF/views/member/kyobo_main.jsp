	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CateServiceImpl" class="com.kbook.infra.modules.cate.CateServiceImpl"/>

<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
<link  rel="stylesheet" href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css">
<link href="/resources/user/css/main.css" rel="stylesheet" type="text/css">
<title>Kyobo_main</title>
 <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/member/include/main_header_member.jsp" %><!--  header_member -->
<%@ include file="/WEB-INF/views/member/include/main_navbar.jsp" %><!-- navbar -->
	


<!-- 본문 s-->
<div class="container">
	<div class="row">
	<%@ include file="/WEB-INF/views/member/include/main_sidebar.jsp" %> <!-- sidebar -->	
	<!-- 9단길이의 첫번째 열 -->	
	 	<div class="col-md-8">
			<%@ include file="/WEB-INF/views/member/include/main_ad.jsp" %> <!-- ad -->	
			<div class="col">
				<div class="col-new">
				
					<h6 class="d-inline">화제의 신간</h6>
					<button type="button" class="btn btn-book btn-sm">국내도서</button>
					<button type="button" class="btn btn-book btn-sm">외국도서</button>
					<button type="button" class="btn btn-book btn-sm">ebook</button>
					<div class="row row-cols-1 row-cols-md-3 g-4">
					<div class="col-lg-3 ">
						<div class="card h-100">
						<img src="../../images/xdmin_img/bookEx12.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title mx-auto h-25">나의 아저씨 세트</h6>
						 		<p class="card-text mx-auto h-50">첫 독자들을 위한 한정판!<br><br>수많은 사람의 인생드라마가 또다시 인생책이 되다</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card h-100">
							<img src="../../images/xdmin_img/bookEx9.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title mx-auto">아무튼 피아노</h6>
						 		<p class="card-text mx-auto">40만부 기념 특별 에디션!<br><br>힘겨운 시대를 살아가는 우리들에게 다가온 조금 특별한 편의점 이야기</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card h-100">
							<img src="../../images/xdmin_img/bookEx10.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title mx-auto">무성교실</h6>
						 		<p class="card-text mx-auto">40만부 기념 특별 에디션!<br><br>힘겨운 시대를 살아가는 우리들에게 다가온 조금 특별한 편의점 이야기</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card h-100">
							<img src="../../images/xdmin_img/bookEx11.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h6 class="card-title mx-auto">모든 사람에게 <br>사랑받을 필요는 없다</h6>
						 		<p class="card-text mx-auto">40만부 기념 특별 에디션!<br><br>힘겨운 시대를 살아가는 우리들에게 다가온 조금 특별한 편의점 이야기</p>
							</div>
						</div>
					</div>
					</div>	
				</div>
			</div>

			<div class="mt-5">
				<div class="best">
					<h6 class="d-inline">베스트셀러</h6>
					<button type="button" class="btn btn-book btn-sm">교보문고종합</button>
					<button type="button" class="btn btn-book btn-sm">국내도서</button>
					<button type="button" class="btn btn-book btn-sm">외국도서</button>
					<button type="button" class="btn btn-book btn-sm">ebook</button>
					
					<table class="table">
						<tr>
							<td class="col-lg-4"><h4><i class="fa-regular fa-1" style="color: red;"></i></h4></td>
							<td class="col-lg-4"><i class="fa-regular fa-2"></i></td>
							<td class="col-lg-4"><i class="fa-regular fa-3"></i></td>
							<td class="col-lg-4"><i class="fa-regular fa-4"></i></td>
						</tr>
						<tr>
							<td class="col-lg-4"><img src="../../images/xdmin_img/book1.jpg"  id="best" name="best"></td>
							<td class="col-lg-4"><img src="../../images/xdmin_img/bookEx2.jpg" id="best" name="best"></td>
							<td class="col-lg-4"><img src="../../images/xdmin_img/bookEx3.jpg" id="best" name="best"></td>
							<td class="col-lg-4"><img src="../../images/xdmin_img/bookEx4.jpg" id="best" name="best"></td>
						</tr>
						<tr>
							<td><h6>불편한 편의점</h6><p>김호연</p></td>
							<td><h6>파친코 1</h6><p>이민진</p></td>
							<td><h6>여름이 온다</h6><p>이수지</p></td>
							<td><h6>물고기는 존재하지 않는다</h6><p>룰루밀러</p></td>
						</tr>
						<tr>
							<td><i class="fa-regular fa-5"></i></td>
							<td><i class="fa-regular fa-6"></i></td>
							<td><i class="fa-regular fa-7"></i></td>
							<td><i class="fa-regular fa-8"></i></td>
						</tr>
						<tr>
							<td><img src="../../images/xdmin_img/bookEx5.jpg" id="best" name="best"></td>
							<td><img src="../../images/xdmin_img/bookEx6.jpg" id="best" name="best"></td>
							<td><img src="../../images/xdmin_img/bookEx7.jpg" id="best" name="best"></td>
							<td><img src="../../images/xdmin_img/bookEx8.jpg" id="best" name="best"></td>
						</tr>
						<tr>
							<td><h6>나에게 고맙다</h6><p>전승환</p></td>
							<td><h6>월씽킹</h6><p>켈리최</p></td>
							<td><h6>세븐 테크</h6><p>김미경</p></td>
							<td><h6>마음의 법칙</h6><p>폴커 키츠</p></td>
						</tr>
					</table>
				</div> 
			</div>
		</div>	
		<div class="col-md-2">
			<div class="card" style="width: 12rem;">
			    <div class="card-header"><h5>오늘의 추천 도서</h5></div>
			  <img src="../../images/xdmin_img/bookEx.jpg" class="card-img-top" >
			  
			  <div class="card-body">
			    <h5 class="card-title" style="font-weight: bold;">명상 살인</h5>
			    <p class="card-text">								★ 106주 연속 슈피겔 베스트셀러<br>
								★ 독일 판매 부수 100만 부 돌파, 17개국 수출<br>
								★ 유럽 대형 제작사 Constantin 영화화 확정<br><br></p>
			    <a href="javascript:goView(<c:out value="${item.tditSeq}"/>)" class="btn btn-primary">바로가기</a>
<!-- 			    <a href=" /member/kyobo_bookInfo" class="btn btn-primary">바로가기</a> -->
			  </div>
			</div>
		</div>
	</div>
</div>	

<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/javascript">

/* if ( name == "" ) {
	var name = ${result}.response.nickname;
	 $("#name").html(name); 
} 
 */
$("#btnLogout").on("click",function(){
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/logoutProc"
		,data : { "kbmmId" : $("#kbmmId").val(), "kbmmPassword" : $("#kbmmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") {
				alert("로그아웃!");
				location.href = "/member/login";
			} else {
				//
			}
		}			
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});

}); 


/* $(document).ready(function() {
	    var name = ${result}.response.nickname;
	    $("#name").html(name); 
	}); */
  
/* 	//Hide SubMenus.
	$(".subMenu").hide();
	
	// Shows SubMenu when it's parent is hovered.
	$(".subMenu").parent("li").hover(function () {
	  $(this).find(">.subMenu").not(':animated').slideDown(300);
	  $(this).toggleClass("active ");
	});
	
	// Hides SubMenu when mouse leaves the zone.
	$(".subMenu").parent("li").mouseleave(function () {
	  $(this).find(">.subMenu").slideUp(150);
	});
	
	// Prevents scroll to top when clicking on <a href="#"> 
	$("a[href=\"#\"]").click(function () {
	  return false;
	});
 */



goView = function(seq){
	$("#tditSeq").val(seq);
	attr("action","/visitor/kyobo_VbookInfo");
/* 	$("#formList").submit(); */
}




  //location.href = "${pageContext.request.contextPath}/";


</script>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>-->
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>
