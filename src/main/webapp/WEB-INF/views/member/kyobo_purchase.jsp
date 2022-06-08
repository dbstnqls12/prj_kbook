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
<form  action="/member/userEnd" id="bookPurchase" name="bookPurchase" method="post">
<input type="hidden" id="tditSeq" name="tditSeq" value="<c:out value="${item.tditSeq}"/>">
<input type="hidden" id="rtCount" name="rtCount">
<input type="hidden" id="rtFinalPrice" name="rtFinalPrice">
<input type="hidden" id="rtPoint" name="rtPoint">
	<div class="row">
	<div class="col-md-9">
		<div class="px-0 mt-4">
			<h3 style="font-weight: bold; color: darkblue;" class="mb-4">주문/결제</h3>
				<div style="width: 90%;" class="mx-auto">
				<p class="mb-2" style="font-weight: bold;  font-size: 23px;"> 주문자</p>
					<table class="table mb-4">
						<tr>
							<td><c:out value="${itemMember.kbmmName}"/></td>
							<td>
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
							</td>
							<td><c:out value="${itemMember.kbmeEmailFull}"/></td>
						</tr>
					</table>
				</div>
				<div style="width: 90%;" class="mx-auto mt-5">
					<p class="mb-4" style="font-weight: bold;  font-size: 23px;"> 배송정보</p>
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">국내배송</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">해외배송</button>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
						<table class="table mb-4 mx-auto">
							<tr>
								<th class="w-25">이름</th>
								<td><input type="text" class="form-control form-control-sm" id="kbmmName" name="kbmmName" value="${itemMember.kbmmName}"></td>
							</tr>
							<tr>
							<c:set var="numberPhone" value="${itemMember.kbmpNumberFull}"/>	
								<th>휴대폰번호</th>
								<!-- <td><input type="text" class="form-control form-control-sm" id="phone" name="phone" value=""></td> -->
								<td>
			                	<c:choose>
			                		<c:when test="${fn:length(numberPhone) eq 10 }">
										<input type="text" class="form-control form-control-sm" id="kbmpNumberFull" name="kbmpNumberFull" value="<c:out value="${fn:substring(numberPhone,0,3)}"/> - <c:out value="${fn:substring(numberPhone,3,6)}"/> - <c:out value="${fn:substring(numberPhone,6,10)}"/>">
			                		</c:when>
			                		<c:otherwise>
			                		<input type="text" class="form-control form-control-sm" id="kbmpNumberFull" name="kbmpNumberFull" value="<c:out value="${fn:substring(numberPhone,0,3)}"/> - <c:out value="${fn:substring(numberPhone,3,7)}"/> - <c:out value="${fn:substring(numberPhone,7,11)}"/>">
			                		</c:otherwise>
			               		</c:choose>
								</td>
							</tr>
							<tr>
								<th>주소</th>
								<td><div class="input-group">
									<input class="form-control form-control-sm mb-1" type="text" id="kbmaZipcode" name="kbmaZipcode" placeholder="우편번호" value="${itemMember.kbmaZipcode}" readonly>
									<button class="btn btn-outline-secondary btn-sm mb-1" type="button" id="btnAddress"><i class= "fas fa-search"></i></button>
									<button class="btn btn-outline-secondary btn-sm mb-1" type="button" id="btnClear"><i class= "fas fa-solid fa-x"></i></button>
								</div>
								<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress1" name="kbmaAddress1" value="${itemMember.kbmaAddress1}" placeholder="기본주소"> 
								<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress2" name="kbmaAddress2" value="${itemMember.kbmaAddress2}" placeholder="상세주소"> </td>
							</tr>
						</table>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
					</div>
				</div>
				<div style="width: 90%;" class="mx-auto mt-5">	
				<p class="mb-4" style="font-weight: bold; font-size: 23px;"> 주문상품</p>
					<table class="table mb-4">
						<tr>
							<th style="width: 20%;">상품사진</th>
							<th style="width: 25%;">상품명</th>
							<th style="width: 25%;">판매가</th>
							<th style="width: 15%;">수량</th>
							<th style="width: 25%;">배송/판매자</th>
						</tr>
						<tr>
							<td>
							<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">
								<c:if test="${itemUploaded.defaultNy eq 1}">
									<img class="mx-auto "alt="" src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>" style="width: 125px; height:180px; float: start; margin: 6px;">
								</c:if>
							</c:forEach>
							</td>
							<td style="vertical-align: middle;">
								<c:set var="listCateDepth1" value="${CateServiceImpl.selelctListCachedCate('1')}"/>
									<c:forEach items="${listCateDepth1}" var="itemCate" varStatus="statusCate">
										<c:if test="${item.tditItemCate eq itemCate.ifctSeq}"><p>[${itemCate.ifctName}]</p></c:if>
									</c:forEach>
								<p style="font-weight: bold;"><c:out value="${item.tditTitle}"/></p>
							</td>
							<td style="vertical-align: middle;">
							<c:set var="listCodeDiscount" value="${CodeServiceImpl.selectListCachedCode('13')}"/>
								정가 : <fmt:formatNumber value="${item.tditPrice}"/>원<br>
								<c:forEach items="${listCodeDiscount}" var="itemDiscount" varStatus="statusDiscount">
									<c:if test="${item.tditDiscountCd eq itemDiscount.ifcdOrder}">
										<span style="font-weight: bold;">[<c:out value="${itemDiscount.ifcdName}"/> <fmt:formatNumber value="${itemDiscount.ifcdReferenceI2*item.tditPrice}"/>원 인하]</span><br><br>
										판매가 : <span style="color: #F84450; font-size: 20px; font-weight: bold;"> <fmt:formatNumber value="${item.tditPrice-(itemDiscount.ifcdReferenceI2*item.tditPrice)}"/>원</span>
									</c:if>	
								</c:forEach>
							</td>
							<td style="vertical-align: middle;">
								<%=request.getParameter("result")%> 개
							</td>
							<td style="vertical-align: middle;"><p class="my-auto">수북문고 배송</p></td>
						</tr>
					</table>
				
				</div>

				<div style="width: 90%" class="mx-auto mt-5">	
					<p class="mb-4" style="font-weight: bold; font-size: 23px;"> 할인쿠폰</p>
					<table class="table mb-4">
						<tr>
							<th style="width: 23%;">사용가능 쿠폰</th>
							<th style="width: 20%;">쿠폰 번호</th>
							<th style="width: 15%;">쿠폰 금액</th>
							<th style="width: 25%;">유효기간</th>
							<th></th>
						</tr>
						<tr>
							<td style="text-align: left;">소비를 부탁해!</td>
							<td style="text-align: left;">PLEASESOBI</td>
							<td style="text-align: left;">6,000원</td>
							<td style="">2022-05-10 ~ 2022-12-31</td>
							<td style=""><button type="button" id="coupon1" value="6000">사용하기</button></td>
						</tr>
						<tr>
							<td style="text-align: left;">회원가입 기념 할인</td>
							<td style="text-align: left;">WELCOME5000</td>
							<td style="text-align: left;">5,000원</td>
							<td style="">2022-05-12 ~ 2022-12-31</td>
							<td style=""><button type="button" id="coupon2" value="5000">사용하기</button></td>
						</tr>
						<tr>
							<td style="text-align: left;">리뷰 이벤트 쿠폰</td>
							<td style="text-align: left;">GOODREVIEW</td>
							<td style="text-align: left;">2,000원</td>
							<td style="">2022-05-22 ~ 2022-12-31</td>
							<td style=""><button type="button" id="coupon3" value="2000">사용하기</button></td>
						</tr>
					</table>
				</div>
				
				<div style="width: 90%" class="mx-auto mt-5">	
					<p class="mb-4" style="font-weight: bold; font-size: 23px;"> 적립</p>
					<table class="table mb-4">
						<tr>
							<th style="width: 25%;">적립 유형</th>
							<th style="width: 25%;">적립률</th>
							<th style="width: 25%;">적립 포인트</th>
							<th style="width: 25%;">적립 날짜</th>
						</tr>
						<tr>
							<td style="text-align: left;">기본적립</td>
							<td style="text-align: left;">5%</td>
							<td style="text-align: left;"><span id="point"></span> P</td>
							<c:set var="ymd" value="<%=new java.util.Date()%>" /> 
							<td style=""><fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd" /></td>
						</tr>
						<caption style="font-size: 13px;">※ 적립금은 적립 후 1년까지 사용가능 합니다</caption>
					</table>
				</div>
				<div style="width: 90%" class="mx-auto mt-5">	
				<%-- <c:set var="CodePay" value="${CodeServiceImpl.selectListCachedCode('18')}"/> --%>
				<p class="mb-3" style="font-weight: bold; font-size: 23px;"> 결제</p>
					<table class="table mb-4">
					<tr>
						<th colspan="5">결제 방법</th>
					<tr>
						<td>
						  	<input class="form-check-input" type="radio" name="rtPayment" id="rtPayment1" value="1">
							<label class="form-check-label" for="rtPayment1">신용카드</label>
						</td>
						<td>
						  	<input class="form-check-input" type="radio" name="rtPayment" id="rtPayment2" value="2">
							<label class="form-check-label" for="rtPayment2">계좌이체</label>
						</td>
						<td>
						  	<input class="form-check-input" type="radio" name="rtPayment" id="rtPayment3" value="3">
							<label class="form-check-label" for="rtPayment3">핸드폰결제</label>
						</td>
						<td>
						  	<input class="form-check-input" type="radio" name="rtPayment" id="rtPayment4" value="4">
							<label class="form-check-label" for="rtPayment4">네이버페이</label>
						</td>
						<td>
						  	<input class="form-check-input" type="radio" name="rtPayment" id="rtPayment5" value="5">
							<label class="form-check-label" for="rtPayment5">카카오페이</label>
						</td>
					</tr>
					</table>
				</div>
				<div style="width: 90%" class="mx-auto mt-5">	
				<p class="mb-4" style="font-weight: bold; font-size: 23px;"> 도서 소득공제</p>
					<ul>
						<li style="font-size: 13px;">카드결제는 카드 명의자 기준으로, 현금결제는 개인공제용으로 현금영수증 신청한 기준으로 국세청에 자동 반영됩니다.</li>
						<li style="font-size: 13px;">도서 소득공제 가능 결제수단 : 신용카드(개인카드에 한함), 카카오페이, 네이버페이, 삼성페이, PAYCO, 토스, CHAI, 
						실시간계좌이체, 온라인입금, 예치금, 교보e캐시(충전e캐시에 한함), 해피머니상품권, 컬쳐캐쉬, 기프트카드</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 3단길이의 첫번째 열 -->
		<div class="col-md-3 d-none d-md-block" >
			<div class="px-0 mt-4" id="floatMenu">
				<div class="header"> 
					<p style="font-size: 26px; color: darkblue; font-weight: bold; text-align: center; ">총 결제 정보</p>
				</div>
				<hr>
				<div class="content">	
					<p id="pInfo">수량 : <%=request.getParameter("result")%> 개</p>
					<p id="pInfo">배송비 : <span id="fee"></span>원</p>
					<p id="pInfo">상품금액   : <span id="totalPrice"></span>원</p>
				</div>
				<hr>
				<div class="discount">
					<p id="pDis">할인금액 : <span style="font-size:25px; color: green; "><b id="couponPrice"></b></span> 원</p>
				</div>	
				<hr>
				<div class="finalSum">
				<c:forEach items="${listCodeDiscount}" var="itemDiscount" varStatus="statusDiscount">
					<c:if test="${item.tditDiscountCd eq itemDiscount.ifcdOrder}">
						<p id="pFin">최종 결제금액 : <span style="font-size: 24px; color: red; "><b id="totalPrice2"></b>원</span></p>
					</c:if>
				</c:forEach>
				</div>	
				<hr>
				<div class="savingPoint">
					<p>※ 적립예정 포인트 : <span id="point1"></span> p</p>
				</div>
				<div>	
					<button type="submit" class="btn w-100" name="btn-purchase" id="btn-purchase">바로구매</button>
				</div>
			</div>
		</div>
	</div>
</form>	
</div>


		<a href="#" id="goUp"><h1><i class="bi bi-arrow-up-circle"></i></h1></a>

<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6ec915718ae8d23e16c65e0f6d22a62e&libraries=services"></script>

<script type="text/javascript">

$(document).ready(function() {

	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";

		/* 애니메이션 없이 바로 따라감
		 $("#floatMenu").css('top', newPosition);
		 */

		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 500);

	}).scroll();

});

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                /* document.getElementById("kbmaAddress2").value = extraAddr; */
            
            } else {
                /* document.getElementById("kbmaAddress2").value = ''; */
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('kbmaZipcode').value = data.zonecode;
            document.getElementById("kbmaAddress1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("kbmaAddress2").focus();
            
			/* lat and lng from address s */
			        	
	         // 주소-좌표 변환 객체를 생성
	         var geocoder = new daum.maps.services.Geocoder();
	
	         // 주소로 좌표를 검색
	         geocoder.addressSearch(addr, function(result, status) {
	          
	         	// 정상적으로 검색이 완료됐으면,
	         	if (status == daum.maps.services.Status.OK) {
	         		
	         		document.getElementById('kbmaLat').value=result[0].y;
	         		document.getElementById('kbmaLng').value=result[0].x;
	         		
	         /* 						
	         		var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	
	         		y = result[0].x;
	         		x = result[0].y;
	
	         		// 결과값으로 받은 위치를 마커로 표시합니다.
	         		var marker = new daum.maps.Marker({
	         			map: map,
	         			position: coords
	         		});
	
	         		// 인포윈도우로 장소에 대한 설명표시
	         		var infowindow = new daum.maps.InfoWindow({
	         			content: '<div style="width:150px;text-align:center;padding:5px 0;">좌표위치</div>'
	         		});
	
	         		infowindow.open(map,marker);
	
	         		// 지도 중심을 이동
	         		map.setCenter(coords);
	         		
	         		document.getElementById("ifmaLatArray0").value=x;
	         		document.getElementById("ifmaLngArray0").value=y;
	         */						
	         	}
	         });
			/* lat and lng from address e */
            
            
        }
    }).open();
}
$("#btnAddress").on("click",function(){
	sample6_execDaumPostcode();
	
});	
$("#btnClear").on("click",function(){
	$("#kbmaZipcode").val("");
	$("#kbmaAddress1").val("");
	
});	


<c:forEach items="${listCodeDiscount}" var="itemDiscount" varStatus="statusDiscount">
	<c:if test="${item.tditDiscountCd eq itemDiscount.ifcdOrder}">
		var price1 = <c:out value="${item.tditPrice-(itemDiscount.ifcdReferenceI2*item.tditPrice)}"/>;
	</c:if>
</c:forEach>

var bookCount = ${rtCount};
var totalPrice = (price1*bookCount);

if(totalPrice < 10000){
	var deliFee = 2500;
}else if(totalPrice >= 10000){
	var deliFee = 0;
}else{
	/* by pass */
}

var finalPrice = totalPrice+deliFee;
var finalPoint = (${item.tditPrice}*0.05)*bookCount;

/* 화면에 보여지는 부분 */
$("#totalPrice").text(totalPrice.toLocaleString());
$("#couponPrice").text("0");
$("#totalPrice2").text(finalPrice.toLocaleString()); 
$("#fee").text(deliFee.toLocaleString()); 
$("#point").text(finalPoint.toLocaleString()); 
$("#point1").text(finalPoint.toLocaleString()); 


/* 쿠폰 할인 적용 */
$(document).ready(function() {
	   $("#coupon1").click(function(){
	      var coupon1Price = $(this).attr('value');   
	      $("#couponPrice").text((coupon1Price)/1000 + ",000");
	      $("#totalPrice2").text((finalPrice-coupon1Price).toLocaleString());
	      $('#rtFinalPrice').val(totalPrice-coupon1Price);
	      $('#rtCoupon').val(coupon1Price); 
	      
	   });
	   $("#coupon2").click(function(){
	      var coupon2Price = $(this).attr('value');      
	      $("#couponPrice").text((coupon2Price)/1000 + ",000");
	      $("#totalPrice2").text((finalPrice-coupon2Price).toLocaleString());
	      $('#rtFinalPrice').val(totalPrice-coupon2Price);
	      $('#rtCoupon').val(coupon2Price); 
	   });
	   $("#coupon3").click(function(){
	      var coupon3Price = $(this).attr('value');      
	      $("#couponPrice").text((coupon3Price)/1000 + ",000");
	      $("#totalPrice2").text((finalPrice-coupon3Price).toLocaleString());
	      $('#rtFinalPrice').val(totalPrice-coupon3Price); 
	      $('#rtCoupon').val(coupon3Price); 
	   });
	});
	
$("#rtCount").val(bookCount);
$("#rtPoint").val(finalPoint);	  
$("#rtFinalPrice").val(finalPrice); 




$("#btn-purchase").on("click", function(){
	if ($("input:radio[name=rtPayment]").is(":checked") == false) {
		alert("결제 방식을 선택해주세요!");
		return false;
	}
});

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
