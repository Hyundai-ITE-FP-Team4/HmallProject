<%-- 
	파일명: category.jsp
	기능: 카테고리 소분류별 페이지
	작성자: 박주영
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="ko" class="desktop winos chrome x64 tablet">
<head>
	<!-- favicon -->
	<link rel="shortcut icon" type="image/x-icon"
		href="//image.hmall.com/p/img/co/favicon/favicon.ico">
	
	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/plugins/ua/ec.js"></script>
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script async=""
		src="https://www.googletagmanager.com/gtm.js?id=GTM-MZFFDJ8"></script>
	<script
		src="https://connect.facebook.net/signals/config/307742333494098?v=2.9.57&amp;r=stable"
		async=""></script>
	<script
		src="https://connect.facebook.net/en_US/sdk.js?hash=04e44d8cdc2383eeaba2cadcfd498277"
		async="" crossorigin="anonymous"></script>
	<script type="text/javascript" async=""
		src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
	<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
	<script id="facebook-jssdk" src="//connect.facebook.net/en_US/sdk.js"></script>
	<script type="text/javascript" async=""
		src="https://www.googletagmanager.com/gtag/js?id=AW-937000404&amp;l=dataLayer&amp;cx=c"></script>
	<script type="text/javascript" async=""
		src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
	<script src="https://www.googleoptimize.com/optimize.js?id=OPT-NBGRL7P"></script>
	
	<meta charset="UTF-8">
	<meta name="viewport"
		content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, height=device-height">
	<meta name="HandheldFriendly" content="true">
	<meta name="format-detection"
		content="telephone=no, email=no, address=no">
	<meta name="apple-mobile-web-app-capable" content=" yes">
	<meta name="robots" content="index,follow">
	<meta name="author" content="@Hmall">
	<meta http-equiv="imagetoolbar" content="no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<link rel="shortcut icon" href="https://www.hmall.com/favicon.ico">
	<!-- UI/UX Style -->
	<link rel="stylesheet" type="text/css"
		href="//image.hmall.com/p/css/co/common.css">
	<!-- 공통 css -->
	<link rel="stylesheet" type="text/css"
		href="//image.hmall.com/p/css/co/layout.css">
	<!-- 공통 Layout css -->
	<link rel="stylesheet" type="text/css"
		href="//image.hmall.com/p/css/co/popup.css">
	<!-- 공통 Popup css -->
	<link rel="stylesheet" type="text/css"
		href="//image.hmall.com/p/css/co/jquery-ui.css">
	<!-- jQuery UI css -->
	<style>
		.hidden {
			display: none !important;
		}
	</style>
	<script src="//image.hmall.com/p/js/co/jquery-3.4.1.min.js"></script>
	<!-- jQuery Plugin -->
	<script src="//image.hmall.com/p/js/co/jquery.easing.min.js"></script>
	<!-- jQuery UI Effect -->
	<script src="//image.hmall.com/p/js/co/jquery-ui.1.12.1.min.js"></script>
	<!-- jQuery UI js -->
	<script src="//image.hmall.com/p/js/co/ukDetect.min.js"></script>
	<!-- UI에 사용하는 Detect -->
	<script src="//image.hmall.com/p/js/co/slick.min.js"></script>
	<!-- 공통 Slide 플러그인 -->
	<script src="//image.hmall.com/p/js/co/common.js"></script>
	<!-- UI에 사용하는 기본 js  -->
	<script src="//image.hmall.com/p/js/co/co.js"></script>
	<!-- UI에 사용하는 기본 js  -->
	<script src="//image.hmall.com/p/js/co/jquery.cookie.js"></script>
	<script src="//image.hmall.com/p/js/co/commonFunction.js"></script>
	<!-- as-is common.js 상속  -->
	<script src="//image.hmall.com/p/js/co/reDirectExceptUrlList.js"></script>
	<!-- 로그인버튼 click 리다이렉트 예외 url리스트  -->
	
	<!-- Google analytics -->
	<script type="text/javascript"
		src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=040814"></script>
	<script type="text/javascript"
		src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=040814"></script>
		
	<script src="//image.hmall.com/p/js/pd/search.js"></script>
	
	<link rel="stylesheet" type="text/css"
		href="https://image.hmall.com/pc/css/hmall/co/prd-list.css">
	<link rel="stylesheet" type="text/css"
		href="//image.hmall.com/p/css/pd/search.css">
	<script type="text/javascript"
		src="https://image.hmall.com/pc/js/hmall/co/prd-list.js?ver=040814"></script>
	<script type="text/javascript"
		src="https://image.hmall.com/pc/js/hmall/co/sp-customscroll-1.1.min.js?ver=040814"></script>
	
	<script type="text/javascript"
		src="https://image.hmall.com/pc/js/hmall/co/section_store.js"></script>
	
	<script type="text/javascript"
		src="https://www.hmall.com/static/gen/js/sect/.js"></script>
	
	<!-- Main Contents css = Contents css부분은 각페이지마다 다르게 해당되는 css가 호출 됨(폴더 구조별)  -->
	<link rel="stylesheet" type="text/css"
		href="//image.hmall.com/p/css/dp/display.css">
	
	<!-- 타이틀 지정 (박주영) -->
	<title>${ categoryVO.categoryName } - 현대Hmall</title>
	
	<script type="text/javascript"
		src="https://image.hmall.com/pc/js/hmall/co/jquery.form.js"></script>

	<script type="text/javascript">
        // 상품 상세 링크로 이동 (박주영)
        function itemDetailLinkProc(url) {
            var form = document.createElement("form");
           
            form.action = url;
            form.method = "post";
            form.charset = "UTF-8";

            document.body.appendChild(form);
            location.href = url;
        }
        
        // 상품 상세 링크 새창으로 이동 (박주영)
        function sendSlitmClickNewWin(url){
            window.open(url, '_blank');
        }

    </script>
</head>
<body>
	<input name="monitor" type="hidden" value="monitor">
	<div class="wrap display-3depth">

		<!-- 페이지 header (박주영) -->
		<%@ include file="../header.jsp"%>

		<main class="cmain main" role="main" id="mainContents">

			<!-- ajax 새로고침 영역 설정-->
			<div id="reflashArea" class="container">

				<!-- 검색을 위한 Form 영역 -->
				<form name="pdeSearchForm"
					action="/p/dpa/searchSectItem.do?sectId=2731740" method="post">

					<!-- 로케이션 메뉴 시작 -->
					<!-- .location -->
					<div class="location">
						<!-- .location-menu -->
						<ul class="location-menu" data-modules-menus="">

							<li data-menu="" class="home"><a
								href="https://www.hmall.com">홈</a></li>

							<!-- 로케이션정보 -->
							<li data-menu="" class=""><a
								href="HmallServlet?command=categoryTop&cCode=${ parentCategoryVO.categoryCode }"
								class="cate">${ parentCategoryVO.categoryName }</a>

								<div class="category-wrap" data-submenu="">
									<ul class="category-list">
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A01B01">여성의류</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A01B02">남성의류</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A01B03">캐주얼의류</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A01B04">언더웨어</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A02B01">가방/지갑</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A02B02">신발</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A02B03">패션소품/ACC</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A02B04">명품</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A03B01">스킨케어</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A03B02">헤어케어</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A03B03">바디케어</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A03B04">메이크업</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A03B05">향수</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A03B06">기기/소품</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A04B01">보석</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A04B02">반지</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A04B03">목걸이/귀걸이</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A04B04">팔찌/발찌</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A04B05">시계</a></li>
									</ul>
									<ul class="category-list">
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A04B06">기타
												ACC</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B01">스포츠
												의류</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B02">스포츠신발</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B03">스포츠잡화</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B04">골프용품</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B05">골프의류</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B06">구기/라켓/격투</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B07">등산/
												아웃도어</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B08">캠핑</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B09">낚시</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B10">헬스/요가</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B11">수영/물놀이</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B12">스키/스노보드</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B13">자전거/인라인/퀵보드</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A05B14">자동차</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A06B01">임신/출산</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A06B02">기저귀/물티슈</a></li>
									</ul>

									<ul class="category-list">
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A06B03">스킨케어/위생/소독</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A06B04">유아
												침구/가구/매트</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A06B05">유모차/카시트/외출용품</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A06B06">유아
												의류/잡화</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A06B07">완구</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A06B08">유아동
												도서</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A07B01">조리용기
												/ 도구</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A07B02">식기/접시/홈세트</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A07B03">수납정리/소품</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A07B04">보관용기</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A07B05">와인/커피용품</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A07B06">주방가전</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A08B01">세제/세정/탈취제</a></li>
										<li><a href=HmallServlet?command=categoryTop&cCode=A08B02>바디/헤어/구강</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A08B03">휴지/생리대/마스크</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A08B04">수납/청소/생활잡화</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A08B05">건강관리/안마/실버</a></li>

									</ul>
									<ul class="category-list">
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B01">농산</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B02">축산</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B03">수산</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B04">간편식/반찬</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B05">면/캔/오일/소스</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B06">떡/베이커리/과자</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B07">유제품/유아식</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B08">홍삼/전통건강식품</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B09">커피/차</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B10">유산균/이너뷰티/다이어트</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B11">생수/음료</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B12">비타민/영양제</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A09B13">팔도식도락</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A10B01">거실가구</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A10B02">침실가구/드레스룸</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A10B03">주방가구/테이블</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A10B04">학생/서재가구</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A10B05">리모델링
												시공/DIY</a></li>

									</ul>
									<ul class="category-list">

										<li><a
											href="HmallServlet?command=categoryTop&cCode=A10B06">침구</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A10B07">커튼/카페트</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A10B08">인테리어소품</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A11B01">생활/미용가전</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A11B02">주방가전</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A11B03">계절가전</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A11B04">영상/음향
												가전</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A11B05">카메라/렌즈/캠코더</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A11B06">노트북/PC/게임</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A11B07">스마트기기/OA</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A11B08">리퍼
												가전</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A12B01">반려동물(H펫샵)</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A13B01">여행/숙박</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A13B02">서비스/e쿠폰/상품권</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A13B03">도서/음반</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A13B04">원예/꽃배달</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A14B01">렌탈</a></li>
										<li><a
											href="HmallServlet?command=categoryTop&cCode=A14B02">보험/상조</a></li>
									</ul>
								</div></li>

								<!-- 로케이션 소분류 (박주영)-->
								<!-- DB에서 중분류 카테고리의 하위 카테고리 리스트를 가져와서 띄움 -->
								<li data-menu="" class="">
									<a href="HmallServlet?command=category&cCode=${ categoryVO.categoryCode }" class="cate"> ${ categoryVO.categoryName }</a>
										<div class="category-wrap" data-submenu="" style="">
											<ul class="category-list">
												<!-- 카테고리 리스트마다 url 넣어줌 -->
												<c:forEach var="category" items="${ categoryList }">
													<li><a href="HmallServlet?command=category&cCode=${ category.categoryCode }">${ category.categoryName }</a></li>
												</c:forEach>
											</ul>
										</div>
								</li>
								<!-- //로케이션 소분류 -->	
							<!-- //로케이션정보 -->

						</ul>
						<!-- // .location-menu -->
					</div>
					<!-- //.location -->
					<!-- //로케이션 메뉴 끝 -->

					<!-- 카테고리별 상품 나열 (박주영) -->
					<div class="gird-l2x">
						<div class="exhibition-depth2">
							<div class="depth2Top">
								<h2> </h2>
								<div class="side">
									<!-- itemWrap -->
									<div class="itemWrap">
										<dl>
											<!-- 좌측영역 LOOP1 -->
											<dt>
												<a href="#">카테고리</a>
											</dt>
											<br>

											<!-- 좌측영역 LOOP2 -->
											<!-- 카테고리 리스트 구현(박주영) -->
											<!-- 소분류 카테고리 리스트를 받아와 url 설정 -->
											<c:forEach var="category" items="${ categoryList }">
												<dd>
													<ul>
														<li><a
															href="HmallServlet?command=category&cCode=${ category.categoryCode }">${ category.categoryName }</a></li>
													</ul>
												</dd>
											</c:forEach>
											<!-- // 좌측영역 LOOP2 -->

											<!-- // 좌측영역 LOOP1 -->
										</dl>
									</div>
									<!-- // itemWrap -->

								</div>
							</div>
							<!-- 매장내검색 -->
							<div class="inputbox">
								<label class="inplabel icon-find"><input type="text"
									id="sect-search" name="searchTerm" value=""
									onkeydown="javascript:if(event.keyCode==13){searchSect();}"
									placeholder="${ categoryVO.categoryName } 상품 검색"></label>
								<button class="btn btn-find" onclick="javascript:searchSect();">
									<i class="icon find"></i><span class="hiding">검색</span>
								</button>
								<button class="btn ico-clearabled"
									onclick="javascript:searchClear();">
									<i class="icon"></i><span class="hiding">지우기</span>
								</button>
							</div>
							<!-- // 매장내검색 -->
						</div>
						<!-- 상품 나열 -->
						<div class="contents" id="pl_main">

							<div class="display-list-wrap" id="itemListArea">
								
								<!-- 카테고리 소분류 제목 및 총 상품 개수(박주영) -->
								<h2 class="title30">
									<span> ${ categoryVO.categoryName }</span> <em>( <fmt:formatNumber
											value="${ products.size() }" pattern="#,###" /> )
									</em>
								</h2>

								<div class="list-sort-area">
									<!-- 정렬 옵션 (구현 X) -->
									<div class="sortOption">
										<a href="#" class="active">
											<input type="hidden" class="sort" value="REG_DTM@DESC">최근등록순
										</a> <a href="#"> <input
											type="hidden" class="sort" value="SELL_QTY@DESC">많이팔린순
										</a> <a href="#"> <input
											type="hidden" class="sort" value="BASIC@DESC">MD추천순
										</a> <a href="#"> <input
											type="hidden" class="sort" value="SELL_PRC@ASC">낮은가격순
										</a> <a href="#"> <input
											type="hidden" class="sort" value="SELL_PRC@DESC">높은가격순
										</a> <a href="#"> <input
											type="hidden" class="sort" value="ITEM_EVAL_CNT@DESC">상품평수순
										</a>
									</div>

									<div class="sort-form"></div>
									<!-- 나열 개수 (구현X) -->
									<div class="selectwrap">
										<div id="selectListSize" class="custom-selectbox sm"
											data-modules-selectbox="">
											<select id="listSize" onchange="javascript:listSubmit(this);">
												<option value="5">5개씩 보기</option>
												<option value="10" selected="selected">10개씩 보기</option>
												<option value="30">30개씩 보기</option>
											</select> <input type="hidden" name="f" value="on">
											<div class="ui-label">
												<a href="#2">10개씩 보기</a>
											</div>
											<div class="ui-selectbox">
												<div class="selectbox_area">
													<ul>
														<li><a href="#1">5개씩 보기</a></li>
														<li><a href="#2">10개씩 보기</a></li>
														<li><a href="#3">30개씩 보기</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<!-- 상품 나열 영역 -->
								<div class="pdlist-wrap" id="pdListDiv">
									<ul>
										<!-- 상품 받아와서 나열 (박주영) -->
										<!-- 카테고리에 해당하는 상품 리스트 받아와서 grid 형태로 나열 -->
										<c:forEach var="product" items="${ products }">

											<li class="pdthumb">
												<!-- 상품 클릭 시 productDetail로 이동 -->
												<a href="javascript://"
												onclick="itemDetailLinkProc('HmallServlet?command=product_detail&pCode=${ product.productCode }');">
													<!-- 상품 사진 불러오기 -->
													<div class="thumb">
														<img
															src="product_images/${ product.productImg }.jpg?RS=300x300&amp;AR=0"
															alt="[${ product.brand }] ${ product.productName }"
															id="${ product.productCode }_img"
															onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=300x300&amp;AR=0')">
													</div>
													<!-- 상품 정보 불러오기 -->
													<div class="figcaption">
														<div class="pdname" aria-label="제품명">[${ product.brand }]
															${ product.productName }</div>
														<div class="pdprice">
															<span class="rateprice" aria-label="할인율이 적용된 가격">
																<p class="discount" aria-label="할인가">
																	<em> <fmt:formatNumber
																			value="${ product.discountPrice }" pattern="#,###" /></em>원
																</p> <em class="rate" aria-label="할인율"><i> ${ Math.round((product.price - product.discountPrice) / product.price * 100) }%</i></em>
																<del class="normal" aria-label="정상가">
																	<fmt:formatNumber value="${ product.price }"
																		pattern="#,###" />
																</del>
															</span>
														</div>

														<div class="pdinfo">
															<div class="benefits" style="line-height: 20px;">
																<span>무료배송</span>

															</div>
															<p class="like-count"></p>
														</div>
													</div>
											</a>
											<!-- 상품 새창으로 열기 -->
											<a href="javascript://"
												onclick="sendSlitmClickNewWin('HmallServlet?command=product_detail&pCode=${ product.productCode }');"
												class="hoverview"> <i class="icon"></i>새창열기
											</a>
												<div class="alimlike"
													data-slitmcd="${ product.productCode }">

													<a href="#" class="btn btn-like">
														<i class="icon"></i><span class="hiding">찜</span>
													</a>
												</div>
											</li>
										</c:forEach>
										<!-- //상품 나열 종료 -->
									</ul>
								</div>
								<!-- //.pdlist-wrap -->

								<div class="paging">

									<!-- 페이지 선택 -->
									<div class="page-prevarea">
										<a
											href="HmallServlet?command=category&cCode=${ categoryVO.categoryCode }&amp;sPrice=&amp;ePrice=&amp;minSellPrc=900&amp;maxSellPrc=134900&amp;sectDispGbcd=01&amp;itemListType=type1&amp;sort=REG_DTM%40DESC&amp;areaType2Flag=false&amp;listSize=60&amp;autoCate=&amp;csfLCat=&amp;csfMCat=&amp;csfSCat=&amp;csfDCat=&amp;csfNameCode=&amp;csfDepth=A&amp;threeDepthSrchYn=Y&amp;searchTerm=A">
											<strong aria-label="현재 선택페이지">1</strong></a>

										<a href="#" class="page-next" aria-label="다음페이지 이동"><i class="icon"></i>
											<span class="hiding">다음페이지 이동</span>
										</a>
										<a href="#" class="page-last" aria-label="마지막페이지 이동"><i class="icon"></i>
											<span class="hiding">마지막페이지 이동</span>
										</a>
									</div>
								</div>
							</div>

							<!-- //.ui-modal -->
						</div>
						<!-- //.contents -->
					</div>
				</form>
			</div>
			<!-- //.container -->
		</main>
	</div>

	<!-- 페이지 footer(박주영) -->
	<%@ include file="../footer.jsp"%>
	
	<!-- 스카이스크래퍼 -->
	<script type="text/javascript">

	var skySclbrodEndTime = "";
	var skyScldtvEndTime = "";
	
	function setOnAirSkySc(){
		try {
			$.ajax({
		        type: "get"
		        ,url: "https://wwwca.hmall.com/p/coe/onAirList.do?time=040809"
		        ,dataType: "html"
		        ,async: true
		        ,success : function(data) {
		           $('#skyScOnAirArea').append(data);
		           
		           if ($('#onAirHtime').length > 0) {
		        	   skySclbrodEndTime = "" + $('#onAirHtime').data("brodenddtm");
		        	   onAirTimerSkySc();
		           }
		
		           if ($('#onAirHdtime').length > 0) {
		        	   skyScldtvEndTime = "" + $('#onAirHdtime').data("brodenddtm");
		        	   
		        	   // TV+샵은 마직막이 '00' 으로 끝남
		        	   if (skyScldtvEndTime != "" && skyScldtvEndTime.length > 12) 
		        		   skyScldtvEndTime = skyScldtvEndTime.substring(0,12) + "00";
		        	   
		        	   onAirTimer2SkySc();
		           } 
		           
		           // 카드 프로모션 
		           setCardPromotion();
		           
		      }
		      ,error : function(e) {
		    	  
		    	  if ("https://wwwca.hmall.com" == "")  
		    		  return;
		    	  
		    	  $.ajax({
		              type: "get"
		              ,url: "/p/coe/onAirList.do?time=040809"
		              ,dataType: "html"
		              ,async: true
		              ,success : function(data) {
		                 $('#skyScOnAirArea').append(data);
		                 
		                 if ($('#onAirHtime').length > 0) {
		                     skySclbrodEndTime = "" + $('#onAirHtime').data("brodenddtm");
		                     onAirTimerSkySc();
		                 }
		      
		                 if ($('#onAirHdtime').length > 0) {
		                     skyScldtvEndTime = "" + $('#onAirHdtime').data("brodenddtm");
		                     
		                     // TV+샵은 마직막이 '00' 으로 끝남
		                     if (skyScldtvEndTime != "" && skyScldtvEndTime.length > 12) 
		                         skyScldtvEndTime = skyScldtvEndTime.substring(0,12) + "00";
		                     
		                     onAirTimer2SkySc();
		                 } 
		                 
		                 // 카드 프로모션 
		                 setCardPromotion();
		                 
		            }
		            ,error : function(e) {
		            }
		         });
		      }
		   });
	    } catch (err){}
	}
	
	function setCardPromotion() {
	    try {
	        $.ajax({
	            type: "get"
	            ,url: "https://wwwca.hmall.com/p/coe/onAirCardPrmoList.do?time=040809"
	            ,dataType: "html"
	            ,async: true
	            ,success : function(data) {
	               $('#skyScCardArea').append(data);
	               $('body').commonUi('initLibrary'); //PC인경우
	             }
	            ,error : function(e) {
	
	                if ("https://wwwca.hmall.com" == "")  
	                    return;
	                
	            	$.ajax({
	                    type: "get"
	                    ,url: "/p/coe/onAirCardPrmoList.do?time=040809"
	                    ,dataType: "html"
	                    ,async: true
	                    ,success : function(data) {
	                       $('#skyScCardArea').append(data);
	                       $('body').commonUi('initLibrary'); //PC인경우
	                     }
	                    ,error : function(e) {
	                        
	                    } 
	               });
	            } 
	       });
	    } catch (err){}
	}
	
	function onAirTimerSkySc(){
	    var now = new Date();
	    var lbrdEndTime = new Date();
	    lbrdEndTime.setHours(skySclbrodEndTime.substring(8,10));
	    lbrdEndTime.setMinutes(skySclbrodEndTime.substring(10,12));
	    lbrdEndTime.setSeconds(skySclbrodEndTime.substring(12,14));
	
	    var gap = (lbrdEndTime.getTime() - now.getTime())/1000;
	    var leftTime = "";
	
	    if(gap <= 0){
	        leftTime = "00:00:00";
	        $("#onAirHtime").text(leftTime);
	        return;
	    }
	
	    var hour = parseInt(gap/3600);
	    var min = parseInt((gap%3600)/60);
	    var sec = parseInt(gap%60);
	
	    leftTime += ((hour < 10) ? "0":"") + hour;
	    leftTime += ((min < 10) ? ":0":":") + min;
	    leftTime += ((sec < 10) ? ":0":":") + sec;
	
	    $("#onAirHtime").text(leftTime);
	    setTimeout("onAirTimerSkySc()", 1000);
	    
	}
	
	function onAirTimer2SkySc(){
	    var now = new Date();
	    var lbrdEndTime = new Date();
	    lbrdEndTime.setHours(skyScldtvEndTime.substring(8,10));
	    lbrdEndTime.setMinutes(skyScldtvEndTime.substring(10,12));
	    lbrdEndTime.setSeconds(skyScldtvEndTime.substring(12,14));
	
	    var gap = (lbrdEndTime.getTime() - now.getTime())/1000;
	    var leftTime = "";
	
	    if(gap <= 0){
	        leftTime = "00:00:00";
	        $("#onAirHdtime").text(leftTime);
	        return;
	    }
	
	    var hour = parseInt(gap/3600);
	    var min = parseInt((gap%3600)/60);
	    var sec = parseInt(gap%60);
	
	    leftTime += ((hour < 10) ? "0":"") + hour;
	    leftTime += ((min < 10) ? ":0":":") + min;
	    leftTime += ((sec < 10) ? ":0":":") + sec;
	
	    $("#onAirHdtime").text(leftTime);
	    setTimeout("onAirTimer2SkySc()", 1000);
	}

</script>

	<!-- 스카이 스크래퍼 -->
	<div class="sticky-ui-wrapper wing-banner-sticky">
		<div class="sticky-placeholder" style=""></div>
		<div class="wing-banner banner-right ui-break"
			data-modules-sticky="padding:0;breakPoint:.header-menu-wrap;className:wing-banner-sticky"
			style="top: 123px;">
			<!-- fixed 클래스 추가 시 고정 -->
			<a href="/pevent/eva/evntTmplDivideView.do?prmoNo=00049341">
				<div class="visit-indicator">
					바로접속 <span class="visit-staus on" style="margin-left: 0px">ON</span>
				</div>
			</a>
			<div class="recent-view-area" id="skyScOnAirArea">
			</div>
			<div class="qr_view_area">
				<span class="qr_txt">쇼핑라이브</span> <span class="img_qr"><img
					src="https://image.hmall.com/p/img/co/img-qr.jpg" alt="쇼핑라이브 qr이미지"></span>
			</div>
			<div class="wing-slide exhibition01" id="skyScCardArea">
				<ul>
					<li style=""><a
						href="https://www.hmall.com/p/dpa/crdDmndDcPrmo.do?prmoNo=P202203299704">
							<span class="img"><img
								src="//image.hmall.com/p/img/ev/icon/ico-card-nh.png"
								alt="NH농협카드"></span> <span class="card-txt"> <strong
								class="card-name">NH농협카드</strong> <span class="benefit-txt">
									<em class="point-red"> 7% </em> 즉시 할인
							</span>
						</span>
					</a></li>
					<li style="display: none;"><a
						href="https://www.hmall.com/p/dpa/crdDmndDcPrmo.do?prmoNo=P202203299554">
							<span class="img"><img
								src="//image.hmall.com/p/img/ev/icon/ico-card-lotte.png"
								alt="롯데카드"></span> <span class="card-txt"> <strong
								class="card-name">롯데카드</strong> <span class="benefit-txt">
									<em class="point-red"> 5% </em> 즉시 할인
							</span>
						</span>
					</a></li>
				</ul>
			</div>
			<!-- // .wing-slide -->

			<div class="btn-top">
				<a href="javascript:;">TOP</a>
			</div>
		</div>
	</div>
	<!-- // 스카이 스크래퍼 -->
	<script type="text/javascript">
    
    setTimeout(function() { 
    	setOnAirSkySc();
    }, 100);
    
	</script>
	<!-- 스카이스크래퍼 -->
</body>
</html>