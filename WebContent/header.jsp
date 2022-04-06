
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=040514"></script>
<script type="text/javascript"
	src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=040514"></script>

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

<!-- includeScript -->
<link rel="stylesheet" type="text/css"
	href="//image.hmall.com/p/css/mp/mypage.css">
<script type="text/javascript">
	var gaMktgUrl = "";
	var gaMktg3 = "";
	// 내부 팝업에서 데이터 수정후 호출
	function fnRefresh() {
		location.href = "/p/mpf/selectMyPageMain.do";
	}

	jQuery(function($) {
		$(".myShoping > dl[class='type1']")
				.click(
						function() {
							location.href = "http://www.hmall.com/p/mpc/selectRecentItemList.do";
						});

		$(".myShoping > dl[class='type3']").click(function() {
			location.href = "/p/mpc/bitmAlrimList.do";
		});
		$(".myShoping > dl[class='type4']").click(function() {
			location.href = "/p/mpc/sltdItemList.do?SkyscraperGroup=WishList";
		});
		$(".myShoping > dl[class='type5']").click(function() {
			location.href = "/p/odb/basktList.do?GnbGroup=Basket";
		});

		rcmmItem();
	});

	$(document).ready(function() {
		bannerOpen();
	});

	// 상품속성변경레이어 오픈
	function openUitmLayer(slitmCd, bsitmCd, ordNo, ordPtcSeq, uitmCd) {
		$("#uitmPupLayer iframe").attr(
				"src",
				"/p/mpa/selectOrdUitmPup.do?slitmCd=" + slitmCd + "&bsitmCd="
						+ bsitmCd + "&ordNo=" + ordNo + "&ordPtcSeq="
						+ ordPtcSeq + "&uitmCd=" + uitmCd);
	}

	function bannerOpen() {
		var itntId = '';
		var grdGbCdNm = "SILVER";

		$.ajax({
			type : "post",
			data : {
				itntId : itntId,
				grdGbCdNm : grdGbCdNm
			},
			url : "/p/mpf/bannerOpen.do",
			success : function(data) {
				if (data.actorError == "true") {
					$("#bannerWrap").hide();
				} else {
					$("#mktgBanner").show();
					var rank = data.rank;
					if (rank == "1" || rank == "2" || rank == "3"
							|| rank == "4" || rank == "5" || rank == "6") {
						$("#sogu1").html(data.sogu1);
						$("#sogu2").html(data.sogu2);
						//var url = imageServer + data.img;
						var url = imageServer + data.img;

						$("#bannerImg").append("<img src=" + url+ ">");
						//document.getElementById('bannerWrap').style.background = "#"+data.bgColor ; 
						gaMktg3 = data.sogu1;
						gaMktgUrl = data.linkUrl;
						//document.getElementById('mktgBanner').href = data.linkUrl ; 

					} else {
						$("#bannerWrap").hide();
					}
				}
			},
			error : function(data) {
				console.log("마케팅 동의에 실패하였습니다.");
			}

		});
	}
	// 모바일 전송확인
	function openMblConSendPupLayer(ordNo, ordPtcSeq, slitmCd) {
		var left = ($(window).scrollLeft() + $(window).width()) / 2 + "px";
		var top = ($(window).scrollTop() + ($(window).height() / 2)) + "px";
		showLoadingBar(left, top);
		$.ajax({
			type : "post",
			url : "/p/mpf/selectMblConSendPup.do",
			data : {
				ordNo : ordNo,
				ordPtcSeq : ordPtcSeq,
				slitmCd : slitmCd
			},
			success : function(data) {
				$("#mblConSendPupLayer").html(data).modal().show();
				hideLoadingBar();
			},
			error : function(data) {
			}
		});
	}

	// 모바일 상품권 재전송 Mute:M12 재전송 결과 메시지 정상처리. 
	// 기존은 무조건 '전송을 요청중입니다'를 찍고 창닫음.
	function mblConReSend(ordNo, ordPtcSeq) {
		$.ajax({
			type : "post",
			url : "/p/mpf/updateMblConSendPup.do",
			data : {
				ordNo : ordNo,
				ordPtcSeq : ordPtcSeq
			},
			success : function(data) {
				if (data.errorMessages.length > 0) { // Mute:M12 에러 메시지 처리.
					alert(data.errorMessages[0]);
				} else {
					alert("재전송 요청을 완료하였습니다.");
				}
				$("#mblConSendPupLayer .btn-close").click();
			},
			error : function(data) {
			}
		});
	}

	//온라인 공연 상품 발송(2128299062 1회성 발송으로 하드코딩 작업, 추후 신규상품유형 추가)
	function mblSmsReSend(ordNo) {
		$
				.ajax({
					type : "post",
					url : "/p/mpf/insertSmsReSendInf.do",
					data : {
						ordNo : ordNo
					},
					success : function(data) {
						if (data.errorMessages == null
								|| data.errorMessages.length > 0) {
							alert(data.errorMessages[0]);
						} else {
							alert("재전송 요청을 완료하였습니다.");
						}
						$("#mblConSendPupLayer .btn-close").click();
					},
					error : function(data) {
						alert("재발송에 실패하였습니다.");
					}
				});
	}

	function faqSrch() {
		location.href = "http://www.hmall.com/p/ccc/faqList.do?ancmCntn="
				+ $("#ancmCntn").val();
	}

	//배송지변경 팝업
	function openOrdDstnPup(ordNo, dstnSeq) {
		openPopup("/p/mpa/selectOrdDstnPup.do?ordNo=" + ordNo + "&dstnSeq="
				+ dstnSeq + "", "selectOrdDstnPup", 820, 930, "yes", $(window)
				.width(), $(window).height());
	}

	//재결제 팝업
	function openRePaymentPup(ordNo) {
		openPopup("/p/mpa/selectReOrderPup.do?ordNo=" + ordNo + "",
				"popupOpenRePayment", 836, 685, "yes", $(window).width(), $(
						window).height());
	}

	function openDlvTrcUrlPup(ordNo, ordPtcSeq) {
		window
				.open("/p/mpa/selectDlvTrcUrl.do?ordNo=" + ordNo
						+ "&ordPtcSeq=" + ordPtcSeq + "", "openDlvTrcUrlPup",
						"toolbar=no, menubar=no, width=510, height=680, scrollbars=yes, resizable=yes");
	}

	function dlvSearch(ordNo, ordPtcSeqNew, ordItemNm) {

		$.ajax({
			type : "post",
			url : "/p/rtpDlvSearch.do",
			data : {
				ordNo : ordNo,
				ordPtcSeqNew : ordPtcSeqNew
			},
			dataType : "json",
			success : function(data) {
				if (data.isLogout) {
				}

				var list = data.dlvcoVO.split("^");

				for (i in list) {
					var wbno = list[0];
					var delygb = list[1];
					var codename = list[2];
					var remark = list[3];

					openDlvTrcUrlPup(ordNo, ordPtcSeqNew);
				}
			},
			error : function(data) {
				console.log("json error");
			}
		});
	}

	//20170404 박승택 추가
	function doSearchUPntMainPop() {
		//2019.04.03 HPoint마케팅개선 : H.Point 탭으로 이동
		/* var form = $("form[name='upntForm']")[0];
		form.setAttribute("action", "https://www.h-point.co.kr/cu/myh/myPnt.shd");   
		window.open("",'uPnt','width=900,height=650,scrollbars=yes');
		form.submit(); */

		window.location.href = "https://www.hmall.com/p/mpe/selectUPntTabPage.do";
	}

	//주문제작인경우 상품준비(주문접수완료)단계인 경우에는 즉시취소 시 1:1상담 팝업 오픈
	function openOrdMakeItemCnclPup(ordNo, ordPtcSeq) {
		if (confirm("해당 상품은 주문제작 건으로 즉시취소가 불가합니다.\n1:1 상담신청으로 이동하시겠습니까?")) {
			window
					.open("/p/mpa/selectOrdCnclRtpExchAsReqPup.do?ordNo="
							+ ordNo + "&ordPtcSeq=" + ordPtcSeq + "",
							"openOrdMakeItemCnclPup",
							"toolbar=no, menubar=no, width=820, height=685, scrollbars=yes, resizable=yes");
		}
	}

	//1:1 상담
	function openCnslAcptPup(ordNo, ordPtcSeq, gubun) {
		var url;
		if (isLogin() == 'true') {
			if (gubun == "rtp") {
				if (confirm("해당 상품은 제품 특성상 즉시 반품신청이 불가합니다.\n1:1 상담신청으로 이동하시겠습니까?")) {
					url = "/p/ccd/selectCnslAcptPup.do?ordNo=" + ordNo
							+ "&ordPtcSeq=" + ordPtcSeq + "&claimDiv=return";
				} else {
					return;
				}
			} else if (gubun == "rtp7") {
				if (confirm("구매 후 7일이 경과한 경우 반품신청이 불가합니다.\n1:1 상담신청으로 이동하시겠습니까?")) {
					url = "/p/ccd/selectCnslAcptPup.do?ordNo=" + ordNo
							+ "&ordPtcSeq=" + ordPtcSeq + "&claimDiv=return";
				} else {
					return;
				}
			} else if (gubun == "exch") {
				if (confirm("해당 상품은 제품 특성상 즉시 교환신청이 불가합니다.\n1:1 상담신청으로 이동하시겠습니까?")) {
					url = "/p/ccd/selectCnslAcptPup.do?ordNo=" + ordNo
							+ "&ordPtcSeq=" + ordPtcSeq + "&claimDiv=change";
				} else {
					return;
				}
			} else if (gubun == "cncl") {
				if (confirm("해당 상품은 제품 특성상 즉시 취소신청이 불가합니다.\n1:1 상담신청으로 이동하시겠습니까?")) {
					url = "/p/ccd/selectCnslAcptPup.do?ordNo=" + ordNo
							+ "&ordPtcSeq=" + ordPtcSeq + "&claimDiv=cancle";
				} else {
					return;
				}
			}

			/* var url = "/p/ccd/selectCnslAcptPup.do?cnslCsfCd=" + obj;
			if(isEmpty(obj)){
			    url = "/p/ccd/selectCnslAcptPup.do";
			} */
			var popName = "selectCnslAcptPup";
			var popOption = "height=660, width=650, fullscreen=no, location=no, scrollbars=yes, menubar=no, toolbar=no, titlebar=no, directories=no, resizable=no";
			window.open(url, popName, popOption);
		} else {
			openLoginPopup();
		}
	}

	function changeApply(ordNo, ordPtcSeq, claimDiv) {
		if (confirm("교환은 1:1 상담신청을 통해 신청 가능합니다.\n1:1 상담신청으로 이동합니다.")) {
			location.href = "/p/ccd/selectCnslAcptPup.do?ordNo=" + ordNo
					+ "&ordPtcSeq=" + ordPtcSeq + "&claimDiv=change";
		}
	}

	function bannerClick() {
		var gaLabel = "'" + gaMktg3 + "'";
		GA_Event('마이페이지', '개인화 배너', gaLabel);
		location.href = gaMktgUrl;
	}

	//스토어픽 교환권 레이어팝업
	function openStpicExchTcktPupLayer(ordNo, ordPtcSeq) {
		var left = ($(window).scrollLeft() + $(window).width()) / 2 + "px";
		var top = ($(window).scrollTop() + ($(window).height() / 2)) + "px";
		showLoadingBar(left, top);
		$.ajax({
			type : "post",
			url : "/p/mpf/selectStpicExchTcktPup.do",
			data : {
				ordNo : ordNo,
				ordPtcSeq : ordPtcSeq
			},
			success : function(data) {
				$("#stpicExchTcktPupLayer").html(data);
				hideLoadingBar();
			},
			error : function(data) {
			}
		});
	}

	//엄지펀딩 상품의 경우 주문상태가 접수,결제완료상태가 지난경우 주문취소가 안됨
	function openOrdMakeItemCncl(ordNo, ordPtcSeq) {
		if (alert("엄지펀딩 상품의 경우 펀딩종료 후 주문 취소가 불가합니다. \n자세한 내용은 고객센터로 문의바랍니다.")) {
			window
					.open("/p/mpa/selectOrdCnclRtpExchAsReqPup.do?ordNo="
							+ ordNo + "&ordPtcSeq=" + ordPtcSeq + "",
							"openOrdMakeItemCncl",
							"toolbar=no, menubar=no, width=820, height=685, scrollbars=yes, resizable=yes");
		}
	}

	//교환접수
	function fnOpenExchPup(ordNo, ordPtcSeq) {
		var exchFlag = false;
		$.ajax({
			type : "post",
			url : "/p/mpa/selectOrdExchChk.do",
			data : {
				ordNo : ordNo,
				ordPtcSeq : ordPtcSeq
			},
			async : false,
			success : function(data) {
				if (data.ordExchFlag) {
					//교환가능
					exchFlag = data.ordExchFlag;
					location.href = "/p/mpa/selectOrdExchPup.do?ordNo=" + ordNo
							+ "&ordPtcSeq=" + ordPtcSeq + "&chkOrdPtcSeq="
							+ ordPtcSeq + "";
				}
			},
			error : function(data) {

			}
		});

		if (!exchFlag) {
			if (confirm("해당 상품은 제품 특정상 즉시 교환신청이 불가합니다.\n1:1 상담신청으로 이동하시겠습니까?")) {
				window
						.open("/p/mpa/selectOrdCnclRtpExchAsReqPup.do?ordNo="
								+ ordNo + "&ordPtcSeq=" + ordPtcSeq + "",
								"openOrdMakeItemCnclPup",
								"toolbar=no, menubar=no, width=820, height=685, scrollbars=yes, resizable=yes");
			}
		}
	}

	//스토어픽 교환권 레이어팝업
	function openStpicExchTcktPupLayer(ordNo, ordPtcSeq) {
		var left = ($(window).scrollLeft() + $(window).width()) / 2 + "px";
		var top = ($(window).scrollTop() + ($(window).height() / 2)) + "px";
		showLoadingBar(left, top);
		$.ajax({
			type : "post",
			url : "/p/mpf/selectStpicExchTcktPup.do",
			data : {
				ordNo : ordNo,
				ordPtcSeq : ordPtcSeq
			},
			success : function(data) {
				$("#stpicExchTcktPupLayer").html(data).modal().show();
				hideLoadingBar();
			}
		});
	}

	function openWindow(url) {
		window.open(url, "_blank");
	}
	_TRK_PI_ = "MYPAGE";

	/* 상품추천 */
	function rcmmItem() {

		var slitmCdArray = new Array();
		;
		$("input[name='slitmCd']").each(function() {
			slitmCdArray.push($(this).val());
		});

		$.ajaxSettings.traditional = true;
		$
				.ajax({
					type : "get",
					url : "/p/coe/listRcmmSrvHtml.do?trtyNo=55&uiType=slide&rowCnt=5&pageSize=4" // 영역번호
					,
					dataType : "html",
					data : {
						slitmCdArray : slitmCdArray
					},
					success : function(data) {
						if ($(data).find(".pdthumb").length > 0) {
							$("#rcmmSectArea").append(data); // 삽입할 div
							$("#divRcmmItem").show();
							$('body').commonUi('initLibrary'); //PC인경우
						}
					},
					error : function() {
					}
				});

	}

	// 분할결제 2차결제 팝업 호출
	function openSplitPayPup(ordNo) {
		openPopup("/p/mpa/selectSplitPay.do?ordNo=" + ordNo + "",
				"selectSplitPayPup", 948, 818, "yes", $(window).width(), $(
						window).height());
	}
</script>
</head>

<body>
	<header class="header">



		<div class="header-top">
			<h1 class="logo">
				<a href="javascript:;" title="현대Hmall">Hmall</a>
			</h1>

			<div class="search" role="search">
				<div class="field">
					<form name="gnbPdeSearchForm" method="get" accept-charset="UTF-8"
						class="main-search" onsubmit="event.preventDefault();">
						<div class="inputbox">
							<label class="inplabel"> <input type="text"
								id="gnbSearchKeyword" name="searchTerm" value=""
								autocomplete="off" title="검색어" size="88">
							</label>
							<button class="btn ico-clearabled" type="button"
								onclick="javascript:clearWord();">
								<i id="searchDeleteX" class="icon"></i><span class="hiding">지우기</span>
							</button>
							<button class="btn btn-search"
								onclick="javascript:doSearchGnb();">
								<span>검색</span>
							</button>
							<input type="hidden" name="gnbSearchYn" value="Y">
						</div>
					</form>
					<!-- S : 검색 레이어 -->
					<div class="search-autowrap" id="search-autowrap">

						<!-- 검색어 입력시 자동완성 -->
						<div class="keyword-area" id="search-recommend"
							aria-label="검색어 자동완성" style="display: none"></div>
						<!-- //.keyword-area -->

						<!-- 검색창에 포커스 일 때 -->
						<div class="autowrap" id="search-popup" style="display: none">
							<!-- 추천할 수 없는 검색어 인 경우 -->


							<!-- input focus시 기본 나오는 UI -->
							<div class="autoarticle leftarea" id="search-history">
								<div class="recent-area" aria-label="최근검색어">
									<p class="stitle">최근 검색어</p>

									<!-- 최신검색어가 없을 경우 -->
									<p class="nodata" id="nodata" style="">최근 검색어가 없습니다.</p>
									<button class="btn btn-delall" id="del-all-history"
										style="display: none;">
										<span>전체삭제</span>
									</button>
								</div>
								<!-- //.recent-area -->
							</div>
							<!-- //.autoarticle -->
							<div class="autoarticle rightarea">
								<div class="popular-area" id="popular-list" aria-label="인기검색어">
									<p class="stitle">인기 검색어</p>
									<ol class="num-list">
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('써스데이아일랜드');">써스데이아일랜드<em><i
													class="icon keep"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('여성트렌치코트');">여성트렌치코트<em><i
													class="icon keep"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('여성자켓');">여성자켓<em><i
													class="icon up"></i><span class="hiding">상승</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('USPA폴로니트3종');">USPA폴로니트3종<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('폴로');">폴로<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('원피스');">원피스<em><i
													class="icon keep"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('기프티콘');">기프티콘<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('라코스테여성');">라코스테여성<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('여성원피스');">여성원피스<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('버버리퀼팅자켓');">버버리퀼팅자켓<em><i
													class="icon down"></i><span class="hiding">하락</span></em></a></li>
									</ol>
								</div>
								<!-- //.popular-area -->

								<div class="focusclick-area" id="fcsClick" aria-label="포커스클릭"
									style="display: none">
									<p class="stitle">포커스 클릭</p>
									<span class="flag-da">AD</span>
									<!-- 한 개 이상일 경우 class="horizon" 추가 -->
									<!-- 상품종료 및 품절일 경우 li thumb class end 추가 예)li class="thumb end" -->
								</div>
								<!-- //.focusclick-area -->
							</div>
							<!-- //.autoarticle -->

							<button class="btn searchclose" id="close-btn">
								<i class="hiding">검색 레이어</i><span>닫기</span>
							</button>
						</div>
						<!-- //.autowrap -->

					</div>
					<!-- //.search-autowrap -->
					<!-- //E : 검색레이어 -->
				</div>
				<!-- //.field -->
			</div>
			<!-- // 검색 영역 -->

			<script>
				// 2020.12.24 검색 DOM 로드후 javascript 실행을 위해 옮김
				// 2020.12.17 icj : 텍스트 광고 입력이 없을시 재노출 (하선윤)
				mySearchList();

				$("#gnbSearchKeyword").focus(function() {
					$(".header .search").addClass("selected");

					if ($("#gnbSearchKeyword").val() == gv_gnbHomeBnnrTitl) {
						$("#gnbSearchKeyword").val('');
					}

					$("#search-popup").css({
						display : ""
					}); // 최근검색어 탭 노출
					if ($("#keyword-list li").length == 0) {
						$("#nodata").css({
							display : ""
						});
						$("#keyword-list").css({
							display : "none"
						});
					}

					//검색창 입력전 광고
					fn_searchAdKeywordDefault();
					$("#search-recommend").css({
						display : "none"
					});
					$("#search-autowrap").show();

					//퀵 메뉴 숨김 처리
					$('.quick-menu-more').removeClass('on');

					// 2020.12.17 icj : 텍스트 광고 입력이 없을시 재노출 (하선윤)
				}).focusout(function() {
					var $keyword = $("#gnbSearchKeyword");
					if ($keyword.val() == '') {
						$keyword.val(gv_gnbHomeBnnrTitl);
					}
				});
			</script>

			<!-- 개인화 메뉴 -->
			<div class="personal-menu">
				<ul>
					<li><a class="cart" ga-category="헤더" ga-action="장바구니"
						href="javascript:bizSpringTag('https://www.hmall.com/p/odb/basktList.do','^헤더^장바구니');">
							<span>장바구니</span> <em class="badge">{수량}</em>



					</a></li>
					<li><a class="mypage"
						href="javascript:bizSpringTag('https://www.hmall.com/p/mpf/selectMyPageMain.do','^헤더^마이페이지 레이어^마이페이지');"><span>마이페이지</span></a></li>
					<li><a href="javascript:;" class="recently" id="recentlyImg"
						onclick="openRecentShopping(); return false;"> <span>최근본쇼핑</span>
							<!-- 최근 본 상품 썸네일 이미지 --> <em class="thumb-recent"></em>
					</a></li>
				</ul>
			</div>
			<!-- // 개인화 메뉴 -->
		</div>

		<div class="header-menu-wrap">
			<div class="header-menu-in">
				<!-- 카테고리 메뉴 -->
				<div class="category-area" id="categoryArea">
					<a href="javascript:;" class="btn-category">카테고리</a>
					<!-- 카테고리 메뉴 시작 -->

					<div class="category-menu-wrap">
						<!-- 카테고리 메뉴 depth1-->
						<div class="category-list" style="height: auto;">
							<ul>
								<li data-catecode="01" class="on"><a href="#">패션의류</a></li>
								<li data-catecode="02"><a href="#">패션잡화/명품</a></li>
								<li data-catecode="03"><a href="#">뷰티</a></li>
								<li data-catecode="14"><a href="#">순금/주얼리/시계</a></li>
								<li data-catecode="05"><a href="#">스포츠/레저</a></li>
								<li data-catecode="04"><a href="#">출산/유아동</a></li>
								<li data-catecode="06"><a href="#">주방용품</a></li>
								<li data-catecode="18"><a href="#">생활/건강</a></li>
								<li data-catecode="15"><a href="#">식품</a></li>
								<li data-catecode="07"><a href="#">가구/침구</a></li>
								<li data-catecode="08"><a href="#">가전/디지털</a></li>
								<li data-catecode="13"><a href="#">반려동물</a></li>
								<li data-catecode="16"><a href="#">여행/티켓/도서</a></li>
								<li data-catecode="19"><a href="#">문화/렌탈/보험</a></li>
								<li data-catecode="10"><a
									href="/p/dsMainR.do?GnbGroup=DeptHome">현대백화점</a></li>
								<li data-catecode="20"><a
									href="/p/dpa/searchSectItem.do?sectId=2679838">해외직구</a></li>
								<li data-catecode="09"><a
									href="/p/tvMainR.do?GnbGroup=TVHome">TV쇼핑</a></li>
							</ul>
							<div class="search-brand">
								<a
									href="javascript:$('.category-menu-wrap').css('display','none');brndOpenPopup();"
									class="lyopen" data-target="brand">브랜드검색</a>
							</div>
						</div>
						<div class="category-list-contents on" data-catecode="01">
							<div class="center-area">
								<strong class="depth1-title">패션의류</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731203&amp;GnbGroup=AllCategory&amp;Code=01">여성의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731204&amp;GnbGroup=AllCategory&amp;Code=01">남성의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731205&amp;GnbGroup=AllCategory&amp;Code=01">캐주얼의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731206&amp;GnbGroup=AllCategory&amp;Code=01">언더웨어</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2724600&amp;GnbGroup=AllCategory&amp;Code=01">POLO
													RALPH LAUREN</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679833&amp;GnbGroup=AllCategory&amp;Code=01">BEANPOLE
											</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679811&amp;GnbGroup=AllCategory&amp;Code=01">라코스테</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1886163&amp;GnbGroup=AllCategory&amp;Code=01">TOMMY
													HILFIGER</a></li>
											<li><a
												href="http://www.hmall.com/p/dpa/cosHome.do?GnbGroup=AllCategory&amp;Code=01">COS</a></li>
											<li><a
												href="http://www.hmall.com/p/dpa/aosMain.do?GnbGroup=AllCategory&amp;Code=01">＆Other
													Stories</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2699933&amp;GnbGroup=AllCategory&amp;Code=01">수입/컨템포러리</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="02">
							<div class="center-area">
								<strong class="depth1-title">패션잡화/명품</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731137&amp;GnbGroup=AllCategory&amp;Code=02">가방/지갑</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731138&amp;GnbGroup=AllCategory&amp;Code=02">신발</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731139&amp;GnbGroup=AllCategory&amp;Code=02">패션소품/ACC</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731140&amp;GnbGroup=AllCategory&amp;Code=02">명품</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679834&amp;GnbGroup=AllCategory&amp;Code=02">루즈앤라운지</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679864&amp;GnbGroup=AllCategory&amp;Code=02">덱케</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679844&amp;GnbGroup=AllCategory&amp;Code=02">LF
													ACC</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2474498&amp;GnbGroup=AllCategory&amp;Code=02">호재
													HOZE</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2057137&amp;GnbGroup=AllCategory&amp;Code=02">마이클코어스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1670469&amp;GnbGroup=AllCategory&amp;Code=02">엘칸토</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2625458&amp;GnbGroup=AllCategory&amp;Code=02">메트로시티
													스페셜샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2626364&amp;GnbGroup=AllCategory&amp;Code=02">루이까또즈
													스페셜샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2686372&amp;GnbGroup=AllCategory&amp;Code=02">K-헤리티지(전통관)</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="03">
							<div class="center-area">
								<strong class="depth1-title">뷰티</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731159&amp;GnbGroup=AllCategory&amp;Code=03">스킨케어</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731160&amp;GnbGroup=AllCategory&amp;Code=03">헤어케어</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731161&amp;GnbGroup=AllCategory&amp;Code=03">바디케어</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731162&amp;GnbGroup=AllCategory&amp;Code=03">메이크업</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731163&amp;GnbGroup=AllCategory&amp;Code=03">향수</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731164&amp;GnbGroup=AllCategory&amp;Code=03">기기/소품</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2642664&amp;GnbGroup=AllCategory&amp;Code=03">설화수</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="14">
							<div class="center-area">
								<strong class="depth1-title">순금/주얼리/시계</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731184&amp;GnbGroup=AllCategory&amp;Code=14">보석</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731185&amp;GnbGroup=AllCategory&amp;Code=14">반지</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731186&amp;GnbGroup=AllCategory&amp;Code=14">목걸이/귀걸이</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731187&amp;GnbGroup=AllCategory&amp;Code=14">팔찌/발찌</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731188&amp;GnbGroup=AllCategory&amp;Code=14">시계</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731189&amp;GnbGroup=AllCategory&amp;Code=14">기타
													ACC</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="05">
							<div class="center-area">
								<strong class="depth1-title">스포츠/레저</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731165&amp;GnbGroup=AllCategory&amp;Code=05">스포츠
													의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731166&amp;GnbGroup=AllCategory&amp;Code=05">스포츠신발</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731167&amp;GnbGroup=AllCategory&amp;Code=05">스포츠잡화</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731168&amp;GnbGroup=AllCategory&amp;Code=05">골프용품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731169&amp;GnbGroup=AllCategory&amp;Code=05">골프의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731170&amp;GnbGroup=AllCategory&amp;Code=05">구기/라켓/격투</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731171&amp;GnbGroup=AllCategory&amp;Code=05">등산/
													아웃도어</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731172&amp;GnbGroup=AllCategory&amp;Code=05">캠핑</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731173&amp;GnbGroup=AllCategory&amp;Code=05">낚시</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731174&amp;GnbGroup=AllCategory&amp;Code=05">헬스/요가</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731175&amp;GnbGroup=AllCategory&amp;Code=05">수영/물놀이</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731176&amp;GnbGroup=AllCategory&amp;Code=05">스키/스노보드</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731177&amp;GnbGroup=AllCategory&amp;Code=05">자전거/인라인/퀵보드</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731178&amp;GnbGroup=AllCategory&amp;Code=05">자동차</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2052165&amp;GnbGroup=AllCategory&amp;Code=05">나이키코리아공식</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679870&amp;GnbGroup=AllCategory&amp;Code=05">슈마커</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679865&amp;GnbGroup=AllCategory&amp;Code=05">ABC마트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2762627&amp;GnbGroup=AllCategory&amp;Code=05">JD스포츠</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2759440&amp;GnbGroup=AllCategory&amp;Code=05">인수스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2386151&amp;GnbGroup=AllCategory&amp;Code=05">내셔널지오그래픽</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2620264&amp;GnbGroup=AllCategory&amp;Code=05">다이나핏</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2694686&amp;GnbGroup=AllCategory&amp;Code=05">가네샤요가프랍스</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="04">
							<div class="center-area">
								<strong class="depth1-title">출산/유아동</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731207&amp;GnbGroup=AllCategory&amp;Code=04">임신/출산</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731208&amp;GnbGroup=AllCategory&amp;Code=04">기저귀/물티슈</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731209&amp;GnbGroup=AllCategory&amp;Code=04">스킨케어/위생/소독</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731210&amp;GnbGroup=AllCategory&amp;Code=04">유아
													침구/가구/매트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731211&amp;GnbGroup=AllCategory&amp;Code=04">유모차/카시트/외출용품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731212&amp;GnbGroup=AllCategory&amp;Code=04">유아
													의류/잡화</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731213&amp;GnbGroup=AllCategory&amp;Code=04">완구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2732613&amp;GnbGroup=AllCategory&amp;Code=04">유아동
													도서</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2482468&amp;GnbGroup=AllCategory&amp;Code=04">내
													아이가 좋아하는 IT템</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1961307&amp;GnbGroup=AllCategory&amp;Code=04">[BEANPOLE
													KIDS] 2022 S/S NEW </a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2699113&amp;GnbGroup=AllCategory&amp;Code=04">토이트론
													- LIKE A CHILD</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="06">
							<div class="center-area">
								<strong class="depth1-title">주방용품</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726029&amp;GnbGroup=AllCategory&amp;Code=06">조리용기
													/ 도구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726030&amp;GnbGroup=AllCategory&amp;Code=06">식기/접시/홈세트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726032&amp;GnbGroup=AllCategory&amp;Code=06">수납정리/소품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726031&amp;GnbGroup=AllCategory&amp;Code=06">보관용기</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726033&amp;GnbGroup=AllCategory&amp;Code=06">와인/커피용품</a></li>
											<li><a
												href="http://www.hmall.com/p/dpa/searchSectItem.do?sectId=2731130&amp;GnbGroup=AllCategory&amp;Code=06">주방가전</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=427611&amp;GnbGroup=AllCategory&amp;Code=06">수입주방용품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2761833&amp;GnbGroup=AllCategory&amp;Code=06">알레보
													스페셜샵</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="18">
							<div class="center-area">
								<strong class="depth1-title">생활/건강</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726024&amp;GnbGroup=AllCategory&amp;Code=18">세제/세정/탈취제</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726025&amp;GnbGroup=AllCategory&amp;Code=18">바디/헤어/구강</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726026&amp;GnbGroup=AllCategory&amp;Code=18">휴지/생리대/마스크</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726027&amp;GnbGroup=AllCategory&amp;Code=18">수납/청소/생활잡화</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726028&amp;GnbGroup=AllCategory&amp;Code=18">건강관리/안마/실버</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="15">
							<div class="center-area">
								<strong class="depth1-title">식품</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731190&amp;GnbGroup=AllCategory&amp;Code=15">농산</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731191&amp;GnbGroup=AllCategory&amp;Code=15">축산</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731192&amp;GnbGroup=AllCategory&amp;Code=15">수산</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731193&amp;GnbGroup=AllCategory&amp;Code=15">간편식/반찬</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731194&amp;GnbGroup=AllCategory&amp;Code=15">면/캔/오일/소스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731195&amp;GnbGroup=AllCategory&amp;Code=15">떡/베이커리/과자</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731196&amp;GnbGroup=AllCategory&amp;Code=15">유제품/유아식</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731199&amp;GnbGroup=AllCategory&amp;Code=15">홍삼/전통건강식품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731198&amp;GnbGroup=AllCategory&amp;Code=15">커피/차</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731201&amp;GnbGroup=AllCategory&amp;Code=15">유산균/이너뷰티/다이어트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731197&amp;GnbGroup=AllCategory&amp;Code=15">생수/음료</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731200&amp;GnbGroup=AllCategory&amp;Code=15">비타민/영양제</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731202&amp;GnbGroup=AllCategory&amp;Code=15">팔도식도락</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="07">
							<div class="center-area">
								<strong class="depth1-title">가구/침구</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731141&amp;GnbGroup=AllCategory&amp;Code=07">거실가구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731142&amp;GnbGroup=AllCategory&amp;Code=07">침실가구/드레스룸</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731143&amp;GnbGroup=AllCategory&amp;Code=07">주방가구/테이블</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731144&amp;GnbGroup=AllCategory&amp;Code=07">학생/서재가구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731145&amp;GnbGroup=AllCategory&amp;Code=07">리모델링
													시공/DIY</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731146&amp;GnbGroup=AllCategory&amp;Code=07">침구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731147&amp;GnbGroup=AllCategory&amp;Code=07">커튼/카페트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731148&amp;GnbGroup=AllCategory&amp;Code=07">인테리어소품</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679832&amp;GnbGroup=AllCategory&amp;Code=07">리바트(LIVART)</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679845&amp;GnbGroup=AllCategory&amp;Code=07">포터리반</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679846&amp;GnbGroup=AllCategory&amp;Code=07">포터리반
													키즈</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679847&amp;GnbGroup=AllCategory&amp;Code=07">웨스트엘름</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="08">
							<div class="center-area">
								<strong class="depth1-title">가전/디지털</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731129&amp;GnbGroup=AllCategory&amp;Code=08">생활/미용가전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731130&amp;GnbGroup=AllCategory&amp;Code=08">주방가전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731131&amp;GnbGroup=AllCategory&amp;Code=08">계절가전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731132&amp;GnbGroup=AllCategory&amp;Code=08">영상/음향
													가전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731133&amp;GnbGroup=AllCategory&amp;Code=08">카메라/렌즈/캠코더</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731134&amp;GnbGroup=AllCategory&amp;Code=08">노트북/PC/게임</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731135&amp;GnbGroup=AllCategory&amp;Code=08">스마트기기/OA</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731136&amp;GnbGroup=AllCategory&amp;Code=08">리퍼
													가전</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679843&amp;GnbGroup=AllCategory&amp;Code=08">삼성전자
													브랜드샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2692354&amp;GnbGroup=AllCategory&amp;Code=08">다이슨
													브랜드샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1424358&amp;GnbGroup=AllCategory&amp;Code=08">하이마트
													브랜드샵</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="13">
							<div class="center-area">
								<strong class="depth1-title">반려동물</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2222295&amp;GnbGroup=AllCategory&amp;Code=13">반려동물(H펫샵)</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2764739&amp;GnbGroup=AllCategory&amp;Code=13">이츠독</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2764995&amp;GnbGroup=AllCategory&amp;Code=13">펫노리터</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2722164&amp;GnbGroup=AllCategory&amp;Code=13">장보는
													강아지와 고양이</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="16">
							<div class="center-area">
								<strong class="depth1-title">여행/티켓/도서</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731216&amp;GnbGroup=AllCategory&amp;Code=16">여행/숙박</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731217&amp;GnbGroup=AllCategory&amp;Code=16">서비스/e쿠폰/상품권</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731128&amp;GnbGroup=AllCategory&amp;Code=16">도서/음반</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731183&amp;GnbGroup=AllCategory&amp;Code=16">원예/꽃배달</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="19">
							<div class="center-area">
								<strong class="depth1-title">문화/렌탈/보험</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731214&amp;GnbGroup=AllCategory&amp;Code=19">렌탈</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731215&amp;GnbGroup=AllCategory&amp;Code=19">보험/상조</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679817&amp;GnbGroup=AllCategory&amp;Code=19">H렌탈샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1173378&amp;GnbGroup=AllCategory&amp;Code=19">바보사랑</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1148690&amp;GnbGroup=AllCategory&amp;Code=19">아트박스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1198000&amp;GnbGroup=AllCategory&amp;Code=19">1300K</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2215152&amp;GnbGroup=AllCategory&amp;Code=19">텐바이텐</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" style="display: block"
							data-catecode="10">
							<div class="center-area">
								<strong class="depth1-title">현대백화점</strong>
								<!--백화점-->
								<div class="sub-category-area">
									<!--백화점 일반 START-->
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=325053&amp;GnbGroup=AllCategory&amp;Code=10">영캐주얼</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=325052&amp;GnbGroup=AllCategory&amp;Code=10">커리어/언더</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=325345&amp;GnbGroup=AllCategory&amp;Code=10">진/유니섹스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=326244&amp;GnbGroup=AllCategory&amp;Code=10">남성정장</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=327187&amp;GnbGroup=AllCategory&amp;Code=10">남성캐주얼</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=146634&amp;GnbGroup=AllCategory&amp;Code=10">화장품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=327293&amp;GnbGroup=AllCategory&amp;Code=10">핸드백/지갑</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=327302&amp;GnbGroup=AllCategory&amp;Code=10">구두/잡화</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=326243&amp;GnbGroup=AllCategory&amp;Code=10">아동/유아</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=325425&amp;GnbGroup=AllCategory&amp;Code=10">레져/스포츠</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=146639&amp;GnbGroup=AllCategory&amp;Code=10">생활/가구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=146638&amp;GnbGroup=AllCategory&amp;Code=10">식품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2186849&amp;GnbGroup=AllCategory&amp;Code=10">현대아울렛</a></li>
										</ul>
									</div>
									<!--백화점 일반 END-->
									<!--백화점 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1861421&amp;GnbGroup=AllCategory&amp;Code=10">RALPH
													LAUREN</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679839&amp;GnbGroup=AllCategory&amp;Code=10">House
													Of Samsonite</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679840&amp;GnbGroup=AllCategory&amp;Code=10">스와로브스키</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=580827&amp;GnbGroup=AllCategory&amp;Code=10">CHANEL</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1196082&amp;GnbGroup=AllCategory&amp;Code=10">MAC</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1476179&amp;GnbGroup=AllCategory&amp;Code=10">URBAN
													DECAY</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1614556&amp;GnbGroup=AllCategory&amp;Code=10">TOM
													FORD BEAUTY</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1614598&amp;GnbGroup=AllCategory&amp;Code=10">Jo
													Malone London</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679875&amp;GnbGroup=AllCategory&amp;Code=10">휠라스포츠</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1379588&amp;GnbGroup=AllCategory&amp;Code=10">아디다스
													브랜드전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=778977&amp;GnbGroup=AllCategory&amp;Code=10">명인명촌</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=411045&amp;GnbGroup=AllCategory&amp;Code=10">정관장</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2220667&amp;GnbGroup=AllCategory&amp;Code=10">BASH(명품편집샵)</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679871&amp;GnbGroup=AllCategory&amp;Code=10">부가부
													스페셜샵</a></li>
										</ul>
									</div>
									<div class="brand-category">
										<ul>
											<li><a
												href="http://www.hmall.com/p/dpa/cosHome.do?GnbGroup=AllCategory&amp;Code=10">COS</a></li>
											<li><a
												href="http://www.hmall.com/p/dpa/aosMain.do?GnbGroup=AllCategory&amp;Code=10">＆Other
													Stories</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2625458&amp;GnbGroup=AllCategory&amp;Code=10">메트로시티
													스페셜샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2626364&amp;GnbGroup=AllCategory&amp;Code=10">루이까또즈
													스페셜샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2713968&amp;GnbGroup=AllCategory&amp;Code=10">BOSE</a></li>
										</ul>
										<!--백화점 스페셜 END-->
									</div>
									<!--백화점END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="09">
							<div class="center-area wide">
								<strong class="depth1-title">TV쇼핑</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=502950&amp;GnbGroup=AllCategory&amp;Code=09">패션의류</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=150549&amp;GnbGroup=AllCategory&amp;Code=09">언더웨어</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=69628&amp;GnbGroup=AllCategory&amp;Code=09">뷰티</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=216428&amp;GnbGroup=AllCategory&amp;Code=09">명품잡화</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=221473&amp;GnbGroup=AllCategory&amp;Code=09">유아동/도서</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=807410&amp;GnbGroup=AllCategory&amp;Code=09">레포츠</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=792090&amp;GnbGroup=AllCategory&amp;Code=09">홈쇼핑
													식품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="http://www.hmall.com/p/dpa/searchSectItem.do?sectId=58867&amp;GnbGroup=AllCategory&amp;Code=09">인테리어</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=147267&amp;GnbGroup=AllCategory&amp;Code=09">생활/건강</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=108163&amp;GnbGroup=AllCategory&amp;Code=09">주방용품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1824370&amp;GnbGroup=AllCategory&amp;Code=09">방송가전</a></li>
											<!--HMALL 일반 END-->
										</ul>
									</div>
								</div>
								<span class="tv-info"><a
									href="/p/bmc/brodPordPbdv.do?type=03&amp;GnbGroup=HmallCategory&amp;Code=09">생방송</a><a
									href="/p/bmc/brodPordPbdv.do">편성표</a></span>
							</div>
							<div class="center-area wide">
								<strong class="depth1-title">TV+샵</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264005&amp;GnbGroup=AllCategory&amp;Code=09">인테리어/침구/가구</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264006&amp;GnbGroup=AllCategory&amp;Code=09">생활/건강/욕실</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264007&amp;GnbGroup=AllCategory&amp;Code=09">주방용품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2263921&amp;GnbGroup=AllCategory&amp;Code=09">언더웨어</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264003&amp;GnbGroup=AllCategory&amp;Code=09">레포츠의류/용품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264004&amp;GnbGroup=AllCategory&amp;Code=09">농수축/신선/건강식품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2379016&amp;GnbGroup=AllCategory&amp;Code=09">대형/생활가전</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="http://www.hmall.com/p/dpa/searchSpexSectItem.do?sectId=2686295&amp;GnbGroup=AllCategory&amp;Code=09">플러스샵
													[현대아울렛]</a></li>
											<!--HMALL 일반 END-->
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- // 카테고리 메뉴 -->
				<!-- 퀵메뉴 -->
				<div class="quick-menu-wrap">
					<div class="quick-menu-list">
						<ul class="quicklink ql-left222" id="main_tab">

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="편성표">편성표</a></li>

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="오늘추천">오늘추천</a></li>

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="홈">홈</a></li>
							<!--
                                <li class=" ">
                                <a href="/p/mktgMain.do?_IC_=tab4&amp;mainDispSeq=65&amp;" class="gp_className" ga-category="메인 홈" ga-action="상단탭" ga-label="랄프로렌">랄프로렌</a></li>
                              -->
							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="스토어">스토어</a></li>

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="이달의픽">이달의픽</a></li>

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="백화점">백화점</a></li>

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="선물하기">선물하기</a></li>

						</ul>
					</div>

					<div class="quick-menu-more">
						<a href="javascript:;" class="btn-quick-more">퀵메뉴 더보기</a>
						<div class="quick-menu-add">

							<a href="do_not.html" class="gp_className" ga-category="메인 홈"
								ga-action="상단탭" ga-label="이벤트"> 이벤트 </a> <a href="do_not.html"
								class="gp_className" ga-category="메인 홈" ga-action="상단탭"
								ga-label="주간베스트"> 주간베스트 </a>

						</div>
					</div>

				</div>
				<!-- // 퀵메뉴-->
				<script>
					/*function setTitle() {
					    if($('.quick-menu-list .current a').length < 1) {
					        return;
					    }

					    var tabname = $('.quick-menu-list .current a').first().text();

					    document.title = tabname + " - 현대Hmall";
					    
					    if(tabname == '홈' || tabname == 'HMALL') {
					        document.title = '당신의 모든 취향을 읽다 - 현대Hmall';
					    }
					}

					setTitle();*/
				</script>
				<!-- 유틸메뉴 -->
				<div class="header-util">
					<h2 class="hiding">유틸메뉴</h2>
					<!-- 로그인 전 -->
					<ul>
						<li><a ga-category="헤더" ga-action="로그아웃"
							href="javascript:bizSpringTag('http://www.hmall.com/p/cob/logout.do','^헤더^로그아웃');">로그아웃</a></li>
						<li><a
							href="javascript:bizSpringTag('/pevent/eva/evntFamilyZoneMain.do','^헤더^마이페이지 레이어^멤버십존');">멤버십존</a></li>

						<li><a ga-category="헤더" ga-action="고객센터"
							href="javascript:bizSpringTag('/p/cca/main.do','^헤더^고객센터');">고객센터</a></li>
					</ul>
				</div>

			</div>

		</div>
	</header>