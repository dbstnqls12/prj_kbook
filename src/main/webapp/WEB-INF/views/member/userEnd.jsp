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
					<th colspan="3" style="height: 150px; font-size: 35px; text-align: center; vertical-align: middle;">
						구매가 완료 되었습니다.
					</th>
				</tr>
				<tr>
					<td colspan="3" style="height: 80px; font-size: 25px; text-align: center; vertical-align: center; font-weight: bold; color: #5E6B9F;">상품정보</td>
				</tr>
				<tr></tr>
				<tr>
					<td rowspan="7" width="40%"	>
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
						<c:if test="${rtPayment eq 1}"><b>신용카드</b></c:if>
						<c:if test="${rtPayment eq 2}"><b>계좌이체</b></c:if>
						<c:if test="${rtPayment eq 3}"><b>핸드폰결제</b></c:if>
						<c:if test="${rtPayment eq 4}"><b>네이버페이</b></c:if>
						<c:if test="${rtPayment eq 5}"><b>카카오페이</b></c:if>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;">결제금액</td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b style="color: red;"><fmt:formatNumber value="${rtFinalPrice}"/> 원</b></td>
				</tr>
				<tr>
					<th  colspan="3" style="height: 120px; font-size: 25px; text-align: center; vertical-align: middle;font-weight: bold; color: #5E6B9F;">구매자 정보</th>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;"><span style="margin-left: 240px;">이름</span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;"><b style="margin-left: 140px;"><c:out value="${itemMember.kbmmName}"/></b></td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;"><span style="margin-left: 240px;">핸드폰번호</span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;">
							<c:set var="numberPhone" value="${itemMember.kbmpNumberFull}"/>
		                	<c:choose>
		                		<c:when test="${fn:length(numberPhone) eq 10 }">
									<c:out value="${fn:substring(numberPhone,0,3)}"/>
									- <c:out value="${fn:substring(numberPhone,3,6)}"/>
									- <c:out value="${fn:substring(numberPhone,6,10)}"/>
		                		</c:when>
		                		<c:otherwise>
									<c:out value="${fn:substring(numberPhone,0,3)}"/>
									- <c:out value="${fn:substring(numberPhone,3,7)}"/>
									- <c:out value="${fn:substring(numberPhone,7,11)}"/>
		                		</c:otherwise>
		               		</c:choose>
		               </b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;"><span style="margin-left: 240px;">주소</span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;"><c:out value="${itemMember.kbmaZipcode}"/></b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;"><span style="margin-left: 140px;"></span></td>
					<td colspan="2"  style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;"><c:out value="${itemMember.kbmaAddress1}"/></b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;"><span style="margin-left: 140px;"></span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;"><c:out value="${itemMember.kbmaAddress2}"/></b>
					</td>
				</tr>
				<tr style="height: 50px;"><td colspan="3"></td></tr>

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
							<img src="/resources/xdmin/image/kakaoicon.png" role="button" onclick="shareKakaotalk();" style="margin-bottom: 23px;">
					</td>
				</tr>
				<tr style="background-color: #F9FFFF; border: 1px solid #F9FFFF;">
					<td style="text-align: left; vertical-align: top; padding: 30px; padding-left: 100px; padding-bottom: 0;">
						<b>구매 유의사항</b>
					</td>
					<td colspan="2" style="text-align: left; padding-bottom: 30px; padding-top: 30px; font-size: 16px;">
						교환/반품/환불의 경우 규정을 확인해주시기 바랍니다.</br>
						기타 다른 문의 사항이 있을 시 서점으로 문의주시기 바랍니다. (1500-1000)
					</td>
				</tr>
			</tbody>
		</table>
</div>


		

<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">

var book = '<c:out value="${item.tditTitle}"/>';

function shareKakaotalk() {
    Kakao.init("6ec915718ae8d23e16c65e0f6d22a62e");      // 사용할 앱의 JavaScript 키를 설정
    Kakao.Link.sendDefault({
          objectType:"feed"
        , content : {
              title: "책 구매가 완료되었습니다!"   // 콘텐츠의 타이틀
            , description: "구매도서 : "+"\n"+book// 콘텐츠 상세설명
            , imageUrl: "https://ifh.cc/g/0VkrsM.png"   // 썸네일 이미지
            , link : {
                  mobileWebUrl: "http://tp.classing.a9xlab.com"   // 모바일 카카오톡에서 사용하는 웹 링크 URL
                , webUrl:"http://tp.classing.a9xlab.com" // PC버전 카카오톡에서 사용하는 웹 링크 URL
            }
    
        }
        , buttons : [
            {
                  title:"도서 구매하기"    // 버튼 제목
                , link : {
                    mobileWebUrl:"http://tp.classing.a9xlab.com"   // 모바일 카카오톡에서 사용하는 웹 링크 URL
                  , webUrl:"http://tp.classing.a9xlab.com" // PC버전 카카오톡에서 사용하는 웹 링크 URL
                }
            }
        ]
    });
}
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
