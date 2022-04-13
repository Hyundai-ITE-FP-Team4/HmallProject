
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--------------------------------------------------------------
파일명: mypage.jsp
기능: 마이페이지 화면 구현
작성자: 황명하

코멘트: 현대몰 내 마이페이지 html 코드 참조, 회원명, 회원 등급, 회원 포인트 출력
 -------------------------------------------------------------->

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, height=device-height">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection"
	content="telephone=no, email=no, address=no">
<meta name="apple-mobile-web-app-capable" content=" yes">
<meta name="robots" content="index,follow">
<meta name="title" content="https://hmall.com">
<meta name="author" content="@Hmall">
<meta name="description"
	content="백화점, 브랜드, 홈쇼핑까지- 당신의 모든 취향을 읽다. Korean Online Shopping Mall, Worldwide Shipping available, Hyundai Department Store Group in Korea. 韩国现代百货店的线上购物网站正品保障, 海外配送.">
<meta name="keywords" content="">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>마이페이지 - 현대Hmall</title>

<!-- includeScript -->
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
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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

<script>
	$.fn.size = function() {
		return this.length;
	}

	/**
	 * 팝업 관련  함수(아래 링크를 참고하고 있음)
	 * as-is https://image.hmall.com/pc/js/hmall/co/common.js
	 * serverHost indexof local이 없어 추가-> 추후 as-is js 생성 필요
	 * 2020.09.21 http -> https 로 던지도록 변경
	 */
	document.domain = "hmall.com";
	var locationHref = document.location.href;
	var imageServer = "https://image.hmall.com";
	var serverHost = (location.href.indexOf("final") > 0
			|| location.href.indexOf("stg") > 0
			|| location.href.indexOf("dev") > 0 || location.href
			.indexOf("local") > 0) ? "https://" + location.host
			: "https://www.hmall.com";
	var serverHostForSSL = (location.href.indexOf("final") > 0
			|| location.href.indexOf("stg") > 0
			|| location.href.indexOf("dev") > 0 || location.href
			.indexOf("local") > 0) ? "https://" + location.host
			: "https://www.hmall.com";
	var switch_serverHost;

	if (locationHref.indexOf("https") > -1) {
		switch_serverHost = serverHostForSSL;
		imageServer = "https://image.hmall.com";
	} else if (locationHref.indexOf("http") > -1) {
		switch_serverHost = serverHost;
		imageServer = "https://image.hmall.com";
	}

	try {
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());
		gtag('config', 'AW-1066206974');
		gtag('config', 'AW-937000404');
	} catch (e) {
	}

	function getClickUrl(url) {
		if (url == '') {
			return false;
		} else {
			document.location.href = url;
		}
	}
	
</script>

<!-- includeScript -->
<link rel="stylesheet" type="text/css"
	href="//image.hmall.com/p/css/mp/mypage.css">

</head>

<body>
<div class="wrap consult-main"><!-- wing banner 미노출 시 : wing-none 클래스 추가 -->
    <div class="nav-skip"><a href="#mainContents">본문 콘텐츠로 건너뛰기</a></div>

	<!-- gnb setting -->
<!-- header -->
<script type="text/javascript" src="//image.hmall.com/gen/js/searchPopKeyWordList.js?ver=040709"></script>
<script type="text/javascript" src="//image.hmall.com/gen/js/searchADTextList.js?ver=040709" charset="UTF-8"></script>
<script type="text/javascript" src="//image.hmall.com/gen/js/searchADLinkList.js?ver=040709" charset="UTF-8"></script>
<script type="text/javascript" src="//image.hmall.com/gen/js/searchSpecialShopLinkList.js?ver=040709" charset="UTF-8"></script>
<script type="text/javascript" src="//image.hmall.com/gen/js/searchBrndShopLinkList.js?ver=040709" charset="UTF-8"></script>
<script type="text/javascript" src="//image.hmall.com/gen/js/new_main_data.js?ver=040709" charset="UTF-8"></script>

<!-- TODO 곽희섭 20170523 통합포인트 추가 -->
<script type="text/javascript" src="//image.hmall.com/p/js/cu/SsoAjax.js?version=1"></script>

<!-- TODO 곽희섭 20170517 통합포인트 추가 -->
<form id="loginForm" name="loginForm" method="post" action="https://www.h-point.co.kr/cu/login.nhd" target="sendLogin">
	<input type="hidden" name="retUrl" value="https://www.hmall.com/p/cob/upntGatePage.do">
	<input type="hidden" name="retPage" value="">
	<input type="hidden" name="prtnrId" value="D020" readonly>
	<input type="hidden" name="chnnlId" value="1102">
	<input type="hidden" name="htmlYn" value="Y">
	
	<input type="hidden" name="ci" value="">
</form>
<form id="myPntForm" name="myPntForm" method="post" action="" target="myPntForm">
	<input type="hidden" name="mcustNo" value="">
</form>

	<!-- skip navigation -->
	<div class="nav-skip"><a href="#mainContents" id="accessibility">본문 콘텐츠로 건너뛰기</a></div>


<%@ include file="../header.jsp"%>

	<main class="cmain mypage" role="main" id="mainContents">
		<!-- 마이페이지 'mypage' 클래스 추가 -->
		<div class="container">
			<div class="gird-l2x">
				<!--20170816 박승택 추가 -->
				<form name="upntLeftForm" method="post" target="uPnt">
					<input type="hidden" name="mcustNo"
						value="bm5pU0VSSFRXVnRiRE5VVjNCQ1pWVXhjVkZVUWs1U1JscFdWbXhhUzFFeGNFVlJWRlpUVm01Qk1sVXljelZpUjBwSVl6Tm9WMUp0YUhGVU1WcERWakZTYzFWc1ZtdGxha0Ux">
				</form>

				<%@ include file="sidebar.jsp"%>

				<div class="contents">
					<div class="mypage-order-wrap zzim">
						<div class="myinfo-area silver-lv">
							<div>
								<p class="myname">
								<!-- 해당유저의 회원 이름 출력(황명하)  -->
									<a href="/p/mpd/changeMemberInfoForm.do" class="btn-link"><em>${membershipVO.user_name}님</em></a>
								</p>
								<div class="rating">
								<!-- 해당유저의 회원 등급 출력(황명하) -->
									<span class="silver-lv"><i class="icon"></i><em>${membershipVO.grade}</em></span>
									<div class="btngroup">
										<a href="https://www.hmall.com/pevent/eva/evntFamilyZoneMain.do"
											class="btn btn-benefit sm"><span>혜택보기</span></a>
									</div>
								</div>
							</div>
							<ul class="infowrap">
								<li><a href="do_not.html"> <span
										class="link"><b>0</b>장</span> <span class="txt">보유 쿠폰</span>
								</a></li>
								<li><a href="javascript://" onclick="doSearchUPntMainPop()">
										<!-- 해당유저의 회원 포인트(황명하) -->
										<span class="link"> <b>${membershipVO.user_point}</b>P
									</span> <span class="txt">포인트</span>
								</a></li>
								<li><a
									href="do_not.html">
										<span class="link"><b>0</b>건</span> <span class="txt">작성 가능한 상품평</span>
								</a></li>
								<li><a href="do_not.html">
										<span class="link"><b>0</b>건</span> <span class="txt">참여한 이벤트</span>
								</a></li>
							</ul>
						</div>

						<div id="bannerWrap" class="banner-template">
							<a href="javascript:;"
								data-background="#F2EDF8|#EFF6FC|#F8F8EA|#F9F2ED|#FFF2F4|#F3EBEA|#F0F6EA"
								style="background: rgb(243, 235, 234);" id="mktgBanner"
								onclick="bannerClick()">
								<div class="banner" id="bannerImg">
									<img
										src="https://image.hmall.com/HM/HM026/20220330/155223/welcome.jpg">
								</div>
								<div class="banner-txt">
									<p class="tit" id="sogu1">환영합니다! 첫 구매 고객님♡</p>
									<p class="txt" id="sogu2">첫 구매 고객 전용 3만원 쿠폰팩~!</p>
								</div>
							</a>
						</div>

						<h3 class="title22">
							최근 주문/배송 현황
							<!-- 주문/배송현황 페이지로 이동 -->
							<div class="btngroup abs">
								<a href="/p/mpa/selectOrdDlvCrst.do" class="btn atext"><span>전체보기</span><i
									class="arrow right"></i></a>
							</div>
						</h3>

						<div class="order-list">

							<div class="nodata">
								<span class="bgcircle"><i class="icon nodata-type7"></i></span>
								<p>최근 14일간의 주문한 상품이 없습니다.</p>
							</div>
						</div>

						<h3 class="title22">
							찜
							<div class="btngroup abs">
								<a href="/p/mpc/sltdItemList.do" class="btn atext"
									onclick="gaTagging(this, '', '', '');" ga-custom-name="마이페이지"
									ga-custom-position="찜한 상품" ga-custom-creative="전체보기"
									ga-custom-title="마이페이지>메인" ga-custom-etc="urlAction"><span>전체보기</span><i
									class="arrow right"></i></a>
							</div>
						</h3>
						<div class="pdlist-wrap col4">

							<div class="nodata">
								<p>찜한 상품이 없습니다.</p>
							</div>
						</div>

						<div class="list-head" id="divRcmmItem" style="display: none;">
							<h3 class="title22">Hmall 추천상품</h3>
						</div>
						<div id="rcmmSectArea" class="pdlist-wrap col4"></div>
					</div>
				</div>
				<!-- // .contents -->
			</div>
		</div>
	</main>
	
<%@ include file="../footer.jsp"%>