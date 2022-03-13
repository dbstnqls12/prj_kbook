<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<c:out value="${item.ifcdSeq}"/> |<c:out value="${item.ifcgSeq}"/> |<c:out value="${item.ifcdOrder}"/> | <c:out value="${item.ifcdName}"/> | <c:out value="${item.ifcdDelNy}"/><br>
<a href="codeEditForm?ifcdSeq=${item.ifcdSeq}">수정</a>
<a href="codeForm?ifcdSeq=${item.ifcdSeq}">등록</a>



