	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CateServiceImpl" class="com.kbook.infra.modules.cate.CateServiceImpl"/>
<jsp:useBean id="AuthorServiceImpl" class="com.kbook.infra.modules.author.AuthorServiceImpl"/>

<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"/>
<link  rel="stylesheet" href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css">

<link href="/resources/user/css/main.css" rel="stylesheet" type="text/css">
<!-- <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" /> -->
<title>Kyobo_main</title>
</head>
<body>
			
<%@ include file="/WEB-INF/views/member/include/main_header_visitor.jsp" %><!-- header_visitor -->
<%@ include file="/WEB-INF/views/member/include/main_navbar.jsp" %><!-- navbar -->
	
<!-- 본문 s-->
<div class="container">
	<form action="" method="post" id="bookMain" name="bookMain">
	<input type="hidden" name="tditSeq" id="tditSeq" >
	<div class="row">
	<%@ include file="/WEB-INF/views/member/include/main_sidebar.jsp" %> <!-- sidebar -->	
	<!-- 9단길이의 첫번째 열 -->	
	 	<div class="col-md-8">
			<%@ include file="/WEB-INF/views/member/include/main_ad.jsp" %> <!-- ad -->	
			<div class="col">
				<div class="col-new">
					<h6 class="d-inline">화제의 신간</h6>
					<button type="button" class="btn btn-book btn-sm" id="btn-domesticNew">국내도서</button>
					<button type="button" class="btn btn-book btn-sm" id="btn-abraodNew">외국도서</button>
					<button type="button" class="btn btn-book btn-sm" id="btn-ebookNew">ebook</button>
				
					<div class="row row-cols-1 row-cols-md-3 g-4" id="domesticNew">
						<c:forEach items="${listDomesticNew}" var="item" varStatus="status">	
						<div class="col-lg-3 ">
							<div class="card h-100">
								<a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" class="card-img-top"></a>
									<div class="card-body">
									<p class="card-title mx-auto" id="title"><a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><c:out value="${item.tditTitle}"/></a></p>
							 		<p class="card-text mx-auto" id="subTitle"><c:out value="${item.tditSubTitle}"/></p>
								</div>
							</div>
						</div>
						</c:forEach>
					</div> 
					<div class="row row-cols-1 row-cols-md-3 g-4" id="abroadNew">
						<c:forEach items="${listAbroadNew}" var="item" varStatus="status">	
						<div class="col-lg-3 ">
							<div class="card h-100">
								<a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" class="card-img-top"></a>
									<div class="card-body">
									<p class="card-title mx-auto" id="title"><a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><c:out value="${item.tditTitle}"/></a></p>
							 		<p class="card-text mx-auto" id="subTitle"><c:out value="${item.tditSubTitle}"/></p>
								</div>
							</div>
						</div>
						</c:forEach>
					</div> 
					<div class="row row-cols-1 row-cols-md-3 g-4" id="ebookNew">
						<c:forEach items="${listEbookNew}" var="item" varStatus="status">	
							<div class="col-lg-3 ">
								<div class="card h-100">
									<a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" class="card-img-top"></a>
										<div class="card-body">
										<p class="card-title mx-auto" id="title"><a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><c:out value="${item.tditTitle}"/></a></p>
								 		<p class="card-text mx-auto" id="subTitle"><c:out value="${item.tditSubTitle}"/></p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div> 
				</div>			
			</div>	
		<c:set var="listAuthor" value="${AuthorServiceImpl.selelctListCachedAuthor('15')}"/>		
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
								<td class="col-lg-4"><h4><i class="fa-regular fa-2"></i></h4></td>
								<td class="col-lg-4"><h4><i class="fa-regular fa-3"></i></h4></td>
								<td class="col-lg-4"><h4><i class="fa-regular fa-4"></i></h4></td>
							</tr>
							<tr>
								<c:forEach items="${listbookBest}" var="item" varStatus="status" begin="0" end="3">
									<td><a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" id="best" name="best"></a></td>
								</c:forEach>
							</tr>
							<%-- <c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/> --%>
							<tr>
								<c:forEach items="${listbookBest}" var="item" varStatus="status" begin="0" end="3">	
									<td>
										<p id="bestTitle"><a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><c:out value="${item.tditTitle}"/></a></p>
										<c:forEach items="${listAuthor}" var="item2" varStatus="status">
											<c:if test="${item.tdatAuthorCd eq item2.ifacSeq}">
												<p id="bestAuthor"><c:out value="${item2.ifacName}" /></p>
											</c:if>
										</c:forEach> 
									</td>
								</c:forEach>
							</tr>
							<tr>
								<td><i class="fa-regular fa-5"></i></td>
								<td><i class="fa-regular fa-6"></i></td>
								<td><i class="fa-regular fa-7"></i></td>
								<td><i class="fa-regular fa-8"></i></td>
							</tr>
							<tr>
								<c:forEach items="${listbookBest}" var="item" varStatus="status" begin="4" end="7">
									<td><a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" id="best" name="best"></a></td>
								</c:forEach>
							</tr>
							<tr>
								<c:forEach items="${listbookBest}" var="item" varStatus="status" begin="4" end="7">	
									<td>
										<p id="bestTitle"><c:out value="${item.tditTitle}"/></p>
										<c:forEach items="${listAuthor}" var="item2" varStatus="status">
											<c:if test="${item.tdatAuthorCd eq item2.ifacSeq}">
												<p id="bestAuthor"><c:out value="${item2.ifacName}" /></p>
											</c:if>
										</c:forEach> 
									</td>
								</c:forEach>
							</tr>
						</table>
					</div> 
				</div>
		</div>
		
		<div class="col-md-2">
			<div class="card" style="width: 12rem;">
			<div class="card-header"><p id="today"><i class="fa-solid fa-book-bookmark"></i>오늘의 추천 도서</p></div>
			<c:forEach items="${listbookToday}" var="item" varStatus="status">	
					<img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" class="card-img-top">
				<div class="card-body">
					<h5 class="card-title" id="todayTitle"><a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)"><c:out value="${item.tditTitle}"/></a></h5>
					<c:forEach items="${listAuthor}" var="item2" varStatus="status">
						<c:if test="${item.tdatAuthorCd eq item2.ifacSeq}">
							<p class="card-text" id="todayAuthor"><c:out value="${item2.ifacName}" />
						</c:if>
					</c:forEach> 
					<p class="card-text" id="todaySubTitle"><c:out value="${item.tditSubTitle}"/><p>
					<a href="javascript:goInfo(<c:out value="${item.tditSeq}"/>)" class="btn btn-outline-secondary w-100">바로가기</a>
<!-- 					<a href=" /visitor/kyobo_VbookInfo" class="btn btn-outline-secondary w-100">바로가기</a> -->
				</div>
			</c:forEach>
				
			</div>
		</div>
	</div>
	</form>
	
</div>
<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/javascript">
$("#ebookNew").hide();
$("#abroadNew").hide();
	
/* var tditSeqArray = []; */
/* $(document).ready(function (){
	
	$.ajax({
		url : "kyobo_Vmain",
		type : "post",
		success : function(data){
		//	alert('success');
		//	alert(data); // json이 아니다
			
			let json = JSON.parse(data); // String -> json
		//	alert(json); 
		
		// 데이터 가져오기	
			$("#name").text(json.name);
			$("#age").html(json.age);
			$("#birth").val(json.birth);
		},
		error : function() {
			alert('error');
		}
	});
}); */

/* function randomBook(tditSeqArray){
	
	int a = tditSeqArray[Math.floor(Math.random() * tditSeqArray.length)];
	return a;
}
console.log(document.write( '<p>' + a + '</p>' ));
 */
goInfo = function(seq){
	$("#tditSeq").val(seq);
	$("#bookMain").attr("action","/visitor/kyobo_VbookInfo");
	$("#bookMain").submit();
}	


$("#btn-domesticNew").on("click",function(){

	$("#domesticNew").show();
	$("#ebookNew").hide();
	$("#abroadNew").hide();
		
});  
$("#btn-abraodNew").on("click",function(){

	$("#abroadNew").show();
	$("#domesticNew").hide();
	$("#ebookNew").hide();
		
});  
$("#btn-ebookNew").on("click",function(){

	$("#ebookNew").show();
	$("#domesticNew").hide();
	$("#abroadNew").hide();
		
}); 


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
