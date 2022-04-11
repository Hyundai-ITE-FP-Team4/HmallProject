<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">

<head>
<title>${ categoryVO.categoryName } - 현대Hmall</title>









<meta name="title" content="${ categoryVO.categoryName } - 현대Hmall">



<meta name="description" content="Hmall > ${ categoryVO.categoryName }">
<meta name="keywords" content="Hmall > ${ categoryVO.categoryName }">





<!-- script -->






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









<script type="application/ld+json">
{
"@context": "http://schema.org",
"@type": "Organization",
"name": "hmall",
"url": "https://www.hmall.com",
"sameAs": [
"https://www.facebook.com/hyundaiHmall",
"https://www.youtube.com/c/%ED%9B%85%ED%8B%B0%EB%B9%84",
"https://www.instagram.com/hyundai.homeshopping/",
"https://itunes.apple.com/kr/app/id870397981",
"https://play.google.com/store/apps/details?id=com.hmallapp&hl=ko",
"http://myhmall.tistory.com"
]
}
</script>

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

<!-- Google analytics -->
<script type="text/javascript"
	src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=040516"></script>
<script type="text/javascript"
	src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=040516"></script>



<script type="text/javascript">
	var oneClickFlag = 0;
	function setDimension() {

		if (oneClickFlag != 0) {
			return false;
		}

		oneClickFlag = 1;

		if (location.pathname.indexOf("/p/cob/memberLogin.do") > -1) {
			return;
		}
		var GA_info = {};

		GA_info = setDimenData(GA_info);

		GA_Init(GA_info);

		if (location.pathname.replace("//", "/") == '/m/pda/smItemDetailR.do'
				|| location.pathname.replace("//", "/") == '/p/pda/itemPtc.do'
				&& pdaItemPtcCnt == 0) {
			pdaItemPtcCnt = 1;
			var product_array = [];
			product_array.push({
				'id' : '',
				'name' : '',
				'brand' : '',
				'category' : '',
				'dimension51' : 'default',
				'dimension52' : '',
				'dimension53' : '',
				'dimension54' : '',
				'dimension55' : '',
				'dimension56' : '',
				'dimension57' : '',
				'dimension58' : '',
				'dimension59' : '',
				'dimension60' : '',

				'dimension62' : '',
				'dimension63' : '',
				'dimension64' : ''
			});

			var ecommerce_hit = new Object();
			ecommerce_hit[GAHitKey.NonInteraction] = '1';
			var action_obj = new Object();

			GADataSend_Ecommerce(GAEcommerceStepKey.Detail, action_obj,
					product_array, ecommerce_hit);

		} else if (location.pathname == '/p/oda/orderComplete.do'
				&& ordCompleteCnt == 0) {
			ordCompleteCnt = 1;
			var product_array = [];

			var ecommerce_hit = new Object();
			ecommerce_hit[GAHitKey.NonInteraction] = '1';
			ecommerce_hit[GAHitKey.currencyCode] = 'KRW';

			ecommerce_hit[GACustomKey.Metric1] = 0;

			ecommerce_hit[GACustomKey.Metric2] = 0;

			ecommerce_hit['dimension74'] = '';
			ecommerce_hit['dimension75'] = '';

			var action_obj = new Object();
			action_obj[GAActionFieldKey.TransactionID] = '';
			action_obj[GAActionFieldKey.TransactionRevenue] = '0';
			action_obj[GAActionFieldKey.TransactionShipping] = '0';

			action_obj[GAActionFieldKey.TransactionCouponCode] = '';

			GADataSend_Ecommerce(GAEcommerceStepKey.Purchase, action_obj,
					product_array, ecommerce_hit);
			oneClickFlag = 0;
		}
	}

	function setDimenData(GA_info) {
		var _ga = getCookieGA('_ga');
		if (_ga != null) {
			GA_info[GACustomKey.Dimension1] = _ga;
		}

		var uid = "";
		if (getCookieGA('ENCEHCustNO') != null
				&& getCookieGA('ENCEHCustNO') != "") {
			uid = getCookieGA('ENCEHCustNO');
		}

		if (uid == "" || uid.length != 32) {

		} else {
			GA_info[GACustomKey.Dimension2] = uid;
			GA_info[GAHitKey.UserId] = uid;

			$.ajax({
				type : "post",
				url : "/p/GA_getDimension.do",
				data : "",
				dataType : "json",
				async : true,
				success : function(data) {
					console.log("ajax Return");
				}
			});

		}

		var _gaid = getCookieGA('GAID');
		if (_gaid != null) {
			GA_info[GACustomKey.Dimension11] = _gaid;
		}

		GA_info[GACustomKey.Dimension12] = "N";

		if (location.pathname == '/p/pde/search.do') {

			GA_info[GACustomKey.Dimension19] = "N";

		}

		GA_info[GACustomKey.Dimension16] = "PCWEB";

		GA_info[GACustomKey.Dimension35] = location.href.replace("http://", "")
				.replace("https://", "");

		return GA_info;
	}

	function setGaDataSend_Event(evntType, product_array) {
		/* var product_array = [];
		if(product_array_param != null && product_array_param != undefined){
			product_array = product_array_param;
		} */
		var ecommerce_hit = new Object();
		var action_obj = new Object();

		if (location.pathname == '/m/pda/smItemDetailR.do'
				|| location.pathname == '/p/pda/itemPtc.do') {

			if (evntType == GAEcommerceStepKey.Checkout) {
				action_obj[GAActionFieldKey.CheckoutStep] = '1';
				GADataSend_Ecommerce(evntType, action_obj, product_array,
						ecommerce_hit);
			} else {
				ecommerce_hit[GAHitKey.NonInteraction] = '1';
				GADataSend_Ecommerce(evntType, action_obj, product_array,
						ecommerce_hit);
			}

		} else if (location.pathname == '/p/oda/order.do') {

			try {
				var itemGbcd = ""; // 무형상품체크, 유/무형 상품 같이 구매 불가하므로..

			} catch (e) {

			}

			if (evntType == GAEcommerceStepKey.Checkout) {
				var ecommerce_hit = new Object();
				var action_obj = new Object();
				action_obj[GAActionFieldKey.CheckoutStep] = '2';

				var selOrderType = $("input[name='payType']:checked").val();

				if (selOrderType == '10') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '01 카드';
					ecommerce_hit['dimension75'] = '01 카드';
				} else if (selOrderType == '20') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '02 현금';
					ecommerce_hit['dimension75'] = '02 현금';
				} else if (selOrderType == '40') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '12 휴대폰결제';
					ecommerce_hit['dimension75'] = '12 휴대폰결제';
				} else if (selOrderType == '91') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '15 페이코';
					ecommerce_hit['dimension75'] = '15 페이코';
				} else if (selOrderType == '30') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '20 현금(실시간)';
					ecommerce_hit['dimension75'] = '20 현금(실시간)';
				} else if (selOrderType == '95') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '21 네이버페이';
					ecommerce_hit['dimension75'] = '21 네이버페이';
				} else if (selOrderType == '96') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '22 스마일페이';
					ecommerce_hit['dimension75'] = '22 스마일페이';
				} else if (selOrderType == '97') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '23 카카오페이';
					ecommerce_hit['dimension75'] = '23 카카오페이';
				} else if (selOrderType == '81') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '25 토스';
					ecommerce_hit['dimension75'] = '25 토스';
				} else if (selOrderType == '99') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '24 현금간편결제';
					ecommerce_hit['dimension75'] = '24 현금간편결제';
				} else if (selOrderType == '50') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '98 카드+현금';
					ecommerce_hit['dimension75'] = '98 카드+현금';
				} else if (selOrderType == '93') {
					action_obj[GAActionFieldKey.CheckoutOptions] = '99 삼성페이';
					ecommerce_hit['dimension75'] = '99 삼성페이';
				} else {
					action_obj[GAActionFieldKey.CheckoutOptions] = 'default';
					ecommerce_hit['dimension75'] = 'default';
				}

				// 무형상품이면 고정 - 이호정선임요청 2021.01.28 김기호
				if (itemGbcd == "04") {
					console.log("무형상품이므로 Dimension75:무형상품");
					action_obj[GAActionFieldKey.CheckoutOptions] = '무형상품';
					ecommerce_hit[GACustomKey.Dimension75] = '무형상품';
				} else {

					ecommerce_hit[GACustomKey.Dimension74] = '일반구매';

				}
				GADataSend_Ecommerce(evntType, action_obj, product_array,
						ecommerce_hit);
			}
		} else {
			GADataSend_Ecommerce(evntType, action_obj, product_array,
					ecommerce_hit);
		}

	}

	function sendSlitmClick(slitmNm, slitmCd, tabNm) {

		if (slitmNm == "" || slitmCd == "" || tabNm == "")
			return;

		var product_array = [];
		product_array.push({
			'id' : slitmCd,
			'name' : slitmNm
		});

		var action_obj = new Object();
		action_obj[GAActionFieldKey.ProductActionList] = tabNm;

		var ecommerce_hit = new Object();
		GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj,
				product_array, ecommerce_hit);
	}

	function getParameterByName(url, name) {
		if (url == "" || name == "" || url == undefined || name == undefined) {
			return;
		}

		name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex
				.exec(url);
		return results === null ? "" : decodeURIComponent(results[1].replace(
				/\+/g, " "));
	}

	function setGaPromotion(title, name, position, creative, id) {
		var action_obj = new Object();
		var ecommerce_hit = new Object();
		var tabNm = title;
		if (tabNm.length > 0) {
			tabNm = tabNm.substring(tabNm.indexOf(">") + 1, tabNm.length);
		}

		ecommerce_hit[GAHitKey.Title] = title;

		action_obj["promo1"] = {};
		action_obj["promo1"][GAActionFieldKey.PromotionName] = name;
		action_obj["promo1"][GAActionFieldKey.PromotionPosition] = position;
		action_obj["promo1"][GAActionFieldKey.PromotionCreative] = creative;
		action_obj["promo1"][GAActionFieldKey.PromotionID] = id;

		if (name.substring(0, name.indexOf("_")) == "메인") {
			console.log("setGaPromotion()................4");
			ecommerce_hit[GACustomKey.Dimension31] = '메인';
			ecommerce_hit[GACustomKey.Dimension32] = '메인>' + tabNm;
			ecommerce_hit[GACustomKey.Dimension33] = '메인>' + tabNm;
			ecommerce_hit[GACustomKey.Dimension34] = '메인>' + tabNm;
		}

		GADataSend_Ecommerce(GAEcommerceStepKey.PromotionClick, action_obj,
				null, ecommerce_hit);
	}

	function getCookieGA(name) {
		var cname = name + "=";
		var dc = document.cookie;
		if (dc.length > 0) {
			begin = dc.indexOf(cname);
			if (begin != -1) {
				begin += cname.length;
				end = dc.indexOf(";", begin);
				if (end == -1)
					end = dc.length;
				if ("EHCustName" == name || "LAST_SECT" == name) {
					return decodeURIComponent(dc.substring(begin, end));
				} else {
					return unescape(dc.substring(begin, end)).replace('GA1.2.',
							'');
				}
			}
		}
		return null;
	}

	function sendSlitmClickGo(slitmNm, slitmCd, tabNm, url) {

		if (slitmNm == "" || slitmCd == "" || tabNm == "" || url == "")
			return;

		var product_array = [];
		product_array.push({
			'id' : slitmCd,
			'name' : slitmNm
		});

		var action_obj = new Object();
		action_obj[GAActionFieldKey.ProductActionList] = tabNm;

		var ecommerce_hit = new Object();
		GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj,
				product_array, ecommerce_hit);

		document.location.href = url;
	}
	function sendSlitmClickNewWin(slitmNm, slitmCd, tabNm, url) {

		if (slitmNm == "" || slitmCd == "" || tabNm == "" || url == "")
			return;

		var product_array = [];
		product_array.push({
			'id' : slitmCd,
			'name' : slitmNm
		});

		var action_obj = new Object();
		action_obj[GAActionFieldKey.ProductActionList] = tabNm;

		var ecommerce_hit = new Object();
		GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj,
				product_array, ecommerce_hit);

		try {
			_trk_flashEnvView('_TRK_PI=LYRNWN');
		} catch (e) {
		}

		try {
			_trk_clickTrace("EVT", "상품리스트_새창");
		} catch (e) {
		}
		window.open(url, '_blank');
	}

	function bizSpringTagForHome(url, tag, pathVal) {

		location.href = url
	}

	function gaTagging(obj_GA, msg1, msg2, msg3) {
		console.log("gaTagging()................");
		var title = $(obj_GA).attr("ga-custom-title") == undefined ? "" : $(
				obj_GA).attr("ga-custom-title");
		var name = $(obj_GA).attr("ga-custom-name") == undefined ? "" : $(
				obj_GA).attr("ga-custom-name");
		var position = $(obj_GA).attr("ga-custom-position") == undefined ? ""
				: $(obj_GA).attr("ga-custom-position");
		var creative = $(obj_GA).attr("ga-custom-creative") == undefined ? ""
				: $(obj_GA).attr("ga-custom-creative");
		var id = $(obj_GA).attr("ga-custom-id") == undefined ? "" : $(obj_GA)
				.attr("ga-custom-id");
		var etc = $(obj_GA).attr("ga-custom-etc") == undefined ? "" : $(obj_GA)
				.attr("ga-custom-etc");
		var etc2 = $(obj_GA).attr("ga-custom-etc2") == undefined ? "" : $(
				obj_GA).attr("ga-custom-etc2");

		setGaPromotion(title, name, position, creative, id);
		//마케팅플랫폼 전용 >>> 마케팅 플랫폼은 Tab명이 다르기 때문에 if문 처리
		/*
		if(gaForTabNm != "" && gaForTabNm != null && gaForTabNm != undefined && etc2 == "Y"){
		    title = "메인>"+gaForTabNm;
		    name = "메인_"+gaForTabNm+"탭";
		}
		
		if(etc2 == "N"){//마케팅플랫폼 전용 >>> 마케팅플랫폼 jsp가 기획전에도 쓰이기 때문에 if문 처리.(mainTabYn)
		    //추후 이곳에 마케팅플랫폼 기획전일 경우 분기분 넣는다...
		    
		}else{
		    console.log("setGaPromotion()................1");
		    setGaPromotion(title, name, position, creative, id);    
		}
		 */

		if (etc == "home") {
			bizSpringTagForHome(msg1, msg2, msg3);
		} else {
			if (msg1 != null && msg1 != "" && msg1.length > 0) {
				location.href = msg1;
			}
		}
	}
</script>
<!-- GA Custum lib -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-1066206974"></script>
<!-- Google analytics end -->

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

	//Google Analytics
	var init_Obj = new Object();

	$(window).on("load", function() {
		// $("body").prepend('hello new UI');

		//GA 맞춤측정 데이터 전송 및 클릭이벤트 초기화
		console.log("setDimension and useWindload 호출");
		setDimension();
		useWinload();

	});

	// GNB - 바로가기 링크
	function setQuicklink(jsonData) {
		var _data = jsonData;
		var _html = "";

		$(_data)
				.each(
						function(_idx) {
							var _label = this.dispNm.toString();
							var _dispUrl = this.dispUrl.toString();
							var _item = "";

							if (_idx == 0)
								_item = "<li class='first'>";
							else
								_item = "<li>";

							var _bizParam = _dispUrl.indexOf("?") >= 0 ? "&_IC_=tab"
									+ (_idx + 1)
									: "?_IC_=tab" + (_idx + 1);

							_item += "<a href='" + _dispUrl + _bizParam + "' class='gp_className' ga-category='메인 홈' ga-action='상단탭' ga-label='" + _label + "'>"
									+ _label + "</a>" + "</li>";

							_html += _item;
						});

		$('.quicklink.ql-left').empty().append(_html);
	}
	/*    
	 function gaTagging(obj_GA, msg1, msg2, msg3){
	 location.href = msg1;    	
	 }
	 */
	function getClickUrl(url) {
		if (url == '') {
			return false;
		} else {
			document.location.href = url;

		}
	}
</script>

<!-- //script -->

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
	
		<!-- header -->
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

							<!-- 로케이션 소분류 -->
							<li data-menu="">
								<a href="javascript://" class="cate">선택하세요.</a>

								<div class="category-wrap" data-submenu="" style="">
									<ul class="category-list">
										<c:forEach var="category" items="${ categoryList }">
											<li><a href="HmallServlet?command=category&cCode=${ category.categoryCode }">${ category.categoryName }</a></li>
										</c:forEach>
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

		<!-- footer -->
		<footer class="footer">
			<div class="link-area">
				<div class="link-area-in">
					<h2 class="hiding">푸터메뉴</h2>
					<div class="short-menu">
						<ul>
							<li><a href="http://www.ehyundai.com/newPortal/ir/main.do"
								target="_blank">현대백화점그룹</a></li>
							<li><a href="http://www.ehyundai.com/newPortal/index.jsp"
								target="_blank">현대백화점소개</a></li>
							<li><a href="https://company.hyundaihmall.com/"
								target="_blank">현대홈쇼핑소개</a></li>
							<li><a
								href="https://company.hyundaihmall.com/html/company/company_ethics-2.html"
								target="_blank">윤리경영</a></li>
							<li><a
								href="https://company.hyundaihmall.com/html/investment/investment_stock.html"
								target="_blank">IR</a></li>
							<li><a href="https://recruit.ehyundai.com/index.nhd"
								target="_blank">채용안내</a></li>
							<li><a
								href="https://company.hyundaihmall.com/html/affiliate/affiliate_contract-1.html"
								target="_blank">신규입점</a></li>
							<li><a
								href="https://company.hyundaihmall.com/html/affiliate/affiliate_marketing-1.html"
								target="_blank">마케팅/제휴안내/광고</a></li>
							<li><a href="/p/oda/massOrdReq.do" target="_blank">대량주문</a></li>
						</ul>
					</div>
					<!-- // .short-menu -->

					<!-- on 클래스 추가 시 select layer 노출 -->
					<div class="family-site">
						<div class="select-label"
							data-modules-customtoggle="parent:.family-site;activeClass:on;">Family
							Site</div>
						<!-- 디자인 반영 전 -->
						<div class="select-layer">
							<h3 class="group">쇼핑몰 Site</h3>
							<ul>
								<li><a href="http://www.thehyundai.com" target="_blank"
									title="더현대닷컴">더현대닷컴</a></li>
								<li><a
									href="https://www.hddfs.com/shop/dm/main.do?ptnrChlCd=00003014"
									target="_blank" title="현대백화점 DUTY FREE">현대백화점 DUTY FREE</a></li>
								<li><a href="http://esuper.ehyundai.com" target="_blank"
									title="e수퍼마켓">e수퍼마켓</a></li>
								<li><a href="http://www.thehansome.com" target="_blank"
									title="더한섬">더한섬</a></li>
								<li><a href="http://mall.hyundailivart.co.kr"
									target="_blank" title="현대리바트몰">현대리바트몰</a></li>
								<li><a href="http://www.hyundairentalcare.co.kr"
									target="_blank" title="현대렌탈케어">현대렌탈케어</a></li>
								<li><a href="http://www.hfashionmall.com" target="_blank"
									title="H패션몰">H패션몰</a></li>
								<li><a href="https://tohome.thehyundai.com" target="_blank"
									title="현대백화점 식품관">현대백화점 식품관</a></li>
								<li><a href="https://www.greating.co.kr" target="_blank"
									title="그리팅">그리팅</a></li>
								<li><a href="https://www.eqlstore.com/main" target="_blank"
									title="한섬EQL">한섬EQL</a></li>
								<li><a href="https://www.hyundailnc.com" target="_blank"
									title="현대L&amp;C몰">현대L&amp;C몰</a></li>
							</ul>
							<h3 class="group">관계사 Site</h3>
							<ul>
								<li><a href="http://www.ehyundai.com/newPortal/ir"
									target="_blank" title="현대백화점 그룹">현대백화점 그룹</a></li>
								<li><a href="http://www.ehyundai.com" target="_blank"
									title="현대백화점">현대백화점</a></li>
								<li><a href="http://www.hyundaigreenfood.com"
									target="_blank" title="현대그린푸드">현대그린푸드</a></li>
								<li><a href="http://www.thehansome.com" target="_blank"
									title="한섬">한섬</a></li>
								<li><a href="http://www.hyundailivart.co.kr"
									target="_blank" title="현대리바트">현대리바트</a></li>
								<li><a href="http://www.hyundairentalcare.co.kr"
									target="_blank" title="현대렌탈케어">현대렌탈케어</a></li>
								<li><a href="http://www.hyundaidreamtour.com"
									target="_blank" title="현대드림투어">현대드림투어</a></li>
								<li><a href="http://www.everdigm.com" target="_blank"
									title="에버다임">에버다임</a></li>
								<li><a href="http://www.cnsfoodsystem.co.kr"
									target="_blank" title="씨엔에스푸드시스템">씨엔에스푸드시스템</a></li>
								<li><a href="http://www.hyundaicatering.co.kr"
									target="_blank" title="현대캐터링시스템">현대캐터링시스템</a></li>
								<li><a href="http://www.hyundai-ite.com" target="_blank"
									title="현대IT&amp;E">현대IT&amp;E</a></li>
							</ul>
						</div>
						<!-- // .select-layer -->
					</div>
					<!-- // .family-site -->
				</div>
				<!-- // .link-area-in -->
			</div>
			<!-- // .link-area -->

			<div class="footer-contents">
				<div class="footer-logo">
					<img src="//image.hmall.com/p/img/co/footer-logo.jpg" alt="HYUNDAI">
				</div>
				<div class="info-area">
					<div class="policy-link-list">
						<ul>
							<li><a href="/p/cod/shmlTcnd.do">이용약관</a></li>
							<li><a href="/p/cod/psnHndl.do"><strong>개인정보
										처리방침</strong></a></li>
							<li><a
								href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=2118676540"
								target="_blank">사업자정보확인</a></li>
							<li><a
								href="https://company.hyundaihmall.com/html/company/company_ethics-1.html"
								target="_blank">공정거래 자율준수</a></li>
							<li><a href="/p/cod/psnHdhsInnerCntrl.do">보험대리점 내부통제기준</a></li>
						</ul>
					</div>
					<!-- // .policy-link-list -->

					<!-- on 클래스 추가 시 노출 -->
					<div class="footer-info">
						<button class="btn-footer"
							data-modules-customtoggle="parent:.footer-info;activeClass:on;">
							<strong>(주)현대홈쇼핑</strong>
						</button>
						<div class="footer-info-box">
							<div class="hmall-info">
								<div class="list-contents">
									<p>
										<span>대표이사 : 임대규</span><span>주소 : 서울특별시 강동구 올림픽로70길 34
											(주)현대홈쇼핑</span>
									</p>
									<p>
										<span>고객센터 TEL : 1600-0000(유료)</span><span>고객만족사업부 FAX
											: 02-2143-2731</span>
									</p>
									<p>
										<span>기타문의 : <a href="mailto:webmaster@hmall.com">webmaster@hmall.com</a></span><span>사업자등록번호
											: 211-86-76540</span>
									</p>
									<p>
										<span>통신판매업 신고 : 제 25-3133호</span><span>부가통신 신고번호 :
											3787</span>
									</p>
									<p>
										<span>정보보호최고책임자 : 정보보호담당 오권호</span><span>청소년보호책임자 :
											Hmall사업부 홍성일</span>
									</p>
									<p>
										<span>호스팅서비스 : (주)현대홈쇼핑</span>
									</p>
								</div>
							</div>
							<!-- // .hamall-info -->

							<div class="service-info-wrap">
								<p class="safe-info">
									우리은행 구매안전 서비스 <a href="#"
										onclick="window.open('https://www.hmall.com/static/html/popup/2013/11/woori_escrow.html','','left=300,top=150,scrollbars=yes,resizable=no,width=558,height=580'); return false;"
										target="_blank">가입사실 확인</a> 고객님은 안전거래를 위해 현금 결제 시 저희 쇼핑몰에서 가입한
									우리은행의 구매안전 서비스를 이용하실 수 있습니다.
								</p>
								<div class="cs-link">
									<a href="/p/cod/hdhsArs.do">ARS안내</a> <a
										href="/p/ccc/faqList.do?faqLCsfNo=&amp;ancmCntn=카카오톡&amp;sort=false&amp;faqMCsfNo="
										onclick="javascript:bizSpringTag('','^푸터^카톡주문안내');"
										name="shopGuide">카톡주문안내</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!--//footer -->
	</div>
</body>