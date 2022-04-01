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

<link href="/resources/user/css/bookInfo.css" rel="stylesheet" type="text/css">
<title>Kyobo_main</title>
</head>
<body>
			
<%@ include file="/WEB-INF/views/member/include/main_header_visitor.jsp" %><!-- header_visitor -->
<%@ include file="/WEB-INF/views/member/include/main_navbar.jsp" %><!-- navbar -->
	


<!-- 본문 s-->
<!-- 본문 s-->
<div class="container">

	<div class="row">
		<!-- 3단길이의 첫번째 열 -->
		<div class="col-md-3 d-none d-md-block">
			<div class="px-0 mt-4">
				<img class="mx-auto "alt="" src="../../../images/xdmin_img/bookEx.jpg" style="width: 250px; height: 330px;">
				<span class="badge bg-light text-dark mx-auto" role="button" data-bs-toggle="modal" data-bs-target="#imageZoom">이미지 크게보기</span>
				<div class="modal fade" id="imageZoom" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<img class="mx-auto "alt="" src="../../../images/xdmin_img/bookEx.jpg" style="width: 100%; height: 100%px;">
						</div>
						</div>
					</div>
				</div>
				<div class="bookKeyword ">
					<p style="font-size: 20px; font-weight: bold; ">키워드 Pick</p>
					<h5><span class="badge rounded-pill bg-light text-dark">영화원작소설</span></h5>			
					<h5><span class="badge rounded-pill bg-light text-dark">미스터리소설</span></h5>			
					<h5><span class="badge rounded-pill bg-light text-dark">변호사</span></h5>			
					<h5><span class="badge rounded-pill bg-light text-dark">장르소설</span></h5>			
					<h5><span class="badge rounded-pill bg-light text-dark">프로파일러</span></h5>			
				</div>
				<div class="relatedItem">
					<p style="font-size: 20px; font-weight: bold; ">이 책의 다른 상품정보</p>
					<hr style="margin: 5px;"><p>ebook : 11,500원</p>
					<hr style="margin: 5px;"><p>원서/번역서: <br>[해외]Achtsam morden <br>(Paperback)</p>
							
				</div>

			</div>
		</div>
		<!-- 9단길이의 첫번째 열 -->
		<div class="col-md-8">
			<div class="px-0 mt-4">
				<img class="mx-auto mb-2 d-block d-md-none"alt="" src="../../../images/xdmin_img/bookEx.jpg" style="width: 250px; height: 330px;">
				<img class="mx-auto"alt="" src="../../../images/xdmin_img/btn_freedelivery.gif">
				<img class="mx-auto"alt="" src="../../../images/xdmin_img/btn_2.gif">
				<h4 class="mt-1" style="color: #3A60DF;"><b>명상살인</b></h4>
				<p><strong>내 안의 살인 파트너</strong></p>
				<p>카르스텐 두세</p>
				<p>세계사 | 2021-07-05</p>
				<p><i class="fa-solid fa-clover" style="color: green;"></i> 9.5 (리뷰 62개) 
				<hr>
				<p>정가 : 15,800원</p>
				<p>판매가 : <span style="color: #F84450; font-size: 23px; font-weight: bold;">14,220원 </span>[10% 1,580원 인하]</p>
				<p>혜택 : <br>[기본적립] 790원 적립 [5% 적립]<br>[추가적립] 5만원 이상 구매시 2,000원 추가적립 <span class="badge bg-light text-dark">안내</span>
						<br>[회원혜택] 회원 등급별 최대 4% 추가적립 <span class="badge bg-light text-dark">안내</span><br>[리뷰혜택] 리뷰 작성시 e교환권 최대 300원 추가적립 <span class="badge bg-light text-dark">안내</span></p>
				<p>추가혜택 : <span class="badge bg-light text-dark">포인트 안내</span> <span class="badge bg-light text-dark">도서소득공제 안내</span> <span class="badge bg-light text-dark">추가혜택 더보기</span>
				<hr>
				<p>배송비 : 무료 <span class="badge bg-light text-dark">배송비 안내</span></p>
				<p>배송일정 : 현재 내 주소 <span class="badge bg-light text-dark">지역변경</span> 
							<br> *월 *일 출고예정 <span class="badge bg-light text-dark">배송일정 안내</span> </p>
				<p>바로드림 : 인터넷으로 주문하고 매장에서 직접 수령 <span class="badge bg-light text-dark">안내</span> <span class="badge bg-light text-dark">바로드림 혜택</span> </p>
				<p>책 그리고 꽃</p>
				
				<hr>
				<p>주문수량 <input type="text" id="" name="" style="width: 50px;"> <i class="bi bi-plus-square"></i> <i class="bi bi-dash-square"></i></p>
			<!-- 	<button type="button" class="btn btn-cart">장바구니 담기</button> -->
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
							<td>9788933871645(8933871640)</td>
						</tr>
						<tr>
							<th>쪽수</th>
							<td>412쪽</td>
						</tr>
						<tr>
							<th>크기</th>
							<td>130 * 188 * 29 mm / 429g</td>
						</tr>
						<tr>
							<th>이 책의 원서/번역서</th>
							<td>Achtsam morden / Dusse, Karsten</td>
						</tr>
						
					</table>
					<h5 style="font-weight: bold; ">책 소개</h5>
					<div class="mb-4">
						<h6 class="mb-2" style="font-weight: bold;"> 이 책이 속한 분야</h6>
						<p>소설 > 독일소설 > 미스터리/스릴러소설<br>
						소설 > 독일소설 > 드라마/영화소설<br>
						소설 > 장르소설 > 미스터리/스릴러소설<br>
						소설 > 장르소설 > 드라마/영화소설</p>
					</div>
					<div class="mb-4">
						<h6 class="mb-2" style="font-weight: bold;"> 이 책의 주제어</h6>
						<p><span class="keyword">영화원작소설</span>			
							<span class="keyword">미스터리소설</span>			
							<span class="keyword">변호사</span>			
							<span class="keyword">장르소설</span>			
							<span class="keyword">프로파일러</span></p>
					</div>
					<div class="mb-4 mt-5">
						<div class="bookDesc1">
							<strong>“누구도 이런 살인은 상상하지 못했다”</strong><br><br><br>
								★ 106주 연속 슈피겔 베스트셀러<br>
								★ 독일 판매 부수 100만 부 돌파, 17개국 수출<br>
								★ 유럽 대형 제작사 Constantin 영화화 확정<br><br>
								누구나 한 번쯤 마음속으로 사람을 죽여봤다<br><br>

								인간관계와 업무 스트레스에 시달리다 못해 그 원흉이 되는 사람이 사라지길 바란 경험이 한 번도 없는 현대인이 있을까? 그런 면에서 『명상 살인』의 주인공 비요른 디멜도 처음엔 여느 사람과 다를 바 없었다. 
								대형 로펌에서 일하는 변호사로서 그는 밤낮도, 주말도 없이 일해야 했다. 아내와는 마주칠 때마다 싸웠고 소중한 딸의 얼굴은 거의 보지 못했다.<br><br>
								비요른이 살인자가 되던 주말도 평소와 같았다. 딸과 여행을 가기 위해 전날 늦은 밤까지 일했지만 휴가를 제대로 즐길 수 있다면 괜찮았다. 그런데 이제 막 별장으로 출발한 순간 전화벨이 울렸다. 
								조직폭력범 의뢰인이 또 범죄를 저질렀고 그는 언제나와 같이 비요른에게 뒤처리를 맡겼다. 비요른이 명상을 시작했다는 점만이 달랐다. 그러나 이 책을 읽은 독자들은 명상이 엄청난 차이를 만들어낸다는 사실에 모두 동감할 수밖에 없을 것이다.<br><br>

								“클리셰라고는 찾아볼 수 없는 기발한 범죄 이야기에 머리를 꽝 맞은 것 같았다”-표창원 프로파일러<br><br>

								『명상 살인』이 출간 이후 무려 2년 넘게 독일의 베스트셀러인 데에는 이유가 있다.<br>
								이 책은 살인자의 이야기지만 페이지마다 공감되는 현실과 거부할 수 없는 유쾌함이 있다. 가족을 부양하고 더 많은 돈을 벌기 위해 정의 수호보다는 범죄자 두둔에 앞장서야 하는 변호사의 내적 갈등,
								 평등이나 환경 보호 등의 고고한 가치를 내세우지만 자신의 이익만을 챙기는 기업의 이면 등을 우아하고도 재미있게 짚어내 블랙코미디의 정수를 보여준다.<br><br>

								명상과 살인을 연결시키는 주인공의 심리는 자연스럽고도 치밀해 독자가 자신도 모르게 고개를 끄덕이게 한다. 소설 속 가상의 책이 제시하는 명상 원칙은 실제로도 삶에 도움이 될 가르침이라 읽다가 문득 실행에 옮기고 싶어질지도 모른다.<br>
								『명상 살인』은 추리, 범죄 심리, 블랙코미디와 명상, 이 의외의 조합이 완벽하게 어우러지는 새로운 장르의 탄생이다.<br><br>

								“올해 읽은 소설 중 가장 재미있었다. 완전히 취향 저격을 당해 이 작가 책은 다 읽고 싶은 마음이다. 다음과 같은 독자들께 자신 있게 추천한다.
								 앞뒤가 딱 맞으면서 빠르고 허를 찌르는 장르소설을 좋아하는 분, 사회 풍자와 지적인 블랙유머를 즐기는 분, 명상에 과연 실제적인 쓸모가 있는지 의심하는 분, 결혼 생활에 위기를 맞은 분, 꼰대 상사와 진상 고객에게 시달리는 분, 수류탄을 좋아하는 분.”-장강명 소설가
								<br><br>
						</div>
					</div>	
					<div class="mb-4">
						<h6 class="mb-2" style="font-weight: bold;">상세이미지</h6>
						<img class="mx-auto "alt="" src="../../../images/xdmin_img/image_bookDesc1.jpg" style="width: 80%; height: 100%;">
					</div>
					<div class="mb-4">
						<h6 class="mb-2" style="font-weight: bold;">목차</h6>
						<p>명상<br>자유<br>호흡<br>시간의 섬<br>디지털 다이어트<br>상대방의 내면세계<br>평가 없이 받아들이기<br>긴장을 완화하는 3화음	<br>싱글태스킹<br>행복<br>깨어나기<br>의도적으로 초점 맞추기<br>친절<br>공포<br>객관<br>조바심<br>불안<br>파렴치<br>시간의 압박<br>음미하며 식사하기
						<br>패닉<br>불쾌<br>행동주의<br>소통<br>용서<br>내면의 저항<br>브레인스토밍<br>주고받기<br>증명하기<br>위임<br>고마움<br>질투<br>거짓<br>속으로 미소 짓기<br>고통<br>최소화<br>죽음</p>
					</div>
					
										
					<div class="mb-4">
						<h6 class="mb-2" style="font-weight: bold;">책속으로</h6>
						<p>미리 말해두자면, 나는 결코 난폭한 사람이 아니다. 오히려 그 반대다. 일례로 나는 평생 동안 누군가를 때린 적이 없다. 그리고 마흔두 살이 되어서야 처음으로 살인을 했다. 현재 업무 환경에 비추어보면 도리어 늦은 감이 있다. 인정하건대, 일주일 뒤 여섯 건이 추가되긴 했다.<br>
						_〈명상〉 중<br><br>

						“당신이 하고 싶지 않은 일을 반드시 할 필요는 없습니다. 그 사실을 받아들이고 나면 비로소 자유로워질 것입니다.”<br>
						내가 하고 싶지 않은 일을 꼭 할 필요는 없다. 나는 자유롭다.<br>
						이후 4개월이 채 지나지 않아 나는 자유의 구체적인 개념을 알게 되었다. 하고 싶지 않은 것을 굳이 하지 않는 자유를 맛보게 된 것이다. 안타깝게도 이것 때문에 타인의 자유를 제한해야만 했다. 남의 목숨을 빼앗았기 때문이다. 하지만 나는 세상을 구원하려고 이 명상 코스에 참여한 게 아니다. 스스로를 구원하기 위해서였다.<br>
						_〈자유〉 중<br><br>
						
						우리는 드라간의 통화 내용이 수년간 도청당하는 걸 인지했기에 중요한 대화는 절대 전화로 나누지 않았다. 대신 변호사와 의뢰인 간의 암호 몇 가지를 정했다. … 
						엊그제 누구 다리를 부러뜨렸는지도 기억 못 하는 사람에게는 위험 상황을 암시하는 코드 여섯 개 정도를 외우는 것도 무리다. 그래서 우리는 암호를 정확히 두 개만 정했다. 하나는 ‘타이타닉 보기’, 다른 하나는 ‘아이스크림 먹기’였다.<br>
						_〈디지털 다이어트〉 중<br><br>
						
						“어떤 사건도 그 자체로 좋거나 나쁜 것은 없다.”<br>
						… 한 남자가 불에 탔다. 또 다른 남자가 불타는 남자를 때렸다. 그래, 폭력범이 사이코패스라는 건 단지 평가일 뿐이다. 좋지 않다. … 불에 타 죽는 것은 역겨운 일이 아니다. 그저 일종의 평가일 뿐. 이론상으로는 그렇다.<br>
						_〈평가 없이 받아들이기〉 중<br><br>
						
						그때 아이가 노크 소리를 들었다.<br>
						“아빠, 이게 무슨 소리죠?” 에밀리가 물었다.<br>
						“그건… 일거리야. 아빠가 할 일이 남아서 트렁크에 넣어왔거든. 그것도 빨리 집에 가져가야 해.”<br>
						… 에밀리가 검지를 들고 나를 심각하게 바라보았다. “아빠, 일은 하면 안 돼요. 소풍이 먼저예요. 일은 그다음에 하면 되는 거예요.”<br>
						…“소풍이 먼저. 그다음에 일.” 내가 되뇌었다. 그걸로 모든 문제가 해결되었다.<br>
						_〈싱글태스킹〉 중</p>
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
