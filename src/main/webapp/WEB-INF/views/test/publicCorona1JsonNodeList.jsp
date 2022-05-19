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
<br> node: <c:out value="${node}"/>
<br> node.header: <c:out value="${node.get('header')}"/>
<br> node.header.resultCode: <c:out value="${node.get('header').get('resultCode')}"/>
<br> node.header.resultCode: <c:out value="${fn:replace(node.get('header').get('resultCode'),'&quot;','') }"/>
<br> resultCode: <c:out value="${resultCode}"/>
<br> node.header.resultMsg: <c:out value="${fn:replace(node.get('header').get('resultMsg'),'&quot;','') }"/>

<br> node.body.pageNo: <c:out value="${fn:replace(node.get('body').get('pageNo'),'&quot;','') }"/>

<br> node.body.items: <c:out value="${node.get('body').get('items') }"/>
<br> node.body.items: <c:out value="${node.get('body').get('items').get('1').get('MM') }"/>
<br>


</body>
</html>