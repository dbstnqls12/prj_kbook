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
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
</head>
<body>
<c:set var="listCateDepth1" value="${CateServiceImpl.selelctListCachedCate('1')}"/>
<c:set var="listCateDepth2" value="${CateServiceImpl.selelctListCachedCate('2')}"/>


<div class="col-md-2 d-none d-md-block">
			<div class="px-0 mt-2">
				<ul class="list-unstyled ps-0">
					<li class="mb-1">
						<button class="btn align-items-center rounded" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1" aria-expanded="false">국내도서</button>
						<div class="collapse" id="collapse1">
							<ul class="list-unstyled fw-normal pb-1 small">
								<li>
								<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
										<c:if test="${item2.ifctParents eq 2}">
											<li><a class="dropdown-item"><c:out value="${item2.ifctName}" /></a></li>
										</c:if>
								</c:forEach>	
								</li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2" aria-expanded="false">외국도서</button>
						<div class="collapse" id="collapse2">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li>
								<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
										<c:if test="${item2.ifctParents eq 3}">
											<li><a class="dropdown-item"><c:out value="${item2.ifctName}" /></a></li>
										</c:if>
								</c:forEach>	
								</li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse3" aria-expanded="false">ebook</button>
						<div class="collapse" id="collapse3">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li>
								<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
										<c:if test="${item2.ifctParents eq 4}">
											<li><a class="dropdown-item"><c:out value="${item2.ifctName}" /></a></li>
										</c:if>
								</c:forEach>	
								</li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="false">장르/코믹스</button>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse6" aria-expanded="false">기프트</button>
						<div class="collapse" id="collapse6">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li>
								<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
										<c:if test="${item2.ifctParents eq 7}">
											<li><a class="dropdown-item"><c:out value="${item2.ifctName}" /></a></li>
										</c:if>
								</c:forEach>	
								</li>
							</ul>
						</div>
					</li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse7" aria-expanded="false">음반/DVD</button>
						<div class="collapse" id="collapse7">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li>
								<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
										<c:if test="${item2.ifctParents eq 5}">
											<li><a class="dropdown-item"><c:out value="${item2.ifctName}" /></a></li>
										</c:if>
								</c:forEach>	
								</li>
							</ul>
						</div>
					</li>
					<li class="border-top my-3"></li>
					<li class="mb-1">
						<button class="btn btn-toggle align-items-center rounded collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse8" aria-expanded="false">중고장터</button>
						<div class="collapse" id="#collapse8">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
								<li>
								<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
										<c:if test="${item2.ifctParents eq 8}">
											<li><a class="dropdown-item"><c:out value="${item2.ifctName}" /></a></li>
										</c:if>
								</c:forEach>	
								</li>
							</ul>
						</div>
					</li>
					
				</ul>
			</div>
		</div>
