<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<form method="post" action ="/infra/member/memberUpdt">
	
	<label>kbmmName</label>
	<input type="text" name="kbmmName" value= <c:out value="${rt.kbmmName}"/>>

	<label>kbmmId</label>
	<input type="text" name="kbmmId" value= <c:out value="${rt.kbmmId}"/>>	

	<label>kbmmPassword</label>
	<input type="text" name="kbmmPassword" value= <c:out value="${rt.kbmmPassword}"/>>	
	
	<input type="hidden" name="kbmmSeq" value=<c:out value="${rt.kbmmSeq}"/>>
	<input type="submit" value="제출">
</form>