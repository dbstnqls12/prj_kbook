	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.kbook.infra.modules.code.CodeServiceImpl"/>

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
<title>Kyobo_main</title>
</head>
<body>
			
<%@ include file="/WEB-INF/views/member/include/main_header_visitor.jsp" %><!-- header_visitor -->
<%@ include file="/WEB-INF/views/member/include/main_header_member.jsp" %><!--  header_member -->
<%@ include file="/WEB-INF/views/member/include/main_navbar.jsp" %><!-- navbar -->
	


<!-- 본문 s-->
<!-- 본문 s-->
<div class="container">
	<div class="row">
	<div class="col-md-8">
		<div class="px-0 mt-4">
			<h4 style="font-weight: bold;" class="mb-4">주문/결제</h4>
				<div style="width: 90%;" class="mx-auto">
				<h5 class="mb-2" style="font-weight: bold;"> 주문자</h5>
					<table class="table mb-4">
						<tr>
							<td>윤수빈</td>
							<td>010-0000-0000</td>
							<td>qwe123@naver.com</td>
						</tr>
					</table>
				</div>
				<div style="width: 90%;" class="mx-auto mt-5">
					<h5 class="mb-2" style="font-weight: bold;"> 배송정보</h5>
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">국내배송</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">해외배송</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">여러곳배송</button>
						</li>		
					</ul>
					<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
						<table class="table mb-4 mx-auto">
							<tr>
								<td class="w-25">이름</td>
								<td><input type="text" class="form-control form-control-sm" id="name" name="name"></td>
							</tr>
							<tr>
								<td>휴대폰번호</td>
								<td><input type="text" class="form-control form-control-sm" id="phone" name="phone"></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><div class="input-group">
									<input class="form-control form-control-sm mb-1" type="text" id="zipCode" name="zipCode" placeholder="우편번호" readonly>
									<button class="btn btn-outline-secondary btn-sm mb-1" type="button" id="address1"><i class= "fas fa-search"></i></button>
									<button class="btn btn-outline-secondary btn-sm mb-1" type="button" id="address2"><i class= "fas fa-solid fa-x"></i></button>
								</div>
								<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress1" name="kbmaAddress1" placeholder="기본주소"> 
								<input type="text" class="form-control form-control-sm mb-1" id="kbmaAddress2" name="kbmaAddress2" placeholder="상세주소"> </td>
							</tr>
						</table>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
					<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
					</div>
				</div>
				<div style="width: 90%" class="mx-auto  mt-5">	
				<h5 class="mb-2" style="font-weight: bold;"> 주문상품</h5>
					<table class="table mb-4">
						<tr>
							<th class="w-50">상품정보</th>
							<th class="w-25">판매가</th>
							<th class="w-25">배송/판매자</th>
						</tr>
						<tr>
							<td>
								<img class="mx-auto "alt="" src="../../../images/xdmin_img/bookEx.jpg" style="width: 100px;  height:140px; float: start">
								[국내도서] 명상살인
							</td>
							<td><p class="my-auto">14,420원 | 수량 1개<br>14,420원<br>[10%↓ + 790P]</p></td>
							<td><p class="my-auto">교보문고 배송</p></td>
						</tr>
					</table>
				
				</div>

				<div style="width: 90%" class="mx-auto mt-5">	
				<h5 class="mb-2" style="font-weight: bold;"> 결제정보</h5>
					<table class="table mb-4">
						<tr>
							<th class="w-25">할인쿠폰</th>
							<td>사용 가능 쿠폰이 없습니다</td>
						</tr>
						<tr>
							<th>교보문고 기프트카드</th>
							<td>
								<input type="button" value="사용">
								<input type="button" value="구매/교환">
							</td>
						</tr>
					</table>
				</div>
				<div style="width: 90%" class="mx-auto mt-5">	
				<h5 class="mb-2" style="font-weight: bold;"> 할인/적립</h5>
					<table class="table table-bordered mb-4">
					<caption align="bottom"><span class="badge bg-light text-dark">도서소득공제 안내</span></caption>
						<tr>
							<td>신용카드</td>
							<td>해외발급신용카드</td>
							<td>휴대폰결제</td>
						</tr>
						<tr>
							<td>네이버페니</td>
							<td>카카오페이</td>
							<td>페이코</td>
						</tr>
						<tr>
							<td>삼성페이</td>
							<td>sk페이</td>
							<td>토스</td>
						</tr>
						<tr>
							<td>chai</td>
							<td>온라인입금</td>
							<td>실시간 계좌이체</td>
						</tr>
					</table>
				</div>
				<div style="width: 90%" class="mx-auto mt-5">	
				<h6 class="mb-2" style="font-weight: bold;"> 도서 소득공제</h6>	
					<ul>
						<li style="font-size: 13px;">카드결제는 카드 명의자 기준으로, 현금결제는 개인공제용으로 현금영수증 신청한 기준으로 국세청에 자동 반영됩니다.</li>
						<li style="font-size: 13px;">도서 소득공제 가능 결제수단 : 신용카드(개인카드에 한함), 카카오페이, 네이버페이, 삼성페이, PAYCO, 토스, CHAI, 
						실시간계좌이체, 온라인입금, 예치금, 교보e캐시(충전e캐시에 한함), 해피머니상품권, 컬쳐캐쉬, 기프트카드</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 3단길이의 첫번째 열 -->
		<div class="col-md-3 d-none d-md-block" id="purchaseInfo">
			<div class="px-0 mt-4" style="border: 1px solid black; padding-top: 10px; padding-bottom: 20px;">
				<p style="font-size: 20px; font-weight: bold; ">총 결제 정보</p>
				<hr style="margin: 5px;">
				<p style="font-size: 15px;"><br>상품금액   :    14,220원<br>배송비   :    0원<br>선물포장   :    0원<br>할인금액   :    0원</p>
				<hr style="margin: 5px;">
				<p style="font-size: 15px;">최종 결제금액 : <span style="font-size: 20px; font-weight: bold; color: red;">14,420원</span></p>
				<hr style="margin: 5px;">
				<p>적립예정 포인트 : 790p</p>
				<p style="font-size: 13px;">쿠폰,통합포인트,교환권 사용시 주문완료 후 적립예정포인트가 변동 될 수 있습니다.</p>
				<button type="button" class="btn btn-purchaseNow" name="btn-purchase" id="btn-purchase" onclick="location.href='../../user/member/myInfo_main.html'">바로구매</button>
			</div>
		</div>
	</div>
</div>


		<a href="#" id="goUp"><h1><i class="bi bi-arrow-up-circle"></i></h1></a>

<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/javascript">
	 $(document).ready(function(){

			$('#top_menu .sub_1').hide();

			$('.menu_1').mouseover(function(){
				$('.sub_1').slideDown();

			});
			$('.menu_1').mouseleave(function(){
				$('.sub_1').hide();
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
