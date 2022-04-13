<%-- 
	파일명: categoryTop.jsp
	기능: 카테고리 중분류별 페이지
	작성자: 박주영
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
	<title>${ categoryVO.categoryName } - 현대Hmall</title>
	
	<!-- script -->
	
	<script src="https://www.googleoptimize.com/optimize.js?id=OPT-NBGRL7P"></script>
	
	<link rel="shortcut icon" href="https://www.hmall.com/favicon.ico" />
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
	
	<script type="text/javascript"
		src="https://image.hmall.com/pc/js/hmall/co/section_store.js"></script>
	
	<!-- Main Contents css = Contents css부분은 각페이지마다 다르게 해당되는 css가 호출 됨(폴더 구조별)  -->
	<link rel="stylesheet" type="text/css"
		href="//image.hmall.com/p/css/dp/display.css">
	
	<link href="//image.hmall.com/p/css/co/video-js.css" rel="stylesheet">
	<script src="//image.hmall.com/p/js/co/video.js"></script>
	<script src="//image.hmall.com/p/js/co/videojs-http-streaming.js"></script>

</head>

<body>
	<div class="wrap exhibition-depth2">
	
		<!-- 페이지 header(박주영) -->
		<%@ include file="../header.jsp"%>
		
		<main class="cmain main" role="main" id="mainContents">
			<!-- container -->
			<div class="container">
				<!-- 로케이션 메뉴 시작 -->
					<div class="location" data-modules-menus="">
					<ul>
						<li data-menu="" class="home"><a href="https://www.hmall.com">홈</a></li>

						<!-- 로케이션정보 -->
							<li data-menu="">
							<a href="HmallServlet?command=categoryTop&cCode=${ categoryVO.categoryCode }"
								class="cate">${ categoryVO.categoryName }</a>

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

							<!-- 로케이션 소분류 (박주영) -->
							<!-- DB에서 중분류 카테고리의 하위 카테고리 리스트를 가져와서 띄움 -->
							<li data-menu="">
								<a href="javascript://" class="cate">선택하세요.</a>

								<div class="category-wrap" data-submenu="" style="">
									<ul class="category-list">
										<!-- 카테고리 리스트마다 url 넣어줌 -->
										<c:forEach var="category" items="${ categoryList }">
											<li><a href="HmallServlet?command=category&cCode=${ category.categoryCode }">${ category.categoryName }</a></li>
										</c:forEach>
										<!-- //로케이션 소분류 -->	
									</ul>
								</div></li>				
					</ul>
				</div>
				<script language="javascript">
					$(".location li").each(function() {
						if (isEmpty($.trim($(this).html()))) {
							$(this).remove();
						}
					});
				</script>
				<!--로케이션 메뉴 끝 -->
				
				<!-- contents -->
				<div class="contents">
					<!-- depth2Wrap -->
					<div class="depth2Wrap">
						<!-- 카테고리 이름 (박주영) -->
						<h2> ${ categoryVO.categoryName } </h2>
						<!-- 상단 메뉴 와 slick 및 이 카테고리를 본 고객님들이 본 상품 -->
						<div class="depth2Top">
							<!-- 상단 메뉴 -->
							<div class="side">
								<!-- itemWrap -->
								<div class="itemWrap">
									<dl>
										<!-- 좌측영역 LOOP1 -->
										<dt>
											<a href="#">카테고리</a>
										</dt><br>
										<!-- 좌측영역 LOOP2 -->
										<!-- 카테고리 리스트 구현(박주영) -->
											<!-- 소분류 카테고리 리스트를 받아와 url 설정 -->
										<c:forEach var="category" items="${ categoryList }">
												<dd>
													<ul>
														<li><a href="HmallServlet?command=category&cCode=${ category.categoryCode }">${ category.categoryName }</a></li>
													</ul>
												</dd>
										</c:forEach>
										<!-- // 좌측영역 LOOP2 -->
										<!-- // 좌측영역 LOOP1 -->
									</dl>
								</div>
								<!-- // itemWrap -->
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
							<!-- // 상단 메뉴 -->
							<!-- 상단 오른쪽 영역 -->
							<div class="con">
								<!-- 추천 기획전 -->
								<div class="slickWrap" id="brandTopSlider">
									<a href="javascript:;" class="controls prev"><i>이전</i><span><em
											class="current">1</em>/<span class="total">8</span></span></a>
									<div
										data-modules-slick="arrows:false; dots:false; infinite:true; autoplay:true;"
										class="slick-initialized slick-slider">
										<div class="slick-list draggable">
											<div class="slick-track"
												style="opacity: 1; width: 8010px; transform: translate(-3204px, 0px);">
												<div class="slick-slide slick-cloned" data-slick-index="-1"
													aria-hidden="true" tabindex="-1" style="width: 801px;">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">

																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2757071"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2757071.png"
																				alt="[써스데이아일랜드 外] 봄 오픈"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>[써스데이아일랜드 外] 봄 오픈</strong> 써스데이아일랜드 x 코벳블랑
																			</figcaption>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2295567"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2295567.png"
																				alt="하프클럽X써스데이아일랜드 특가"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>하프클럽X써스데이아일랜드 특가</strong> 봄시즌세일+여름 단독 선 오픈!
																			</figcaption>
																		</figure>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="slick-slide" data-slick-index="0"
													aria-hidden="true" style="width: 801px;" tabindex="-1">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2295567"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2295567.png"
																				alt="하프클럽X써스데이아일랜드 특가"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>하프클럽X써스데이아일랜드 특가</strong> 봄시즌세일+여름 단독 선 오픈!
																			</figcaption>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=1884365"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr1884365.png"
																				alt="[타미힐피거] UP TO ~30%"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>[타미힐피거] UP TO ~30%</strong>
																			</figcaption>
																		</figure>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="slick-slide" data-slick-index="1"
													aria-hidden="true" style="width: 801px;" tabindex="-1">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2730130"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2730130.jpg"
																				alt="LAUREN RALPH LAUREN "
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>LAUREN RALPH LAUREN </strong> New Arrivals
																				15% 다운쿠폰
																			</figcaption>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2763303"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2763303.png"
																				alt="JBY/바버렛츠 연합전"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>JBY/바버렛츠 연합전</strong>
																			</figcaption>
																		</figure>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="slick-slide" data-slick-index="2"
													aria-hidden="true" style="width: 801px;" tabindex="-1">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2701988"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2701988.png"
																				alt="LF 브랜드 연합 S/S오픈"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>LF 브랜드 연합 S/S오픈</strong> LF 브랜드 연합 기획전
																			</figcaption>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2129834"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2129834.jpg"
																				alt="[NAIN] Color for Spring"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>[NAIN] Color for Spring</strong> ★추가 쿠폰 할인★
																			</figcaption>
																		</figure>
																</a></li>

															</ul>
														</div>
													</div>
												</div>
												<div class="slick-slide slick-current slick-active"
													data-slick-index="3" aria-hidden="false"
													style="width: 801px;">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">
																<li>
																<a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2724624"
																	tabindex="0">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<c:if test="${ categoryVO.categoryCode == 'A01B01'}">
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2724624.jpg"
																				alt="POLO RALPH LAUREN WOMAN "
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																				<figcaption>
																					<strong>POLO RALPH LAUREN WOMAN </strong> New
																					Arrivals 최대 15% 다운쿠폰
																				</figcaption>
																				
																			</c:if>
																			<c:if test="${ categoryVO.categoryCode == 'A02B02'}">
																				<img src="//image.hmall.com/static/image/sect/mblbnnr2213470.jpg" 
																				alt="얼리썸머슈즈대전" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																				<figcaption>
															                         <strong>얼리썸머슈즈대전</strong>
															                                       	바로사용쿠폰 + 카드즉시할인
															                         </figcaption>
																			</c:if>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2332810"
																	tabindex="0">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<c:if test="${ categoryVO.categoryCode == 'A01B01'}">
																				<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2332810.jpg"
																				alt="빈폴레이디스 22SS신상입고"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																				<figcaption>
																					<strong>빈폴레이디스 22SS신상입고</strong> + 추가 쿠폰 혜택
																				</figcaption>
																			</c:if>
																			<c:if test="${ categoryVO.categoryCode == 'A02B02'}">
																				<img src="//image.hmall.com/static/image/sect/mblbnnr2726937.jpg" 
																				alt="22SS 신상 스니커즈/샌들/슬리퍼 특가" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																				<figcaption>
																					<strong>POLO RALPH LAUREN WOMAN </strong> New
																					Arrivals 최대 15% 다운쿠폰
																				</figcaption>
																			</c:if>
																			
																		</figure>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="slick-slide" data-slick-index="4"
													aria-hidden="true" style="width: 801px;" tabindex="-1">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2618219"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2618219.jpg"
																				alt="[본사직영] 나이스클랍"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>[본사직영] 나이스클랍</strong> 모던감성 컨템포러리 캐주얼 브랜드
																			</figcaption>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2707751"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2707751.jpg"
																				alt="[트렌드소호 연합전] 2022 트렌드 BEST"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>[트렌드소호 연합전] 2022 트렌드 BEST</strong> ~15%
																				바로사용쿠폰 + 카드즉시할인
																			</figcaption>
																		</figure>
																</a></li>

															</ul>
														</div>
													</div>
												</div>
												<div class="slick-slide" data-slick-index="5"
													aria-hidden="true" style="width: 801px;" tabindex="-1">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2430591"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2430591.jpg"
																				alt="[신원여성] SPRING GRAND OPEN"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>[신원여성] SPRING GRAND OPEN</strong>
																				이사베이/비키/SI/베스티벨리
																			</figcaption>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2335859"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2335859.jpg"
																				alt="본사직영 도호(DOHO)"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>본사직영 도호(DOHO)</strong> 이월 Hmall Open 혜택가 +
																				SS 신상 입고!
																			</figcaption>
																		</figure>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="slick-slide" data-slick-index="6"
													aria-hidden="true" style="width: 801px;" tabindex="-1">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2690445"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2690445.png"
																				alt="본사직영 [쥬크/듀엘/CC콜렉트/엣플레이/블루페페]"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>본사직영 [쥬크/듀엘/CC콜렉트/엣플레이/블루페페]</strong> SS시즌
																				오픈!
																			</figcaption>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2215821"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2215821.jpg"
																				alt="[루시앙/NNF 外]TV방송 여성의류전"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>[루시앙/NNF 外]TV방송 여성의류전</strong>
																				루시앙/크리스티나앤코/NNF
																			</figcaption>
																		</figure>
																</a></li>

															</ul>
														</div>
													</div>
												</div>
												<div class="slick-slide" data-slick-index="7"
													aria-hidden="true" style="width: 801px;" tabindex="-1">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2757071"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2757071.png"
																				alt="[써스데이아일랜드 外] 봄 오픈"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>[써스데이아일랜드 外] 봄 오픈</strong> 써스데이아일랜드 x 코벳블랑
																			</figcaption>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2295567"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2295567.png"
																				alt="하프클럽X써스데이아일랜드 특가"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>하프클럽X써스데이아일랜드 특가</strong> 봄시즌세일+여름 단독 선 오픈!
																			</figcaption>
																		</figure>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="slick-slide slick-cloned" data-slick-index="8"
													aria-hidden="true" tabindex="-1" style="width: 801px;">
													<div>
														<div class="item"
															style="width: 100%; display: inline-block; vertical-align: top;">
															<ul class="depth2-top-slick">
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=2295567"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr2295567.png"
																				alt="하프클럽X써스데이아일랜드 특가"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>하프클럽X써스데이아일랜드 특가</strong> 봄시즌세일+여름 단독 선 오픈!
																			</figcaption>
																		</figure>
																</a></li>
																<li><a
																	href="/p/dpa/searchSpexSectItem.do?sectId=1884365"
																	tabindex="-1">
																		<figure>
																			<!-- 기획전배너 : 1.리뉴얼용배너 2.기획전에 구성된 상품이미지 3.noImg -->
																			<img
																				src="//image.hmall.com/static/image/sect/mblbnnr1884365.png"
																				alt="[타미힐피거] UP TO ~30%"
																				onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
																			<figcaption>
																				<strong>[타미힐피거] UP TO ~30%</strong>
																			</figcaption>
																		</figure>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<a href="javascript:;" class="controls next"><span><em
											class="current">1</em>/<span class="total">8</span></span><i>다음</i></a>
								</div>
								<!-- // 추천 기획전 -->
								<!-- 추천상품8개 (이 카테고리를 본 고객님들이 본 상품)  -->
								<!-- 이 카테고리를 본 고객님들이 본 상품 -->
								<div class="customerView">

									<div class="titArea">
										<h3>이 달의 추천 상품</h3>
									</div>

									<!-- pdlist-wrap -->
									<div class="pdlist-wrap col4">
										<div
											data-modules-slick="dots: false; paging: true; infinite: true;"
											class="slick-initialized slick-slider isArrows slick-paging">
											<button class="slick-prev slick-arrow" aria-label="Previous"
												type="button" style="">Previous</button>
											<div class="slick-list draggable">
												<div class="slick-track"
													style="opacity: 1; width: 3204px; transform: translate(-801px, 0px);">
													<div class="slick-slide slick-cloned" data-slick-index="-1"
														aria-hidden="true" tabindex="-1" style="width: 801px;">
														<div>
															<div class="items"
																style="width: 100%; display: inline-block; vertical-align: top;">
																<ul>
																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2130214876', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/8/4/21/30/2130214876_0.jpg?RS=400x400&amp;AR=0"
																					alt="디자이너브랜드 컬렉션 라인 원피스"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname" aria-label="디자이너브랜드 컬렉션 라인 원피스">디자이너브랜드
																					컬렉션 라인 원피스</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>18,910</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2130214876"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2131202332', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/3/2/20/31/2131202332_0.jpg?RS=400x400&amp;AR=0"
																					alt="[런칭가 99000원] Jby 울블렌드 클래식 셔츠자켓 3종"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[런칭가 99000원] Jby 울블렌드 클래식 셔츠자켓 3종">[런칭가
																					99000원] Jby 울블렌드 클래식 셔츠자켓 3종</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>29,250</em>원
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2131202332"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2136899612', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/6/9/89/36/2136899612_0.jpg?RS=400x400&amp;AR=0"
																					alt="4SET [홈쇼핑방송/르오트(LeOT)] 에디션 슬림 리브니트 4종세트-사이즈44∼77다양"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="4SET [홈쇼핑방송/르오트(LeOT)] 에디션 슬림 리브니트 4종세트-사이즈44∼77다양">4SET
																					[홈쇼핑방송/르오트(LeOT)] 에디션 슬림 리브니트 4종세트-사이즈44∼77다양</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>13,950</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2136899612"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2133206828', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/8/6/20/33/2133206828_0.png?RS=400x400&amp;AR=0"
																					alt="[런칭가 79900원] Jby 오스트리아 펄니트 4종세트"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[런칭가 79900원] Jby 오스트리아 펄니트 4종세트">[런칭가
																					79900원] Jby 오스트리아 펄니트 4종세트</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>29,000</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2133206828"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>

																</ul>
															</div>
														</div>
													</div>
													<div class="slick-slide slick-current slick-active"
														data-slick-index="0" aria-hidden="false"
														style="width: 801px;">
														<div>
															<div class="items"
																style="width: 100%; display: inline-block; vertical-align: top;">
																<ul>

																	<li class="pdthumb" ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2127352619', this);"
																		tabindex="0">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/6/2/35/27/2127352619_0.jpg?RS=400x400&amp;AR=0"
																					alt="[앤드스타일] 프레토 핀턱 와이드 팬츠_237494"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[앤드스타일] 프레토 핀턱 와이드 팬츠_237494">[앤드스타일]
																					프레토 핀턱 와이드 팬츠_237494</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>8,910</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2127352619"
																		class="hoverview" target="_blank" tabindex="0"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<li class="pdthumb" ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2131212645', this);"
																		tabindex="0">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/6/2/21/31/2131212645_0.jpg?RS=400x400&amp;AR=0"
																					alt="[무드무드] 란코 브이넥 니트 베스트"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[무드무드] 란코 브이넥 니트 베스트">[무드무드] 란코
																					브이넥 니트 베스트</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>18,810</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2131212645"
																		class="hoverview" target="_blank" tabindex="0"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<li class="pdthumb" ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2137894734', this);"
																		tabindex="0">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/7/4/89/37/2137894734_0.png?RS=400x400&amp;AR=0"
																					alt="[런칭가 99000원] Jby 프렌치 린넨100 셔츠3종"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[런칭가 99000원] Jby 프렌치 린넨100 셔츠3종">[런칭가
																					99000원] Jby 프렌치 린넨100 셔츠3종</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>44,100</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2137894734"
																		class="hoverview" target="_blank" tabindex="0"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<li class="pdthumb" ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2133002686', this);"
																		tabindex="0">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/6/2/00/33/2133002686_0.jpg?RS=400x400&amp;AR=0"
																					alt="[레몬소울] 크레빈 세미 부츠컷 스판 팬츠(4color)"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[레몬소울] 크레빈 세미 부츠컷 스판 팬츠(4color)">[레몬소울]
																					크레빈 세미 부츠컷 스판 팬츠(4color)</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>18,720</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2133002686"
																		class="hoverview" target="_blank" tabindex="0"><i
																			class="icon"></i>새창열기</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													<div class="slick-slide" data-slick-index="1"
														aria-hidden="true" tabindex="-1" style="width: 801px;">
														<div>
															<div class="items"
																style="width: 100%; display: inline-block; vertical-align: top;">
																<ul>

																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2130214876', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/8/4/21/30/2130214876_0.jpg?RS=400x400&amp;AR=0"
																					alt="디자이너브랜드 컬렉션 라인 원피스"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname" aria-label="디자이너브랜드 컬렉션 라인 원피스">디자이너브랜드
																					컬렉션 라인 원피스</div>



																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>18,910</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2130214876"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2131202332', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/3/2/20/31/2131202332_0.jpg?RS=400x400&amp;AR=0"
																					alt="[런칭가 99000원] Jby 울블렌드 클래식 셔츠자켓 3종"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[런칭가 99000원] Jby 울블렌드 클래식 셔츠자켓 3종">[런칭가
																					99000원] Jby 울블렌드 클래식 셔츠자켓 3종</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>29,250</em>원
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2131202332"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>

																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2136899612', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/6/9/89/36/2136899612_0.jpg?RS=400x400&amp;AR=0"
																					alt="4SET [홈쇼핑방송/르오트(LeOT)] 에디션 슬림 리브니트 4종세트-사이즈44∼77다양"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="4SET [홈쇼핑방송/르오트(LeOT)] 에디션 슬림 리브니트 4종세트-사이즈44∼77다양">4SET
																					[홈쇼핑방송/르오트(LeOT)] 에디션 슬림 리브니트 4종세트-사이즈44∼77다양</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>13,950</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2136899612"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2133206828', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/8/6/20/33/2133206828_0.png?RS=400x400&amp;AR=0"
																					alt="[런칭가 79900원] Jby 오스트리아 펄니트 4종세트"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[런칭가 79900원] Jby 오스트리아 펄니트 4종세트">[런칭가
																					79900원] Jby 오스트리아 펄니트 4종세트</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>29,000</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2133206828"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													<div class="slick-slide slick-cloned" data-slick-index="2"
														aria-hidden="true" tabindex="-1" style="width: 801px;">
														<div>
															<div class="items"
																style="width: 100%; display: inline-block; vertical-align: top;">
																<ul>

																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2127352619', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/6/2/35/27/2127352619_0.jpg?RS=400x400&amp;AR=0"
																					alt="[앤드스타일] 프레토 핀턱 와이드 팬츠_237494"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[앤드스타일] 프레토 핀턱 와이드 팬츠_237494">[앤드스타일]
																					프레토 핀턱 와이드 팬츠_237494</div>

																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>8,910</em>원 外
																						</p>
																					</span>
																				</div>

																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2127352619"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>

																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2131212645', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/6/2/21/31/2131212645_0.jpg?RS=400x400&amp;AR=0"
																					alt="[무드무드] 란코 브이넥 니트 베스트"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[무드무드] 란코 브이넥 니트 베스트">[무드무드] 란코
																					브이넥 니트 베스트</div>
																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>18,810</em>원 外
																						</p>
																					</span>
																				</div>
																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2131212645"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2137894734', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/7/4/89/37/2137894734_0.png?RS=400x400&amp;AR=0"
																					alt="[런칭가 99000원] Jby 프렌치 린넨100 셔츠3종"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[런칭가 99000원] Jby 프렌치 린넨100 셔츠3종">[런칭가
																					99000원] Jby 프렌치 린넨100 셔츠3종</div>

																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>44,100</em>원 外
																						</p>
																					</span>
																				</div>

																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2137894734"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>


																	<!-- 혜택 영역 -->
																	<!-- //혜택 영역 -->
																	<li class="pdthumb " ga-custom-title=""
																		ga-custom-name="" ga-custom-position=""
																		ga-custom-creative="" ga-custom-id="" ga-custom-etc="">
																		<a href="javascript:;"
																		onclick="goItemDetail('/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2133002686', this);"
																		tabindex="-1">
																			<div class="thumb">
																				<img
																					src="https://image.hmall.com/static/6/2/00/33/2133002686_0.jpg?RS=400x400&amp;AR=0"
																					alt="[레몬소울] 크레빈 세미 부츠컷 스판 팬츠(4color)"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
																			</div>
																			<div class="figcaption">
																				<div class="pdname"
																					aria-label="[레몬소울] 크레빈 세미 부츠컷 스판 팬츠(4color)">[레몬소울]
																					크레빈 세미 부츠컷 스판 팬츠(4color)</div>

																				<div class="pdprice">
																					<span class="rateprice" aria-label="할인율이 적용된 가격">
																						<p class="discount" aria-label="할인가">
																							<em>18,720</em>원 外
																						</p>
																					</span>
																				</div>

																			</div>
																	</a> <a
																		href="/p/pda/itemPtc.do?sectId=2731203&amp;slitmCd=2133002686"
																		class="hoverview" target="_blank" tabindex="-1"><i
																			class="icon"></i>새창열기</a>
																	</li>

																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<button class="slick-next slick-arrow" aria-label="Next"
												type="button" style="">Next</button>
											<div class="slick-slidetotal" style="">
												<em class="current">1</em><strong class="total">2</strong>
											</div>
										</div>
									</div>
									<!-- // pdlist-wrap -->

								</div>
								<!--// 이 카테고리를 본 고객님들이 본 상품 -->
							</div>
							<!-- // 상단 오른쪽 영역 -->
						</div>
					</div>
					<!-- // depth2Wrap -->
				</div>
				<!-- // contents -->
			</div>
			<!-- // container -->
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