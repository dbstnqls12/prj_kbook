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


</head>
<body>
<input type="text" class="form-control form-control-sm" id="kbmmName" name="kbmmName" value="<c:out value="${item.kbmmSeq}"/>">
<input type="text" class="form-control form-control-sm" id="kbmmName" name="kbmmName" value="<c:out value="${item.kbmmName}"/>">
<input type="text" class="form-control form-control-sm" id="regDateTime" name="regDateTime" value="<fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>" disabled>
<%-- <br><c:out value="${item.kbmmSeq}"/>
<br><c:out value="<fmt:formatDate value="${item.regDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"/> --%>
</body>
</html>