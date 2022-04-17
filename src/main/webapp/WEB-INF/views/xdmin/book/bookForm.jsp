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
			<form action="" method="post" id="bookForm" name="bookForm" enctype="multipart/form-data" class="row g-3">
			<input type="hidden" id="thisPage" name="thisPage"  value="<c:out value="${vo.thisPage}"/>">
			<input type="hidden" id="tditSeq" name="tditSeq" value="<c:out value="${vo.tditSeq}"/>">
			<input type="hidden" id="shTditDelNy" name="shTditDelNy" value="<c:out value="${vo.shTditDelNy}"/>">
			<input type="hidden" id="shOption" name="shOption"  value="<c:out value="${vo.shOption}"/>">
			<input type="hidden" id="shValue" name="shValue"  value="<c:out value="${vo.shValue}"/>">
			<input type="hidden" id="shOptionDate" name="shOptionDate"  value="<c:out value="${vo.shOptionDate}"/>">
			<input type="hidden" id="shDateStart" name="shDateStart"  value="<c:out value="${vo.shDateStart}"/>">
			<input type="hidden" id="shDateEnd" name=shDateEnd  value="<c:out value="${vo.shDateEnd}"/>">
				<div class="col-md-6">
					<label class="form-label">제목</label>
					<input type="text" class="form-control form-control-sm" id="tditTitle" name="tditTitle" value="<c:out value="${item.tditTitle}"/>" >
				</div>
				<div class="col-6 d-none d-sm-block"></div>
				<div class="col-md-6">
					<label class="form-label">소제목</label>
					<input type="text" class="form-control form-control-sm" id="tditSubTitle" name="tditSubTitle" value="<c:out value="${item.tditSubTitle}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">출판일</label>
					<input type="date" id="tditPublishingDate" class="form-control form-control-sm" name="tditPublishingDate" value="<c:out value="${item.tditPublishingDate}"/>">
				</div>
				
				
				<c:set var="listAuthor" value="${AuthorServiceImpl.selelctListCachedAuthor('15')}"/>
				<c:forEach items="${listAuthorL}" var="itemAuthor" varStatus="statusAuthor"><!-- 작가리스트 내가 여기에 집어넣을껴-->
					<c:choose>
						<c:when test="${item.tdatDefaultNy eq 1}"> <c:set var="tdatAuthorCd1" value="${item.tdatAuthorCd}"/></c:when>
						<c:when test="${item.tdatDefaultNy eq 0}"><c:set var="tdatAuthorCd2" value="${item.tdatAuthorCd}"/></c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
				</c:forEach>
				<div class="col-md-6">
					<label for="inputId" class="form-label">저자명</label>
					<input type="hidden" id="tdatDefaultNyArray0" name="tdatDefaultNyArray" value="1">
					<input type="hidden" id="tdatDelNyArray0" name="tdatDelNyArray" value="0">
					<select class="form-select form-select-sm mb-1" id="tdatAuthorCdArray0" name="tdatAuthorCdArray" >
					<option value="">::저자선택::</option>
						<c:forEach items="${listAuthor}" var="item2" varStatus="status">
							<option value="<c:out value="${item2.ifacSeq}"/>"><c:if test="${tdatAuthorCd1 eq item2.ifacSeq}">selected</c:if><c:out value="${item2.ifacName}"/></option>	
						</c:forEach>
					</select>	
					
					<input type="hidden" id="tdatDefaultNyArray1" name="tdatDefaultNyArray" value="0">
					<input type="hidden" id="tdatDelNyArray1" name="tdatDelNyArray" value="0">
					<select class="form-select form-select-sm mb-1" id="tdatAuthorCdArray1" name="tdatAuthorCdArray" >
					<option value="">::저자선택::</option>
						<c:forEach items="${listAuthor}" var="item2" varStatus="status">
							<option value="<c:out value="${item2.ifacSeq}"/>"><c:if test="${tdatAuthorCd1 eq item2.ifacSeq}">selected</c:if><c:out value="${item2.ifacName}"/></option>	
						</c:forEach>
					</select>	
				</div>
				
				<div class="col-md-6">
					<label class="col-form-label pt-0">카테고리</label>
					<c:set var="listCateDepth1" value="${CateServiceImpl.selelctListCachedCate('1')}"/>
					<c:set var="listCateDepth2" value="${CateServiceImpl.selelctListCachedCate('2')}"/>
					<select class="form-select form-select-sm mb-1" id="tditItemCate" name="tditItemCate" >
						<option value="">::카테고리1::</option>
							<c:forEach items="${listCateDepth1}" var="item1" varStatus="status1">
						<option value="<c:out value="${item1.ifctSeq}"/>" <c:if test="${item.tditItemCate eq item1.ifctSeq}">selected</c:if> ><c:out value="${item1.ifctName}"/></option>	
							</c:forEach>	
					</select>
					<select class="form-select form-select-sm" id="tditItemCate2" name="tditItemCate2" >
						<option value="">::카테고리2::</option>
							<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
						<%-- 	<c:if test="${item1.ifctSeq eq item2.ifctParents}">  --%>
								<option value="<c:out value="${item2.ifctSeq}"/>" <c:if test="${item.tditItemCate2 eq item2.ifctSeq && item.tditItemCate eq item2.ifctParents}">selected</c:if> ><c:out value="${item2.ifctName}"/></option>		
						<%-- 	</c:if> --%>
							</c:forEach>	
					</select>
				</div>
				<div class="col-md-6">
					<label class="form-label">출판사</label>
					<c:set var="listPublisher" value="${PublisherServiceImpl.selelctListCachedPublisher('24')}"/>
					<select class="form-select form-select-sm mb-1" id="tditPublisherCd" name="tditPublisherCd" >
					<option value="">::출판사 선택::</option> 
						<c:forEach items="${listPublisher}" var="itemPublisher" varStatus="statusPublisher">
							<option value="<c:out value="${itemPublisher.ifpcSeq}"/>"><c:if test="${item.tditPublisherCd eq itemPublisher.ifpcSeq}">selected</c:if><c:out value="${itemPublisher.ifpcName}"/></option>	
						</c:forEach>
					</select>
				</div>
				<div class="col-md-6">
					<label class="form-label">정가</label>
					<input type="text" id="tditPrice" class="form-control form-control-sm" name="tditPrice" value="<fmt:formatNumber value="${item.tditPrice}"/>">
				</div>
				<div class="col-md-6">
				<c:set var="listCodeDiscount" value="${CodeServiceImpl.selectListCachedCode('13')}"/>
					<label class="form-label">할인울</label>
					<select class="form-select form-select-sm mb-1" id="tditDiscountCd" name="tditDiscountCd" >
						<option value="">::할인율::</option>
							<c:forEach items="${listCodeDiscount}" var="itemDiscount" varStatus="statusDiscount">
						<option value="<c:out value="${itemDiscount.ifcdOrder}"/>" <c:if test="${item.tditDiscountCd eq itemDiscount.ifcdOrder}">selected</c:if> ><c:out value="${itemDiscount.ifcdName}"/></option>	
							</c:forEach>	
					</select>
					<input type="text" id="tditDiscountRate" class="form-control form-control-sm" name="tditDiscountRate" placeholder="기타일 경우 할인율입력(소수점형태로 입력) ex_54%할인 -> 0.54" value="<c:out value="${item.tditDiscountRate}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">ISBN</label>
					<input type="text" class="form-control form-control-sm" id="tditIsbn" name="tditIsbn" value="<c:out value="${item.tditIsbn}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">쪽수</label>
					<input type="text" class="form-control form-control-sm" id="tditPage" name="tditPage" value="<c:out value="${item.tditPage}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">크기</label>
					<input type="text" class="form-control form-control-sm" id="tditSize" name="tditSize" value="<c:out value="${item.tditSize}"/>">
				</div>
				<div class="col-md-6">
					<label class="form-label">판매상태</label>
					<c:set var="listCodeState" value="${CodeServiceImpl.selectListCachedCode('14')}"/>
					<select class="form-select form-select-sm" id="tditStateCd" name="tditStateCd">
						<option selected>::판매상태::</option>
						<c:forEach items="${listCodeState}" var="itemState" varStatus="statusState">
							<option value="<c:out value="${itemState.ifcdOrder}"/>" <c:if test="${item.tditStateCd eq itemState.ifcdOrder}">selected</c:if> ><c:out value="${itemState.ifcdName}"/></option>	
						</c:forEach>	
					</select>
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
						<input type="text" class="form-control form-control-sm mb-1" id="tdkwKeywordArray0" name="tdkwKeywordArray" value="<c:out value="${tdkwKeyWord1}"/>">

						<input type="hidden" id="tdkwDefaultNyArray1" name="tdkwDefaultNyArray" value="0">
						<input type="hidden" id="tdkwOrderArray1" name="tdkwOrderArray" value="2">
						<input type="text" class="form-control form-control-sm mb-1" id="tdkwKeywordArray0" name="tdkwKeywordArray" value="<c:out value="${tdkwKeyWord2}"/>">

						<input type="hidden" id="tdkwDefaultNyArray2" name="tdkwDefaultNyArray" value="0">
						<input type="hidden" id="tdkwOrderArray2" name="tdkwOrderArray" value="3">
						<input type="text" class="form-control form-control-sm mb-1" id="tdkwKeywordArray0" name="tdkwKeywordArray" value="<c:out value="${tdkwKeyWord3}"/>">
						
						<input type="hidden" id="tdkwDefaultNyArray3" name="tdkwDefaultNyArray" value="0">
						<input type="hidden" id="tdkwOrderArray3" name="tdkwOrderArray" value="4">
						<input type="text" class="form-control form-control-sm mb-1" id="tdkwKeywordArray0" name="tdkwKeywordArray" value="<c:out value="${tdkwKeyWord4}"/>">

						<input type="hidden" id="tdkwDefaultNyArray4" name="tdkwDefaultNyArray" value="0">
						<input type="hidden" id="tdkwOrderArray4" name="tdkwOrderArray" value="5">
						<input type="text" class="form-control form-control-sm mb-1" id="tdkwKeywordArray0" name="tdkwKeywordArray" value="<c:out value="${tdkwKeyWord5}"/>">
						<div>
							<button class="btn btn-sm-danger" type="button" onclick="MaterialCreate()" id="" name="">추가</button>
						</div>
				</div>
				
				<div class="col-md-6">
					<label for="file0" class="form-label input-file-button">책 대표이미지(image)</label>
					<img style="width: 100px;" id="preview-image0" src="">
					<input type="file" class="form-control form-control-sm mb-1" id="file0" name="file0" multiple onChange="upload(0,2);"style="display: none;" >
					<div class="addScroll">
						<ul id="ulFile0" class="list-group" ></ul>
					</div>
				</div>
				
				<div class="col-md-6">
					<label for="file1" class="form-label input-file-button">책 설명(image)</label>
					<input type="file" class="form-control form-control-sm mb-1" id="file1" name="file1" multiple onChange="upload(1,2);"style="display: none;" >
					<div class="addScroll">
						<ul id="ulFile1" class="list-group" ></ul>
					</div>
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
				<div class="float-start"><button type="button" class="btn btn-danger btn-sm float-start"><i class="fas fa-trash"></i></button></div>
				<div class="float-end">
				<button type="button" class="btn btn-secondary btn-sm" id="btn-list" name="btn-list" onclick="javascript:goList();"><i class="fa-solid fa-list"></i></button>
				<button type="submit" class="btn btn-primary btn-sm" id="btn-add" name="btn-add" ><i class="fas fa-plus"></i></button>
				</div>
			</div>

		</div>
		</div>
	</div>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/js/commonXdmin.js"></script>
<script src="/resources/common/js/common.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6ec915718ae8d23e16c65e0f6d22a62e&libraries=services"></script>

<script>

	upload = function(seq,div){
		
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
	}
	
	delLi = function(seq, index){
		$("#li_"+seq+"_"+index).remove();
	}

	function readImage(input) {
	    // 인풋 태그에 파일이 있는 경우
	    if(input.files && input.files[0]) {
	        // 이미지 파일인지 검사 (생략)
	        // FileReader 인스턴스 생성
	        const reader = new FileReader()
	        // 이미지가 로드가 된 경우
	        reader.onload = e => {
	            const previewImage = document.getElementById("preview-image0")
	            previewImage.src = e.target.result
	        }
	        // reader가 이미지 읽도록 하기
	        reader.readAsDataURL(input.files[0])
	    }
	}
	// input file에 change 이벤트 부여
	const inputImage = document.getElementById("file0")
	inputImage.addEventListener("change", e => {
	    readImage(e.target)
	})

	goList = function(){
		$("#bookForm").attr("action", "/xdmin/book/bookList");
		$("#bookForm").submit();
	};

	$("#btn-add").on("click", function(){
		
		$("#bookForm").attr("action", "/xdmin/book/bookInst");
		$("#bookForm").submit();

		
	});


	
	
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