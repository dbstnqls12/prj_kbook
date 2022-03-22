<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method="get" id="" action ="/code/codeGroupInst">
	<input type="text" name="ifcgName" id="ifcgName" value="<c:out value="${item.ifcgName}"/>" placeholder="코드그룹">
<%-- 	<input type="text" name="ifcdName" id="ifcdName" value="<c:out value="${item.ifcdName}"/>" placeholder="코드"> --%>
	<input type="submit" name="btnSubmit" id="btnSubmit" value="제출">
</form>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>

<script type="text/javascript">
	$("#btnSubmit").on("click",function(){
		
 		if(!checkNull($("#ifcgName"), $("#ifcgName").val(), "코드그룹을 입력하세요!")) return false;
/* 		if(!checkNull($("#ifcdName"), $("#ifcdName").val(), "코드를 입력하세요!")) return false;
 */		 
		
	});
</script>