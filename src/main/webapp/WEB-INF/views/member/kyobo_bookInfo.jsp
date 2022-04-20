<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CateServiceImpl" class="com.kbook.infra.modules.cate.CateServiceImpl"/>
<jsp:useBean id="AuthorServiceImpl" class="com.kbook.infra.modules.author.AuthorServiceImpl"/>
<jsp:useBean id="CodeServiceImpl" class="com.kbook.infra.modules.code.CodeServiceImpl"/>
<jsp:useBean id="PublisherServiceImpl" class="com.kbook.infra.modules.publisher.PublisherServiceImpl"/>

<% pageContext.setAttribute("cr", "\r"); %>
<% pageContext.setAttribute("lf", "\\n"); %>
<% pageContext.setAttribute("crlf", "\r\\n");  %>

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

<link href="/resources/user/css/bookInfo.css" rel="stylesheet" type="text/css">
<title>Kyobo_main</title>
</head>
<body>
			
<%@ include file="/WEB-INF/views/member/include/main_header_member.jsp" %><!--  header_member -->
<%@ include file="/WEB-INF/views/member/include/main_navbar.jsp" %><!-- navbar -->
	

<!-- 본문 s-->
<!-- 본문 s-->
<div class="container">

	<div class="row">
		<!-- 3단길이의 첫번째 열 -->
		<div class="col-md-3 d-none d-md-block">
			<div class="px-0 mt-4"><%-- <img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/> --%>
				<!-- <img class="mx-auto "alt="" src="../../../images/xdmin_img/bookEx.jpg" style="width: 250px; height: 330px;"> -->
				<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">
					<c:if test="${itemUploaded.defaultNy eq 1}">
						<img class="mx-auto "alt="" src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/> " style="width: 230px; height: 330px;">
					</c:if>
				</c:forEach>
				<span class="badge bg-light text-dark mx-auto" role="button" data-bs-toggle="modal" data-bs-target="#imageZoom">이미지 크게보기</span>
				<div class="modal fade" id="imageZoom" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">	
								<c:if test="${itemUploaded.defaultNy eq 1}">
									<img class="mx-auto "alt="" src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>"  style="width: 100%; height: 100%;">
								</c:if>
							</c:forEach>
						</div>
						</div>
					</div>
				</div>
				<div class="bookKeyword ">
					<p style="font-size: 20px; font-weight: bold; ">키워드 Pick</p>
					<c:forEach items="${listKeyword}" var="itemKeyword" varStatus="statusKeyword">
						<h5><span class="badge rounded-pill bg-light text-dark"><c:out value="${itemKeyword.tdkwKeyword}"/></span></h5>			
					</c:forEach>
				</div>
				<div class="relatedItem">
					<p style="font-size: 20px; font-weight: bold; ">이 책의 다른 상품정보</p>
					<c:set var="listCodeRelatedItem" value="${CodeServiceImpl.selectListCachedCode('17')}"/>
						<c:forEach items="${listRelatedItem}" var="itemRelatedItem" varStatus="statusRelatedItem">
							<c:forEach items="${listCodeRelatedItem}" var="itemRelatedItemC" varStatus="statusRelatedItem">
								<c:if test="${itemRelatedItem.tdriTypeCd eq itemRelatedItemC.ifcdOrder}"><hr style="margin: 5px;"><p><c:out value="${itemRelatedItemC.ifcdName}"/>
								 : <fmt:formatNumber value="${itemRelatedItem.tdriPrice}"/>원<br>
								 <c:out value="${itemRelatedItem.tdriTitle}"/>
								</p></c:if>
							</c:forEach>
						</c:forEach>
				</div>

			</div>
		</div>
		<!-- 9단길이의 첫번째 열 -->
		<div class="col-md-8">
			<div class="px-0 mt-4">
				<div class="title">
					<img class="mx-auto mb-2 d-block d-md-none"alt="" src="../../../images/xdmin_img/bookEx.jpg" style="width: 250px; height: 330px;">
					<!-- <img class="mx-auto"alt="" src="../../../images/xdmin_img/btn_freedelivery.gif">
					<img class="mx-auto"alt="" src="../../../images/xdmin_img/btn_2.gif"> -->
					<h4 class="mt-1" style="color: #3A60DF;"><b><c:out value="${item.tditTitle}"/></b></h4>
					<p><strong><c:out value="${item.tditSubTitle}"/></strong></p>
					<c:set var="listAuthor" value="${AuthorServiceImpl.selelctListCachedAuthor('15')}"/>
						<c:forEach items="${listAuthorL}" var="itemAuthor" varStatus="statusAuthor"><!-- 작가리스트(배열에 들어가 있어야함) -->
							<c:forEach items="${listAuthor}" var="item2" varStatus="status"><!-- 작가코드 -->
								<c:if test="${itemAuthor.tdatAuthorCd eq item2.ifacSeq}"><p style="display: inline;"><c:out value="${item2.ifacName}" /></p></c:if>
							</c:forEach>	
						</c:forEach>
	 				<c:set var="listPublisher" value="${PublisherServiceImpl.selelctListCachedPublisher('24')}"/>
						<c:forEach items="${listPublisher}" var="itemPublisher" varStatus="statusPublisher">
							<c:if test="${item.tditPublisherCd eq itemPublisher.ifpcSeq}"><p><c:out value="${itemPublisher.ifpcName}"/> | <c:out value="${item.tditPublishingDate}"></c:out></p></c:if> 
						</c:forEach>
					<p><i class="fa-solid fa-clover" style="color: green;"></i> 9.5 (리뷰 62개) 
					<hr>
				</div>
				<div class="price">
					<p>정가 : <fmt:formatNumber value="${item.tditPrice}"/>원</p>
					<c:set var="listCodeDiscount" value="${CodeServiceImpl.selectListCachedCode('13')}"/>
						<c:forEach items="${listCodeDiscount}" var="itemDiscount" varStatus="statusDiscount">
							<c:if test="${item.tditDiscountCd eq itemDiscount.ifcdOrder}">
							<p>판매가 : <span style="color: #F84450; font-size: 23px; font-weight: bold;"> <fmt:formatNumber value="${item.tditPrice-(itemDiscount.ifcdReferenceI2*item.tditPrice)}"/>원</span>
							[<c:out value="${itemDiscount.ifcdName}"/> <fmt:formatNumber value="${itemDiscount.ifcdReferenceI2*item.tditPrice}"/>원 인하]</p>
							</c:if>	
						</c:forEach>
	 				<p>혜택 : <br>[기본적립] 790원 적립 [5% 적립]<br>[추가적립] 5만원 이상 구매시 2,000원 추가적립 <span class="badge bg-light text-dark">안내</span>
							<br>[회원혜택] 회원 등급별 최대 4% 추가적립 <span class="badge bg-light text-dark">안내</span><br>[리뷰혜택] 리뷰 작성시 e교환권 최대 300원 추가적립 <span class="badge bg-light text-dark">안내</span></p>
					<p>추가혜택 : <span class="badge bg-light text-dark">포인트 안내</span> <span class="badge bg-light text-dark">도서소득공제 안내</span> <span class="badge bg-light text-dark">추가혜택 더보기</span>
				</div>
				<hr>
				<div class="deli">
					<c:choose>
						<c:when test="${item.tditPrice ge 10000}"><p>배송비 : 무료 <span class="badge bg-light text-dark">배송비 안내</span></p></c:when>
						<c:when test="${item.tditPrice lt 10000}"><p>배송비 : 2500원 <span class="badge bg-light text-dark">배송비 안내</span></p></c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
					<c:set var="ymd" value="<%=new java.util.Date()%>" /> 
					<p>배송일정 : 현재 내 주소 <span class="badge bg-light text-dark">지역변경</span> 
								<br><fmt:formatDate value="${ymd}" pattern="MM" />월
								<fmt:formatDate value="${ymd}" pattern="dd" />일 출고예정 <span class="badge bg-light text-dark">배송일정 안내</span> </p>
					<p>바로드림 : 인터넷으로 주문하고 매장에서 직접 수령 <span class="badge bg-light text-dark">안내</span> <span class="badge bg-light text-dark">바로드림 혜택</span> </p>
					<p>책 그리고 꽃</p>
				</div>
				<hr><!-- <div id="result">0</div> -->
				
				<p>주문수량 <input type="text" id="result" name="result" style="width: 50px;" value="1"> <i class="bi bi-plus-square" role="button" onclick='count("plus")'></i> <i class="bi bi-dash-square" role="button" onclick='count("minus")'></i></p>
				<button type="button" class="btn btn-purchaseNow" onclick="location.href='/member/kyobo_purchase'">바로구매</button>
				<button type="button" class="btn btn-purchase">바로드림 주문</button>
				<button type="button" class="btn btn-purchase">선물하기</button>
				<button type="button" class="btn btn-purchase">보관함 담기</button>
			</div>
				<hr>
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">상품정보</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">회원리뷰</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">교환/반품/품절</button>
					</li>
				</ul>
			<div class="tab-content" id="myTabContent">
				<!-- 상품정보 -->
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<table class="table table-bordered mx-auto mt-5 mb-4">
						<tr>
							<th>ISBN</th>
							<td><c:out value="${item.tditIsbn}"/></td>
						</tr>
						<tr>
							<th>쪽수</th>
							<td><c:out value="${item.tditPage}"/>쪽</td>
						</tr>
						<tr>
							<th>크기</th>
							<td><c:out value="${item.tditSize}"/> mm / <c:out value="${item.tditWeight}"/>g</td>
						</tr>
						<tr>
							<th>이 책의 원서/번역서</th>
							<td>원서 / 번역서</td>
						</tr>
					</table>
					<h5 style="font-weight: bold; margin-top: 50px;">책 소개</h5>
					<div class="mb-4 mt-4">
						<h6 class="mb-2" style="font-weight: bold;"> 이 책이 속한 분야</h6>
							<c:forEach items="${listCateDepth1}" var="item1" varStatus="status1">
								<c:if test="${item.tditItemCate eq item1.ifctSeq}"><p class="d-inline"><c:out value="${item1.ifctName}" /> > </p></c:if> 
							</c:forEach> 	
							<c:forEach items="${listCateDepth2}" var="item2" varStatus="status2">
								<c:if test="${item.tditItemCate2 eq item2.ifctSeq}"><p class="d-inline"><c:out value="${item2.ifctName}" /></p></c:if> 
							</c:forEach> 
					</div>
					<div class="mb-4 mt-5">
						<h6 class="mb-2" style="font-weight: bold;"> 이 책의 주제어</h6>
					<c:forEach items="${listKeyword}" var="itemKeyword" varStatus="statusKeyword">
						<span class="keyword"># <c:out value="${itemKeyword.tdkwKeyword}"/> &nbsp;</span>
					</c:forEach>
					</div>
					<div class="mb-4 mt-5">
						<p>${fn:replace(item.tditBookDesc, lf, "<br>")}</p>
					</div>	
					<div class="mb-4 mt-5">
						<h6 class="mb-2" style="font-weight: bold;">상세이미지</h6>
						<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">	
							<c:choose>
								<c:when test="${itemUploaded.defaultNy eq 0 && itemUploaded.size ne 0 && itemUploaded.size ne NULL}"><img class="mx-auto "alt="" src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>"  style="width: 80%; height: 100%;"></c:when>
								<c:when test="${itemUploaded.defaultNy eq 0 && itemUploaded.size ne 0}"><p style="font-size: 13px; font-style: italic;">이 도서는 상세이미지를 제공하지 않습니다.</p></c:when>
								<c:when test="${itemUploaded.defaultNy eq 0 && itemUploaded.size ne NULL}"><p style="font-size: 13px; font-style: italic;">이 도서는 상세이미지를 제공하지 않습니다.</p></c:when>
								<c:otherwise></c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
					<div class="mb-4 mt-5">
						<h6 class="mb-2" style="font-weight: bold;">목차</h6>
						<c:choose>
							<c:when test="${item.tditTableOfContents eq null}"><p style="font-size: 13px; font-style: italic;">이 도서는 목차를 제공하지 않습니다.</p></c:when>
							<c:otherwise>
								<p>${fn:replace(item.tditTableOfContents, lf, "<br>")}</p>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="mb-4 mt-5">
						<h6 class="mb-2" style="font-weight: bold;">책속으로</h6>
						<c:choose>
							<c:when test="${item.tditBookDesc2 eq null}"><p style="font-size: 13px; font-style: italic;">이 도서는 데이터를 제공하지 않습니다.</p></c:when>
							<c:otherwise>
								<p>${fn:replace(item.tditBookDesc2, lf, "<br>")}</p>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
					 	
				<!-- 회원리뷰 -->
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="mt-5">
						<p style="font-size: 20px; font-weight: bold;"><i class="fa-solid fa-clover" style="color: green;"></i> 클로버 점수 9.5/10 		</p>
					</div>
				<hr>				
				<div class="reviewTable mt-3">
					<div class="btn-group" role="group" aria-label="Basic outlined example">
						<button type="button" class="btn btn-sm">도움순</button>
						<button type="button" class="btn btn-sm">최신순</button>
					</div>
					<div class="table">
						<table class="table table-bordered mx-auto mb-4">
						<caption>구매 후 Klover 리뷰 작성 시, 리워드를 제공합니다</caption>
							<tr>
								<td style="width: 15%">아이디</td>
								<td style="width: 50%">내용</td>
								<td style="width: 15%">점수</td>
								<td style="width: 60%">시간</td>
							</tr>
							<tr>
								<td>asd123</td>
								<td>으 재미없어요...</td>
								<td><i class="fa-solid fa-clover" style="color: green;"></i></td>
								<td>2022-04-01 12:23:00</td>
							</tr>
							<tr>
								<td>qwe123</td>
								<td>와 재미있어요...</td>
								<td>
									<i class="fa-solid fa-clover" style="color: green;"></i><i class="fa-solid fa-clover" style="color: green;"></i><i class="fa-solid fa-clover" style="color: green;"></i><i class="fa-solid fa-clover" style="color: green;"></i>
								</td>
								<td>2022-04-01 12:23:00</td>
							</tr>
						
						</table>
					</div>
				<!-- page s -->
				<nav aria-label="Page navigation">
					<ul class="pagination justify-content-center">
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>
				</div>
				</div>
				<!-- 교환/반품/품절안내 -->
				<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					<div class="table-responsive mt-4">
					<h6 class="mb-2" style="font-weight: bold;">교환/반품/품절안내</h6>
						<table class="table table-bordered border-light">
						<caption>※ 상품 설명에 반품/교환 관련한 안내가 있는 경우 그 내용을 우선으로 합니다. (업체 사정에 따라 달라질 수 있습니다.)</caption>
							<tr>	
								<th class="table-active" width="15%">반품/교환방법</th>
								<td><small>마이룸 > 주문관리 > 주문/배송내역 > 주문조회 > 반품/교환신청 , [1:1상담>반품/교환/환불] 또는 고객센터 (1544-1900)
									<br>※ 오픈마켓, 해외배송주문, 기프트 주문시 [1:1상담>반품/교환/환불] 또는 고객센터 (1544-1900)</small>
								</td>
							</tr>
							<tr>	
								<th class="table-active">반품/교환가능 기간</th>
								<td><small>변심반품의 경우 수령 후 7일 이내,<br>상품의 결함 및 계약내용과 다를 경우 문제점 발견 후 30일 이내</small></td>
							</tr>
							<tr>	
								<th class="table-active">반품/교환비용</th>
								<td><small>변심 혹은 구매착오로 인한 반품/교환은 반송료 고객 부담</small></td>
							</tr>
							<tr>	
								<th class="table-active">반품/교환 불가 사유</th>
								<td>
									<ul>
										<li>소비자의 책임 있는 사유로 상품 등이 손실 또는 훼손된 경우 (단지 확인을 위한 포장 훼손은 제외)</li>
										<li>소비자의 사용, 포장 개봉에 의해 상품 등의 가치가 현저히 감소한 경우 <br>예) 화장품, 식품, 가전제품(악세서리 포함) 등</li>
										<li>복제가 가능한 상품 등의 포장을 훼손한 경우<br>예) 음반/DVD/비디오, 소프트웨어, 만화책, 잡지, 영상 화보집</li>
										<li>소비자의 요청에 따라 개별적으로 주문 제작되는 상품의 경우 ((1)해외주문도서)</li>
										<li>디지털 컨텐츠인 eBook, 오디오북 등을 1회 이상 다운로드를 받았을 경우</li>
										<li>시간의 경과에 의해 재판매가 곤란한 정도로 가치가 현저히 감소한 경우</li>
										<li>전자상거래 등에서의 소비자보호에 관한 법률이 정하는 소비자 청약철회 제한 내용에 해당되는 경우</li>
									</ul>
									(1) 해외주문도서 : 이용자의 요청에 의한 개인주문상품으로 단순변심 및 착오로 인한 취소/교환/반품 시 ‘해외주문 반품/취소 수수료’ 고객 부담 (해외주문 반품/취소 수수료 : ①서양도서-판매정가의 12%, ②일본도서-판매정가의 7%를 적용)
								</td>
							</tr>
							<tr>	
								<th class="table-active">상품 품절</th>
								<td><small>공급사(출판사) 재고 사정에 의해 품절/지연될 수 있으며, 품절 시 관련 사항에 대해서는 이메일과 문자로 안내드리겠습니다.</small></td>
							</tr>
							<tr>	
								<th class="table-active">소비자 피해보상<br>환불지연에 따른 배상</th>
								<td>						
									<ul>
										<li>상품의 불량에 의한 교환, A/S, 환불, 품질보증 및 피해보상 등에 관한 사항은 소비자분쟁해결 기준 (공정거래위원회 고시)에 준하여 처리됨</li>
										<li>대금 환불 및 환불지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리함</li>
									</ul>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>	
		<a href="#" id="goUp"><h1><i class="bi bi-arrow-up-circle"></i></h1></a>
<!-- 		<a href="#" id="goDown"><h1><i class="bi bi-arrow-down-circle"></i></h1></a> -->
	</div>
</div>

<%@ include file="/WEB-INF/views/xdmin/include/footer.jsp" %><!-- footer -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script type="text/javascript">
goMain = function(seq){
	attr("action","/visitor/kyobo_VbookInfo");
/* 	$("#formList").submit(); */
}
/* function count(type)  {
	  // 결과를 표시할 element
	  const resultElement = document.getElementById('result');
	  
	  // 현재 화면에 표시된 값
	  let number = resultElement.innerText;
	  
	  // 더하기/빼기
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }else if(type === 'minus')  {
	    number = parseInt(number) - 1;
	  }
	  
	  // 결과 출력
	  resultElement.innerText = number;
	}
 */

/* 	 $(document).ready(function(){

			$('#top_menu .sub_1').hide();

			$('.menu_1').mouseover(function(){
				$('.sub_1').slideDown();

			});
			$('.menu_1').mouseleave(function(){
				$('.sub_1').hide();
			});

 */
function count(type)  {

	if(type === 'plus') {
    
		var tmp = document.getElementById("result").value;
		tmp++;
		document.getElementById("result").value = tmp;

	}else if(type === 'minus')  {
   
		var tmp = document.getElementById("result").value;
			if(tmp<2){
				alert("최소수량은 1개입니다");
				return true;
			}else{
				tmp--;
			}
		document.getElementById("result").value = tmp;
	}
	 
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
