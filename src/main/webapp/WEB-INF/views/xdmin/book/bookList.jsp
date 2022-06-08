<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CateServiceImpl" class="com.kbook.infra.modules.cate.CateServiceImpl"/>
<jsp:useBean id="AuthorServiceImpl" class="com.kbook.infra.modules.author.AuthorServiceImpl"/>
<jsp:useBean id="CodeServiceImpl" class="com.kbook.infra.modules.code.CodeServiceImpl"/>
<jsp:useBean id="PublisherServiceImpl" class="com.kbook.infra.modules.publisher.PublisherServiceImpl"/>

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

<link href="/resources/xdmin/css/footers.css" rel="stylesheet" type="text/css">

<link rel="shortcut icon" href="https://ifh.cc/g/74QNWX.png" type="image/x-icon" />
<title id="ctl00_headerTitle">책이 수북수북</title>

</head>
<body>

<%@ include file="/WEB-INF/views/xdmin/include/xdmin_header.jsp" %><!-- xdmin_header -->
<%@ include file="/WEB-INF/views/xdmin/include/offcanvas.jsp" %><!-- offcanvas -->
<%@ include file="/WEB-INF/views/xdmin/include/xdmin_navbar.jsp" %><!-- navbar -->

<!-- 본문 s-->
<div class="container">
	<div class="row">
		
		<!-- 본문 -->
		<!-- <div class="col-md-10"> -->
			<!-- 검색 s -->
			<div class="mb-2"><h4 style="font-weight: bold;">도서관리</h4></div>

			<form id="formBookList" name="formBookList" method="post" action="bookList">
	 		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
			<input type="hidden" name="checkboxSeqArray" id="checkboxSeqArray">
			<input type="hidden" id="tditSeq" name="tditSeq">
			<div class="border p-3 ">
				<div class="row">
					<div class="col-6 col-md-3 mt-2 mb-2">	 	
						<select class="form-select form-select-sm" name="shKbmmDelNy" id="shKbmmDelNy">
							<option value="">::삭제여부::</option>
							<option value="1" <c:if test="${vo.shTditDelNy eq 1 }">selected</c:if> >Y</option>
							<option value="0" <c:if test="${vo.shTditDelNy eq 0 }">selected</c:if> >N</option>
						</select>				
					</div>
					<div class="col-6 col-md-3 mt-2 mb-2">	
						<select class="form-select form-select-sm" name="shOptionDate" id="shOptionDate">
							<option value="">::날짜구분::</option>
							<option value="1" <c:if test="${vo.shOptionDate eq 1 }">selected</c:if>>출판일</option>
							<option value="2" <c:if test="${vo.shOptionDate eq 2 }">selected</c:if>>등록일</option>
							<option value="3" <c:if test="${vo.shOptionDate eq 3 }">selected</c:if>>수정일</option>
						</select>
					</div>
					<div class="col-6 col-md-3 mt-2 mb-2">
						<fmt:parseDate var="shDateStart" value="${vo.shDateStart}"  pattern="yyyy-MM-dd HH:mm:ss"/>	
						<input type="text" class="form-control form-control-sm " id="shDateStart" name="shDateStart" placeholder="시작일" value="<fmt:formatDate value="${shDateStart}" pattern="yyyy-MM-dd"/>" autocomplete="off">
					</div>
					
					<div class="col-6 col-md-3 mt-2 mb-2">
						<fmt:parseDate var="shDateEnd" value="${vo.shDateEnd}" pattern="yyyy-MM-dd HH:mm:ss"/>		 				
						<input type="text" class="form-control form-control-sm " id="shDateEnd" name="shDateEnd" placeholder="종료일" value="<fmt:formatDate value="${shDateEnd}" pattern="yyyy-MM-dd"/>" autocomplete="off">
					</div>
					<div class="col-6 col-md-3 mt-2 mb-2">	
						<select class="form-select form-select-sm" name="shOption" id="shOption">
							<option value="">::검색구분::</option>
							<option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>책제목</option>
							<option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>저자명</option>
							<option value="3" <c:if test="${vo.shOption eq 3 }">selected</c:if>>출판사명</option>
						</select>
					</div>
					<div class="col-6 col-md-3 mt-2 "><input type="text" class="form-control form-control-sm " id="shValue" name="shValue" placeholder="검색어" value="<c:out value="${vo.shValue}"/>"></div>
					<div class="col-6 col-md-3 mt-2">
						<button type="submit" class="btn btn-warning btn-sm" id="btnSubmit"><i class="fas fa-search"></i></button>
						<button type="button" class="btn btn-danger btn-sm" id="btnSubmit2" onclick="location.href='bookList'"><i class="fa-solid fa-arrow-rotate-left"></i></button>
					</div>
				</div>
			</div>	
			
			<!-- 검색 e -->
	
			<!-- table s -->
			<div class="table-responsive">
				<table class="table table-striped table-hover caption-top mt-2">
<%-- 				<caption>Total : <c:out value="${vo.totalRows}"></c:out></caption> --%>
			 		<thead class="table-light">	
						<tr>
						<th><input class="form-check-input" type="checkbox" value="" id="checkboxAll" name="checkboxAll"></th>
						<th>번호</th>
						<th>책제목</th>
						<th>저자명</th>
						<th>출판사</th>
						<th>출판일</th>
						<th>가격</th>
						<th>삭제여부</th>
						</tr>
					</thead>	
					<tr>
					<%-- <c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('3')}"/> --%>
					<c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<tr>
								<td class="text-center" colspan="9">데이터가 없습니다!</td>
							</tr>	
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="item" varStatus="status">	
							<tr>
								<td><input class="form-check-input" type="checkbox" name="checkboxSeq" id="checkboxSeq" value="<c:out value="${item.tditSeq}"/>"></td>
								<td><c:out value="${item.tditSeq}"/></td>
								<td><a href="javascript:goView(<c:out value="${item.tditSeq}"/>)"><c:out value="${item.tditTitle}"/></a></td>
								<c:set var="listAuthor" value="${AuthorServiceImpl.selelctListCachedAuthor('15')}"/>
								<td>
									<c:forEach items="${listAuthor}" var="itemAuthor" varStatus="statusAuthor">
									<c:if test="${item.tdatAuthorCd eq itemAuthor.ifacSeq}">
										<c:choose>
											<c:when test="${item.tditItemCate eq 3}"><c:out value="${itemAuthor.ifacNameEng}" /></c:when>
											<c:otherwise><c:out value="${itemAuthor.ifacName}" /></c:otherwise>
										</c:choose>
									</c:if>	
									</c:forEach>
										<%-- <c:if test="${item.tdatAuthorCd eq itemAuthor.ifacSeq}"><c:out value="${itemAuthor.ifacName}"/> | <c:out value="${itemAuthor.ifacNameEng}"/></c:if>	 --%>									
								</td>
								<c:set var="listPublisher" value="${PublisherServiceImpl.selelctListCachedPublisher('24')}"/>
								<td>
									<c:forEach items="${listPublisher}" var="itemPublisher" varStatus="statusPublisher">
										<c:if test="${item.tditPublisherCd eq itemPublisher.ifpcSeq}"><c:out value="${itemPublisher.ifpcName}"/></c:if>	
									</c:forEach>
								</td>
								<td><c:out value="${item.tditPublishingDate}"/></td>
								<td><fmt:formatNumber value="${item.tditPrice}"/></td>
								<td>
									<c:choose>
										<c:when test="${item.tditDelNy eq 0}">X</c:when>
										<c:otherwise>O</c:otherwise>
									</c:choose>
								</td>
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
              			  <li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.startPage - 1}'/>);">Previous</a></li>
					</c:if>
					 <c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
					                <li class="page-item active"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:when>
							<c:otherwise>             
					                <li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>  
					<c:if test="${vo.endPage ne vo.totalPages}">                
               			 <li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.endPage + 1}'/>);">Next</a></li>
					</c:if>  
					<!-- <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li> -->
				</ul>
			</nav>
			<!-- page e -->
			<div class="clearfix mb-3">	
				<div class="float-start">
					<button type="button" class="btn btn-danger btn-sm" name="btn-updateDelete" id="btn-updateDelete"><i class="fas fa-trash"></i></button>
				</div>
				<div class="float-end">
					<button type="button" class="btn btn-primary btn-sm" id="btn-search" name="btn-search" onclick="javascript:goForm();"><i class="fas fa-plus"></i></button>
				</div>
			</div>
		</form>	
		</div>
	</div>

<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script type="text/javascript">
/* 	$("#btnSubmit").on("click",function(){
		
		if(!checkNull($("#shKbmmDelNy"), $("#shKbmmDelNy").val(), "삭제여부를 선택해주세요!")) return false;
		
  		if(!checkNull($("#shOption"), $("#shOption").val(), "검색구분을 선택해주세요!")) return false;			
		if(!checkNull($("#shValue"), $("#shValue").val(), "검색어를 입력해주세요!")) return false;		  

	}); */

 	 
 	goList = function(seq){
		//form 객체를 가져온다
		$("#thisPage").val(seq);
		$("#formBookList").submit();
		//가져온 객체를 전달한다
	}
	
	goView = function(seq){
		$("#tditSeq").val(seq);
		$("#formBookList").attr("action","/xdmin/book/bookView");
		$("#formBookList").submit();
	}

	 var checkboxSeqArray = [];

	$("#btn-updateDelete").on("click", function(){
		var answer = confirm("삭제하시겠습니까?");
		
 		if(answer){
  			$("input[name=checkboxSeq]:checked").each(function() { //체크되어있는지 확인하고 
				checkboxSeqArray.push($(this).val());				//되어있으면 checkboxSeqArray에 순차적으로 값을 넣는다
			});  
			
			$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray); 
			$("#formBookList").attr("action", "/xdmin/book/updateDeleteMulti");
			$("#formBookList").submit();
			
		}else{
			return false;
		} 
		
	}); 
	
 
	goForm = function(){
		$("#formBookList").attr("action","/xdmin/book/bookForm");
		$("#formBookList").submit();
	}
	
	$(document).ready(function(){
		$("#shDateStart").datepicker();
		$("#shDateEnd").datepicker();
	});
	
	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    changeYear: true, //연도 선택 콤보박스
	    changeMonth: true, //월 선택 콤보박스
	    yearRange: 'c-100:c+40',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});

	
	 $('#checkboxAll').click(function(){
			if($("#checkboxAll").is(':checked')) $("input[name=checkboxSeq]").prop("checked",true);
			else $("input[name=checkboxSeq]").prop("checked", false);
	});
	
	$("input[name=checkboxSeq]").click(function(){
		
		var total = $("input[name=checkboxSeq]").length;
		var checked = $("input[name=checkboxSeq]:checked").length;
		
		if(total != checked) $("checkboxAll").prop("checked", false); 
		else $("checkboxAll").prop("checked", true);
	});	 
	
	  
	$("#btn-Logout").on("click", function(){
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});	
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
