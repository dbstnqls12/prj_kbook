<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form id="codeView" name="codeView" method="post">
	<input type="hidden" id="thisPage" name="thisPage"  value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" id="ifcgSeq" name="ifcgSeq" value="<c:out value="${vo.ifcgSeq}"/>">
	<input type="hidden" id="shIfcgDelNy" name="shIfcgDelNy" value="<c:out value="${vo.shIfcgDelNy}"/>">
	<input type="hidden" id="shIfcgName" name="shIfcgName" value="<c:out value="${vo.shIfcgName}"/>">	
	<input type="hidden" id="shOption" name="shOption"  value="<c:out value="${vo.shOption}"/>">
	<input type="hidden" id="shValue" name="shValue"  value="<c:out value="${vo.shValue}"/>">
</form>
	<c:out value="${item.ifcgSeq}"/> | <c:out value="${item.ifcgName}"/> | <c:out value="${item.ifcgDelNy}"/><br>
	<a href="javascript:goList();">목록</a>
	<a href="javascript:goEdit();">수정</a>
	<a href="javascript:goDelete();" id="btnNele">삭제</a>
<%-- 	<a href="codeGroupList?thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue }"/>">목록</a>
	<a href="codeGroupForm2?ifcgSeq=<c:out value="${item.ifcgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue }"/>">수정</a>
	<a href="codeGroupDele?ifcgSeq=<c:out value="${item.ifcgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue }"/>" id="btnDelete">삭제(진짜)</a>
	<a href="codeGroupNele?ifcgSeq=<c:out value="${item.ifcgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue }"/>" id="btnNele">삭제(가짜)</a> 

--%>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	
	$("#btnDelete").on("click", function(){
		var answer = confirm("정말 삭제하시겠습니까?");
		
		if(answer){
			// /infra/code/codeView
		}else{
			return false;
		}
		
	});
	
	$("#btnNele").on("click", function(){
		var answer = confirm("정말 삭제하시겠습니까?");
		
		if(answer){
			// /infra/code/codeView
		}else{
			return false;
		}
		
	});

	goList = function(){
		$("#codeView").attr("action", "/code/codeGroupList");
		$("#codeView").submit();
	};
	
	goEdit = function(){
		$("#codeView").attr("action", "/code/codeGroupForm2");
		$("#codeView").submit();
	};

	goSave = function(){
		$("#codeView").attr("action", "/code/codeGroupNele");
		$("#codeView").submit();
	};
	
	
</script>