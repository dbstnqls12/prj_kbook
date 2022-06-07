<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

	<table>
	<caption>회원정보</caption>
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>아이디</td>
		</tr>
		<c:forEach items="${list}" var="item" varStatus="status">
			<tr>
				<td><c:out value="${item.kbmmSeq}"/></td>		
				<td><c:out value="${item.kbmmName}"/></td>		
				<td><c:out value="${item.kbmmId}"/></td>		
			</tr>
		</c:forEach>
	</table>
