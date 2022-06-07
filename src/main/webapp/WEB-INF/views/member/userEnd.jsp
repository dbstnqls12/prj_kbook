<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CateServiceImpl" class="com.kbook.infra.modules.cate.CateServiceImpl"/>
<jsp:useBean id="AuthorServiceImpl" class="com.kbook.infra.modules.author.AuthorServiceImpl"/>
<jsp:useBean id="CodeServiceImpl" class="com.kbook.infra.modules.code.CodeServiceImpl"/>
<jsp:useBean id="PublisherServiceImpl" class="com.kbook.infra.modules.publisher.PublisherServiceImpl"/>

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
<link  rel="stylesheet" href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css">

<link href="/resources/user/css/bookPurchase.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="https://ifh.cc/g/74QNWX.png" type="image/x-icon" />
<title id="ctl00_headerTitle">책이 수북수북</title>

<style type="text/css">
	#floatMenu {
		position: absolute;
		right: 200px;
		width: 330px;
		border: 2px solid #c8c8c8; 
		border-radius: 15px;
		padding-top: 10px;
		padding-bottom: 20px;
	}
	.content{
		margin: 20px;
	}
	.discount
	,.finalSum
	,.savingPoint{
		margin-left: 20px;
	}
	#pInfo{
		font-size: 16px;
	}
	#pDis{
		font-size: 17px;
		font-weight: bold;
	}
	#pFin{
		font-size: 19px;
		font-weight: bold;
	}
	#btn-purchase,
	#btn-purchase:hover,
	#btn-purchase:active,
	#btn-purchase:visited,
	#btn-purchase:focus{
		border: 1px #7B8ED1 solid;
		background: #7B8ED1;
		color: white;
		width: 75%;
		height: 50px;
		text-align: center;
		
	}
</style>
</head>
<body>
			
<%@ include file="/WEB-INF/views/member/include/main_header_member.jsp" %><!--  header_member -->
<%@ include file="/WEB-INF/views/member/include/main_navbar.jsp" %><!-- navbar -->
	


<!-- 본문 s-->
<!-- 본문 s-->
<div class="container">


<table class="table" style="width: 1000px; margin-left: auto; margin-right: auto; margin-top: 50px;">
			<thead class="table" style=" background-color: #5E6B9F; color: white;">
				<tr>
					<th colspan="3" style=" font-size: 20px; width: 980px; text-align: center; vertical-align: center; ">구매 완료</th>
				</tr>
			</thead>
			<tbody style="font-size: 16px; background-color: #EBF5FF; border: 1px solid #EBF5FF;">
				<tr>
					<td colspan="3" style="height: 150px; font-size: 35px; text-align: center; vertical-align: middle;">
						구매가 완료 되었습니다.
					</td>
				</tr>
				<tr>
					<td rowspan="7" width="40%">
						<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">
							<c:if test="${itemUploaded.defaultNy eq 1}">
								<img src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>" style="height: 250px; margin-left: 150px; "/>
							</c:if>
						</c:forEach>					
					</td>
					<td style="text-align: middle; padding: 0; vertical-align: middle;">구매번호</td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b>ABCD12345</b></td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;">도서명</td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b><c:out value="${item.tditTitle}"/></b></td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;">수량</td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b>${rtCount} 권</b></td>
				</tr>
				<tr>
					<c:set var="ymd" value="<%=new java.util.Date()%>" /> 
					<td style="text-align: left; padding: 0; vertical-align: middle;">구매날짜</td>
					<td style="text-align: left; padding: 0; vertical-align: middle;">
						<b><fmt:formatDate value="${ymd}" pattern="YYYY" />년 <fmt:formatDate value="${ymd}" pattern="MM" />월 <fmt:formatDate value="${ymd}" pattern="dd" />일</b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;">적립포인트</td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b><fmt:formatNumber value="${rtPoint}"/> P</b></td>
				</tr>
 	
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;">결제방식</td>
					<td style="text-align: left; padding: 0; vertical-align: middle;">
						<b>카드결제</b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;">결제금액</td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b style="color: red;"><fmt:formatNumber value="${rtFinalPrice}"/> 원</b></td>
				</tr>
				<tr>
					<td colspan="3" style="height: 20px;"></td>
				</tr>
				<tr style="background-color: #F9FFFF; text-align: left; vertical-align: center; font-size: 15px; border: 1px solid #F9FFFF;">
					<td colspan="3" style="border-top: 1px solid #c8c8c8;  padding: 30px; padding-left: 150px; padding-bottom: 20px;">
						<b>수북을 이용해주셔서 감사합니다.</b></br>
						<p style="margin-top: 10px;">출고일은 영업일 기준 1~3일이내로 출고됩니다.</br> 택배 신청 물량이 많거나 해당도로의 교통사정, 지역에 따라 다소 늦어질 수 있습니다. 이점 양해 바랍니다.</p>
					</td>
				</tr>
				<tr style="background-color: #F9FFFF; text-align: left; vertical-align: center; font-size: 15px; border: 1px solid #F9FFFF; border-bottom: 1px solid #F9FFFF;">
					<td colspan="3" style="text-align: center;">
						<a href="/member/kyobo_main" style="margin-right: 10px;">
							<button type="button" class="btn btn-success btn-lg mb-4">홈 화면으로</button>
						</a>
					</td>
				</tr>
				<tr style="background-color: rgb(247,246,239);">
					<td style="text-align: left; vertical-align: top; padding: 30px; padding-left: 100px; padding-bottom: 0;">
						<b>예매 유의사항</b>
					</td>
					<td colspan="2" style="text-align: left; padding-bottom: 30px; padding-top: 30px;">
						영화 상영 스케줄은 영화관 사정에 의해 변경될 수 있습니다.</br>
						이벤트 예매의 경우 취소 시 상영관으로 문의주시기 바랍니다. (1588-12345)
					</td>
				</tr>
			</tbody>
		</table>
</div>


		

<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/javascript">


</script>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>-->
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>
