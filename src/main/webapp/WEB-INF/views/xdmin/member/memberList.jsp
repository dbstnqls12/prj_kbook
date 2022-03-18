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
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

<link href="/resources/xdmin/css/sidebars.css" rel="stylesheet" type="text/css">
<link href="/resources/xdmin/css/footers.css" rel="stylesheet" type="text/css">
<title>Kyobo_memberList</title>
</head>
<body>

<%@ include file="/WEB-INF/views/xdmin/include/xdmin_header.jsp" %><!-- xdmin_header -->
<%@ include file="/WEB-INF/views/xdmin/include/offcanvas.jsp" %><!-- offcanvas -->
<%@ include file="/WEB-INF/views/xdmin/include/navbar.jsp" %><!-- navbar -->

<!-- 본문 s-->
<div class="container-fluid">
	<div class="row">
		<%@ include file="/WEB-INF/views/xdmin/include/sidebar.jsp" %><!-- sidebar -->
		
		<!-- 본문 -->
		<div class="col-md-10">
			<!-- 검색 s -->
			<div class="mb-2"><h4>검색</h4></div>
			<form id="" name="" method="get" action="memberList">
			<div class="border p-3 ">
				<div class="row">
					<div class="col-6 col-md-3 mt-2 mb-2">	 	
						<select class="form-select form-select-sm" name="shKbmmDelNy" id="shKbmmDelNy">
							<option value="">::삭제여부::</option>
							<option value="1" <c:if test="${vo.shKbmmDelNy eq 1 }">selected</c:if> >Y</option>
							<option value="0" <c:if test="${vo.shKbmmDelNy eq 0 }">selected</c:if> >N</option>
						</select>				
					</div>
					<div class="col-6 col-md-3 mt-2 mb-2">	
						<select class="form-select form-select-sm col-sm-6">
							<option selected>날짜</option>
							<option value="1">one</option>
							<option value="2">Two</option>
						</select>
					</div>
					<div class="col-6 col-md-3 mt-2 mb-2"><input type="text" class="form-control form-control-sm " id="input_sdate" placeholder="시작일"></div>
					<div class="col-6 col-md-3 mt-2 mb-2"><input type="text" class="form-control form-control-sm " id="input_edate" placeholder="종료일"></div>
					<div class="col-6 col-md-3 mt-2 mb-2">	
						<select class="form-select form-select-sm" name="shOption" id="shOption">
							<option value="">::검색구분::</option>
							<option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>회원명</option>
							<option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>아이디</option>
						</select>
					</div>
					<div class="col-6 col-md-3 mt-2 "><input type="text" class="form-control form-control-sm " id="shValue" name="shValue" placeholder="검색명" value="<c:out value="${vo.shValue}"/>"></div>
					<div class="col-6 col-md-3 mt-2">
						<button type="submit" class="btn btn-warning btn-sm" id="btnSubmit"><i class="fas fa-search"></i></button>
						<button type="button" class="btn btn-danger btn-sm" id="btnSubmit2"><i class="fa-solid fa-arrow-rotate-left"></i></button>
					</div>
				</div>
			</div>	
			</form>
			<!-- 검색 e -->
	
			<!-- table s -->
			<div class="table-responsive">
				<table class="table table-striped table-hover caption-top mt-2">
				<caption>Total : 12,123</caption>
			 		<thead class="table-light">	
						<tr>
						<th><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></th>
						<th>번호</th>
						<th>이름</th>
						<th>아이디</th>
						<th>전화번호</th>
						<th>이메일</th>
						</tr>
					</thead>	
					<tr>
					<c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<tr>
								<td class="text-center" colspan="9">데이터가 없습니다!</td>
							</tr>	
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="item" varStatus="status">	
							<tr>
								<td><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"></td>
								<td><c:out value="${item.kbmmSeq}"/></td>
								<td><a href="/xdmin/member/memberView?kbmmSeq=${item.kbmmSeq}"><c:out value="${item.kbmmName}"/></a></td>
								<td><c:out value="${item.kbmmId}"/></td>
								<td><c:out value="${item.kbmpNumberFull}"/></td>
								<td><c:out value="${item.kbmeEmailFull}"/></td>
							</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>	
					</tr>
				</table> 
			</div>
			<!-- table e -->
			<!-- page s -->
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
				<!-- 	<li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li> -->
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
              			  <li class="page-item"><a class="page-link" href="/xdmin/member/memberList?thisPage=${vo.startPage - 1}">Previous</a></li>
					</c:if>
					 <c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
					                <li class="page-item active"><a class="page-link" href="/xdmin/member/memberList?thisPage=${i.index}">${i.index}</a></li>
							</c:when>
							<c:otherwise>             
					                <li class="page-item"><a class="page-link" href="/xdmin/member/memberList?thisPage=${i.index}">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>  
					<c:if test="${vo.endPage ne vo.totalPages}">                
               			 <li class="page-item"><a class="page-link" href="/xdmin/member/memberList?thisPage=${vo.endPage + 1}">Next</a></li>
					</c:if>  
					<!-- <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li> -->
				</ul>
			</nav>
			<!-- page e -->
			<div class="clearfix mb-3">	
				<div class="float-start"><button type="button" class="btn btn-danger btn-sm float-start"><i class="fas fa-trash"></i></button></div>
				<div class="float-end">
					<button type="button" class="btn btn-success btn-sm" id="search_icon"><i class="bi bi-file-earmark-x"></i></button>
					<button type="button" class="btn btn-primary btn-sm" id="search_icon"><i class="fas fa-plus"></i></button>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>

<script type="text/javascript">
	$("#btnSubmit").on("click",function(){
		
		if(!checkNull($("#shKbmmDelNy"), $("#shKbmmDelNy").val(), "삭제여부를 선택해주세요!")) return false;			
		if(!checkNull($("#shOption"), $("#shOption").val(), "검색구분을 선택해주세요!")) return false;			
		if(!checkNull($("#shValue"), $("#shValue").val(), "검색어를 입력해주세요!")) return false;			

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
