<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<jsp:useBean id="CateServiceImpl" class="com.kbook.infra.modules.cate.CateServiceImpl"/>
<jsp:useBean id="AuthorServiceImpl" class="com.kbook.infra.modules.author.AuthorServiceImpl"/>
<jsp:useBean id="CodeServiceImpl" class="com.kbook.infra.modules.code.CodeServiceImpl"/>
<jsp:useBean id="PublisherServiceImpl" class="com.kbook.infra.modules.publisher.PublisherServiceImpl"/>

<% pageContext.setAttribute("cr", "\r"); %>
<% pageContext.setAttribute("lf", "\\n"); %>
<% pageContext.setAttribute("crlf", "\r\\n");  %>

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

<link href="/resources/xdmin/css/sidebars.css" rel="stylesheet" type="text/css">
<link href="/resources/xdmin/css/footers.css" rel="stylesheet" type="text/css">
<link href="/resources/xdmin/css/bookView.css" rel="stylesheet" type="text/css">
<title>Kyobo_bookView</title>
</head>
<body>
<%@ include file="/WEB-INF/views/xdmin/include/xdmin_header.jsp" %><!-- xdmin_header -->
<%@ include file="/WEB-INF/views/xdmin/include/offcanvas.jsp" %><!-- offcanvas -->
<%@ include file="/WEB-INF/views/xdmin/include/navbar.jsp" %><!-- navbar -->

<!-- 본문 s-->
<div class="container">
	<div class="row">
		<div class="mb-3"><h4>도서정보</h4></div>
			<div class="container ">
			<form action="" method="post" id="bookView" name="bookView" enctype="multipart/form-data" class="row g-3">
			<input type="hidden" id="thisPage" name="thisPage"  value="<c:out value="${vo.thisPage}"/>">
			<input type="hidden" id="tditSeq" name="tditSeq" value="<c:out value="${vo.tditSeq}"/>">
			<input type="hidden" id="shTditDelNy" name="shTditDelNy" value="<c:out value="${vo.shTditDelNy}"/>">
			<input type="hidden" id="shOption" name="shOption"  value="<c:out value="${vo.shOption}"/>">
			<input type="hidden" id="shValue" name="shValue"  value="<c:out value="${vo.shValue}"/>">
			<input type="hidden" id="shOptionDate" name="shOptionDate"  value="<c:out value="${vo.shOptionDate}"/>">
			<input type="hidden" id="shDateStart" name="shDateStart"  value="<c:out value="${vo.shDateStart}"/>">
			<input type="hidden" id="shDateEnd" name=shDateEnd  value="<c:out value="${vo.shDateEnd}"/>">
<%-- 				<div class="col-md-6">
					<label class="form-label">제목</label>
					<input type="text" class="form-control form-control-sm" id="tditTitle" name="tditTitle" value="<c:out value="${item.tditTitle}"/>" >
				</div> --%>
				<div class="col-md-6">
					<label class="form-label d-block">제목</label>
					<input type="text" class="form-control form-control-sm" id="tditTitle" name="tditTitle" value="<c:out value="${item.tditTitle}"/>" >
				</div>
				<div class="col-6 d-none d-sm-block"></div>
				<div class="col-md-6">
					<label class="form-label">소제목</label>
					<input type="text" class="form-control form-control-sm" id="tditSubTitle" name="tditSubTitle" value="<c:out value="${item.tditSubTitle}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">출판일</label>
					<input type="date" class="form-control form-control-sm" id="tditPublishingDate" name="tditPublishingDate" value="<c:out value="${item.tditPublishingDate}"/>">
				</div>
				
 				<c:set var="listAuthor" value="${AuthorServiceImpl.selelctListCachedAuthor('15')}"/>
				<div class="col-md-6">
					<label for="inputId" class="form-label">저자명</label>
<%-- 					<c:forEach items="${listAuthorL}" var="itemAuthor" varStatus="statusAuthor"><!-- 작가리스트(배열에 들어가 있어야함) -->
						<c:forEach items="${listAuthor}" var="item2" varStatus="status">
							<c:if test="${itemAuthor.tdatAuthorCd eq item2.ifacSeq}"><input type="text" id="tdatAuthorCd" name="tdatAuthorCd" 
							value="<c:out value="${item2.ifacName}" />"></c:if>
						</c:forEach>
					</c:forEach> --%>
					<c:set var="listAuthor" value="${AuthorServiceImpl.selelctListCachedAuthor('15')}"/>
					<input type="text" class="form-control form-control-sm" id="tdatAuthorCd" name="tdatAuthorCd" value="<c:forEach items="${listAuthorL}" var="itemAuthor" varStatus="statusAuthor"><c:forEach items="${listAuthor}" var="item2" varStatus="status"><c:if test="${itemAuthor.tdatAuthorCd eq item2.ifacSeq}"><c:out value="${item2.ifacName} " /></c:if></c:forEach></c:forEach>">	
				</div>
				<div class="col-md-6">
					<label class="form-label">ISBN</label>
					<input type="text" class="form-control form-control-sm" id="tditIsbn" name="tditIsbn" value="<c:out value="${item.tditIsbn})"/>">
				</div>

				<div class="col-md-6">
					<label class="form-label">출판사</label>
					<c:set var="listPublisher" value="${PublisherServiceImpl.selelctListCachedPublisher('24')}"/>
					<c:forEach items="${listPublisher}" var="itemPublisher" varStatus="statusPublisher">
						<c:if test="${item.tditPublisherCd eq itemPublisher.ifpcSeq}"><input type="text" class="form-control form-control-sm" id="tditPublisherCd" name="tditPublisherCd" value="<c:out value="${itemPublisher.ifpcName}"/>"></c:if>	
					</c:forEach>
					<%-- <input type="text" class="form-control form-control-sm" id="tditPublisherCd" name="tditPublisherCd" value="<c:out value="${item.tditPublisherCd}"/>"> --%>
					<!-- <span class="badge bg-light text-dark">출판사 찾기</span> -->
				</div>
				<div class="col-md-6">
					<label class="form-label">정가</label>
					<input type="text" id="tditPrice" class="form-control form-control-sm" name="tditPrice" value="<c:out value="${item.tditPrice}"/>">
				</div>
				<div class="col-md-6">
				<c:set var="listCodeDiscount" value="${CodeServiceImpl.selectListCachedCode('13')}"/>
					<label class="form-label">할인율</label>
					<select class="form-select form-select-sm mb-1" id="tditDiscountCd" name="tditDiscountCd" >
						<option selected>::할인율::</option>
							<c:forEach items="${listCodeDiscount}" var="itemDiscount" varStatus="statusDiscount">
						<option value="<c:out value="${item.tditDiscountCd}"/>" <c:if test="${item.tditDiscountCd eq itemDiscount.ifcdOrder}">selected</c:if> ><c:out value="${itemDiscount.ifcdName}"/></option>	
							</c:forEach>	
					</select>
					<input type="text" id="tditPrice" class="form-control form-control-sm" name="tditPrice" placeholder="기타일 경우 할인율입력(소수점형태로 입력) ex_54%할인 -> 0.54" value="<c:out value="${item.tditDiscountRate}"/>">
				</div>
				<div class="col-md-6">
					<label class="col-form-label pt-0">카테고리</label>
					<c:set var="listCateDepth1" value="${CateServiceImpl.selelctListCachedCate('1')}"/>
					<c:set var="listCateDepth2" value="${CateServiceImpl.selelctListCachedCate('2')}"/>
					<select class="form-select form-select-sm mb-1" id="tditItemCate" name="tditItemCate" >
						<option selected>::카테고리1::</option>
							<c:forEach items="${listCateDepth1}" var="item1" varStatus="status1">
						<option value="<c:out value="${item.tditItemCate}"/>" <c:if test="${item.tditItemCate eq item1.ifctSeq}">selected</c:if> ><c:out value="${item1.ifctName}"/></option>	
							</c:forEach>	
					</select>
					<select class="form-select form-select-sm" id="tditItemCate2" name="tditItemCate2" >
						<option selected>::카테고리2::</option>
							<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
							<c:if test="${item.tditItemCate eq item2.ifctParents}"> 
								<option value="<c:out value="${item.tditItemCate2}"/>" <c:if test="${item.tditItemCate2 eq item2.ifctSeq && item.tditItemCate eq item2.ifctParents}">selected</c:if> ><c:out value="${item2.ifctName}"/></option>		
							</c:if>
							</c:forEach>	
					</select>
				</div>
				<div class="col-md-6">
					<label class="form-label">쪽수</label>
					<input type="text" class="form-control form-control-sm" id="tditPage" name="tditPage" value="<c:out value="${item.tditPage}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">크기</label>
					<input type="text" class="form-control form-control-sm" id="tditSize" name="tditSize" value="<c:out value="${item.tditSize}"/>">
				</div>

					<c:forEach items="${listKeyword}" var="itemKeyword" varStatus="statusKeyword">
					<c:choose>
						<c:when test="${itemKeyword.tdkwOrder eq 1}"> <c:set var="tdkwKeyWord1" value="${itemKeyword.tdkwKeyword}"/></c:when>
						<c:when test="${itemKeyword.tdkwOrder eq 2}"> <c:set var="tdkwKeyWord2" value="${itemKeyword.tdkwKeyword}"/></c:when>
						<c:when test="${itemKeyword.tdkwOrder eq 3}"> <c:set var="tdkwKeyWord3" value="${itemKeyword.tdkwKeyword}"/></c:when>
						<c:when test="${itemKeyword.tdkwOrder eq 4}"> <c:set var="tdkwKeyWord4" value="${itemKeyword.tdkwKeyword}"/></c:when>
						<c:when test="${itemKeyword.tdkwOrder eq 5}"> <c:set var="tdkwKeyWord5" value="${itemKeyword.tdkwKeyword}"/></c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
				</c:forEach>
				
				<div class="col-md-6">
					<label class="form-label">키워드</label>
						<input type="hidden" id="tdkwDefaultNyArray0" name="tdkwDefaultNyArray" value="1">
						<input type="hidden" id="tdkwOrderArray0" name="tdkwOrderArray" value="1">
						<input type="text" class="form-control form-control-sm mb-1" id="tdkwKeywordArray0" name="tdkwKeywordArray" value="<c:out value="${tdkwKeyWord1}"/>  <c:out value="${tdkwKeyWord2}"/>  <c:out value="${tdkwKeyWord3}"/>  <c:out value="${tdkwKeyWord4}"/>  <c:out value="${tdkwKeyWord5}"/>">

				</div>
				<div class="col-md-6">
					<label class="form-label">판매상태</label>
					<c:set var="listCodeState" value="${CodeServiceImpl.selectListCachedCode('14')}"/>
					<select class="form-select form-select-sm" id="tditStateCd" name="tditStateCd">
						<option selected>::판매상태::</option>
						<c:forEach items="${listCodeState}" var="itemState" varStatus="statusState">
							<option value="<c:out value="${item.tditStateCd}"/>" <c:if test="${item.tditStateCd eq itemState.ifcdOrder}">selected</c:if> ><c:out value="${itemState.ifcdName}"/></option>	
						</c:forEach>	
					</select>
				</div>	
				<div class="col-md-6">
					<label for="file0" class="form-label input-file-button d-block">책 대표이미지(image)</label>
					<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">
						<c:if test="${itemUploaded.type eq 0}"><img id="mainimage" src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>" style="width: 100px;"></c:if>
					</c:forEach>
				</div>
				
				<div class="col-md-6">
					<label for="file1" class="form-label input-file-button d-block">책 설명(image)</label>
					<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">
						<c:if test="${itemUploaded.type eq 1}"><img id="mainimage" src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>" style="width: 100px;"></c:if>
					</c:forEach>
				</div>
				
				<div class="col-md-6">
					<label class="col-form-label">책소개(text)</label>
		            <textarea rows="3" cols="80" id="tditBookDesc" name="tditBookDesc"><c:out value="${item.tditBookDesc}" escapeXml="false"/></textarea>
		        </div>
				
				<div class="col-md-6">
					<label class="form-label">목차</label>
		            <textarea rows="3" cols="80" id="tditTableOfContents" name="tditTableOfContents"><c:out value="${item.tditTableOfContents}" escapeXml="false"/></textarea>
				</div>
				<div class="col-md-6">
					<label class="form-label">책속으로(text)</label>
		            <textarea rows="3" cols="80" id="tditBookDesc2" name="tditBookDesc2"><c:out value="${item.tditBookDesc2}" escapeXml="false"/></textarea>
				</div>

				<div class="col-6 d-none d-sm-block"></div>

		 		
				<div class="col-md-3">
					<label class="form-label">최종수정자</label>
					<input type="text" class="form-control form-control-sm" id="inputEditP" placeholder="윤수빈" disabled>
				</div>
				<div class="col-md-3">
					<label class="form-label">최종수정일</label>
					<input type="text" class="form-control form-control-sm" id="modDateTime" name="modDateTime" value="<c:out value="${item.modDateTime}"/>" disabled>
				</div>
				<div class="col-md-3">
					<label class="form-label">최초등록자</label>
					<input type="text" class="form-control form-control-sm" id="inputRegP" placeholder="윤수빈" disabled>
				</div>
				<div class="col-md-3">
					<label class="form-label">최초등록일</label>
					<input type="text" class="form-control form-control-sm" id="regDateTime" name="regDateTime" value="<c:out value="${item.regDateTime}"/>" disabled>
				</div>
			</form>
			<div class="col-mb-3 mt-3">	
				<div class="float-start">
					<button type="button" class="btn btn-danger btn-sm float-start" id="btn-delete" name="btn-delete"><i class="fas fa-trash"></i></button>
				</div>
				<div class="float-end">
					<button type="button" class="btn btn-secondary btn-sm" id="btn-list" name="btn-list" onclick="javascript:goList();"><i class="fa-solid fa-list"></i></button>
					<button type="button" class="btn btn-primary btn-sm" id="btn-edit" name="btn-edit" onclick="javascript:goEditForm();"><i class="fa-solid fa-pen-to-square"></i></button>
				</div>
			</div>
		</div>
		</div>
	</div>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/js/commonXdmin.js"></script>
<script src="/resources/common/js/common.js"></script>
<!-- <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6ec915718ae8d23e16c65e0f6d22a62e&libraries=services"></script> -->

<script>

/* 	upload = function(seq,div){
		
		$("#ulFile" + seq).children().remove();
		
		var fileCount = $("input[type=file]")[seq].files.length;
		
		if(checkUploadedTotalFileNumber(fileCount, seq) == false) {return false;}
		
		var totalFileSize;
		for(var i = 0; i < fileCount; i++){
			if(div==1){
				if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else if(div==2){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else {
				return false;
			}
			
			if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			totalFileSize += $("input[type=file]")[seq].files[i].size;
		}
		if(checkUploadedTotalFileSize(totalFileSize, seq) == false) {return false;}
		
		for(var i=0; i<fileCount; i++){
			addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
		}
	}

	addUploadLi = function(seq,index,name){
		
		var ul_list = $("#ulFile0");
		
		li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-item-center">';
		li = li + name;
		li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li = li + '</li>';
		
		$("#ulFile"+seq).append(li);
	} */
	
	delLi = function(seq, index){
		$("#li_"+seq+"_"+index).remove();
	}

	$("#btn-delete").on("click", function(){
		var answer = confirm("삭제하시겠습니까?");
		
		if(answer){
			$("#bookView").attr("action", "/xdmin/book/updateDelete");
			$("#bookView").submit();
		}else{
			return false;
		}
		
	});

		goList = function(){
			$("#bookView").attr("action", "/xdmin/book/bookList");
			$("#bookView").submit();
		};
		
		goEditForm = function(){
			$("#bookView").attr("action", "/xdmin/book/bookEditForm");
			$("#bookView").submit();
		};
	
</script>

	
	


<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

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