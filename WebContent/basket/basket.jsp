<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.hmall.dao.ProductDAO"%>
<%@ page import="com.hmall.dto.ProductVO"%>
<%@ page import="com.hmall.dao.BasketDAO"%>
<%@ page import="com.hmall.dto.BasketVO"%>
<html lang="ko" class="desktop winos chrome x64 web">
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

<title>장바구니 - 현대Hmall</title>

<!-- includeScript -->






<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/ec.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-MZFFDJ8"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script
	src="https://connect.facebook.net/signals/config/307742333494098?v=2.9.57&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/en_US/sdk.js?hash=025e779ceabfa349d228d02859906d5c"
	async="" crossorigin="anonymous"></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=AW-937000404&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script id="facebook-jssdk" src="//connect.facebook.net/en_US/sdk.js"></script>
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
	src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=041116"></script>
<script type="text/javascript"
	src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=041116"></script>



<script type="text/javascript">


var oneClickFlag = 0;
function setDimension(){
	
	if(oneClickFlag != 0){
        return false;
    }
	
	oneClickFlag = 1;
    
    if(location.pathname.indexOf("/p/cob/memberLogin.do") > -1){
        return;
    }
	var GA_info = {};
	
	
	GA_info = setDimenData(GA_info);

	
	GA_Init(GA_info);

    
    if(location.pathname.replace("//", "/") == '/m/pda/smItemDetailR.do' || location.pathname.replace("//", "/") == '/p/pda/itemPtc.do' && pdaItemPtcCnt == 0){
    	pdaItemPtcCnt = 1;
        var	product_array = [];
        product_array.push(
            {
                'id':'',
                'name':'',
                'brand': '',
                'category' : '',
                'dimension51': 'default',
                'dimension52':'',
                'dimension53':'',
                'dimension54':'',
                'dimension55':'',
                'dimension56':'',
                'dimension57':'',
                'dimension58':'',
                'dimension59':'',
                'dimension60':'',
                
                'dimension62':'',
                'dimension63':'',
                'dimension64':''
            }
        );

        var ecommerce_hit = new Object();
        ecommerce_hit[GAHitKey.NonInteraction] = '1';
        var action_obj = new Object();

        
        GADataSend_Ecommerce(GAEcommerceStepKey.Detail, action_obj, product_array, ecommerce_hit);

    }else if(location.pathname == '/p/oda/orderComplete.do' && ordCompleteCnt == 0){
    	ordCompleteCnt = 1;
        var	product_array = [];
        
        

        var ecommerce_hit = new Object();
        ecommerce_hit[GAHitKey.NonInteraction] = '1';
        ecommerce_hit[GAHitKey.currencyCode] = 'KRW';
        
        

        ecommerce_hit[GACustomKey.Metric1] = 0;
        
        ecommerce_hit[GACustomKey.Metric2] = 0;
        
        
        ecommerce_hit['dimension74'] = '';
        ecommerce_hit['dimension75'] = '';



        var action_obj = new Object();
        action_obj[GAActionFieldKey.TransactionID]='';
        action_obj[GAActionFieldKey.TransactionRevenue]='0';
        action_obj[GAActionFieldKey.TransactionShipping]='0';
        
        action_obj[GAActionFieldKey.TransactionCouponCode]='';






        
        GADataSend_Ecommerce(GAEcommerceStepKey.Purchase, action_obj, product_array, ecommerce_hit);
        oneClickFlag = 0;
    }
}


function setDimenData(GA_info){
	var _ga = getCookieGA('_ga');
	if(_ga != null){
		GA_info[GACustomKey.Dimension1] = _ga;
	}

	var uid = "";
    if(getCookieGA('ENCEHCustNO') != null && getCookieGA('ENCEHCustNO') != ""){
    	uid = getCookieGA('ENCEHCustNO');
    }
	
	if(uid == "" || uid.length != 32){
        
    }else{
		GA_info[GACustomKey.Dimension2] = uid;
        GA_info[GAHitKey.UserId] = uid;

        
	}

     GA_info[GACustomKey.Dimension3] = "20220411"; 
     GA_info[GACustomKey.Dimension4] = "일반"; 
    
    	GA_info[GACustomKey.Dimension6] = "N"; 
     GA_info[GACustomKey.Dimension7] = "N"; 
    
     GA_info[GACustomKey.Dimension9] = "20220411"; 
    
    var _gaid = getCookieGA('GAID');
    if(_gaid != null){GA_info[GACustomKey.Dimension11] = _gaid;}
    
        GA_info[GACustomKey.Dimension12] = "Y";
        GA_info[GACustomKey.Dimension24] = "5";
    
    
     GA_info[GACustomKey.Dimension13] = "U"; 
     GA_info[GACustomKey.Dimension14] = "2"; 
     GA_info[GACustomKey.Dimension15] = "실버"; 

     GA_info[GACustomKey.Dimension22] = "기타"; 
    
    
    
    
    
    
     GA_info[GACustomKey.Dimension30] = "N"; 
    
     GA_info[GACustomKey.Dimension37] = "0"; 
     GA_info[GACustomKey.Dimension38] = "N"; 
    
    
     GA_info[GACustomKey.Dimension41] = "PCWEB"; 
     GA_info[GACustomKey.Dimension47] = "N"; 
    

    if(location.pathname == '/p/pde/search.do'){
        
        
        
        
        
        GA_info[GACustomKey.Dimension19] = "N";
        
        
    }

	GA_info[GACustomKey.Dimension16] = "PCWEB";
	
	GA_info[GACustomKey.Dimension35] = location.href.replace("http://", "").replace("https://", "");

	return GA_info;
}



function setGaDataSend_Event(evntType,product_array){
	/* var product_array = [];
	if(product_array_param != null && product_array_param != undefined){
		product_array = product_array_param;
	} */
    var ecommerce_hit = new Object();
    var action_obj = new Object();
	
    
    if(location.pathname == '/m/pda/smItemDetailR.do' || location.pathname == '/p/pda/itemPtc.do'){
        
        if(evntType == GAEcommerceStepKey.Checkout){
            action_obj[GAActionFieldKey.CheckoutStep] = '1';
            GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
        }else{
            ecommerce_hit[GAHitKey.NonInteraction] = '1';
            GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
        }
        
    }else if(location.pathname == '/p/oda/order.do'){
        
        try {
        	var itemGbcd = ""; // 무형상품체크, 유/무형 상품 같이 구매 불가하므로..
            
        } catch (e) {
           
        }

        if(evntType == GAEcommerceStepKey.Checkout){
        	var ecommerce_hit = new Object();
            var action_obj = new Object();
            action_obj[GAActionFieldKey.CheckoutStep] = '2';

            var selOrderType = $("input[name='payType']:checked").val();

            if(selOrderType == '10'  ){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '01 카드';
                ecommerce_hit['dimension75'] = '01 카드';
            }else if(selOrderType == '20'){
                action_obj[GAActionFieldKey.CheckoutOptions] = '02 현금';
                ecommerce_hit['dimension75'] = '02 현금';
            }else if(selOrderType == '40'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '12 휴대폰결제';
                ecommerce_hit['dimension75'] = '12 휴대폰결제';
            }else if(selOrderType == '91'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '15 페이코';
                ecommerce_hit['dimension75'] = '15 페이코';
            }else if(selOrderType == '30'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '20 현금(실시간)';
                ecommerce_hit['dimension75'] = '20 현금(실시간)';
            }else if(selOrderType == '95'){
                action_obj[GAActionFieldKey.CheckoutOptions] = '21 네이버페이';
                ecommerce_hit['dimension75'] = '21 네이버페이';
            }else if(selOrderType == '96'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '22 스마일페이';
                ecommerce_hit['dimension75'] = '22 스마일페이';
            }else if(selOrderType == '97'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '23 카카오페이';
                ecommerce_hit['dimension75'] = '23 카카오페이';
            }else if(selOrderType == '81'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '25 토스';
                ecommerce_hit['dimension75'] = '25 토스';
            }else if(selOrderType == '99') {
                action_obj[GAActionFieldKey.CheckoutOptions]  = '24 현금간편결제';
                ecommerce_hit['dimension75'] = '24 현금간편결제';
            }else if(selOrderType == '50') {
                action_obj[GAActionFieldKey.CheckoutOptions]  = '98 카드+현금';
                ecommerce_hit['dimension75'] = '98 카드+현금';
            }else if(selOrderType == '93') {
                action_obj[GAActionFieldKey.CheckoutOptions]  = '99 삼성페이';
                ecommerce_hit['dimension75'] = '99 삼성페이';
            }else {
                action_obj[GAActionFieldKey.CheckoutOptions]  = 'default';
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
            GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
        }
    }else{
        GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
    }

}



function sendSlitmClick(slitmNm, slitmCd, tabNm){

    if(slitmNm == "" || slitmCd == "" || tabNm == "")
        return;

    var product_array = [];
    product_array.push({'id': slitmCd, 'name': slitmNm});

    var action_obj = new Object();
    action_obj[GAActionFieldKey.ProductActionList] = tabNm;

    var ecommerce_hit = new Object();
    GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj, product_array, ecommerce_hit);
}



function getParameterByName(url, name) {
	if(url == "" || name == "" || url == undefined || name == undefined){
		return;
	}
	
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(url);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function setGaPromotion(title, name, position, creative, id){
	var action_obj = new Object();
    var ecommerce_hit = new Object();
    var tabNm = title;
    if (tabNm.length > 0) { 
        tabNm = tabNm.substring(tabNm.indexOf(">")+1, tabNm.length);
    }
    
    ecommerce_hit[GAHitKey.Title] = title;
    
    action_obj["promo1"] = {};
    action_obj["promo1"][GAActionFieldKey.PromotionName] = name;
    action_obj["promo1"][GAActionFieldKey.PromotionPosition] = position;
    action_obj["promo1"][GAActionFieldKey.PromotionCreative] = creative;
    action_obj["promo1"][GAActionFieldKey.PromotionID] = id;
    
    if(name.substring(0, name.indexOf("_")) == "메인"){
    	console.log("setGaPromotion()................4");
    	ecommerce_hit[GACustomKey.Dimension31] = '메인';
    	ecommerce_hit[GACustomKey.Dimension32] = '메인>'+ tabNm;
    	ecommerce_hit[GACustomKey.Dimension33] = '메인>'+ tabNm;
    	ecommerce_hit[GACustomKey.Dimension34] = '메인>'+ tabNm;	
    }
    
    GADataSend_Ecommerce(GAEcommerceStepKey.PromotionClick, action_obj, null, ecommerce_hit);
}

function getCookieGA(name) {
    var cname = name + "=";
    var dc = document.cookie;
    if (dc.length > 0) {
        begin = dc.indexOf(cname);
        if (begin != -1) {
            begin += cname.length;
            end = dc.indexOf(";", begin);
            if (end == -1) end = dc.length;
            if ( "EHCustName" == name || "LAST_SECT" == name) {
                return decodeURIComponent(dc.substring(begin, end));
            }
            else {
                return unescape(dc.substring(begin, end)).replace('GA1.2.','');
            }
        }
    }
    return null;
}

function sendSlitmClickGo(slitmNm, slitmCd, tabNm,url){

    if(slitmNm == "" || slitmCd == "" || tabNm == "" || url =="")
        return;

    var product_array = [];
    product_array.push({'id': slitmCd, 'name': slitmNm});

    var action_obj = new Object();
    action_obj[GAActionFieldKey.ProductActionList] = tabNm;

    var ecommerce_hit = new Object();
    GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj, product_array, ecommerce_hit);

    document.location.href = url;
}
function sendSlitmClickNewWin(slitmNm, slitmCd, tabNm, url){

    if(slitmNm == "" || slitmCd == "" || tabNm == "" || url =="")
        return;

    var product_array = [];
    product_array.push({'id': slitmCd, 'name': slitmNm});

    var action_obj = new Object();
    action_obj[GAActionFieldKey.ProductActionList] = tabNm;

    var ecommerce_hit = new Object();
    GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj, product_array, ecommerce_hit);

    try {
        _trk_flashEnvView('_TRK_PI=LYRNWN');
    } catch(e) {}

    try {
        _trk_clickTrace("EVT", "상품리스트_새창");
    } catch (e) {}
    window.open(url, '_blank');
}

function bizSpringTagForHome(url, tag, pathVal){
    
	location.href = url
}

function gaTagging(obj_GA, msg1, msg2, msg3){
    console.log("gaTagging()................");
    var title =     $(obj_GA).attr("ga-custom-title") == undefined ? "" : $(obj_GA).attr("ga-custom-title");            
    var name =      $(obj_GA).attr("ga-custom-name") == undefined ? "" : $(obj_GA).attr("ga-custom-name");  
    var position =  $(obj_GA).attr("ga-custom-position") == undefined ? "" : $(obj_GA).attr("ga-custom-position");
    var creative =  $(obj_GA).attr("ga-custom-creative") == undefined ? "" : $(obj_GA).attr("ga-custom-creative");
    var id =        $(obj_GA).attr("ga-custom-id") == undefined ? "" : $(obj_GA).attr("ga-custom-id");
    var etc =       $(obj_GA).attr("ga-custom-etc") == undefined ? "" : $(obj_GA).attr("ga-custom-etc");
    var etc2 =      $(obj_GA).attr("ga-custom-etc2") == undefined ? "" : $(obj_GA).attr("ga-custom-etc2");
    
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

    if (etc == "home"){
        bizSpringTagForHome(msg1, msg2, msg3);
    } else {
    	if (msg1 != null && msg1 != "" && msg1.length > 0) {
            location.href = msg1;
    	}
    }
}



</script>
<!-- GA Custum lib -->
<script async=""
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
    var serverHost = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0 || location.href.indexOf("local") > 0) ? "https://" + location.host : "https://www.hmall.com";
    var serverHostForSSL = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0 || location.href.indexOf("local")>0) ? "https://" + location.host : "https://www.hmall.com";
    var switch_serverHost;

    if (locationHref.indexOf("https") > -1) {
        switch_serverHost = serverHostForSSL;
        imageServer = "https://image.hmall.com";
    } else if (locationHref.indexOf("http") > -1) {
        switch_serverHost = serverHost;
        imageServer = "https://image.hmall.com";
    }



    try{
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'AW-1066206974');
      gtag('config', 'AW-937000404');
  }catch(e){}

  //Google Analytics
  var init_Obj = new Object();

  $(window).on("load",function() {
      // $("body").prepend('hello new UI');

      //GA 맞춤측정 데이터 전송 및 클릭이벤트 초기화
      console.log("setDimension and useWindload 호출");
      setDimension();
      useWinload();
      
  });


    // GNB - 바로가기 링크
    function setQuicklink(jsonData){
        var _data = jsonData;
        var _html = "";

        $(_data).each(function(_idx){
            var _label = this.dispNm.toString();
            var _dispUrl = this.dispUrl.toString();
            var _item = "";

            if(_idx == 0) _item = "<li class='first'>";
            else _item = "<li>";

            var _bizParam = _dispUrl.indexOf("?") >= 0 ? "&_IC_=tab"+(_idx+1) : "?_IC_=tab"+(_idx+1);

            _item += "<a href='" + _dispUrl + _bizParam + "' class='gp_className' ga-category='메인 홈' ga-action='상단탭' ga-label='" + _label + "'>" + _label + "</a>" + "</li>";

            _html += _item;
        });

        $('.quicklink.ql-left').empty().append(_html);
    }
/*    
    function gaTagging(obj_GA, msg1, msg2, msg3){
    	location.href = msg1;    	
    }
*/
    function getClickUrl(url){
        if(url == ''){
            return false;       
        }else{
            document.location.href = url;
            
        }
    }

</script>

<!-- includeScript -->

<!-- Main Contents css = Contents css부분은 각페이지마다 다르게 해당되는 css가 호출 됨(폴더 구조별)  -->
<link rel="stylesheet" type="text/css"
	href="//image.hmall.com/p/css/od/cart.css">
<script src="//image.hmall.com/p/js/od/cart.js"></script>

<script type="text/javascript">
var boxPackItemChkYn = "N"; //선물포장/쇼핑백신청 로직 체크 여부
var boxPackItemPopYn = "N"; //선물포장/쇼핑백신청 로직 팝업 여부
var boxPrsnPackGbcd ="0"; //선물포장 여부
var spbgPrsnPackGbcd ="0"; //쇼핑백여부


String.prototype.replaceall = function( searchStr, replaceStr ){
    var temp = this;    
    while( temp.indexOf( searchStr ) != -1 ){
      temp = temp.replace( searchStr, replaceStr );
    }
    return temp;
}


function deleteBasktSlitem(basktInf) {
    adbayCheck = 1;
    //updateAdbayItem(basktInf, adbayCheck);
    
    $.ajax({
        type: "post"
        , url: "/p/odb/deleteBaskt.do"
        , dataType: "json"
        , data : {basktInf : basktInf}
        ,success : function(data) {
            if(!isEmpty(data.errorMessages)) {
                alert(data.errorMessages.join("\n"));
            } else {
                
                
                try {
                    var product_array = [];
                    var action_obj = new Object();
                    
                    //var obj = $(".basketLsitCheck input[name='basktInf']:input[value='"+basktInf+"']")
                    var obj = $(".shipping-list input[name=basktInf]:input[value='" + basktInf + "']");
                    
                    product_array.push(
                        {
                            'id': $(obj).parents(".pdwrap.pdlist.ml").find("input[name=slitmCd]").val(),
                            'name': $(obj).parents(".pdwrap.pdlist.ml").find("input[name='slitmNm']").val(),
                            'brand': $(obj).parents(".pdwrap.pdlist.ml").find("input[name='brand']").val(),
                            'category' : $(obj).parents(".pdwrap.pdlist.ml").find("input[name='gaCategory']").val()
                        }
                    );
                    
                    var ecommerce_hit = new Object();
                    ecommerce_hit[GAHitKey.NonInteraction] = '1';
                    GADataSend_Ecommerce(GAEcommerceStepKey.Remove, action_obj, product_array, ecommerce_hit);
                    
                } catch (e) {
                    // TODO: handle exception
                    console.log("google analytics 실패");
                }
                
                window.location.reload();
            }
        }
        , error: function(data) {
        }
    }); 
}


function showChgUitmPup(obj, slitmCd, uitmCd, aspItemCd, sellPrc, uitmCombYn) {
    
	$("#chgUitmLayer_"+slitmCd+"_"+uitmCd).html("");
	
	if ( $("#optBtn_"+slitmCd+"_"+uitmCd).hasClass("selected") ) {
		//$("#chgUitmLayer_"+slitmCd+"_"+uitmCd).toggleClass("selected");
		return;
	}
	
    //$("#dlUitmArea, #dlAddCmpsArea, #divSelectedUitmArea").html("");
    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd).append('<input type="hidden" name="slitmCd" value="' + slitmCd + '"/>');
    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd).append('<input type="hidden" name="uitmCd" value="' + uitmCd + '"/>');
    loading(true);
    $.ajax({
        type: "post"
        , url: "/p/odb/getBakstItemUitmInf.do"
        , dataType: "html"
        , data : {slitmCd : slitmCd, uitmCd : uitmCd, uitmCombYn : uitmCombYn}
        , success : function(data) {
            if(!isEmpty(data.errorMessages)) {
            	loading(false);
                alert(data.errorMessages.join("\n"));
            } else {
            	$("#chgUitmLayer_"+slitmCd+"_"+uitmCd).html(data);
            	loading(false);
/*
            	var optionCnt = 0;
                var dlUitmArea = $("#chgUitmLayer_"+slitmCd+"_"+uitmCd);
                var selectbox = $('<div class="selectbox"></div>');
                
                $("#chgUitmLayer_"+slitmCd+"_"+uitmCd).append('<input type="hidden" name="uitmSellPrc" value="' + sellPrc +'"/>');                                        
                if(data.uitmAttrTypeList != null && data.uitmAttrTypeList.uitmAttrMstList.length > 0) {
                    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd).append('<input type="hidden" name="bsitmCd" value="' + data.uitmAttrTypeList[0].bsitmCd +'"/>');
                    
                    for(var i in data.uitmAttrTypeList) {
                        var label = $('<label class="sellabel"></label>');
                        
                        var select = $("<select onchange='changeUitm(this);'></select>");
                        $(select).append('<option value="">선택하세요</option>');

                        for(var j in data.uitmAttrTypeList[i].uitmAttrMstList) {
                            $(select).append('<option value="' + data.uitmAttrTypeList[i].uitmAttrMstList[j].uitmSeq + '">' + data.uitmAttrTypeList[i].uitmAttrMstList[j].uitmAttrNm + '</option>');
                        }

                        $(label).append(select);
                        $(selectbox).append(label);
                    }
                    $(dlUitmArea).append(selectbox);
                }

                if(data.bsicUitmList != null && data.bsicUitmList.length > 1) {
                    var label = $('<label class="sellabel"></label>');
                    var select = $("<select id='uitmSelect' onchange='changeUitmCd(\""+slitmCd+"\", \""+uitmCd+"\");'></select>");
                    $(select).append('<option value="">선택하세요</option>');

                    for(var i in data.bsicUitmList) {
                        $(select).append('<option value="' + data.bsicUitmList[i].uitmCd + '">' + data.bsicUitmList[i].uitmTotNm + '</option>');
                        optionCnt += 1;
                    }

                    $(label).append(select);
                    $(selectbox).append(label);
                    $(dlUitmArea).append(selectbox);
                }
                ///*
                // 기본구성
                if(data.baseSlitmCmpsMstList != null && data.baseSlitmCmpsMstList.length > 0) {
                    for(var i in data.baseSlitmCmpsMstList) {
                        $(dlUitmArea).append('<dt>' + data.baseSlitmCmpsMstList[i].cmpsNm + '</dt>');

                        var dd = $("<dd></dd>");
                        var select = $("<select class='cu_select w260 baseCmpsSelect' onchange='changeBaseCmps(this);'></select>");
                        $(select).append('<option value="">선택하세요</option>');

                        for(var j in data.baseSlitmCmpsMstList[i].slitmCmpsDtlList) {
                            $(select).append('<option value="' + data.baseSlitmCmpsMstList[i].slitmCmpsDtlList[j].cmpsSeq + '|' + data.baseSlitmCmpsMstList[i].slitmCmpsDtlList[j].cmpsItemSeq + '">' + data.baseSlitmCmpsMstList[i].slitmCmpsDtlList[j].cmpsItemDispNm + '</option>');
                        }

                        $(dd).append(select);
                        $(dlUitmArea).append(dd);
                    }
                }
                // /

                // 추가구성
                if(data.addSlitmCmpsMstList != null && data.addSlitmCmpsMstList.length > 0) {
                    for(var i in data.addSlitmCmpsMstList) {
                        //$(dlAddCmpsArea).append('<dt>' + data.addSlitmCmpsMstList[i].cmpsNm + '</dt>');

                        var label = $('<label class="sellabel"></label>');
                        var select = $("<select onchange='changeAddCmps(this, \""+slitmCd+"\", \""+uitmCd+"\");'></select>");
                        $(select).append('<option value="">선택하세요</option>');

                        for(var j in data.addSlitmCmpsMstList[i].slitmCmpsDtlList) {
                            $(select).append('<option value="' + data.addSlitmCmpsMstList[i].cmpsSeq + '|' + data.addSlitmCmpsMstList[i].slitmCmpsDtlList[j].cmpsItemSeq + '|' + data.addSlitmCmpsMstList[i].slitmCmpsDtlList[j].sellPrc + '">' + data.addSlitmCmpsMstList[i].slitmCmpsDtlList[j].cmpsItemDispNm + '</option>');
                            optionCnt += 1;
                        }

                        $(label).append(select);
                        $(selectbox).append(label);
                    }
                    $(dlUitmArea).append(selectbox);
                }

                if(data.baskt != null) {
                    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd).append('<input type="hidden" name="dluMaxBuyQtyCnt" value="' + data.baskt.slitmInf.dluMaxBuyQty +'"/>');                   
                    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd).append('<input type="hidden" name="lwstBuyQtyCnt" value="' + data.baskt.slitmInf.lwstBuyQty +'"/>');    
                    
                    var optgroup = $('<div class="optgroup"></div>');
                    $(optgroup).append($("<strong>"+data.baskt.uitmTotNm+"</strong>"));
                    
                    var quantity = $('<div class="quantity" id="uitm"></div>');
                    
                    if(data.baskt.uitmCombYn == 'Y') {
                        for(var idx in data.baskt.uitmSeqList) {
                            $(quantity).append('<input type="hidden" name="uitmSeq" value="' + data.baskt.uitmSeqList[idx] + '"/>');
                        }
                    } else {
                        $(quantity).append('<input type="hidden" name="uitmCd" value="' + data.baskt.uitmCd + '"/>');
                    }
                    
                    var count = $('<div class="count"></div>');
                    $(count).append('<button type="button" class="btn btn-minus" aria-label="수량 감소" onclick="uitmMinus(this, \''+ data.baskt.slitmInf.lwstBuyQty + '\')"><i class="icon"></i><span class="hiding">감소</span></button>');
                    $(count).append('<div class="inputbox"><label class="inplabel"><input type="number" name="ordQty" maxlength="2" value="'+ data.baskt.ordQty + '" onkeyup="uCheckOrdQty(this,\''+ data.baskt.slitmInf.dluMaxBuyQty + '\', \''+data.baskt.slitmInf.lwstBuyQty+'\')" title="입력하세요"></label></div>');
                    $(count).append('<button type="button" class="btn btn-plus" aria-label="수량 증가" onclick="uitmPlus(this, \''+ data.baskt.slitmInf.dluMaxBuyQty + '\')"><i class="icon"></i><span class="hiding">증가</span></button>');
                      
                    var price = $('<div class="pdprice"></div>');
                    $(price).append('<input type="hidden" name="sellPrc" value="' + data.baskt.slitmInf.sellPrc + '"/>');
                    $(price).append('<ins aria-label="가격"><em>'+gfn_appendComma(Number(data.baskt.slitmInf.sellPrc) * Number(data.baskt.ordQty))+'</em><b>원</b></ins>');
                    if ( optionCnt > 0 ) {
                        $(price).append('<button type="button" class="btn-delete" onclick="removeUitmRow(this);"><i class="icon"></i><span class="hiding">삭제</span></button>');
                    }
                    /*
                    if(data.baskt.basktBaseCmpsDtlList != null && data.baskt.basktBaseCmpsDtlList.length > 0) { // 기본구성
                        for(var i in data.baskt.basktBaseCmpsDtlList) {
                            $("#divSelectedUitmArea li.first").append('<span class="block gray mt5">└ ' + data.baskt.basktBaseCmpsDtlList[i].cmpsItemDispNm + '</span>');
                            $("#divSelectedUitmArea li.first").append('<input type="hidden" name="baseCmpsInfo" value="' + data.baskt.basktBaseCmpsDtlList[i].cmpsSeq + '|' + data.baskt.basktBaseCmpsDtlList[i].cmpsItemSeq + '"/>');
                        }
                    }
                    // /
                    
                    $(quantity).append(count);
                    $(quantity).append(price);
                    $(optgroup).append(quantity);
                    $(dlUitmArea).append(optgroup);
                    
                    if(data.baskt.basktAddCmpsDtlList != null && data.baskt.basktAddCmpsDtlList.length > 0) {   // 추가구성
                        for(var i in data.baskt.basktAddCmpsDtlList) {
                        	//var optgroup = $('<div class="optgroup"></div>');
                            $(optgroup).append($("<strong>"+data.baskt.basktAddCmpsDtlList[i].cmpsItemDispNm+"</strong>"));
                            
                            var quantity = $('<div class="quantity" id="addCmps"></div>');
                            $(quantity).append('<input type="hidden" name="addCmpsInf" value="' + data.baskt.basktAddCmpsDtlList[i].cmpsSeq + '|' + data.baskt.basktAddCmpsDtlList[i].cmpsItemSeq + '"/>');
                            
                            var count = $('<div class="count"></div>');
                            $(count).append('<input type="hidden" name="ordQty" value="'+ data.baskt.basktAddCmpsDtlList[i].cmpsOrdQty + '"title="입력하세요">');
                              
                            var price = $('<div class="pdprice"></div>');
                            $(price).append('<input type="hidden" name="sellPrc" value="' + data.baskt.slitmInf.sellPrc + '"/>');
                            $(price).append('<ins aria-label="가격"><em>'+gfn_appendComma(Number(data.baskt.basktAddCmpsDtlList[i].cmpsSellPrc) * Number(data.baskt.basktAddCmpsDtlList[i].cmpsOrdQty))+'</em><b>원</b></ins>');
                            $(price).append('<button type="button" class="btn-delete" onclick="removeUitmRow(this);"><i class="icon"></i><span class="hiding">삭제</span></button>');
                            
                            $(quantity).append(count);
                            $(quantity).append(price);
                            $(optgroup).append(quantity);
                            $(dlUitmArea).append(optgroup);
                        }
                    }
                    
                    //calcSellPrc();
                }
                $(dlUitmArea).append('<div class="btngroup"><button type="button" class="btn btn-linelgray" onclick="$(\'#optBtn_'+slitmCd+'_'+uitmCd+'\').toggleClass(\'selected\');$(\'#chgUitmLayer_'+slitmCd+'_'+uitmCd+'\').toggleClass(\'selected\');"><span>취소</span></button> <button type="button" class="btn btn-linelgray" onclick="changeBasktItemUitmInf(\''+slitmCd+'\', \''+uitmCd+'\');"><span>변경적용</span></button></div>');
                //$("#chgUitmLayer_"+slitmCd+"_"+uitmCd).toggleClass("selected");
                loading(false);
                */
                
            }
        }
        , error: function(data) {
        	loading(false);
        }
    });
}


function changeUitmCd(slitmCd, uitmCd) {
    var newUitmCd = $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" #uitmSelect option:selected").val();
    var newUitmCdNm = $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" #uitmSelect option:selected").text();

    if ( newUitmCd == "") {
    	return;
    }
    
    // 유효성 체크
    var flag = true;
    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" #uitm").each(function () {
        if(newUitmCd == $(this).find("input[name='uitmCd']").val()) {
            flag = false;
        }
    });
    
    if(!flag) {
        alert("동일상품이 선택되었습니다.\n아래에서 선택사항을 확인해주세요.");

        $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" #uitmSelect option:first").attr("selected", true);
        
        return;
    }
    
    var sellPrc = $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" input[name='uitmSellPrc']").val();
    var dluMaxBuyQty = $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" input[name='dluMaxBuyQtyCnt']").val();
    var lwstBuyQtyCnt = $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" input[name='lwstBuyQtyCnt']").val();
    
    //2017.09.07 최연태 최소수량 셋팅,기본 checkOrdQty 추가
    var optQty = 1;
    if(lwstBuyQtyCnt > 1){
        optQty = lwstBuyQtyCnt;
    }
    
    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" div.optgroup").append($("<strong>"+newUitmCdNm+"</strong>"));
    
    var quantity = $('<div class="quantity" id="uitm"></div>');
    $(quantity).append('<input type="hidden" name="uitmCd" value="' + newUitmCd + '"/>');
    
    var count = $('<div class="count"></div>');
    $(count).append('<button class="btn btn-minus" aria-label="수량 감소" onclick="uitmMinus(this, \''+ lwstBuyQtyCnt + '\')"><i class="icon"></i><span class="hiding">감소</span></button>');
    $(count).append('<div class="inputbox"><label class="inplabel"><input type="number" name="ordQty" maxlength="2" value="'+ optQty + '" onkeyup="uCheckOrdQty(this,\''+ dluMaxBuyQty + '\', \''+lwstBuyQtyCnt+'\')" title="입력하세요"></label></div>');
    $(count).append('<button class="btn btn-plus" aria-label="수량 증가" onclick="uitmPlus(this, \''+ dluMaxBuyQty + '\')"><i class="icon"></i><span class="hiding">증가</span></button>');
    
    var price = $('<div class="pdprice"></div>');
    $(price).append('<input type="hidden" name="sellPrc" value="' + sellPrc + '"/>');
    $(price).append('<ins aria-label="가격"><em>'+gfn_appendComma(Number(sellPrc))+'</em><b>원</b></ins>');
    $(price).append('<button class="btn-delete" onclick="removeUitmRow(this);"><i class="icon"></i><span class="hiding">삭제</span></button>');
    
    $(quantity).append(count);
    $(quantity).append(price);
    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" div.optgroup").append(quantity);
}

function uCheckOrdQty(obj, limitCnt, minCnt) {
    var input = $(obj);
    var ordQty = Number($(input).val());
    var sellPrc = $(obj).parent().parent().parent().parent().parent().parent().find("input[name='uitmSellPrc']").val();
    
    if(isEmpty(limitCnt)) {
        limitCnt = 99;
    }

    if(isEmpty(minCnt)) {
        minCnt = 0;
    }
    
    if(ordQty >= limitCnt) {
        alert("본 상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
        input.val(limitCnt);
        
        var prc = Number(sellPrc) * (limitCnt + 1);
        $(obj).parent().parent().parent().parent().find("div.pdprice").find("em").text(gfn_appendComma(prc));
        //calcSellPrc();
        return;
    }
    
    if(ordQty < minCnt) {
        alert("본 상품은 " + minCnt + "개 미만 주문할 수 없습니다.");
        input.val(minCnt);
        
        var prc = Number(sellPrc) * (minCnt + 1);
        $(obj).parent().parent().parent().parent().find("div.pdprice").find("em").text(gfn_appendComma(prc));
        //calcSellPrc();
        return;
    }
    
    var prc = Number(sellPrc) * (ordQty);
    $(obj).parent().parent().parent().parent().find("div.pdprice").find("em").text(gfn_appendComma(prc));

    //calcSellPrc();
}


function uitmPlus(obj, limitCnt) {
    var input = $(obj).siblings("div.inputbox").find("input[name='ordQty']");
    var ordQty = Number($(input).val());

    if(isEmpty(limitCnt)) {
        limitCnt = 99;
    }

    if(ordQty >= limitCnt) {
        alert("본상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
        return;
    }

    //var sellPrc = $(obj).parents("div.pdlist-wrap").find("input[name='uitmSellPrc']").val();
    var sellPrc = $(obj).parents("div.quantity").find("input[name='sellPrc']").val();
    
    var prc = Number(sellPrc) * (ordQty + 1);
    $(obj).parent().parent().find("div.pdprice").find("em").text(gfn_appendComma(prc));
    $(input).val(ordQty + 1);

    //calcSellPrc();
}


function uitmMinus(obj,minCnt) {
    var input = $(obj).siblings("div.inputbox").find("input[name='ordQty']");
    var ordQty = Number($(input).val());

    if(isEmpty(minCnt)) {
        minCnt = 0;
    }
    
    if(ordQty <= 1) {
        return;
    }
    
    if(ordQty <= minCnt) {
        alert("본 상품은 " + minCnt + "개 미만 주문할 수 없습니다.");
        return;
    }
    
    //var sellPrc = $(obj).parents("div.pdlist-wrap").find("input[name='uitmSellPrc']").val();
    var sellPrc = $(obj).parents("div.quantity").find("input[name='sellPrc']").val();
    
    
    var prc = Number(sellPrc) * (ordQty - 1);
    $(obj).parent().parent().find("div.pdprice").find("em").text(gfn_appendComma(prc));
    $(input).val(ordQty - 1);

    //calcSellPrc();
}


function changeAddCmps(obj, slitmCd, uitmCd) {
	/*
    // 속성 선택여부 체크 (속성에 종속되기때문에 필수 선택)
    var selectedCount = 0;
    $("#productModify select.uitmSelect option:selected").each(function() {
        if(!isEmpty($(this).val())) {
            selectedCount++;
        }
    });

    if($("#productModify select.uitmSelect").length > 0 && (selectedCount < $("#productModify select.uitmSelect").length)) {
        alert("주문선택사항을 먼저 선택하시기 바랍니다.");
        $(obj).find("option:first").attr("selected", true);
        return;
    }

    // 기본구성 선택여부 체크 (기본구성은 필수 선택 - 존재하지 않는 경우 무시한다.)
    var baseCmpsSelectedCount = 0;
    $("#productModify select.baseCmpsSelect option:selected").each(function() {
        if(!isEmpty($(this).val())) {
            baseCmpsSelectedCount++;
        }
    });

    if($("#productModify select.baseCmpsSelect").length > 0 && (baseCmpsSelectedCount < $("#productModify select.baseCmpsSelect").length)) {
        alert("기본구성을 먼저 선택하시기 바랍니다.");
        $(obj).find("option:first").attr("selected", true);
        return;
    }
    */
    
    // 선택값이 없을 경우 리턴시킴
    if(isEmpty($(obj).val())) {
        return;
    }

    /*
     * 동일 속성 선택 존재여부/복수추가구매 불가여부 체크 후 존재하는 경우 리턴
     */
    var existYn = false;
    /*
    var plAddBuyNdmtYn = $("dt.dtAddSlitmCmpsNmArea:eq(" + addCmpsTypeIndex + ")").find("input[name='plAddBuyNdmtYn']").val();
    if(plAddBuyNdmtYn == 'Y') { // 복수추가구매 불가여부 체크
        alert("본 구성품은 1개만 선택하실 수 있습니다.");
        return;
    }*/
    var addCmpsInf = $(obj).val().split('|')[0] + '|' + $(obj).val().split('|')[1];
    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" input[name='addCmpsInf']").each(function() {
        if($(this).val() == addCmpsInf) {
            existYn = true;
        }
    });

    if(existYn) {
        alert("동일상품이 선택되었습니다.\n아래에서 선택사항을 확인해주세요.");
        return;
    }
    
    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" div.optgroup").last().append($("<strong>"+$(obj).find("option:selected").html()+"</strong>"));
    
    var quantity = $('<div class="quantity"></div>');
    $(quantity).append('<input type="hidden" name="addCmpsInf" value="' + $(obj).find("option:selected").val().split('|')[0] + '|' + $(obj).find("option:selected").val().split('|')[1] + '"/>');
    
    var count = $('<div class="count"></div>');
    $(count).append('<div class="inputbox"><label class="inplabel"><input type="hidden" name="ordQty" value="1" ></label></div>');
    
    var price = $('<div class="pdprice"></div>');
    $(price).append('<input type="hidden" name="sellPrc" value="' + $(obj).find("option:selected").val().split('|')[2] + '"/>');
    $(price).append('<ins aria-label="가격"><em>'+gfn_appendComma(Number($(obj).find("option:selected").val().split('|')[2]))+'</em><b>원</b></ins>');
    $(price).append('<button type="button" class="btn-delete" onclick="removeUitmRow(this);"><i class="icon"></i><span class="hiding">삭제</span></button>');
    
    $(quantity).append(count);
    $(quantity).append(price);
    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" div.optgroup").last().append(quantity);
}

<!-- 장바구니 변화 있을 시 -->
function changeBasktItemUitmInf(slitmCd, uitmCd) {
    // 1. 유효성체크
    /* if($("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" div.quantity").length == 0) {
        alert("상품속성을 선택해주세요.");
        return;
    } */
    
    $("#productModifyForm").html("");
    $("#productModifyForm").append('<input type="hidden" name="slitmCd" value="' + slitmCd + '"/>');
    $("#productModifyForm").append('<input type="hidden" name="oldUitmCd" value="' + uitmCd + '"/>');

    var index = -1;
    var flag = true;
    $("#chgUitmLayer_"+slitmCd+"_"+uitmCd+" div.quantity").each(function() {
        
            index++;

            /* var ordQty = $(this).find("input[name='ordQty']").val();    // 속성 수량
            if(isEmpty(ordQty) || Number(ordQty) <= 0) {
                flag = false;
            } */

            if(flag) {
                // 기본형
                var uitmCd = $(this).find("input[name='uitmCd']").val();
                var input = $("<input type='hidden' name='uitmCdInf'/>");
                $(input).val(index + "^" + uitmCd + "|" + ordQty);
                $("#productModifyForm").append(input);
            }
            if(flag) {
                $(this).find("input[name='addCmpsInf']").each(function() {
                    var input = $("<input type='hidden' name='addCmpsInf'/>");
                    $(input).val(index + "^" + $(this).val() + "|" + ordQty);
                    $("#productModifyForm").append(input);
                });
            }
        
    });
    
    if(!flag) {
        alert("상품 수량 정보가 올바르지 않습니다.");
        $("#productModifyForm input[name='uitmCdInf'], #productModifyForm input[name='baseCmpsInf'], #productModifyForm input[name='addCmpsInf']").remove();
        return;
    }

    $.ajax({
        url: "/p/odb/checkExstUitmInfForChangeUitmCd.do"
        , dataType: "json"
        , data:$("#productModifyForm").serialize()
        , success: function(data) {
            if(!isEmpty(data.exstUitmNm)) {
                // 2.동일옵션 확인
                if(!isEmpty(data.exstUitmNm) && !confirm("선택하신 속성중 '" + data.exstUitmNm + "'는 이미 주문하실 상품 목록에 있는 상품입니다.\n'" + data.exstUitmNm + "'을 제외한 나머지 속성만 변경/추가됩니다.")) {
                    return;
                }
            }

            // 3. 변경
            changeBasktInf();
        }
        , error: function(xhr, status, error) {

        }
    });
}


function removeUitmRow(obj) {
	$(obj).parent().parent().prev("strong").remove();
	$(obj).parent().parent().remove();
}

function changeBasktInf() {
	$.ajax({
        url: "/p/odb/changeBasktItemUitmInf.do"
        , dataType: "json"
        , data:$("#productModifyForm").serialize()
        , success: function(data) {
            if(!isEmpty(data.errorMessages)) {
                alert(data.errorMessages.join("\n"));
            } else {
                goBasktList();
            }
        }
        , error: function(xhr, status, error) {

        }
    });
}

function goBasktList(){
    var checkedBasktInfArray = getCheckedBasktInf();
    
    for(var i=0 ; i<checkedBasktInfArray.length ; i++){
        $("#goBasktList").append("<input type='hidden' name='basktInf' value='"+checkedBasktInfArray[i]+"' />");
    }
    
    $("#goBasktList").submit();
}

function getCheckedBasktInf(){
    var checkedBasktInfArray = new Array();
    
    $("input[name='basktInf']:checked").each(function() {
        //4,5번째 값 수량,가격 이므로 변할 수 있음 체크하기 위한 값들만 다시 셋팅
        var basktInf = $(this).val().split("|");
        checkedBasktInfArray.push(basktInf[0]+"|"+basktInf[1]+"|"+basktInf[2]);
    });
    
    return checkedBasktInfArray;
}


function orderSelect(obj) {
    var basktInfArr = new Array();
    var ordAgreeInfArr = new Array();    
    var hpntPrtyTempInfArr = new Array(); //적립금 우선결제 상품 임시 저장  
    var uitmCdInfPupArr = new Array();   //새벽배송,신선식품 추가 20180705 특화배송조유진
    var allInfArray = new Array();
    
    var exstHoldTimeItemYn = false;
    var stpicDlvHopeOverYn = false;
    var hpntPrtyStlmYn = false;        
    var hpntPrtyStlmCount = 0;
    var cnt = $("input[name=basktInf]:checked").length;
    
    var exstcjDawndlvCtn = 0;
    var exstCardEventPdCnt = 0;
    var exstDongwonDawndlvCtn = 0;
    var chkSlitmCds = "";
    var searchExclItemTrgtGbcd = false;

    var stpicItemCnt    = 0;
    var gnlItemCnt      = 0;
    
    //품절상품 포함여부 체크
    var soldOutCnt = $("input[name=soldOutSlitm]:checked").length;
    if(soldOutCnt > 0){
        alert("선택하신 상품에는 품절/판매 종료 상품이 포함되어있습니다.");
        return false;
    }
    
    $("input[name=basktInf]:checked").each(function() {
        var basktInf = $(this);  
        var ordAgreeInfTemp = "";
        var uitmCdInfPupTmp = "";
        
        var exclItemTrgtGbcd = $(this).parents("div.pdwrap").find("input[name='exclItemTrgtGbcd']").val();
        var chkSlitmCd = $(this).parents("div.pdwrap").find("input[name='slitmCd']").val();
        if(!isEmpty(exclItemTrgtGbcd)){
            searchExclItemTrgtGbcd = true;
        }
        if(!isEmpty(chkSlitmCd)){
            if(!isEmpty(chkSlitmCds)){
                chkSlitmCds += ","
            }
            chkSlitmCds += chkSlitmCd;
        }

        // 스토어픽 픽업일 체크
        var basktGbcd = $(this).parents("div.pdwrap").find("input[name='basktGbcd']").val();
        if(basktGbcd == "22"){
            stpicItemCnt++;
        }else{
            gnlItemCnt++;
        }
        
                                
        if($(this).parents("div.pdwrap").find("input[name='holdTimeYn']").val() == "Y") {
            exstHoldTimeItemYn = true;
        }
        //else if($(this).parents("div.pdwrap").find("input[name='dlvHopeOverYn']").val() == "Y" && stpicYn == "Y"){ // 픽업일 경과 상품
        //    stpicDlvHopeOverYn = true;
        //}
        /* 아래에서 체크함. renew2020
        else if($(this).parents("div.pdwrap").find("input[name='hpntPrtyStlmYn']").val() == "Y"){                       
            ordAgreeInfTemp = $(this).parents("div.pdwrap").find("input[name='ordAgreeInf']").val().replaceall('&','');
            ordAgreeInfArr.push(ordAgreeInfTemp);           
            hpntPrtyStlmCount++;
            hpntPrtyTempInfArr.push($(basktInf).val());                     
            if(cnt == hpntPrtyStlmCount){
                hpntPrtyStlmYn = true;          
            };
            
            //새벽배송,신선식품 팝업용 20180705특화배송조유진
            uitmCdInfPupTmp = $(this).parents("div.pdwrap").find("input[name='uitmCdInfPup']").val();
            //uitmCdInfPupArr.push(uitmCdInfPupTmp);
            
            //allInfArray.push($(basktInf).val()+"&&"+ordAgreeInfTemp+"&&"+uitmCdInfPupTmp);
            
        }else{
            //basktInfArr.push($(basktInf).val());
            ordAgreeInfTemp = $(this).parents("div.pdwrap").find("input[name='ordAgreeInf']").val().replaceall('&','');
            ordAgreeInfArr.push(ordAgreeInfTemp); 
            
            //새벽배송,신선식품 팝업용 20180705특화배송조유진
            uitmCdInfPupTmp = $(this).parents("div.pdwrap").find("input[name='uitmCdInfPup']").val();
            uitmCdInfPupArr.push(uitmCdInfPupTmp);
            
            //allInfArray.push($(basktInf).val()+"&&"+ordAgreeInfTemp+"&&"+uitmCdInfPupTmp);
        }
        */
        
        //새벽배송전용상품 체크
        var venCd = $(this).parent().parent().parent().find("input[name='venCd']").val();
        if(venCd == '017559'){
            exstcjDawndlvCtn++;
        }
        
        if(venCd == '020301'){
            exstDongwonDawndlvCtn++;
        }
        
        //카드이벤트 상품 체크
        var cardEventYn = $(this).parent().parent().parent().find("input[name='cardEventYn']").val();
        if(cardEventYn == 'Y'){
            exstCardEventPdCnt++;
        }
    });
    
  //특정대상 전용상품 check
    if(searchExclItemTrgtGbcd){
        if(!exclItemTrgtGbcdChk('buy', chkSlitmCds)){
            return;
        }
    }

    // HPoint마케팅개선 kjh 20190201 적립금우선결제 > H.Point우선결제
    // 2020.01 H포인트 최소결제금액 1000p->100p
    if(hpntPrtyStlmYn){
        alert("H.Point 우선결제 상품입니다. 최소 100포인트가 필요합니다.");   
        for (var i=0; i<hpntPrtyTempInfArr.length;i++) {
            basktInfArr.push(hpntPrtyTempInfArr[i]);
        }                   
    }else if(hpntPrtyStlmCount > 0){
       if(!confirm("H.Point 우선결제 상품이 포함되어 있습니다. 제외하고 구매하시겠습니까?")) {
        return false;
       }
    }
    
    //새벽 전용상품 예외 처리
    if(exstcjDawndlvCtn > 0 && cnt != exstcjDawndlvCtn){
        if(confirm("'새벽배송 전용 상품이 포함되어있습니다. 제외하고 구매하시겠습니까? (단, 새벽배송 전용 상품끼리 묶음 구매는 가능합니다.)'")){
            //새벽배송 전용상품 제외
            $("input[name='basktInf']:checked").each(function(){
                var venCd = $(this).parents(".pdwrap").find("input[name='venCd']").val();
                if(venCd == '017559'){
                    $(this).prop("checked", false);      
                }
            });
        }else{
            return;
        }
    }
    
    //동원 전용상품 예외 처리
    if(exstDongwonDawndlvCtn > 0 && cnt != exstDongwonDawndlvCtn){
        if(confirm("더반찬 상품은 다른 상품과 함께 주문하실 수 없습니다. 다른 상품을 제외하고 더반찬 상품을 구매하시겠습니까?")){
            //새벽배송 전용상품 제외
            $("input[name='basktInf']:checked").each(function(){
                var venCd = $(this).parents(".pdwrap").find("input[name='venCd']").val();
                if(venCd != '020301'){
                    $(this).prop("checked", false);      
                }
            });
        }else{
            return;
        }
    }
    
    //카드이벤트상품 예외 처리
    if(exstCardEventPdCnt > 0 && cnt != exstCardEventPdCnt){
        if(confirm("'카드이벤트 전용 상품이 포함되어있습니다. 제외하고 구매하시겠습니까? (단, 카드이벤트 전용 상품끼리 묶음 구매는 가능합니다.)'")){
            //카드이벤트상품 제외
            $("input[name='basktInf']:checked").each(function(){
                var cardEventYn = $(this).parents(".pdwrap").find("input[name='cardEventYn']").val();
                if(cardEventYn == 'Y'){
                    $(this).prop("checked", false);
                }
            });
        }else{
            return;
        }
    }
    
    /*
    if(exstHoldTimeItemYn) {
        if(!confirm("일시중단된 상품이 포함되어 있습니다. 제외하고 구매하시겠습니까?")) {
            return false;
        }
    }
    
    if(stpicDlvHopeOverYn) {
        if(!confirm("픽업일이 경과한 상품이 있습니다. 제외하고 구매하시겠습니까?")) {
            return false;
        }
    }
    */

    // 선물포장, 쇼핑백 노출여부.
    if(stpicItemCnt > 0){
        boxPackItemPopYn ="N"; // 스토어픽 상품은 선물포장, 쇼핑백신청 불가.
    }else{
        boxPackItemPopYn ="Y"; // 스토어픽 상품은 선물포장 체크.
    }

        // 새벽배송 체크이후 만들어준다.
    $("input[name='basktInf']:checked").each(function(index, obj) {
        basktInfArr.push($(obj).val());        
        var ordAgreeInfTemp = $(obj).parents(".pdwrap").find("input[name='ordAgreeInf']").val().replaceall('&','');
        //신규팝업 노출을 위한 값 셋팅
        ordAgreeInfArr.push(ordAgreeInfTemp);  
        
        var stlmWayScopGbcd = $(obj).parents(".pdwrap").find("input[name='stlmWayScopGbcd']").val();
        if(stlmWayScopGbcd == '20'){
            cashOnlyYn = 'Y';
        }else if(stlmWayScopGbcd == '50'){
            cardOnlyYn = 'Y';
        }
        
        //새벽배송,신선식품 팝업용 20180705특화배송조유진
        var uitmCdInfPupTmp = $(obj).parents(".pdwrap").find("input[name='uitmCdInfPup']").val().replaceall('&','');
        uitmCdInfPupArr.push(uitmCdInfPupTmp);
        
        allInfArray.push($(obj).val()+"&&"+ordAgreeInfTemp+"&&"+uitmCdInfPupTmp);
        
    });
    
    if(basktInfArr.length == 0) {
        alert("선택한 상품이 없습니다.");
        return false;
    }

    if(needAgreePopup(ordAgreeInfArr)) {
        // 주문제작/박스오픈 + 새벽배송/신선식품_20180713특화배송조유진
        carefulPop(allInfArray);
    } else {
        order(basktInfArr);
    }
}


function orderBndl(obj, stpicYn) {
    var basktInfArr = new Array();
    var ordAgreeInfArr = new Array();    
    var hpntPrtyTempInfArr = new Array();    
    var uitmCdInfPupArr = new Array();   //새벽배송,신선식품 추가 20180705 특화배송조유진
    var allInfArray = new Array();
    
    var exstHoldTimeItemYn = false;
    var stpicDlvHopeOverYn = false;
    var hpntPrtyStlmYn = false;        
    var hpntPrtyStlmCount = 0;
    var cnt = new Number($(obj).parent().attr("rowspan"));
    
    var chkSlitmCds = "";
    var searchExclItemTrgtGbcd = false;

    if(stpicYn == "Y"){
        boxPackItemPopYn ="N"; // 스토어픽 상품은 선물포장, 쇼핑백신청 불가.
    }else{
        boxPackItemPopYn ="Y";
    }
    
    $(obj).parent().parent().parent().parent().find("div.pdwrap").each(function() {
    	
    	if ( $(this).attr("style").indexOf("none") > 0 ) {
    		return true;
    	} 
    	
        var basktInf = $(this).find("input[name='basktInf']");  
        var ordAgreeInfTemp = "";
        var uitmCdInfPupTmp = "";
        
        var exclItemTrgtGbcd = $(this).find("input[name='exclItemTrgtGbcd']").val();
        var chkSlitmCd = $(this).find("input[name='slitmCd']").val();
        if(!isEmpty(exclItemTrgtGbcd)){
            searchExclItemTrgtGbcd = true;
        }
        if(!isEmpty(chkSlitmCd)){
            if(!isEmpty(chkSlitmCds)){
                chkSlitmCds += ","
            }
            chkSlitmCds += chkSlitmCd;
        }
        
                                
        if($(this).find("input[name='holdTimeYn']").val() == "Y") {
            exstHoldTimeItemYn = true;
        }
        else if($(this).find("input[name='dlvHopeOverYn']").val() == "Y" && stpicYn == "Y"){ // 픽업일 경과 상품
            stpicDlvHopeOverYn = true;
        }
        else if($(this).find("input[name='hpntPrtyStlmYn']").val() == "Y"){                       
            ordAgreeInfTemp = $(this).find("input[name='ordAgreeInf']").val().replaceall('&','');
            ordAgreeInfArr.push(ordAgreeInfTemp);           
            hpntPrtyStlmCount++;
            hpntPrtyTempInfArr.push($(basktInf).val());                     
            if(cnt == hpntPrtyStlmCount){
                hpntPrtyStlmYn = true;          
            };
            
            //새벽배송,신선식품 팝업용 20180705특화배송조유진
            uitmCdInfPupTmp = $(this).find("input[name='uitmCdInfPup']").val();
            uitmCdInfPupArr.push(uitmCdInfPupTmp);
            
            allInfArray.push($(basktInf).val()+"&&"+ordAgreeInfTemp+"&&"+uitmCdInfPupTmp);
            
        }else{
            basktInfArr.push($(basktInf).val());
            ordAgreeInfTemp = $(this).find("input[name='ordAgreeInf']").val().replaceall('&','');
            ordAgreeInfArr.push(ordAgreeInfTemp); 
            
            //새벽배송,신선식품 팝업용 20180705특화배송조유진
            uitmCdInfPupTmp = $(this).find("input[name='uitmCdInfPup']").val();
            uitmCdInfPupArr.push(uitmCdInfPupTmp);
            
            allInfArray.push($(basktInf).val()+"&&"+ordAgreeInfTemp+"&&"+uitmCdInfPupTmp);
        }
    });
    
  //특정대상 전용상품 check
    if(searchExclItemTrgtGbcd){
        if(!exclItemTrgtGbcdChk('buy', chkSlitmCds)){
            return;
        }
    }

    // HPoint마케팅개선 kjh 20190201 적립금우선결제 > H.Point우선결제
    // 2020.01 H포인트 최소결제금액 1000p->100p
    if(hpntPrtyStlmYn){
        alert("H.Point 우선결제 상품입니다. 최소 100포인트가 필요합니다.");   
        for (var i=0; i<hpntPrtyTempInfArr.length;i++) {
            basktInfArr.push(hpntPrtyTempInfArr[i]);
        }                   
    }else if(hpntPrtyStlmCount > 0){
       if(!confirm("H.Point 우선결제 상품이 포함되어 있습니다. 제외하고 구매하시겠습니까?")) {
        return false;
       }
    }
                   
    if(exstHoldTimeItemYn) {
        if(!confirm("일시중단된 상품이 포함되어 있습니다. 제외하고 구매하시겠습니까?")) {
            return false;
        }
    }
    
    if(stpicDlvHopeOverYn) {
        if(!confirm("픽업일이 경과한 상품이 있습니다. 제외하고 구매하시겠습니까?")) {
            return false;
        }
    }

    if(basktInfArr.length == 0) {
        alert("선택한 상품이 없습니다.");
        return false;
    }

    if(needAgreePopup(ordAgreeInfArr)) {
        // 주문제작/박스오픈 + 새벽배송/신선식품_20180713특화배송조유진
        carefulPop(allInfArray);
    } else {
        order(basktInfArr);
    }
}


function buyDirect(obj, isAgree) {
    var basktInfArr = new Array();
    var ordAgreeInfArr = new Array();
    var hpntPrtyStlmYn = $(obj).siblings("input[name='hpntPrtyStlmYn']").val();
    var allInfArray = new Array();
   
    //특정대상 전용상품 start
    var seq = (obj.id).replace("buyDirectBtn_", "");
    if(!isEmpty($("#exclItemTrgtGbcd_"+seq).val())){
        if(!exclItemTrgtGbcdChk('buy', seq)){
            return;
        }
    }
    
    //특정대상 전용상품 end
    // HPoint마케팅개선 kjh 20190201 적립금우선결제 > H.Point우선결제
    // 2020.01 H포인트 최소결제금액 1000p->100p
    if(!isEmpty(hpntPrtyStlmYn)){
        alert("H.Point 우선결제 상품입니다. 최소 100포인트가 필요합니다.");     
    }
    
    basktInfArr.push($(obj).parent().parent().parent().find("input[name='basktInf']").val());
    var ordAgreeInfTemp = $(obj).parent().parent().parent().find("input[name='ordAgreeInf']").val().replaceall('&','');
    ordAgreeInfArr.push(ordAgreeInfTemp);

    var basktGbcd = $(obj).parent().parent().parent().find("input[name='basktGbcd']").val();
    if(basktGbcd == "22"){
        boxPackItemPopYn ="N"; // 스토어픽 상품은 선물포장, 쇼핑백신청 불가.
    }else{
        boxPackItemPopYn ="Y"; // 스토어픽 상품이 아니면 선물포장, 쇼핑백신청 체크
    }

    //새벽배송,신선식품 팝업용 20180705특화배송조유진
    var uitmCdInfPupArr = new Array();
    var uitmCdInfPupTmp = $(obj).parent().parent().parent().find("input[name='uitmCdInfPup']").val().replaceall('&','');
    uitmCdInfPupArr.push(uitmCdInfPupTmp);
    
    allInfArray.push($(obj).parent().parent().parent().find("input[name='basktInf']").val()+"&&"+ordAgreeInfTemp+"&&"+uitmCdInfPupTmp);

    if(needAgreePopup(ordAgreeInfArr)) {
        carefulPop(allInfArray);
    } else {
        order(basktInfArr);
    }
}

var ordBasktInfArrParam = new Array();
//주문제작+박스오픈 주의사항 팝업 20180713특화배송조유진
function carefulPop(allInfArray){
  
  $("#divOrdMakePdItemList").empty();
  $("#divBoxOpenPdItemList").empty();
  $("#divFreshFoodPdItemList").empty();
  $("#divWintInsmMthsPdItemList").empty();
  
  ordBasktInfArrParam = new Array();
  
  //할부개월 안내 팝업 스크롤 초기화
  /*
  var defaultHtml = '';
  defaultHtml += '<div class="custom-scroll-content">';
  defaultHtml += '    <ul id="divWintInsmMthsPdItemList">';
  defaultHtml += '    </ul>';
  defaultHtml += '</div>';

  $("#installment-wrap2").empty();
  $("#installment-wrap2").append(defaultHtml);
  */
  
  var boxOpenPdCnt = 0;
  var ordMakePdCnt = 0;
  var freshFoodPdCnt = 0;
  var minWintInsmMths = allInfArray[0].split("&&")[1].split("|")[7];
  
  for (var i=0; i<allInfArray.length;i++) {
      
      var basktInfArr = allInfArray[i].split("&&")[0];
      var basktInf = basktInfArr.split("|");
      var basktObj = $("input[name='basktInf']:input[value='"+basktInfArr+"']");
      
      var ordAgreeInfArr = allInfArray[i].split("&&")[1];
      var ordAgreeInf = ordAgreeInfArr.split("|");
      
      var uitmCdInfPupArr = allInfArray[i].split("&&")[2];
      var uitmCdInfPup = uitmCdInfPupArr.split("&");
      
      ordBasktInfArrParam.push(basktInfArr);
      
      if(ordAgreeInf[0] == "Y"){  //주문제작팝업
          var innerHtml = "";
          
          innerHtml += "<div class='pditem'>";
	      innerHtml += "    <figure class='pdthumb'>";
	      innerHtml += basktObj.parent().parent().parent().find("figure.pdthumb>a").html();
	      innerHtml += "        <figcaption>";
	      innerHtml += "            <p class='pdtit'>"+ordAgreeInf[4]+"</p>";
	      innerHtml += "            <div class='pdoption' aria-label='옵션/수량'>";
	      innerHtml += "                <span class='option'>옵션: <em>"+ordAgreeInf[5]+"</em></span>";
	      innerHtml += "                <span class='count'>수량: <em>"+basktInf[3]+"개</em></span>";
	      innerHtml += "            </div>";
	      innerHtml += "            <div class='pdprice'>";
	      innerHtml += "                <ins class='normal' aria-label='가격'><em>"+gfn_appendComma(basktInf[4])+"</em><b>원</b></ins>";
	      innerHtml += "            </div>";
	      innerHtml += "        </figcaption>";
	      innerHtml += "    </figure>";
	      innerHtml += "</div>";
          
          $("#divOrdMakePdItemList").append(innerHtml);
          
          ordMakePdCnt++;
      }
      
      if(ordAgreeInf[1] == "Y"){  //박스포장팝업
          var innerHtml = "";
          
          innerHtml += "<div class='pditem'>";
          innerHtml += "    <figure class='pdthumb'>";
          innerHtml += basktObj.parent().parent().parent().find("figure.pdthumb>a").html();
          innerHtml += "        <figcaption>";
          innerHtml += "            <p class='pdtit'>"+ordAgreeInf[4]+"</p>";
          innerHtml += "            <div class='pdoption' aria-label='옵션/수량'>";
          innerHtml += "                <span class='option'>옵션: <em>"+ordAgreeInf[5]+"</em></span>";
          innerHtml += "                <span class='count'>수량: <em>"+basktInf[3]+"개</em></span>";
          innerHtml += "            </div>";
          innerHtml += "            <div class='pdprice'>";
          innerHtml += "                <ins class='normal' aria-label='가격'><em>"+gfn_appendComma(basktInf[4])+"</em><b>원</b></ins>";
          innerHtml += "            </div>";
          innerHtml += "        </figcaption>";
          innerHtml += "    </figure>";
          innerHtml += "</div>";
          
          $("#divBoxOpenPdItemList").append(innerHtml);
          
          boxOpenPdCnt++;
      }
      
      if(ordAgreeInf[2] == "Y" || ordAgreeInf[3] == "Y"){ //새벽신선상품팝업
          var innerHtml = "";
          
          innerHtml += "<div class='pditem'>";
          innerHtml += "    <figure class='pdthumb'>";
          innerHtml += basktObj.parent().parent().parent().find("figure.pdthumb>a").html();
          innerHtml += "        <figcaption>";
          innerHtml += "            <p class='pdtit'>"+ordAgreeInf[4]+"</p>";
          innerHtml += "            <div class='pdoption' aria-label='옵션/수량'>";
          innerHtml += "                <span class='option'>옵션: <em>"+ordAgreeInf[5]+"</em></span>";
          innerHtml += "                <span class='count'>수량: <em>"+basktInf[3]+"개</em></span>";
          innerHtml += "            </div>";
          innerHtml += "            <div class='pdprice'>";
          innerHtml += "                <ins class='normal' aria-label='가격'><em>"+gfn_appendComma(basktInf[4])+"</em><b>원</b></ins>";
          innerHtml += "            </div>";
          innerHtml += "        </figcaption>";
          innerHtml += "    </figure>";
          innerHtml += "</div>";
          
          $("#divFreshFoodPdItemList").append(innerHtml);
          
          freshFoodPdCnt++;
      }
      
      if(wintInsmMthsPopYn == "Y"){   //무이자개월수 차이 팝업
          var innerHtml = "";
          
          innerHtml += "<div class='pditem'>";
          innerHtml += "    <figure class='pdthumb'>";
          innerHtml += basktObj.parent().parent().parent().find("figure.pdthumb>a").html();
          innerHtml += "        <figcaption class='card'>";
          innerHtml += "            <p class='pdtit'>"+ordAgreeInf[4]+"</p>";
          if(Number(ordAgreeInf[7]) > 0){
              innerHtml += "            <p class='pdcard'><em>무이자 "+ordAgreeInf[7]+"개월</em></p>";
          }else{
              innerHtml += "            <p class='pdcard'>일시불</p>";
          }
          innerHtml += "        </figcaption>";
          innerHtml += "    </figure>";
          innerHtml += "</div>";
          
          $("#divWintInsmMthsPdItemList").append(innerHtml);
          
          //최소개월 수 확인
          if(Number(minWintInsmMths) > Number(ordAgreeInf[7])){
              minWintInsmMths = ordAgreeInf[7];
          }
          if(Number(minWintInsmMths) > 0){
              $("#pMinWintInsmMths").html("<span>구매하실 상품들의 무이자할부 개월수가 서로 다릅니다. <br/> 함께 주문하실 경우 <em>무이자"+minWintInsmMths+"개월</em>로 적용됩니다.</span>");
          }else{
              $("#pMinWintInsmMths").html("<span>구매하실 상품들의 무이자할부 개월수가 서로 다릅니다. <br/> 함께 주문하실 경우 <em>최종 일시불</em>로 적용됩니다.</span>");
          }
      }
              
  }
  
  if(ordMakePdCnt > 0){
      openLayerPop("divOrdMakePd");
  }else if(boxOpenPdCnt > 0){
      openLayerPop("divBoxOpenPd");
  }else if(freshFoodPdCnt > 0){
      openLayerPop("divFreshFoodPd");
  }else if(wintInsmMthsPopYn == "Y"){
      openLayerPop("divWintInsmMthsPd");
  }
  
  return;
}

function openLayerPop(divId){
    var target = $("#"+divId+"");
    target.modal().show();
}

//새벽배송+신선식품 주의사항 _ 20180712 특화배송조유진
var productOrdYn = "";
var boxOpenYn ="";
var dawnDlvPopYn = "";
var freshFoodPopYn = "";
var wintInsmMthsPopYn = "";
function needAgreePopup(ordAgreeInfArr) {
    productOrdYn = "N";
    boxOpenYn ="N";
    dawnDlvPopYn = "N";
    freshFoodPopYn = "N";
    var carefulPopCnt = new Array();
    wintInsmMthsPopYn = "N";

    for(var i = 0; i < ordAgreeInfArr.length; i++) {
        if(ordAgreeInfArr[i].charAt(0) == "Y") { // 주문제작
            carefulPopCnt.push(i);
            productOrdYn = "Y";
        }if(ordAgreeInfArr[i].charAt(2) == "Y") { // 박스오픈
            carefulPopCnt.push(i);
            boxOpenYn ="Y";
        }if(ordAgreeInfArr[i].charAt(4) == "Y") { // 새벽배송
            carefulPopCnt.push(i);
            dawnDlvPopYn = "Y";
        }if(ordAgreeInfArr[i].charAt(6) == "Y") { // 신선식품
            carefulPopCnt.push(i);
            freshFoodPopYn = "Y";
        }if(ordAgreeInfArr.length > 1 && ordAgreeInfArr[0].split("|")[7] != ordAgreeInfArr[i].split("|")[7]) { // 할부개월 수 안내
            wintInsmMthsPopYn = "Y";
        }
    }

    if(carefulPopCnt.length > 0 || wintInsmMthsPopYn == "Y") {
        return true;
    } else {
        return false;   
    }    
}

function order(basktInfArrParam, crdImdtDcPrmoChkYN) {
    //basktInfArr = basktInfArrParam;
    //카드즉시할인KJH 즉시할인 프로모션 체크 
    if(crdImdtDcPrmoChkYN != "Y"){
        fn_chkCrdImdtDcItem(basktInfArrParam);
        return false;
    }

    //선물포장, 쇼핑백신청 체크
    if(boxPackItemChkYn == "N" && boxPackItemPopYn == "Y"){
        boxPackItemChkNew(basktInfArrParam, crdImdtDcPrmoChkYN);
        return;
    }


    var basktInfArr = new Array();
    for (var i=0; i<basktInfArrParam.length;i++) {
        basktInfArr.push(basktInfArrParam[i]);
    }
    $.ajax({
        type: "post"
        , url: "/p/oda/buyDirectForBaskt.do?basktInf=" + basktInfArr.join("&basktInf=")
        , dataType: "json"
        , success : function(data) {
            if(!isEmpty(data.errorMessages)) {              
                if(data.errorMessages.join("\n").match("nghtLmitCheck") != null){
                    nghtLmitCheck(data.errorMessages.join("\n").substring(15, data.errorMessages.join("\n").length), basktInfArr);                                      
                }else{                  
                    if(data.errorMessages != 'noMessage'){
                       alert(data.errorMessages.join("\n")); 
                    }
                }                
            } else {
                $("#orderForm").html("");
                var product_array = [];
                
                for(var i = 0; i < basktInfArr.length; i++) {
                    $("#orderForm").append("<input type='hidden' name='basktInf' value='" + basktInfArr[i] + "'/>");
                    
                    //GA 값 셋팅
                    var obj = $(".basketLsitCheck input[name='basktInf']:input[value='"+basktInfArr[i]+"']");
                    product_array.push(
                        {
                            'id': $(obj).siblings("input[name='slitmCd']").val(),
                            'name': $(obj).siblings("input[name='slitmNm']").val(),
                            'brand': $(obj).siblings("input[name='brand']").val(),
                            'category' : $(obj).siblings("input[name='gaCategory']").val()
                        }
                    );
                }
                
                
                try {
                    var action_obj = new Object();
                    var ecommerce_hit = new Object();
                    
                    var giftOrder = $("input[name=giftOrderYn]").val();
                    var basktGbcd = $("input[name=basktGbcd]").val();
                    
                    if(basktGbcd == "22") {
                    	ecommerce_hit[GACustomKey.Dimension74] = '스토어픽';
                    } else {
                    	if(giftOrder == "Y") {
                    		ecommerce_hit[GACustomKey.Dimension74] = '선물하기';
                    	} else {
                    		ecommerce_hit[GACustomKey.Dimension74] = '일반구매';
                    	}
                    }
                    
                    action_obj[GAActionFieldKey.CheckoutStep] = '1';                    
                    
                    GADataSend_Ecommerce(GAEcommerceStepKey.Checkout, action_obj, product_array, ecommerce_hit);
                    
                } catch (e) {
                    // TODO: handle exception
                    console.log("google analytics 실패");
                }
                
                if ( $("input[name=giftOrderYn]").val() == "Y" ) {
                	$("#orderForm").append("<input type='hidden' name='giftOrderYn' value='Y'/>");
                }
                //선물포장
                if(boxPrsnPackGbcd == "1"){
                    $("#orderForm").append("<input type='hidden' name='boxPrsnPackGbcd' value='1'/>");
                }
                //쇼핑백
                if(spbgPrsnPackGbcd == "1"){
                    $("#orderForm").append("<input type='hidden' name='spbgPrsnPackGbcd' value='1'/>");
                }

                $("#orderForm").submit();
            }
        }
        , error: function(data) {
        }
    });
}

//특정대상 전용상품
function exclItemTrgtGbcdChk(trgtTtype, slitmCds){
     //특정대상 전용상품 check type (cart : 장바구니, zzim : 찜하기, buy : 바로구매)
     var returnExclItemTrgtGbcdChkFalg = true;
     $.ajax({
       url: "/p/odb/exclItemTrgtChk.do?chkExclItemTrgtType="+ trgtTtype + "&slitmCds="+slitmCds
       , type: "get"
       , dataType: "json"
       , async:false
       , success: function(data) {
        if(!isEmpty(data.message)) {
            returnExclItemTrgtGbcdChkFalg = false;
               alert(data.message);
           }
       }, error: function() {
           console.log("특정대상 상품 정보 체크 error");
       }
   });
     return returnExclItemTrgtGbcdChkFalg;
}

//카드즉시할인KJH 프로모션 체크 
function fn_chkCrdImdtDcItem(basktInfArrParam){

    //레이어 팝업 여부 
    var chkLayer = "N";
        
    var crdImdtDcPrmoInf = new Array();
    var bChkCrdImdtDc = false; // 즉시할인프로모션이 한건이라도 존재하는지 체크 
    var bChkNonSlitmCrdImdtDc = false; // 즉시할인프로모션이 한건도 없는 상품 체크

    //스크롤초기화가 안되서 무조건 싹 날림 
    //$('#installment-wrap').html("<div class='custom-scroll-content'><ul id='ulCrdImdtDc'></ul></div>");
    //선택한 상품이 한건 이상일때만  
    if( basktInfArrParam.length > 1 ){
        //선택상품의 전체 즉시할인프로모션 목록 생성 
        for (var i=0; i<basktInfArrParam.length;i++) {

            var basktInfArr = basktInfArrParam[i].split("|"); // totBaskt.slitmCd|totBaskt.uitmCd|totBaskt.aspItemCd|totBaskt.ordQty|totBaskt.slitmInf.bbprc
            var vSlitmCd = basktInfArr[0];
            var vUitmCd = basktInfArr[1];
            var vOrdAmt = Number(basktInfArr[3]) * Number(basktInfArr[4]);
            
            $("input[name='basktInf']").each(function(index, obj) {
            	
                var basktInfArr2 = $(obj).val().split("|");
                var vSlitmCd2 = basktInfArr2[0];
                var vUitmCd2 = basktInfArr2[1];
                
                if( vSlitmCd == vSlitmCd2 && vUitmCd == vUitmCd2){
                    var vPrmoNo = ""; 
                    var vCrdcNm = ""; 
                    
                    $(obj).parent().parent().parent().find("input[name='crdImdtDcPrmoInf']").each(function(index2, obj2) {
                        //prmo.prmoNo|prmo.crdcCd|prmo.crdcNm|prmo.famtFxrtVal|prmo.famtFxrtGbcd|prmo.strtVal|prmo.endVal
                        //console.log('vSlitmCd=' + vSlitmCd + ' vUitmCd=' + vUitmCd +  ' prmo inf=' + $(obj2).val() + ' ordAmt=' + vOrdAmt);
                        var crdImdtDcPrmoInfArr = $(obj2).val().split("|");
                        vPrmoNo = crdImdtDcPrmoInfArr[0];
                        
                        //즉시할인대상 상품이 존재하면 확인대상 
                        bChkCrdImdtDc = true;
                        var bPrmoChk = false;
                        for (var j=0; j<crdImdtDcPrmoInf.length;j++) 
                        {
                            //복수개의 프로모션 또는 구간이 존재하면 구간 체크해서 구간에 해당하는 프로모션으로 표시  
                            if( vSlitmCd == crdImdtDcPrmoInf[j].slitmCd && vUitmCd == crdImdtDcPrmoInf[j].uitmCd ) 
                            {
                                if( vOrdAmt >= Number(crdImdtDcPrmoInfArr[5]) && vOrdAmt <= Number(crdImdtDcPrmoInfArr[6])) 
                                {
                                    bPrmoChk = true;
                                }
                            }
                        }
                        if(vCrdcNm == "" || bPrmoChk == true){
                            vCrdcNm = crdImdtDcPrmoInfArr[2] + gfn_appendComma(crdImdtDcPrmoInfArr[3]) + (crdImdtDcPrmoInfArr[4]=='1'?'%':'원') ;
                        }
                        
                        crdImdtDcPrmoInf.push({slitmCd:vSlitmCd, uitmCd:vUitmCd, prmoNo:vPrmoNo});
                    });
                    
                    var innerHtml = "<div class='pditem'>";
                        innerHtml += "    <figure class='pdthumb'>";
                        innerHtml += $(obj).parent().parent().parent().find("figure.pdthumb>a").html();
                        innerHtml += "        <figcaption class='card'>";
                        innerHtml += "            <p class='pdtit'>"+$(obj).parent().find("span").html()+"</p>";
                        innerHtml += "            <p class='pdcard'><em>" + vCrdcNm + "<em></p>";
                        innerHtml += "<input type='hidden' name='crdImdtDcBasktInf'  value='" + basktInfArrParam[i] + "'/>";
                        innerHtml += "        </figcaption>";
                        innerHtml += "    </figure>";
                        innerHtml += "</div>";
                        
                        
                    $('#ulCrdImdtDc').append(innerHtml);
                       
                    if( vPrmoNo == ""){
                        //console.log('즉시할인프로모션 없는 상품코드=' + vSlitmCd);
                        bChkNonSlitmCrdImdtDc = true;
                    }
                    
                    return false; 
                }
            });
        }
    }
    //console.log('bChkCrdImdtDc(즉시할인프로모션 존재)' + bChkCrdImdtDc); 
    //console.log('bChkNonSlitmCrdImdtDc(즉시할인프로모션 없는상품 존재)' + bChkNonSlitmCrdImdtDc); 
    //즉시할인프로모션이 한건이라도 있으면
    if(bChkCrdImdtDc == true ){
        if( bChkNonSlitmCrdImdtDc ){
            // 즉시할인프로모션이 한건도 없는 상품이 존재하면 확인창 
            chkLayer = "Y";
        }else{
            //선택상품중 중복되는 프로모션 확인 있으면 ok 없으면 확인창
            var chkDupPrmo = ""; //선택상품 전체에 공통적용되는 프로모션 번호
            
            for (var i=0; i<crdImdtDcPrmoInf.length;i++) {
                var vSlitmCd = crdImdtDcPrmoInf[i].slitmCd;
                var vUitmCd = crdImdtDcPrmoInf[i].uitmCd;
                var vPrmoNo = crdImdtDcPrmoInf[i].prmoNo;
                //상품별/속성별 프로모션 체크 array  
                var arrSlitmCd = new Array();
                
                for (var j=0; j<crdImdtDcPrmoInf.length;j++) {
                    
                    //프로모션 비교 
                    if( vPrmoNo == crdImdtDcPrmoInf[j].prmoNo){
                        
                        if(arrSlitmCd.length == 0){
                            arrSlitmCd.push({slitmCd:crdImdtDcPrmoInf[j].slitmCd, uitmCd:crdImdtDcPrmoInf[j].uitmCd});
                        }else{
                            var bChk = false; 
                            $.each(arrSlitmCd, function(idx) {
                                if( arrSlitmCd[idx].slitmCd == crdImdtDcPrmoInf[j].slitmCd 
                                        && arrSlitmCd[idx].uitmCd == crdImdtDcPrmoInf[j].uitmCd )
                                {
                                    bChk = true;
                                }
                                
                            });
                            //이미 확인된 상품 건너뛰기
                            if( !bChk ){
                                 arrSlitmCd.push({slitmCd:crdImdtDcPrmoInf[j].slitmCd, uitmCd:crdImdtDcPrmoInf[j].uitmCd}); 
                            }
                        }
                    }
                }
                //체크된 건수가 전체 장바구니 체크 건수와 같으면 ok 
                if(basktInfArrParam.length == arrSlitmCd.length){
                    chkDupPrmo = vPrmoNo;
                    break; 
                }
            }
            //중복되는 프로모션이 하나도 없으면 확인창 
            if(chkDupPrmo == ""){
                chkLayer = "Y";
            }
        }
    }
    
    //레이어 팝업 
    if( chkLayer == "Y"){
        fn_showCrdImdtDcLayer();
    }else{
        order(basktInfArrParam, 'Y');
    }
}

//카드즉시할인 프로모션 체크 레이어 클로즈 
function fn_crdImdtDcClose(){
    $('#divCrdImdtDc').modal().hide();
}
//카드즉시할인 프로모션 체크 레이어 주문진행
function fn_crdImdtDcOrder(){
    fn_crdImdtDcClose();

    var basktInfArr = new Array();
    $("input[name='crdImdtDcBasktInf']").each(function(index, obj) {
        basktInfArr.push($(obj).val());    
    });
    order(basktInfArr, 'Y');
}

function fn_showCrdImdtDcLayer(){
    //선택상품 레이어 표시 
    var target = $('#divCrdImdtDc');
    target.modal().show();
}

function isEmpty(value) {
    return (value == null || value == undefined || value == "");
}

/**
 * Input will add commas to numbers.
 * @type void
 * @param nNumber   Input value
 * @param nDetail   Decimal places.(rounding)
 * @return          Number contained a comma.
 */
function gfn_appendComma(nNumber,nDetail) {
    if (nNumber == null)    return "";
    if (nDetail == null)    nDetail = 0;

    nNumber             = parseFloat(nNumber);
    nNumber             = Math.round(nNumber, nDetail);

    var strNumber       = new String(nNumber);
    var arrNumber       = strNumber.split(".");
    var strFormatNum    = "";
    var j = 0;

    for (var i = arrNumber[0].length - 1; i >= 0; i--) {
        if (i != strNumber.length && j == 3) {
            strFormatNum = arrNumber[0].charAt(i) + "," + strFormatNum;
            j = 0;
        } else {
            strFormatNum = arrNumber[0].charAt(i) + strFormatNum;
        }
        j++;
    }

    if (arrNumber.length > 1)   strFormatNum = strFormatNum + "." + arrNumber[1];

    return strFormatNum;
}

// obj, gen or basktgbcd, all or slitmCd, uitmCd 
function check(obj, gbcd, slitmCd, uitmCd) {
	var checkFlag = $(obj).prop("checked");
	var checkCount = 0;
    
	// 품절은 구매가능한 상품과는 별도로 처리.
	if ( gbcd == "soldout" ) {
		if ( slitmCd == "all" ) {
			$("input[name=soldOutSlitm]").each(function() {
				$(this).prop("checked", checkFlag);
				if ( $(this).prop("checked") ) {
					checkCount++;
				}
			});
		} else {
			var allFlag = true;
			$("input[name=soldOutSlitm]").each(function() {
                if ( !$(this).prop("checked") ){
                	allFlag = false;
                } else {
                	checkCount++;
                }
            });
			$("input[name=soldout_all]").prop("checked", allFlag);
		}
		$("#soldoutSelectCount").html(checkCount);
		
	} else if ( slitmCd == "all" ) { // 전체선택!
		// 현재 all을 제외한 all을 해제한다.
		$("input[name=all]").not($(obj)).each(function() {
			$(this).prop("checked", false);
			$(this).parents("div.cart-check").find("span.cart-count strong").html("0");
		});
	
		// basktInf전체 선택 해제.
		$("input[name=basktInf]").each(function() {
			$(this).prop("checked", false);
		});
		// 선택된거면... 그 아래를 선택한다. 
		if ( checkFlag ) {
			$("div#"+gbcd+" input[name=basktInf]").each(function() {
				if ( $(this).parent().parent().parent().css("display") == "block" ) {
				    $(this).prop("checked", true);
				    checkCount++;
	            }
	        });
		}
		$(obj).parents("div.shipping-listwrap").find("span.cart-count strong").html(checkCount);
	} else {
		// * 상품이 선택된경우 all에 체크된것을 해제/선택 한다.
		
		// 모든 all을 체크 해제. 
		// - 선택된 상품 그룹과 다른 all 아래 상품의 체크를 해제한다.
		var selGrpId = $(obj).parents("div.shipping-list").prop("id");
		$(".shipping-listwrap").not("#soldout").each(function() {
			
            $(this).find("input[name=all]").prop("checked", false);
            if ( selGrpId != $(this).find("div.shipping-list").prop("id") ) {
            	$(this).find("input[name=basktInf]").prop("checked", false);
            }
            $(this).find("span.cart-count strong").html("0");
        });
		
		// 해당 상품과 같이 묶인 상품의 갯수와 체크된 갯수 확인.
		// 두개가 같으면 all 체크.
		var allFlag = true;
		if ( $(obj).parents("div.shipping-list").prop("id") == "gen" ) {
			$(obj).parents("div.shipping-listwrap").find("input[name=basktInf]").each(function() {
				if ( $(this).parents(".pdwrap").attr("style").indexOf("none") < 0 ) {
	                if ( !$(this).prop("checked") ) {
	                    allFlag = false;
	                } else {
	                	checkCount++;
	                }
				}
            });
			$(obj).parents("div.shipping-listwrap").find("input[name=all]").prop("checked", allFlag);
		} else {
			$(obj).parents("div.shipping-list").find("input[name=basktInf]").each(function() {
				if ( $(this).parents(".pdwrap").attr("style").indexOf("none") < 0 ) {
					if ( !$(this).prop("checked") ) {
						allFlag = false;
					} else {
						checkCount++;
					}
				}
			});
			$(obj).parents("div.shipping-list").prev().find("input[name=all]").prop("checked", allFlag);
		}
		$(obj).parents("div.shipping-listwrap").find("span.cart-count strong").html(checkCount);
	}
	
	
	var CombinegiftOrderYn = "N";
	var checkedCnt = 0;
	var notDlvCostFreeCnt = 0;
	var giftCnt = 0;
	$("input[name=basktTotalGiftOrderYn]").each(function() {
        console.log("each " + giftCnt);
		var checked = $(this).siblings(".checkbox").find("input[name=basktInf]").prop("checked");
        if(checked){
        	if(checked){
                if(checked){
                    checkedCnt++;
                    if($(this).siblings("input[name='basktGiftOrderYn']").val()=="Y"){
                        giftCnt++
                    }
                    if($(this).val() == "N"){
                        notDlvCostFreeCnt++
                    }
                }
            }
        }
    });
	
    if(giftCnt != 0 && checkedCnt == giftCnt){
    	CombinegiftOrderYn = "Y";
        if(notDlvCostFreeCnt > 0){
        	CombinegiftOrderYn = "N";
            
            if(giftCnt == 1 && notDlvCostFreeCnt == 1){
            	CombinegiftOrderYn = "Y";
            }
        }
    }
	
	if ( CombinegiftOrderYn == "Y") {
        $("div#uobtnprsnbox").show();
        $("div#uobtnbox").hide();
    }
    else{
        $("div#uobtnprsnbox").hide();
        $("div#uobtnbox").show();
    }
	
	// 선택된 것의 금액계산.
	calculateSelect();
}

function calculateSelect() {
	// 초기값.
    var selCnt = 0;
    var selSlitmAmt = 0;
    var selDlvAmt = 0;
    var selOrdAmt = 0;
    var basktVenCdGatherVal = "";
    
    // ||||
    $("input[name=basktInf]").each(function() {
    	if ( $(this).prop("checked") ) {
    		var basktInfArr = $(this).val().split("|");
    	    
    	    selCnt++;
    	    selSlitmAmt += (basktInfArr[3]*basktInfArr[4]);
    	}
    });
    
    selDlvAmt += parseInt(calculateSelectDlvAmt());
    
    // 우측 윙 set
    $("#selCnt").html(gfn_appendComma(selCnt));
    $("#selSlitmAmt").html(gfn_appendComma(selSlitmAmt));
    $("#selDlvAmt").html(gfn_appendComma(selDlvAmt));
    $("#selOrdAmt").html(gfn_appendComma(selSlitmAmt + selDlvAmt));
    $("#selCnt_btn").html(gfn_appendComma(selCnt));
}

// 선택된 상품의 배송비.
function calculateSelectDlvAmt() {
	
	var dlvAmtSum = 0;
	var basktVenCdGatherVals = "";
	
	$("input[name=basktInf]").each(function() {
		if ( $(this).prop("checked") ) {
			var basktVenCdGatherVal = $(this).parents(".pdwrap").find("input[name=basktVenCdGatherVal]").val();
			var dlvAmt = $(this).parents(".pdwrap").find("input[name=basktDlvCostVal]").val();
			$("input[name=basktInf]:checked").each(function() {
				var tempDlvAmt = $(this).parents(".pdwrap").find("input[name=basktDlvCostVal]").val();
		        if ( basktVenCdGatherVal == $(this).parents(".pdwrap").find("input[name=basktVenCdGatherVal]").val()
		        		&& tempDlvAmt > dlvAmt) {
		        	dlvAmt = tempDlvAmt;
		        }
		    });
			
			if ( $(this).parents(".pdwrap").find("input[name=dlvcPayGbcdVal]").val() == "20" || $(this).parents(".pdwrap").find("input[name=dlvcPayGbcdVal]").val() == "30" ) {
				dlvAmt = 0;
			}
			
			var sumAmt = 0;
			var bsicAmt = $(this).parents(".pdwrap").find("input[name=bsicAmt]").val();
			if ( basktVenCdGatherVals.indexOf(basktVenCdGatherVal) < 0 ) {
			    $("input[name=basktInf]").each(function() {
			    	var dlvcGatherVal = $(this).parents(".pdwrap").find("input[name=basktVenCdGatherVal]").val();
				    if ( $(this).prop("checked") && basktVenCdGatherVal == dlvcGatherVal ) {
			            var basktInfArr = $(this).val().split("|");
			            
			            sumAmt += (basktInfArr[3]*basktInfArr[4]);
				    }
				});
			    
			    if ( sumAmt < bsicAmt ) {
			    	dlvAmtSum += parseInt(dlvAmt);
			    	basktVenCdGatherVals += "_" + basktVenCdGatherVal;
			    }
			}
		}
	});
	
	return dlvAmtSum;
}

function registBasketAlrimi(useYn) {
	
	var basktNotfMthdGbcd = $("input[name=basktNotfMthdGbcd]:checked").val();
	if ( !(basktNotfMthdGbcd == "1" || basktNotfMthdGbcd == "2") ) {
		alert("수신방법을 선택해야 합니다.");
		return;
	}
    
    $.ajax({
        type: "post"
        , url: "/p/odb/registBasktAlrimReqInf.do"
        , dataType: "json"
        , data : {useYn : useYn, basktNotfMthdGbcd : basktNotfMthdGbcd}
        , success : function(data) {
            if(!isEmpty(data.errorMessages)) {
                alert(data.errorMessages.join("\n"));
            } else {
                if ( useYn == "Y" ) {
                	GA_Event('장바구니', '알림설정', '가격변경알리미');
                    alert(dateCheck()+" 현대Hmall의 가격인하알림\n서비스 신청이 정상적으로 처리 되었습니다.");
                } else {
                    alert(dateCheck()+" 현대Hmall의 가격인하알림\n서비스 취소신청이 정상적으로 처리 되었습니다.");
                }
                $("#cartAlarm").modal().hide();
                window.location.href = "/p/odb/basktList.do";
           }
        }
        , error: function(data) {
        }
    });

}

function dateCheck(){  // jmk
    
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth()+1;
    var day = date.getDate();
    
    return year+"년 "+month+"월 "+day+"일" ;
    
}


function zzimItem(obj, slitmCd, uitmCd) {
	
    $.ajax({
        url: "/p/odb/mergeCuSltdDtl.do?slitmCd="+slitmCd+"&uitmCd="+ uitmCd
        , type: "get"
        , dataType: "json"
        , success: function(data) {
            if( data.result > 0 ) {
            	$(obj).toggleClass("on");
            	if ( $(obj).hasClass("on") ) {
            		$("#zzimlistAdd p").html("찜리스트에 추가되었습니다.");
	            	$("#zzimlistAdd").modal().show();
	            	//$("#btn btn-like").addClass(' on');
            	} else {
            		$("#zzimlistAdd p").html("찜리스트에 삭제되었습니다.");
                    $("#zzimlistAdd").modal().show();
            	}
            }
        }, error: function() {
            console.log("zzim 특정대상 상품 정보 체크 error");
        }
    });
}

$(window).on("load", function() {
	initSelect();
	
    // 장바구니 구분 타이틀 숨김.
    $("div.shipping-listwrap").each(function (){
        var itemCnt = $(this).find("div.pdwrap").length;
        var noneCnt = $(this).find("div.pdwrap[style='display:none;']").length;
        if (itemCnt == noneCnt) {
            $(this).hide();
        }
    });
});

// load시 select 초기값 설정.
function initSelect() {
	// 품절상품을 제외하고 첫번째 장바구니 타이블에서 전체선택을 가지고 와서 있으면 전체선택 없으면 첫번째 상품선택.
	var allObj = $("div.cart-check").not($("#soldout_check")).eq(0).find("input[name=all]");
	if ( $(allObj).prop("id") !== undefined ) {
		$(allObj).click();
	} else {
		$("input[name=basktInf]").eq(0).click();
	}
}


function orderLayerPop(divId){
    
    closeLayerPop(divId);
    
    if(boxOpenYn == "Y" && divId == "divOrdMakePd"){
        openLayerPop("divBoxOpenPd");
    }else if((dawnDlvPopYn == "Y" || freshFoodPopYn == "Y") && (divId == "divOrdMakePd" || divId == "divBoxOpenPd")){
        openLayerPop("divFreshFoodPd");
    }else if(wintInsmMthsPopYn == "Y" && (divId == "divOrdMakePd" || divId == "divBoxOpenPd" || divId == "divFreshFoodPd")){
        openLayerPop("divWintInsmMthsPd");
    }else{
        order(ordBasktInfArrParam);
    }
}

function closeLayerPop(divId) {
    $("#"+divId+"").modal().hide();
}

function cartRcmm(type, bsitmCd) {
    console.log("cartRcmm");
    var custNo = "202204309138";
    var trtyNo = "";
    var uiType = "";
    if ( type == "similarCart" ) {
        trtyNo = "58";
        uiType = "baskt";
        rowCnt = "4";
    } else if ( type == "together" ) {
        trtyNo = "59";
        uiType = "baskt";
        rowCnt = "4";
    } else if ( type == "similarPrsn" ) {
        trtyNo = "60";
        uiType = "baskt";
        rowCnt = "6";
    } else if ( type == "soldout" ) {
        trtyNo = "61";
        uiType = "simple";
        rowCnt = "10";
    } else {
        return;
    }
    
    $.ajax({
         type: "get"
            ,url: "/p/coe/listRcmmSrvHtml.do?uiType="+uiType+"&trtyNo="+trtyNo
            ,data: {custNo:custNo, bsitmCd:bsitmCd, rowCnt:rowCnt}
            ,dataType: "html"
            ,async: false
            ,success : function(data) {
                if ( type == "similarCart" ) {
                    if ($(data).find("figure").length > 3) { 
                        $("#rcmm1 .major-headings").html("내 장바구니와 유사한 장바구니에 담긴 다른 상품");
                        var str = data.replaceAll("customGaTagging", "ga-custom-name='장바구니' ga-custom-position='내 장바구니와 유사한 장바구니에 담긴 다른 상품' ga-custom-title='주문/장바구니>장바구니>리스트' ga-custom-etc='urlAction'").replaceAll("customGaId", "ga-custom-id").replaceAll("customGaCreative", "ga-custom-creative");
                        $("#rcmm1 div.pdwrap").append(str);
                        $("#rcmm1 div.pdwrap figure").each(function(index){
                        	if ( index > 3 ) {
                        		$(this).addClass("hidden");
                        	}
                        });
                        $("#rcmm1").removeClass("hidden");
                    }
                } else if ( type == "together" ) {
                    if ($(data).find("figure").length > 3) { 
                        $("#rcmm2 .major-headings").html("함께 구매하면 좋은 상품");
                        var str = data.replaceAll("customGaTagging", "ga-custom-name='장바구니' ga-custom-position='함께 구매하면 좋은 상품' ga-custom-title='주문/장바구니>장바구니>리스트' ga-custom-etc='urlAction'").replaceAll("customGaId", "ga-custom-id").replaceAll("customGaCreative", "ga-custom-creative");
                        $("#rcmm2 div.pdwrap").append(str);
                        $("#rcmm2 div.pdwrap figure").each(function(index){
                            if ( index > 15 ) {
                                $(this).addClass("hidden");
                            }
                        });
                        $("#rcmm2").removeClass("hidden");
                    }
                } else if ( type == "similarPrsn" ) {
                    if ($(data).find("figure").length > 3) { 
                        $("#rcmm1 .major-headings").html("나와 유사한 사람들이 찾은 상품");
                        var str = data.replaceAll("customGaTagging", "ga-custom-name='장바구니' ga-custom-position='나와 유사한 사람들이 찾은 상품' ga-custom-title='주문/장바구니>장바구니>리스트' ga-custom-etc='urlAction'").replaceAll("customGaId", "ga-custom-id").replaceAll("customGaCreative", "ga-custom-creative");
                        $("#rcmm1 div.pdwrap").append(str);
                        $("#rcmm1 div.pdwrap figure").each(function(index){
                            if ( index > 5 ) {
                                $(this).addClass("hidden");
                            }
                        });
                        $("#rcmm1").removeClass("hidden");
                    }
                } else if ( type == "soldout" ) {
                    if ($(data).find("li").length > 1) {
                    	history.pushState(null, '', location.href);
                    	$("#cart-recommend div.pdlist-wrap").append(data);
                        $("#cart-recommend div.pdlist-wrap li").each(function(index){
                            if ( index > 9 ) {
                                $(this).addClass("hidden");
                            }
                        });
                        $("#cart-recommend").modal().show();
                    }
                }
                
            }
            ,
            error : function(){
            }
        });

}
//선물포장 체크 후 구매로 바로 이동하기 변수.
var packBoxBasktIngArr;
var packCrdImdtDcPrmoChkYN;
//쇼핑백신청/선물포장 가능한지 여부 체크
function boxPackItemChkNew(basktInfArrParam, crdImdtDcPrmoChkYN) {
    packBoxBasktIngArr = basktInfArrParam;
    packCrdImdtDcPrmoChkYN = crdImdtDcPrmoChkYN;

    // 선택한 상품중 하나라도 선물포장여부가 0 이면 선물포장 팝업 (X)
    var slitmCdArr = new Array();

    for(var i = 0; i < basktInfArrParam.length; i++) {
        var slitmCd = basktInfArrParam[i].split("|")[0];
        slitmCdArr.push(slitmCd);
    }

    if(slitmCdArr.length == 0) {
        return false;
    }

    $.ajax({
        type: "post"
        , url: "/p/pda/getBoxPrsnPackGbcdBySlitmCd.do"
        , dataType: "json"
        , data : {slitmCdJoin : slitmCdArr.join(",")}
        , async : false
        , success : function(data) {
            console.log(data);
            boxPackItemChkYn = "Y";
            if (data.boxPrsnPackGbcdCnt == 0) {
                /* 0 : 선물포장. 쇼핑백 */
                var addHtml = '';
                addHtml += '<p class="ctypo17 bold" id="gift-popup-p">구매 하시는 상품은 선물포장, <br/> <span>쇼핑백신청</span>이 가능한 상품입니다.</p>';
                addHtml += '<p class="ctypo14" id="gift-popup-p-two">선물 포장을 신청하시겠습니까?</p>';
                addHtml += '<div id="gift-popup-button" class="btngroup">';
                addHtml += '<button class="btn btn-linegray" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'0\');setSpbgPrsnPackGbcd(\'0\');order(packBoxBasktIngArr,packCrdImdtDcPrmoChkYN);"><span>아니오</span></button>';
                addHtml += '<button class="btn btn-default" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'1\');setSpbgPrsnPackGbcd(\'1\');order(packBoxBasktIngArr,packCrdImdtDcPrmoChkYN);"><span>예</span></button>';
                addHtml += '</div>';

                $('#modalGiftNoti .content-body').html(addHtml);
                boxPrsnPackGbcd ="1";
                spbgPrsnPackGbcd ="1";
                $('#modalGiftNoti').modal().show();
            } else if (data.boxPrsnPackGbcdCnt == 1) {
                /* 1 : 선물포장 */
                var addHtml = '';
                addHtml += '<p class="ctypo17 bold" id="gift-popup-p">구매 하시는 상품은 선물포장이<br />가능한 상품입니다.</p>';
                addHtml += '<p class="ctypo14" id="gift-popup-p-two">선물 포장을 신청하시겠습니까?</p>';
                addHtml += '<div id="gift-popup-button" class="btngroup">';
                addHtml += '<button class="btn btn-linegray" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'0\');setSpbgPrsnPackGbcd(\'0\');order(packBoxBasktIngArr,packCrdImdtDcPrmoChkYN);"><span>아니오</span></button>';
                addHtml += '<button class="btn btn-default" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'1\');setSpbgPrsnPackGbcd(\'0\');order(packBoxBasktIngArr,packCrdImdtDcPrmoChkYN);"><span>예</span></button>';
                addHtml += '</div>';

                $('#modalGiftNoti .content-body').html(addHtml);
                $('#modalGiftNoti').modal().show();
                boxPrsnPackGbcd ="1";
                spbgPrsnPackGbcd ="0";
            } else if (data.boxPrsnPackGbcdCnt == 2) {
                /* 2 : 쇼핑백 */
                var addHtml = '';
                addHtml += '<p class="ctypo17 bold" id="gift-popup-p">구매 하시는 상품은 쇼핑백 신청이<br />가능한 상품입니다.</p>';
                addHtml += '<p class="ctypo14" id="gift-popup-p-two">선물 포장을 신청하시겠습니까?</p>';
                addHtml += '<div id="gift-popup-button" class="btngroup">';
                addHtml += '<button class="btn btn-linegray" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'0\');setSpbgPrsnPackGbcd(\'0\');order(packBoxBasktIngArr,packCrdImdtDcPrmoChkYN);"><span>아니오</span></button>';
                addHtml += '<button class="btn btn-default" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'0\');setSpbgPrsnPackGbcd(\'1\');order(packBoxBasktIngArr,packCrdImdtDcPrmoChkYN);"><span>예</span></button>';
                addHtml += '</div>';

                $('#modalGiftNoti .content-body').html(addHtml);
                $('#modalGiftNoti').modal().show();
                boxPrsnPackGbcd ="0";
                spbgPrsnPackGbcd ="1";
            } else {
                boxPrsnPackGbcd ="0";
                spbgPrsnPackGbcd ="0";
                /* 3: 팝업 없음 */
                order(basktInfArrParam,crdImdtDcPrmoChkYN);
            }
        }
        , error: function(data) {
            console.log("getBoxPrsnPack Err");
            boxPackItemChkYn = "Y";
            boxPrsnPackGbcd ="0";
            spbgPrsnPackGbcd ="0";
            order(basktInfArrParam,crdImdtDcPrmoChkYN);
        }
    });
}

function setBoxPrsnPackGbcd(packFlag) {
    boxPrsnPackGbcd =packFlag;
    $('#modalGiftNoti').modal().hide();
}

function setSpbgPrsnPackGbcd(packFlag) {
    spbgPrsnPackGbcd =packFlag;
    $('#modalGiftNoti').modal().hide();
}

function boxPackItemClose(){
    setBoxPrsnPackGbcd('0');
    setSpbgPrsnPackGbcd('0');
    boxPackItemChkYn ="N";
    boxPackItemPopYn = "Y";
}

// 장바구니 삭제 (박주영)
function deleteBasket() {
	if(confirm('장바구니에서 삭제하시겠습니까?')) {
		document.totBasktForm.action = "HmallServlet?command=basket_delete&allYn=n";
		document.totBasktForm.submit();
	}
}

// 장바구니 모두 삭제 (박주영)
function deleteAllBasket() {
	if(confirm('장바구니를 비우시겠습니까?')) {
		document.totBasktForm.action = "HmallServlet?command=basket_delete&allYn=y";
		document.totBasktForm.submit();
	}
}

// 장바구니 수정 (박주영)
function updateBasket(obj) {
	var qtyInput = $(obj).parent().siblings("div.optgroup").find("input[name='ordQty']");
	var qty = Number(qtyInput.val());
	var noInput = $(obj).parents("div.pdwrap").find("input[name='sbNo']");
	var no = Number(noInput.val());
	
	document.totBasktForm.action = "HmallServlet?command=basket_update&no=" + no + "&amount=" + qty;
	document.totBasktForm.submit();
}

</script>

<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/1066206974/?random=1649662042356&amp;cv=9&amp;fst=1649662042356&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=16&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa3u0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Fodb%2FbasktList.do&amp;ref=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731203%26GnbGroup%3DAllCategory%26Code%3D01&amp;tiba=%EC%9E%A5%EB%B0%94%EA%B5%AC%EB%8B%88%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/1066206974/?random=1649662042418&amp;cv=9&amp;fst=1649662042418&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=16&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa3u0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Fodb%2FbasktList.do&amp;ref=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731203%26GnbGroup%3DAllCategory%26Code%3D01&amp;tiba=%EC%9E%A5%EB%B0%94%EA%B5%AC%EB%8B%88%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/937000404/?random=1649662042850&amp;cv=9&amp;fst=1649662042850&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=16&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa3u0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Fodb%2FbasktList.do&amp;ref=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731203%26GnbGroup%3DAllCategory%26Code%3D01&amp;tiba=%EC%9E%A5%EB%B0%94%EA%B5%AC%EB%8B%88%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/937000404/?random=1649662042872&amp;cv=9&amp;fst=1649662042872&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=16&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa3u0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Fodb%2FbasktList.do&amp;ref=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731203%26GnbGroup%3DAllCategory%26Code%3D01&amp;tiba=%EC%9E%A5%EB%B0%94%EA%B5%AC%EB%8B%88%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<style type="text/css"
	data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">
.fb_hidden {
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reposition {
	overflow: hidden;
	position: relative
}

.fb_invisible {
	display: none
}

.fb_reset {
	background: none;
	border: 0;
	border-spacing: 0;
	color: #000;
	cursor: auto;
	direction: ltr;
	font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
	font-size: 11px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	letter-spacing: normal;
	line-height: 1;
	margin: 0;
	overflow: visible;
	padding: 0;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-shadow: none;
	text-transform: none;
	visibility: visible;
	white-space: normal;
	word-spacing: normal
}

.fb_reset>div {
	overflow: hidden
}

@
keyframes fb_transform {
	from {opacity: 0;
	transform: scale(.95)
}

to {
	opacity: 1;
	transform: scale(1)
}

}
.fb_animate {
	animation: fb_transform .3s forwards
}

.fb_dialog {
	background: rgba(82, 82, 82, .7);
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_dialog_advanced {
	border-radius: 8px;
	padding: 10px
}

.fb_dialog_content {
	background: #fff;
	color: #373737
}

.fb_dialog_close_icon {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 0 transparent;
	cursor: pointer;
	display: block;
	height: 15px;
	position: absolute;
	right: 18px;
	top: 17px;
	width: 15px
}

.fb_dialog_mobile .fb_dialog_close_icon {
	left: 5px;
	right: auto;
	top: 5px
}

.fb_dialog_padding {
	background-color: transparent;
	position: absolute;
	width: 1px;
	z-index: -1
}

.fb_dialog_close_icon:hover {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -15px transparent
}

.fb_dialog_close_icon:active {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -30px transparent
}

.fb_dialog_iframe {
	line-height: 0
}

.fb_dialog_content .dialog_title {
	background: #6d84b4;
	border: 1px solid #365899;
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	margin: 0
}

.fb_dialog_content .dialog_title>span {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif)
		no-repeat 5px 50%;
	float: left;
	padding: 5px 0 7px 26px
}

body.fb_hidden {
	height: 100%;
	left: 0;
	margin: 0;
	overflow: visible;
	position: absolute;
	top: -10000px;
	transform: none;
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif)
		white no-repeat 50% 50%;
	min-height: 100%;
	min-width: 100%;
	overflow: hidden;
	position: absolute;
	top: 0;
	z-index: 10001
}

.fb_dialog.fb_dialog_mobile.loading.centered {
	background: none;
	height: auto;
	min-height: initial;
	min-width: initial;
	width: auto
}

.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
	background: none
}

.loading.centered #fb_dialog_loader_close {
	clear: both;
	color: #fff;
	display: block;
	font-size: 18px;
	padding-top: 20px
}

#fb-root #fb_dialog_ipad_overlay {
	background: rgba(0, 0, 0, .4);
	bottom: 0;
	left: 0;
	min-height: 100%;
	position: absolute;
	right: 0;
	top: 0;
	width: 100%;
	z-index: 10000
}

#fb-root #fb_dialog_ipad_overlay.hidden {
	display: none
}

.fb_dialog.fb_dialog_mobile.loading iframe {
	visibility: hidden
}

.fb_dialog_mobile .fb_dialog_iframe {
	position: sticky;
	top: 0
}

.fb_dialog_content .dialog_header {
	background: linear-gradient(from(#738aba), to(#2c4987));
	border-bottom: 1px solid;
	border-color: #043b87;
	box-shadow: white 0 1px 1px -1px inset;
	color: #fff;
	font: bold 14px Helvetica, sans-serif;
	text-overflow: ellipsis;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
	vertical-align: middle;
	white-space: nowrap
}

.fb_dialog_content .dialog_header table {
	height: 43px;
	width: 100%
}

.fb_dialog_content .dialog_header td.header_left {
	font-size: 12px;
	padding-left: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .dialog_header td.header_right {
	font-size: 12px;
	padding-right: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .touchable_button {
	background: linear-gradient(from(#4267B2), to(#2a4887));
	background-clip: padding-box;
	border: 1px solid #29487d;
	border-radius: 3px;
	display: inline-block;
	line-height: 18px;
	margin-top: 3px;
	max-width: 85px;
	padding: 4px 12px;
	position: relative
}

.fb_dialog_content .dialog_header .touchable_button input {
	background: none;
	border: none;
	color: #fff;
	font: bold 12px Helvetica, sans-serif;
	margin: 2px -12px;
	padding: 2px 6px 3px 6px;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog_content .dialog_header .header_center {
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	line-height: 18px;
	text-align: center;
	vertical-align: middle
}

.fb_dialog_content .dialog_content {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif)
		no-repeat 50% 50%;
	border: 1px solid #4a4a4a;
	border-bottom: 0;
	border-top: 0;
	height: 150px
}

.fb_dialog_content .dialog_footer {
	background: #f5f6f7;
	border: 1px solid #4a4a4a;
	border-top-color: #ccc;
	height: 40px
}

#fb_dialog_loader_close {
	float: left
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
	visibility: hidden
}

#fb_dialog_loader_spinner {
	animation: rotateSpinner 1.2s linear infinite;
	background-color: transparent;
	background-image:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
	background-position: 50% 50%;
	background-repeat: no-repeat;
	height: 24px;
	width: 24px
}

@
keyframes rotateSpinner { 0%{
	transform: rotate(0deg)
}

100%{
transform


:rotate(360deg)


}
}
.fb_iframe_widget {
	display: inline-block;
	position: relative
}

.fb_iframe_widget span {
	display: inline-block;
	position: relative;
	text-align: justify
}

.fb_iframe_widget iframe {
	position: absolute
}

.fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span,
	.fb_iframe_widget_fluid_desktop iframe {
	max-width: 100%
}

.fb_iframe_widget_fluid_desktop iframe {
	min-width: 220px;
	position: relative
}

.fb_iframe_widget_lift {
	z-index: 1
}

.fb_iframe_widget_fluid {
	display: inline
}

.fb_iframe_widget_fluid span {
	width: 100%
}

.fb_mpn_mobile_landing_page_slide_out {
	animation-duration: 200ms;
	animation-name: fb_mpn_landing_page_slide_out;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_landing_page_slide_out_from_left {
	animation-duration: 200ms;
	animation-name: fb_mpn_landing_page_slide_out_from_left;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_landing_page_slide_up {
	animation-duration: 500ms;
	animation-name: fb_mpn_landing_page_slide_up;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_bounce_in {
	animation-duration: 300ms;
	animation-name: fb_mpn_bounce_in;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_bounce_out {
	animation-duration: 300ms;
	animation-name: fb_mpn_bounce_out;
	transition-timing-function: ease-in
}

.fb_mpn_mobile_bounce_out_v2 {
	animation-duration: 300ms;
	animation-name: fb_mpn_fade_out;
	transition-timing-function: ease-in
}

.fb_customer_chat_bounce_in_v2 {
	animation-duration: 300ms;
	animation-name: fb_bounce_in_v2;
	transition-timing-function: ease-in
}

.fb_customer_chat_bounce_in_from_left {
	animation-duration: 300ms;
	animation-name: fb_bounce_in_from_left;
	transition-timing-function: ease-in
}

.fb_customer_chat_bounce_out_v2 {
	animation-duration: 300ms;
	animation-name: fb_bounce_out_v2;
	transition-timing-function: ease-in
}

.fb_customer_chat_bounce_out_from_left {
	animation-duration: 300ms;
	animation-name: fb_bounce_out_from_left;
	transition-timing-function: ease-in
}

.fb_invisible_flow {
	display: inherit;
	height: 0;
	overflow-x: hidden;
	width: 0
}

@
keyframes fb_mpn_landing_page_slide_out { 0%{
	margin: 0 12px;
	width: 100%- 24px
}

60%{
border-radius


:


18
px


}
100%{
border-radius


:


50%;
margin


:


0
24
px


;
width


:


60
px


}
}
@
keyframes fb_mpn_landing_page_slide_out_from_left { 0%{
	left: 12px;
	width: 100%- 24px
}

60%{
border-radius


:


18
px


}
100%{
border-radius


:


50%;
left


:


12
px
;width


:


60
px


}
}
@
keyframes fb_mpn_landing_page_slide_up { 0%{
	bottom: 0;
	opacity: 0
}

100%{
bottom


:


24
px
;opacity


:


1
}
}
@
keyframes fb_mpn_bounce_in { 0%{
	opacity: .5;
	top: 100%
}

100%{
opacity


:


1;
top


:


0
}
}
@
keyframes fb_mpn_fade_out { 0%{
	bottom: 30px;
	opacity: 1
}

100%{
bottom


:


0;
opacity


:


0
}
}
@
keyframes fb_mpn_bounce_out { 0%{
	opacity: 1;
	top: 0
}

100%{
opacity


:


.5


;
top


:


100%
}
}
@
keyframes fb_bounce_in_v2 { 0%{
	opacity: 0;
	transform: scale(0, 0);
	transform-origin: bottom right
}

50%{
transform


:scale


(1
.03
,
1
.03


);
transform-origin


:bottom

 

right


}
100%{
opacity


:


1;
transform


:scale


(1
,
1);
transform-origin


:bottom

 

right


}
}
@
keyframes fb_bounce_in_from_left { 0%{
	opacity: 0;
	transform: scale(0, 0);
	transform-origin: bottom left
}

50%{
transform


:scale


(1
.03
,
1
.03


);
transform-origin


:bottom

 

left


}
100%{
opacity


:


1;
transform


:scale


(1
,
1);
transform-origin


:bottom

 

left


}
}
@
keyframes fb_bounce_out_v2 { 0%{
	opacity: 1;
	transform: scale(1, 1);
	transform-origin: bottom right
}

100%{
opacity


:


0;
transform


:scale


(0
,
0);
transform-origin


:bottom

 

right


}
}
@
keyframes fb_bounce_out_from_left { 0%{
	opacity: 1;
	transform: scale(1, 1);
	transform-origin: bottom left
}

100%{
opacity


:


0;
transform


:scale


(0
,
0);
transform-origin


:bottom

 

left


}
}
@
keyframes slideInFromBottom { 0%{
	opacity: .1;
	transform: translateY(100%)
}

100%{
opacity


:


1;
transform


:translateY(0)


}
}
@
keyframes slideInFromBottomDelay { 0%{
	opacity: 0;
	transform: translateY(100%)
}
97%{
opacity


:


0;
transform


:translateY


(100%)
}
100%{
opacity


:


1;
transform


:translateY(0)


}
}


</style>
</head>
<body>
	<div class="wrap cartwrap">

		<!-- gnb setting -->


		<!-- header -->
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchPopKeyWordList.js?ver=041116"></script>
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchADTextList.js?ver=041116"
			charset="UTF-8"></script>
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchADLinkList.js?ver=041116"
			charset="UTF-8"></script>
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchSpecialShopLinkList.js?ver=041116"
			charset="UTF-8"></script>
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchBrndShopLinkList.js?ver=041116"
			charset="UTF-8"></script>

		<script type="text/javascript">


var oneClickFlag = 0;
function setDimension(){
	
	if(oneClickFlag != 0){
        return false;
    }
	
	oneClickFlag = 1;
    
    if(location.pathname.indexOf("/p/cob/memberLogin.do") > -1){
        return;
    }
	var GA_info = {};
	
	
	GA_info = setDimenData(GA_info);

	
	GA_Init(GA_info);

    
    if(location.pathname.replace("//", "/") == '/m/pda/smItemDetailR.do' || location.pathname.replace("//", "/") == '/p/pda/itemPtc.do' && pdaItemPtcCnt == 0){
    	pdaItemPtcCnt = 1;
        var	product_array = [];
        product_array.push(
            {
                'id':'',
                'name':'',
                'brand': '',
                'category' : '',
                'dimension51': 'default',
                'dimension52':'',
                'dimension53':'',
                'dimension54':'',
                'dimension55':'',
                'dimension56':'',
                'dimension57':'',
                'dimension58':'',
                'dimension59':'',
                'dimension60':'',
                
                'dimension62':'',
                'dimension63':'',
                'dimension64':''
            }
        );

        var ecommerce_hit = new Object();
        ecommerce_hit[GAHitKey.NonInteraction] = '1';
        var action_obj = new Object();

        
        GADataSend_Ecommerce(GAEcommerceStepKey.Detail, action_obj, product_array, ecommerce_hit);

    }else if(location.pathname == '/p/oda/orderComplete.do' && ordCompleteCnt == 0){
    	ordCompleteCnt = 1;
        var	product_array = [];
        
        

        var ecommerce_hit = new Object();
        ecommerce_hit[GAHitKey.NonInteraction] = '1';
        ecommerce_hit[GAHitKey.currencyCode] = 'KRW';
        
        

        ecommerce_hit[GACustomKey.Metric1] = 0;
        
        ecommerce_hit[GACustomKey.Metric2] = 0;
        
        
        ecommerce_hit['dimension74'] = '';
        ecommerce_hit['dimension75'] = '';



        var action_obj = new Object();
        action_obj[GAActionFieldKey.TransactionID]='';
        action_obj[GAActionFieldKey.TransactionRevenue]='0';
        action_obj[GAActionFieldKey.TransactionShipping]='0';
        
        action_obj[GAActionFieldKey.TransactionCouponCode]='';






        
        GADataSend_Ecommerce(GAEcommerceStepKey.Purchase, action_obj, product_array, ecommerce_hit);
        oneClickFlag = 0;
    }
}


function setDimenData(GA_info){
	var _ga = getCookieGA('_ga');
	if(_ga != null){
		GA_info[GACustomKey.Dimension1] = _ga;
	}

	var uid = "";
    if(getCookieGA('ENCEHCustNO') != null && getCookieGA('ENCEHCustNO') != ""){
    	uid = getCookieGA('ENCEHCustNO');
    }
	
	if(uid == "" || uid.length != 32){
        
    }else{
		GA_info[GACustomKey.Dimension2] = uid;
        GA_info[GAHitKey.UserId] = uid;

        
	}

     GA_info[GACustomKey.Dimension3] = "20220411"; 
     GA_info[GACustomKey.Dimension4] = "일반"; 
    
    	GA_info[GACustomKey.Dimension6] = "N"; 
     GA_info[GACustomKey.Dimension7] = "N"; 
    
     GA_info[GACustomKey.Dimension9] = "20220411"; 
    
    var _gaid = getCookieGA('GAID');
    if(_gaid != null){GA_info[GACustomKey.Dimension11] = _gaid;}
    
        GA_info[GACustomKey.Dimension12] = "Y";
        GA_info[GACustomKey.Dimension24] = "5";
    
    
     GA_info[GACustomKey.Dimension13] = "U"; 
     GA_info[GACustomKey.Dimension14] = "2"; 
     GA_info[GACustomKey.Dimension15] = "실버"; 

     GA_info[GACustomKey.Dimension22] = "기타"; 
    
    
    
    
    
    
     GA_info[GACustomKey.Dimension30] = "N"; 
    
     GA_info[GACustomKey.Dimension37] = "0"; 
     GA_info[GACustomKey.Dimension38] = "N"; 
    
    
     GA_info[GACustomKey.Dimension41] = "PCWEB"; 
     GA_info[GACustomKey.Dimension47] = "N"; 
    

    if(location.pathname == '/p/pde/search.do'){
        
        
        
        
        
        GA_info[GACustomKey.Dimension19] = "N";
        
        
    }

	GA_info[GACustomKey.Dimension16] = "PCWEB";
	
	GA_info[GACustomKey.Dimension35] = location.href.replace("http://", "").replace("https://", "");

	return GA_info;
}



function setGaDataSend_Event(evntType,product_array){
	/* var product_array = [];
	if(product_array_param != null && product_array_param != undefined){
		product_array = product_array_param;
	} */
    var ecommerce_hit = new Object();
    var action_obj = new Object();
	
    
    if(location.pathname == '/m/pda/smItemDetailR.do' || location.pathname == '/p/pda/itemPtc.do'){
        
        if(evntType == GAEcommerceStepKey.Checkout){
            action_obj[GAActionFieldKey.CheckoutStep] = '1';
            GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
        }else{
            ecommerce_hit[GAHitKey.NonInteraction] = '1';
            GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
        }
        
    }else if(location.pathname == '/p/oda/order.do'){
        
        try {
        	var itemGbcd = ""; // 무형상품체크, 유/무형 상품 같이 구매 불가하므로..
            
        } catch (e) {
           
        }

        if(evntType == GAEcommerceStepKey.Checkout){
        	var ecommerce_hit = new Object();
            var action_obj = new Object();
            action_obj[GAActionFieldKey.CheckoutStep] = '2';

            var selOrderType = $("input[name='payType']:checked").val();

            if(selOrderType == '10'  ){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '01 카드';
                ecommerce_hit['dimension75'] = '01 카드';
            }else if(selOrderType == '20'){
                action_obj[GAActionFieldKey.CheckoutOptions] = '02 현금';
                ecommerce_hit['dimension75'] = '02 현금';
            }else if(selOrderType == '40'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '12 휴대폰결제';
                ecommerce_hit['dimension75'] = '12 휴대폰결제';
            }else if(selOrderType == '91'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '15 페이코';
                ecommerce_hit['dimension75'] = '15 페이코';
            }else if(selOrderType == '30'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '20 현금(실시간)';
                ecommerce_hit['dimension75'] = '20 현금(실시간)';
            }else if(selOrderType == '95'){
                action_obj[GAActionFieldKey.CheckoutOptions] = '21 네이버페이';
                ecommerce_hit['dimension75'] = '21 네이버페이';
            }else if(selOrderType == '96'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '22 스마일페이';
                ecommerce_hit['dimension75'] = '22 스마일페이';
            }else if(selOrderType == '97'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '23 카카오페이';
                ecommerce_hit['dimension75'] = '23 카카오페이';
            }else if(selOrderType == '81'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '25 토스';
                ecommerce_hit['dimension75'] = '25 토스';
            }else if(selOrderType == '99') {
                action_obj[GAActionFieldKey.CheckoutOptions]  = '24 현금간편결제';
                ecommerce_hit['dimension75'] = '24 현금간편결제';
            }else if(selOrderType == '50') {
                action_obj[GAActionFieldKey.CheckoutOptions]  = '98 카드+현금';
                ecommerce_hit['dimension75'] = '98 카드+현금';
            }else if(selOrderType == '93') {
                action_obj[GAActionFieldKey.CheckoutOptions]  = '99 삼성페이';
                ecommerce_hit['dimension75'] = '99 삼성페이';
            }else {
                action_obj[GAActionFieldKey.CheckoutOptions]  = 'default';
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
            GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
        }
    }else{
        GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
    }

}



function sendSlitmClick(slitmNm, slitmCd, tabNm){

    if(slitmNm == "" || slitmCd == "" || tabNm == "")
        return;

    var product_array = [];
    product_array.push({'id': slitmCd, 'name': slitmNm});

    var action_obj = new Object();
    action_obj[GAActionFieldKey.ProductActionList] = tabNm;

    var ecommerce_hit = new Object();
    GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj, product_array, ecommerce_hit);
}



function getParameterByName(url, name) {
	if(url == "" || name == "" || url == undefined || name == undefined){
		return;
	}
	
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(url);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function setGaPromotion(title, name, position, creative, id){
	var action_obj = new Object();
    var ecommerce_hit = new Object();
    var tabNm = title;
    if (tabNm.length > 0) { 
        tabNm = tabNm.substring(tabNm.indexOf(">")+1, tabNm.length);
    }
    
    ecommerce_hit[GAHitKey.Title] = title;
    
    action_obj["promo1"] = {};
    action_obj["promo1"][GAActionFieldKey.PromotionName] = name;
    action_obj["promo1"][GAActionFieldKey.PromotionPosition] = position;
    action_obj["promo1"][GAActionFieldKey.PromotionCreative] = creative;
    action_obj["promo1"][GAActionFieldKey.PromotionID] = id;
    
    if(name.substring(0, name.indexOf("_")) == "메인"){
    	console.log("setGaPromotion()................4");
    	ecommerce_hit[GACustomKey.Dimension31] = '메인';
    	ecommerce_hit[GACustomKey.Dimension32] = '메인>'+ tabNm;
    	ecommerce_hit[GACustomKey.Dimension33] = '메인>'+ tabNm;
    	ecommerce_hit[GACustomKey.Dimension34] = '메인>'+ tabNm;	
    }
    
    GADataSend_Ecommerce(GAEcommerceStepKey.PromotionClick, action_obj, null, ecommerce_hit);
}

function getCookieGA(name) {
    var cname = name + "=";
    var dc = document.cookie;
    if (dc.length > 0) {
        begin = dc.indexOf(cname);
        if (begin != -1) {
            begin += cname.length;
            end = dc.indexOf(";", begin);
            if (end == -1) end = dc.length;
            if ( "EHCustName" == name || "LAST_SECT" == name) {
                return decodeURIComponent(dc.substring(begin, end));
            }
            else {
                return unescape(dc.substring(begin, end)).replace('GA1.2.','');
            }
        }
    }
    return null;
}

function sendSlitmClickGo(slitmNm, slitmCd, tabNm,url){

    if(slitmNm == "" || slitmCd == "" || tabNm == "" || url =="")
        return;

    var product_array = [];
    product_array.push({'id': slitmCd, 'name': slitmNm});

    var action_obj = new Object();
    action_obj[GAActionFieldKey.ProductActionList] = tabNm;

    var ecommerce_hit = new Object();
    GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj, product_array, ecommerce_hit);

    document.location.href = url;
}
function sendSlitmClickNewWin(slitmNm, slitmCd, tabNm, url){

    if(slitmNm == "" || slitmCd == "" || tabNm == "" || url =="")
        return;

    var product_array = [];
    product_array.push({'id': slitmCd, 'name': slitmNm});

    var action_obj = new Object();
    action_obj[GAActionFieldKey.ProductActionList] = tabNm;

    var ecommerce_hit = new Object();
    GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj, product_array, ecommerce_hit);

    try {
        _trk_flashEnvView('_TRK_PI=LYRNWN');
    } catch(e) {}

    try {
        _trk_clickTrace("EVT", "상품리스트_새창");
    } catch (e) {}
    window.open(url, '_blank');
}

function bizSpringTagForHome(url, tag, pathVal){
    
	location.href = url
}

function gaTagging(obj_GA, msg1, msg2, msg3){
    console.log("gaTagging()................");
    var title =     $(obj_GA).attr("ga-custom-title") == undefined ? "" : $(obj_GA).attr("ga-custom-title");            
    var name =      $(obj_GA).attr("ga-custom-name") == undefined ? "" : $(obj_GA).attr("ga-custom-name");  
    var position =  $(obj_GA).attr("ga-custom-position") == undefined ? "" : $(obj_GA).attr("ga-custom-position");
    var creative =  $(obj_GA).attr("ga-custom-creative") == undefined ? "" : $(obj_GA).attr("ga-custom-creative");
    var id =        $(obj_GA).attr("ga-custom-id") == undefined ? "" : $(obj_GA).attr("ga-custom-id");
    var etc =       $(obj_GA).attr("ga-custom-etc") == undefined ? "" : $(obj_GA).attr("ga-custom-etc");
    var etc2 =      $(obj_GA).attr("ga-custom-etc2") == undefined ? "" : $(obj_GA).attr("ga-custom-etc2");
    
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

    if (etc == "home"){
        bizSpringTagForHome(msg1, msg2, msg3);
    } else {
    	if (msg1 != null && msg1 != "" && msg1.length > 0) {
            location.href = msg1;
    	}
    }
}



</script>
		<!-- GA Custum lib -->
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/new_main_data.js?ver=041116"
			charset="UTF-8"></script>


		<!-- TODO 곽희섭 20170523 통합포인트 추가 -->
		<script type="text/javascript"
			src="//image.hmall.com/p/js/cu/SsoAjax.js?version=1"></script>

		<script type="text/javascript">
	var serverHost       = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0 || location.href.indexOf("local") > 0) ? "https://" + location.host : "https://www.hmall.com";
	var serverHostForSSL = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0 || location.href.indexOf("local") > 0) ? "https://" + location.host : "https://www.hmall.com";

	/* TODO 곽희섭 20170524 통합포인트 추가 */
	var ssoAuthYn       = "";
	var ssoAuthCd       = "N";
	var upntCustNoEnc   = "";
	var mcustNo         = ""; //TODO 곽희섭 20170804 통합멤버십 회원 코드
	var custNo          = "202204309138"; //TODO 곽희섭 20170810 회원코드
	var upntCustYn      = "N"; // 통멤회원여부
	var vipYn           = ""; // VIP여부(다이아몬드)

	var gv_gnbHomeBnnrTitl = "";
	var gv_gnbHomeBnnrLinkUrl = "";
	var gv_gnbSearchADTextList = []; //bnnrImflNm, bnnrLinkUrl

	var ieDownloadLink="https://support.microsoft.com/ko-kr/topic/internet-explorer-%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C%ED%95%98%EA%B8%B0-d49e1f0d-571c-9a7b-d97e-be248806ca70?fbclid=IwAR3yzDW3KiiUHFqdlLmC600TNwd-mO9j81tb50j34SiKLL9O6QEGSGPi3Bg#ID0EBBD=Windows_7";
	var chromeDownloadLink = "https://www.google.com/intl/ko/chrome/";
	

	function fnSso() {
		gfnSsoInit();
		gfnSsoReqAjax(fnSsoCallback1);
	}

	function fnSsoCallback1(data) {
		console.log("fnSsoCallback1.data:" + data);
		document.cookie = "SSOTOKENYN=; Max-Age=0"; // 토큰발급 여부 초기화

		var currUrl = location.href;
		if (currUrl.indexOf("upntBindingLogin") > 0) {
			// 최초 H.point 로그인 이후 H.point 연결안되어 있으면 stop.(as-is 는 header 없는 페이지라..)
			return;
		}
		if(data.succYn == "Y" && data.mcustNo != "") {
			var redirectUrl = 'https://www.hmall.com/p/cob/upntGateSsoPage.do?upntFlag=Y&mcustkey='+data.mcustNo;
			mcustNo = data.mcustNo;
			window.location.href=redirectUrl;
		} else {
			var todayDate = new Date();
			todayDate.setDate( todayDate.getDate() + 5/24/60 );
			document.cookie = "SSOAUTHYN=N; path=/; domain=.hmall.com; expires=" + todayDate.toGMTString() + ";"
		}
	}

	function fnTokn(){
		gfnSsoInit();
		gfnReqSSoToknIssuAjax(upntCustNoEnc, ssoAuthCd,fnSsoTokenCallback);
	}

	function fnSsoTokenCallback(data) {
		console.log(data);
		document.cookie = "SSOTOKENYN=Y;";  // 토큰발급 성공여부 세션쿠키에 저장
	}

	function getCookie(name) {
		var cname = name + "=";
		var dc = document.cookie;
		if (dc.length > 0) {
			begin = dc.indexOf(cname);
			if (begin != -1) {
				begin += cname.length;
				end = dc.indexOf(";", begin);
				if (end == -1) end = dc.length;
				if ( "EHCustName" == name || "LAST_SECT" == name) {
					return decodeURIComponent(dc.substring(begin, end));
				}
				else {
					return unescape(dc.substring(begin, end));
				}
			}
		}
		return null;
	}
	$(document).ready(function() {
		if (navigator.userAgent.indexOf("Edge") >= 0) {
			
		}


		$('header').removeClass('header-wrap');
		$('#content_wrap').css('margin-top','0px');
		//10.31 스크립트에러 발생으로 주석처리 김용우
		//setQuicklink(PCmainTABJson);
		ie11Check();

		//ie11 브라우저 체크
		function ie11Check(){
			/* if($.browser.msie && $.browser.version.split('.')[0] < 11) */
			if (browserVersionCheck !== 'MSIE 5' && browserVersionCheck !== 'MSIE 6' && browserVersionCheck !== 'MSIE 7' && browserVersionCheck !== 'MSIE 8' && browserVersionCheck !== 'MSIE 9' && browserVersionCheck !== 'MSIE 10'){
			}else{
				console.log('# browser : ' + browserVersionCheck);
				$('.header').prepend('<div class="top-banner">' +
						'<div class="browser-update-wrap">' +
							'<div class="browser-update-in">' +
								'<div class="notice-text">' +
									'<p>최신 브라우저로 Hmall을 이용해 주세요.</p>' +
									'<p>Hmall은 ' +
									'<strong class="point-red">Chrome 브라우저</strong> 및 ' +
									'<strong class="point-red">인터넷익스플로러 11</strong> ' +
									'이상에서 안정적인서비스를 제공합니다.</p>' +
								'</div>' +
								'<div class="browser-down">' +
									'<a href="'+ chromeDownloadLink + '" target="_blank">' +
										'<img src="//image.hmall.com/p/img/co/ico-chrome.png" alt="크롬">'+
										'<span class="download-text">최신버전 다운로드</span>' +
									'</a>' +
									'<a href="'+ ieDownloadLink + '" target="_blank">' +
										'<img src="//image.hmall.com/p/img/co/ico-explore.png" alt="익스플로러">'+
										'<span class="download-text">최신버전 다운로드</span>' +
									'</a>' +
								'</div>' +
							'</div>' +
						'</div>'
				);
			}
		}

		//GNB - 바로가기 링크
		function setQuicklink(jsonData){
			var _data = jsonData;
			var _html = "";

			$(_data).each(function(_idx){
				var _label = this.dispNm.toString();
				var _dispUrl = this.dispUrl.toString();
				var _item = "";

				if(_idx == 0) _item = "<li class='on'>";
				else _item = "<li>";

				var _bizParam = _dispUrl.indexOf("?") >= 0 ? "&_IC_=tab"+(_idx+1) : "?_IC_=tab"+(_idx+1);

				_item += "<a href='" + _dispUrl + _bizParam + "' class='gp_className' ga-category='메인 홈' ga-action='상단탭' ga-label='" + _label + "'>" + _label + "</a>" + "</li>";

				_html += _item;
			});

			$('.quicklink.ql-left').empty().append(_html);
			var i = $('.quicklink.ql-left li').length;
			var moreHtml = "";
			moreHtml  += "<div class=\"quick-menu-more\"><a href=\"javascript:$('.quick-menu-more').attr('class').indexOf('on') > -1 ? $('.quick-menu-more').removeClass('on') : $('.quick-menu-more').addClass('on');\" class=\"btn-quick-more\">퀵메뉴 더보기</a><div class=\"quick-menu-add\" style=\"z-index: 101;\">";
			while(i<20 && i>7){
				moreHtml  += $('.quicklink.ql-left li').eq(i-1).html();
				$('.quicklink.ql-left li').eq(i-1).remove();
				i--;
			}
			moreHtml  += "</div></div>";
			$('.quick-menu-list').after(moreHtml);
		}



		getPopularSearch();  // 인기검색어
		//searchPopKeyword();  asp매장이 아닐경우만 조회되도록 변경 2017.02.10 jts  no.24830
		

		/* TODO 곽희섭 20170524 통합포인트 추가 */
		if(custNo == "") {
			if(ssoAuthCd == "") {
				fnSso();
			}
		}else if(ssoAuthYn == "Y" && upntCustYn == "Y" && custNo != "" && ssoAuthCd != "" && upntCustNoEnc != "" && getCookie("SSOTOKENYN") != "Y"){
			fnTokn();
		}

		$("#del-all-history").bind("click", function() {
			$.ajax({
				url: "/p/pde/deleteCustSrchKeywordAjax.do"
				, type: "post"
				, dataType : "json"
				, success: function(data) {
				}
			});
// 			$("#keyword-list li").remove();
            // 2020.12.21 icj : css 문제로 ul 삭제
            $("#keyword-list").remove();
			// 2020.11.23 icj : 전체삭제시 검색창이 닫히지 않도록 수정
// 			$('#search-autowrap').css({ display : "none" });
// 			$("#search-popup").css({ display : "none" });

            // 2020.12.02 icj : 전체삭제시 히든처리
            $(this).hide();

            // 2020.12.21 icj : 최근 검색어가 없습니다. 노출
            $('#nodata').show();

			return false;
		});

		// 2020.12.09 icj 빠져있던 코드 추가
		var queryString = location.href;
        if(queryString.indexOf("adidas") == -1 && queryString.indexOf("nike") == -1 && queryString.indexOf("hanatour") == -1 && queryString.indexOf("modetour") == -1) {
			 initSearchAD();
             searchPopKeyword();   //asp매장이 아닐경우만 조회되도록 변경 2017.02.10 jts  no.24830
        }

		var searchTerm = "";
		var searchBaseKeyword = "";
		if(searchTerm != searchBaseKeyword && searchTerm !='A') {
			$("#gnbSearchKeyword").val(searchTerm);
		}

	});

	var gnbLoginYn = "Y";
	

	// 2020.12.29 icj : 검색어 삭제 기능 제어
	function searchDeleteX(isShow){
		var $seachX = $('#searchDeleteX');
		if(isShow){
			$seachX.show().parent().addClass('btn ico-clearabled');
		}else {
			$seachX.hide().parent().removeClass('btn ico-clearabled');
		}
	}

	function clearWord(){
		searchDeleteX(false);
		$("#gnbSearchKeyword").val("");
		$("#gnbSearchKeyword").focus();
	}

	function esuper_click() {
		try {
			_trk_clickTrace('EVT','GNB_e슈퍼마켓');
		} catch (e) {}
	}

	function nextchk(arg,len,nextname) {
		if(arg.value.length == len) {
			nextname.focus();
			return;
		}
	}

	//2016.10.06 김이수 최근검색어 추가
	//2020.11.23 icj deleteCustSrchKeywordAjax 호출시 return이 없어서 오류 처리됨 , dataType : "json" 삭제
	
	function deleteCustKeyword(obj) {
	    var custSrchKeyword = unescape(obj);
	    custSrchKeyword = encodeURIComponent(escapeHtml(custSrchKeyword));
		$.ajax({
			url: "/p/pde/deleteCustSrchKeywordAjax.do"
			, type: "post"
			, data: "scwd=" + custSrchKeyword
			, success: function(data) {
				mySearchList();
			}
			, error : function(e) {
				console.log('error', e);
			}
		});
		return;
	}

	function escapeHtml(obj){
		// 지우고자 하는 특수문자들을 변환
		    obj= obj.split("&quot;").join("\"");
		    obj= obj.split("&#39;").join("\'");
		    obj= obj.split("&lt;").join("<");
		    obj= obj.split("&gt;").join(">");

		    return obj;
		}

	function getCookie_header() {
		cName = "_LAST_SEARCH" + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cName);
		var cValue = '';
		if(start != -1){
			start += cName.length;
			var end = cookieData.indexOf(';', start);
			if(end == -1)end = cookieData.length;
			cValue = cookieData.substring(start, end);
		}

		return decodeURI(cValue);
	}

	function mySearchList() {
		var cookie = getCookie_header().replace(/[+]/gi, ' ');
		var str = new Array();
		if(!isEmpty(cookie)){
			str = cookie.split("‡");
		}

		// 2020.12.11 icj : 최근 검색어가 없는 경우 전체삭제 숨김처리. 검색어가 없다 노출
		if(str.length == 0){
			$('#del-all-history').hide();
			$('#keyword-list').remove();
			$('#nodata').show();
		}

		var ulVal = $("#keyword-list");
		var liVal='';
		var mySearchCnt = 0;
		ulVal.find("li").remove();
		if(str != null && str.length > 0) {
			for(var i=0; i < str.length; i++) {
				// 검색 최대 20개 설정
				if(i < 10) {
					var mIndex = str[i].lastIndexOf('>');
					var keyWord = '';
					var keyWordDate = '';
					if(mIndex > -1) {
						keyWord = str[i].substring(mIndex +1, str[i].length);
						keyWordDate = str[i].substring(0, mIndex);
					} else {
						keyWord = str[i];
					}

					if(!isEmpty(keyWord) && keyWord != "") {
						if(mySearchCnt==0) liVal = "";

						liVal += '<li><a href="javascript:clickSeachText(\''+unescape(keyWord)+'\')"><span>'+unescape(keyWord) +'</span></a>'
								+ '<button class="btn btn-delete" onclick="deleteCustKeyword(\'' + keyWord +'\')"><i class="icon xico"></i><span class="hiding">삭제</span></button></li>';
						// <li><a href="javascript:;"><span>폴로 랄프 로렌</span></a>
						//  <button class="btn btn-delete"><i class="icon xico"></i><span class="hiding">삭제</span></button></li>

						mySearchCnt++;
					}
				}
			}
		}
		ulVal.append(liVal);
	}

	//2016.09.26 김이수 인기검색어 노출추가
	function searchPopKeyword() {
        if(typeof popKeyWordListJson == 'undefined') return;
		var searchPopKeyword = popKeyWordListJson;
		var liVal='';
		var ulVal = $(".keyword-result").find("ol");
		ulVal.find("li").remove();
		$.each(searchPopKeyword, function(i) {
			liVal += '<li><a class = "text" href="javascript:clickSeachText(\''+searchPopKeyword[i].keyword+'\')">'+'<span>'+ (i+1) +'. </span>' +searchPopKeyword[i].keyword+'</a>';
		});
		ulVal.append(liVal);
	}

	//검색창 입력전 AD
	function fn_searchAdKeywordDefault() {
		try {
			$("#fcsClick").empty();
			var keyList="";
			var defaultKeywordList = "";
			try{
				defaultKeywordList = defaultKeywordListJson;
			} catch(e) {
				try {
					$.ajax({
						url: "/p/bma/getKeywordMainAdList.do"
						, type: "post"
						, dataType : "json"
						, async: false
						, data: {searchTerm : "" , scwdAsExpsTrtyGbcd : ""}
						, success: function(data) {
							defaultKeywordList = data.defaultKeywordList;
						}
					});
				} catch(e) {
				}
			}

			if(defaultKeywordList.length > 0) {
				$("#popular-list").css({ display : "none" });  // 최근검색어
				$("#fcsClick").show();
				keyList += '<p class="stitle">포커스 클릭</p>'
						+ '<span class="flag-da">AD</span>';

				if(defaultKeywordList.length == 1) {
					keyList += '<div class="pdlist-wrap">'
							+  '<ul>';
				}
				if(defaultKeywordList.length == 2) {
					keyList += '<div class="pdlist-wrap horizon">'
							+  '<ul>';
				}
				if(defaultKeywordList.length == 3) {
					keyList += '<div class="pdlist-wrap horizon">'
							+  '<ul>';
				}


				$.each(defaultKeywordList, function(i){
					if(defaultKeywordList[i].gb == "VDO"){
						keyList +="<li class=\"pdthumb\">"
								+ "<a href=\"javascript:fn_KeywordAdConnUrl10(\'"+defaultKeywordList[i].connUrl+"','"+defaultKeywordList[i].gb+"','"+defaultKeywordList[i].adnm+"','"+defaultKeywordList[i].id+"');\" >"
								+ "<div class=\"thumb\">"
						        + "<img src='https://image.hmall.com"+"/"+defaultKeywordList[i].dispImflNm+"?RS=200X200&AR=0' alt='' />"
								+ "<div class=\"ready\">"
								+ "<span class=\"playtime\"><i class=\"icon\"></i><em></em></span>"
								+ "</div>"
								+ "</div>"
								+ "<div class=\"figcaption\">"
								+ "<div class=\"pdtit\">"+ defaultKeywordList[i].nm +"</div>"
								+ "<div class=\"pdname\" aria-label=\"제품명\">" +defaultKeywordList[i].evntdesc+ "</div>"
								+ "</div></a></li>";

					} else if(defaultKeywordList[i].gb == "SPEX") {
						var spexUrl = defaultKeywordList[i].connUrl;
						if(defaultKeywordList[i].connUrl == "" || defaultKeywordList[i].connUrl == null){
							spexUrl = "/p/dpa/searchSpexSectItem.do?sectId="+defaultKeywordList[i].id;
						}

						keyList +="<li class=\"pdthumb\">"
								+ "<a href=\"javascript:fn_KeywordAdConnUrl10(\'"+spexUrl+"','"+defaultKeywordList[i].gb+"','"+defaultKeywordList[i].adnm+"','"+defaultKeywordList[i].id+"');\" >"
								+ "<div class=\"thumb\">"
								+ "<img src='https://image.hmall.com"+"/"+defaultKeywordList[i].dispImflNm+"?RS=200X200&AR=0' alt='' />"
								+ "</div>"
								+ "<div class=\"figcaption\">"
								+ "<div class=\"pdtit\">"+ defaultKeywordList[i].nm +"</div>"
								+ "<div class=\"pdname\" aria-label=\"제품명\">" +defaultKeywordList[i].evntdesc+ "</div>"
								+ "</div></a></li>";

					} else {//상품
						var imPath = "/static/"+defaultKeywordList[i].slitmCd.substr(7,1)+ "/" + defaultKeywordList[i].slitmCd.substr(6, 1) + "/"+ defaultKeywordList[i].slitmCd.substr(4, 2) + "/" + defaultKeywordList[i].slitmCd.substr(2, 2)+ "/";
						// 상품
						keyList +="<li class=\"pdthumb\">"
								+ "<a href=\"javascript:fn_KeywordAdConnUrl10(\'/p/pda/itemPtc.do?slitmCd="+defaultKeywordList[i].slitmcd+"','"+defaultKeywordList[i].gb+"','"+defaultKeywordList[i].adnm+"','"+defaultKeywordList[i].id+"');\" >"
								+ "<div class=\"thumb\">"
								+ "<img src='https://image.hmall.com"+imPath+defaultKeywordList[i].dispImflNm+"?RS=200X200&AR=0' alt='' />"
								+ "</div>";
								if(defaultKeywordList.length == 1){  //상품1개 일 경우 ui 다름
									keyList += "<div class=\"figcaption txt-left\">";
								}else{
									keyList += "<div class=\"figcaption\">";
								}
						keyList += "<div class=\"pdname\" aria-label=\"제품명\">" +defaultKeywordList[i].nm+ "</div>"
								+ "<div class=\"pdprice\">"
								+ "<span class=\"normal\" aria-label=\"정상가\"><em>"+defaultKeywordList[i].sellprc+"</em>원</span></div>"
								+ "</div></a></li>";

					}
				});
				keyList +="</ul></div>";

				$("#fcsClick").append(keyList);

				// 2020.12.11 icj : 노이미지 처리
				$('#fcsClick').find('img').on('error', function(){
					$(this).attr('src', '//image.hmall.com/p/img/co/noimg-thumb.png');
				});
			} else {
				$("#fcsClick").hide();
				$("#fcsClick").empty();
			}
		} catch(e) {
			//alert(e);
		}
		//키워드 광고 추가 2018.06.25 E
	}

	function fn_KeywordAdConnUrl10(connUrl,gb,nm,id) {
		var title ="";
		if(gb == "VDO") {
			title = "검색창_검색전_영상광고_"+ nm;
		} else if(gb == "SPEX") {
			title = "검색창_검색전_기획전광고_"+ nm;
		} else {
			title = "검색창_검색전_상품광고_"+ nm;
		}

		try {
			_trk_clickTrace('EVT',title);
		} catch (e) {}

		try {
			setGaPromotion("검색>검색창", "검색창", "검색전(입력전)광고", id + "_" + nm, "");
        } catch (e) {}

		window.location.href = connUrl;
	}

	function fn_searchAdKeyword() {
		var defaultKeywordList = "";
		var keyList="";

		//검색어광고 추가 2018.06.25
		try {
			$("#fcsClick").empty();
			$.ajax({
				url: "/bma/getKeywordMainAdList.do"
				, type: "post"
				, dataType : "json"
				, data:{scwdAsExpsTrtyGbcd:"20", searchTerm : $("#gnbSearchKeyword").val() }
				, success: function(data) {
					defaultKeywordList = data.keywordList;
					//alert(defaultKeywordList.length);
					if(defaultKeywordList.length > 0) {
						keyList += "<h3>포커스 클릭 <span>AD</span></h1>";
						$.each(defaultKeywordList, function(i) {
							if(defaultKeywordList[i].gb == "VDO") {
								keyList +="<a href=\"javascript:fn_KeywordAdConnUrl10(\'"+defaultKeywordList[i].connUrl+"','"+defaultKeywordList[i].slitmcd+"','"+defaultKeywordList[i].gb+"','"+defaultKeywordList[i].adnm+"','"+defaultKeywordList[i].id+"');\" class='no-prd _video'>"+
										"<img src='"+defaultKeywordList[i].dispImflNm+"?RS=200X200&AR=0' alt='' />"+
										"<strong>"+defaultKeywordList[i].nm+"</strong>"+
										"<span>"+defaultKeywordList[i].evntdesc+"</span>";
							} else if(defaultKeywordList[i].gb == "SPEX") {
								var spexUrl = defaultKeywordList[i].connUrl;
								if(defaultKeywordList[i].connUrl == "" || defaultKeywordList[i].connUrl == null) {
									spexUrl = "/p/dpa/searchSpexSectItem.do?sectId="+defaultKeywordList[i].id;
								}
								keyList +="<a href=\"javascript:fn_KeywordAdConnUrl10(\'"+spexUrl+"','"+defaultKeywordList[i].slitmcd+"','"+defaultKeywordList[i].gb+"','"+defaultKeywordList[i].adnm+"','"+defaultKeywordList[i].id+"');\" class='no-prd'>"+
										"<img src='"+defaultKeywordList[i].dispImflNm+"?RS=200X200&AR=0' alt='' />"+
										"<strong>"+defaultKeywordList[i].nm+"</strong>"+
										"<span>"+defaultKeywordList[i].evntdesc+"</span>";
							} else {//상품
								keyList +="<a href=\"javascript:fn_KeywordAdConnUrl10(\'/p/pda/itemPtc.do?slitmCd=','"+defaultKeywordList[i].slitmcd+"','"+defaultKeywordList[i].gb+"','"+defaultKeywordList[i].adnm+"','"+defaultKeywordList[i].id+"');\" class='prd'>"+
										"<img src='"+defaultKeywordList[i].dispImflNm+"?RS=200X200&AR=0' alt='' />"+
										"<span>"+defaultKeywordList[i].nm+"</span>"+
										"<strong>"+defaultKeywordList[i].sellprc+"<span>원</span></strong>";
							}
							keyList +=" </a>";
						});
					} else {
						$("#search-popup").addClass("no-adv");
					}

					$("#search-recommend .focus-click").append(keyList);//키워드 광고 추가 2018.06.25
					if(defaultKeywordList.length == 1) {
						$("#search-recommend .focus-click").attr("class","focus-click");
					}
					if(defaultKeywordList.length == 2) {
						$("#search-recommend .focus-click").attr("class","focus-click _row _two");
					}
					if(defaultKeywordList.length == 3) {
						$("#search-recommend .focus-click").attr("class","focus-click _row _three");
					}
				}
			});
		} catch(e) {
			//alert(e);
		}
		//키워드 광고 추가 2018.06.25 E
	}

	function clickSeachText(val) {
		if(val.indexOf("www.") >= 0) {
			alert("검색할 수 없는 키워드가 포함되어 있습니다.");
			return false;
		}

		var isSearchADText = goSearchADText(val);

		if(!isSearchADText){
			location.href = "https://www.hmall.com/p/pde/search.do?searchTerm="+val;
		}
	}

	function doSmsSend(prmoNo) {
		if(isLogin() == 'true') {
			var ddd = $("input[name='ddd']").val();
			var tel1 = $("input[name='tel1']").val();
			var tel2 = $("input[name='tel2']").val();

			if (isEmpty(ddd)|| isEmpty(tel1) || isEmpty(tel2)) {
				alert('마이페이지>회원정보에서 휴대폰번호를 입력한 후 이용하실 수 있습니다.');
			}

			$.ajax({
				type: "GET"
				,url: "https://www.hmall.com/pevent/eva/evntTmplSmsSend.do"
				,dataType: "jsonp"
				,jsonCallback: "callback"
				,crossDomain: true
				,data:{prmoNo:prmoNo, ddd:ddd, tel1:tel1 , tel2:tel2}
				,async: false
				,success : function(data) {
					if(isEmpty(data.errorMessage)) {
						alert(data.errorMessage);
						window.location.reload();
					} else {
						alert(data.errorMessage);
					}
				}
				,error : function(request,status,error) {
					alert("이벤트 응모시 오류가 발생했습니다.");
				}
			});
		} else {
			doEvntLoginTop();
		}
	}

	function doEvntLoginTop() {
		alert("로그인 후 이용해 주세요.");
		openLoginPopup();
		return;
	}

	function mCheck() {
		var pathVal ='^헤더^앱다운로드';

		try {
			_trk_flashEnvView('_TRK_CP=' + pathVal);
		} catch(e){}

		var ddd = "";
		var tel1 = "";
		var tel2 = "";

		if(isLogin() == 'true') {
			$.ajax({
				type: "post"
				, url: "https://www.hmall.com/p/getHp.do"
				, dataType: "jsonp"
				, crossDomain: true
				, success : function(data) {
					$("input[name='ddd']").val(data.hpIdntNo);
					$("input[name='tel1']").val(data.hpIntmNo);
					$("input[name='tel2']").val(data.hpBckNo);
					ddd = data.hpIdntNo;
					tel1 = data.hpIntmNo;
					tel2 = data.hpBckNo;

					if (isEmpty(ddd)|| isEmpty(tel1) || isEmpty(tel2)) {
						alert('마이페이지>회원정보에서 휴대폰번호를 입력한 후 이용하실 수 있습니다.');
					}
				}
				, error: function(data) {
					console.log("mCheck error");
				}
			});
		}
		return;
	}

	// 장바구니, 찜리스트, 마이페이지 마우스 액션
	$(document).on("mouseenter", ".person_menu li.mypage", function() {
		if($(this).siblings("li").find(".sub").hasClass("on")) {
			$(this).siblings("li").find(".sprite.ico, .sub").removeClass("on");
		}

		if($(this).find(".sub").hasClass("on")) {
			$(this).find(".sprite.ico, .sub").removeClass("on");
		} else {
			$(this).find(".sprite.ico, .sub").addClass("on");
		}

		return false;
	}).on("mouseleave", ".person_menu li.mypage", function() {
		$(this).find(".sprite.ico, .sub").removeClass("on");
	});


	//장바구니,ㅡ 찜리스트 좌측 아이콘 클릭 시 화면 이동 되도록 수정
	$(document).on("click", ".person_menu li", function() {
		if($(this).hasClass("basket")){
			location.href = "https://www.hmall.com/p/odb/basktList.do?GnbGroup=Basket";
		} else if($(this).hasClass("zzim")){
			location.href = "https://www.hmall.com/p/mpc/sltdItemList.do?GnbGroup=WishList";
		}
	});

	/* TODO 곽희섭 20170517 통합포인트 추가 */
	function submitCompanyLogin() {
		var pathVal = "^헤더^마이페이지 레이어^통합멤버십 로그인";

		try {
			_trk_flashEnvView('_TRK_CP=' + pathVal);
		} catch(e){}

		window.open("",'sendLogin','width=400,height=550,scrollbars=yes');
		document.loginForm.submit();
	}

	//TODO 곽희섭 20170524 통합포인트 추가
	function doSearchUPnt(pathVal) {
		try {
			_trk_flashEnvView('_TRK_CP=' + pathVal);
		} catch(e){}
		location.href = "https://www.hmall.com/p/cua/registUpnt.do";
	}

	function doSearchUPntPop(pathVal) {
		try {
			_trk_flashEnvView('_TRK_CP=' + pathVal);
		} catch(e){}

		document.myPntForm.mcustNo.value = mcustNo;
		document.myPntForm.action = "https://www.h-point.co.kr/cu/myh/myPnt.shd";
		window.open("",'myPntForm','width=900,height=650');
		document.myPntForm.submit();
	}

	/**
	 * 2018.06 김이수 검색탭 리뉴얼 관련 JS
	 */

	$(function() {
// 		mySearchList();    // 로드 순서 문제로 다른곳에서 처리

		$(document).on("click",".header .searchclose", function(){
			// 2020.11.23 icj 검색창에서 닫기 버튼시 검색 하단 레이어 숨김처리 및 자동 focus 제거
			$('#search-autowrap').hide();
			$("#search-popup").hide();
			$(".header .search").removeClass("selected");
		}).on('click', function(e){
			// 2020.12.28 icj : 유저 클릭 이벤트인 경우만
	        if(e.originalEvent){
				var target = $(e.target);
		        if(!$('.header .search .field').has(e.target).length){
					$(".header .search").removeClass("selected");
		        }
	        }
		})
		
		//이외 영역 클릭 시 카테고리 메뉴 숨김 처리
		$(document).on("click", function() {
			if($('.category-menu-wrap').is(':visible')){
				$('.category-menu-wrap').hide();
			}
		});
		
		//퍼블 스크립트 끝
		$("#gnbSearchKeyword").on("keyup", function(e) {
			var keyword = $("#gnbSearchKeyword").val();

			if(!$(".header .search").hasClass("selected")){
				$(".header .search").addClass("selected");
			}

			if(e.which==13 ){
				// 2020.12.21 icj : 이중 alert으로 주석처리(submit으로 doSearchGnb호출됨)
// 				doSearchGnb();
				return false;
			}

			if(keyword.length == 0  || isEmpty(keyword)){
				searchDeleteX(false);
				$("#search-recommend").hide();
				$("#search-popup").show();
				$(".header .search").addClass("selected");  // 2020.11.27 icj 검색어가 없는 경우 selected 필요
				fn_searchAdKeywordDefault();
			} else{
				searchDeleteX(true);
				$("#search-popup").hide();
				$("#search-recommend").show();
			}
			//추천검색 중첩방지
			if(processing==0) {
				dup_keyword();
			}
			// else{
			// 	console.log('중첩방지');
			// }
		});

		//input박스 클릭시
		var noDelKeyword_rgx = new RegExp('(/p/pde/)','g');
		var noDelKeyword_Filter = noDelKeyword_rgx.test(locationHref);

		// 최근본이미지조회
		getRecentImg();

	});

	//추천검색어 및 자동완성
	var before_Keyword = "";
	var clear_DupKeyword;

	//타자속도가 빨라 keyup시 여러단어 입력으로 이중검색 되는 로직 방지
	var processing  = 0;   //시작:0 , 호출시 +1
	function dup_keyword(){
		processing+=1;
		// console.log('dup_keyword call processing : ' +  processing);
		// if(processing>10){   //무한루프방지
		// 	debugger;
		// }

		var searchHost = serverHost;

		if (locationHref.indexOf("https") > -1) {
			searchHost = serverHostForSSL;
		}

		//검색어 자동완성
		var nowKeyword = $("input[name=searchTerm]").val();

		var $this_val = $("#gnbSearchKeyword").val();
		// 추천 검색어 가져올때 광고키워드와 입력 키워드 일치 여부 확인
		var keywordAd20List = "";

		//검색어 광고 DB 조회 여부
		var adGb="N";
		var adCnt = 0;
		try{
			keywordAd20List = keywordAd20ListJson; // 광고 키워드 json
		}catch(e){
		}

		if(keywordAd20List.length > 0){
			$.each(keywordAd20List, function(i){
				if(keywordAd20List[i].keyword == nowKeyword){
					adCnt++;
				}
			});
			if(adCnt > 0){
				adGb ="Y";  //광고 키워드가 일치할 경우 AD 데이터가져옴(keywordAdList)
			}
		}


		centerLoading(true,12);
		$.ajax({
			url: searchHost + '/p/pde/searchKeywordAutoCompleteAjax.do?adGb=' + adGb
			, data: { searchTerm : $this_val }
			, type: "post"
			, dataType: "html"
			, success: function(data) {
				//console.log("searchKeywordAutoCompleteAjax call");
				processing=0 ; //키워드검색 종료 초기화

				$("#search-recommend").hide();
				$("#search-recommend").html(data);

				$("#search-recommend").show();
				searchSpecialShop();
				searchBrandShop();

				//연관 추천검색어 및 브랜드, 스페셜샵, 광고 없는 경우 search-autowrap hidden 처리
				var specialCount = $("#spacialshop").length;
				var brandCount = $("#brandshop").length;
				var recommCount = $("#recommend-keyword-list li").length;

				//추천검색어 없을 경우 영역삭제
				if(recommCount==0){
					$("#recommend-keyword-list").css({display:"none"});
				}

				//추천 단어 없을때
				if(specialCount==0 && brandCount==0 && recommCount==0){
					$("#search-recommend").prepend('<p class="nodata" id="search_layer1">입력하신 단어로 검색어를 추천할 수 없습니다.</p>');
				}

				//검색어를 다 지웠을때
				if($("#gnbSearchKeyword").val().length == 0  || isEmpty($("#gnbSearchKeyword").val())){
					$("#search-autowrap").show();
					$("#search-popup").show();
					$("#search-popup div").show();
					$("#search_layer1").hide();

					fn_searchAdKeywordDefault();
				}
				centerLoading(false);
			}
			,error: function(){
				processing=0 ; //키워드검색 초기화
				centerLoading(false);
			}
		});
	}


	//2019.10.07 문주성 인기검색어 추가
	// /p/bma/getPopScwd.do 바라보는 로직 제외 HDHS-22649
	function getPopularSearch() {

		var searchPopKeyword = popKeyWordListJson;

		var show1to10 = "";
		$.each(searchPopKeyword, function (i, item) {
			$(item).each(function (key, value) {
				if(value.ranking >= 1 && value.ranking <= 10) {
					show1to10 += "<li>";
					show1to10 += "<a href=\"javascript:void(0);\" onclick=\"javascript:clickPopSrch('" + value.keyword + "');\" >";
					show1to10 += value.keyword
					if(value.gap < 0) {
						// show1to10 += "<span class=\"rank _dw\"></span>";
						show1to10 += "<em><i class=\"icon down\"></i><span class=\"hiding\">하락</span></em>";
					}else if(value.gap > 0) {
						if(value.prevRanking > 10) {
							show1to10 += "<em><i class=\"icon new\"></i><span class=\"hiding\">유지</span></em>";
						}else {
							show1to10 += "<em><i class=\"icon up\"></i><span class=\"hiding\">상승</span></em>";
						}
					}else {
						show1to10 += "<em><i class=\"icon keep\"></i><span class=\"hiding\">유지</span></em>";
					}
					show1to10 += "</a>";
					show1to10 += "</li>"
				}
			});
		});

		$("#popular-list >ol").append(show1to10);
	}

	function clickPopSrch(searchTerm){

		var isSearchADText = goSearchADText(searchTerm);

		if(!isSearchADText){
			var newForm = $('<form></form>');

			newForm.attr("name","newForm");
			newForm.attr("method","post");
			newForm.attr("action","/p/pde/search.do?searchTerm="+searchTerm);

			newForm.append($('<input/>', {type: 'hidden', name: 'popSrchYn', value:'Y' }));
			newForm.appendTo('body');

			newForm.submit();
		}
	}

    //최근본쇼핑 하단 이미지조회
    function getRecentImg(){
        $.ajax({
            type: "get",
            url: '/p/coe/selectRcntShpgImg.do',
            dataType: "json",
            success: function(data){

                var itemImg = data.rcntShpgMap.itemImg;
                if(itemImg != null && itemImg != ""){
                    var imgTag = '<img src='+itemImg+' onerror="noImage(this, \'https://image.hmall.com/p/img/co/noimg-thumb.png\')" >';
                    $("#recentlyImg > em").html(imgTag);
                }

                
                //하단이미지 조회 후 쿠키동의여부 팝업 노출여부 체크 및 노출
                if(sessionStorage.getItem("recentCokiUseAgr") == "Y"){

                    // 로그인 성공 했을 때
                    $.ajax({
				        type: "get"
				        ,url: "/p/coe/checkRcntShpg.do"
				        ,dataType: "json"
				        ,cache : false
				        ,data: {}
				        ,async: true
				        ,success : function(data) {
				           if (data && data.showRcntShpgPop == "Y") {
			                    $("#recentCokiUseAgr").addClass("active");
			                    $("#recentCokiUseAgr").show();
			                    sessionStorage.removeItem("recentCokiUseAgr");
				           }
				      },
				      error : function(e){
				      }
	                });
                }
                

            },
            error: function(xhr, type){
                //alert('no data : ' + type);
            }
         });
    }

    //최근본쇼핑 쿠키동의여부 처리
    function setRecentCookieAgr(agrVal){
        $.ajax({
            type: "get",
            url: serverHostForSSL + '/p/coe/saveRcntCokiUseAgr.do',
            dataType: "json",
            data: {recentCokiUseAgr:agrVal},
            success: function(data){
                $("#recentCokiUseAgr").hide();
                sessionStorage.removeItem("recentCokiUseAgr");
            },
            error: function(xhr, type){
                //alert('no data : ' + type);
            }
         });
    }

    // 최근본 쇼핑 열기
    function openRecentShopping() {

    	// Dim 영역을 먼저 노출
    	$("#recentlyItem").html('<div class="layer-dim"></div>').show();

        $.ajax({
            type: "get"
            ,url: '/p/coe/listRcntShpg.do'
            ,dataType: "html"
            ,async: true
            ,success : function(data) {

            	$recentlyItem = $("#recentlyItem");
                $recentlyItem.html(data).show();
            }
            ,
            error : function(){
            }
        });

        return false;
    }
	//for chrome debugger
	//# sourceURL= script-for-Top1.js
</script>

		<!-- TODO 곽희섭 20170517 통합포인트 추가 -->
		<form id="loginForm" name="loginForm" method="post"
			action="https://www.h-point.co.kr/cu/login.nhd" target="sendLogin">
			<input type="hidden" name="retUrl"
				value="https://www.hmall.com/p/cob/upntGatePage.do"> <input
				type="hidden" name="retPage" value=""> <input type="hidden"
				name="prtnrId" value="D020" readonly=""> <input
				type="hidden" name="chnnlId" value="1102"> <input
				type="hidden" name="htmlYn" value="Y"> <input type="hidden"
				name="ci" value="">
		</form>
		<form id="myPntForm" name="myPntForm" method="post" action=""
			target="myPntForm">
			<input type="hidden" name="mcustNo" value="">
		</form>

		<!-- skip navigation -->
		<div class="nav-skip">
			<a href="#mainContents" id="accessibility">본문 콘텐츠로 건너뛰기</a>
		</div>


		<script>
	function setTopBanner() {
		try {
			var TopBannerArr = [top1Json, top2Json, top3Json, top4Json];
			var imageServer = 'https://image.hmall.com';

			$.each(TopBannerArr, function(i, arr) {
				if(TopBannerArr[i].length == 0) return;

				var dispUrl = TopBannerArr[i][0].dispUrl;
				var dispTrtyNmCd = TopBannerArr[i][0].dispTrtyNmCd;
				var dispImflNm = TopBannerArr[i][0].dispImflNm;
				var dispNm = TopBannerArr[i][0].dispNm;
				var evntDesc = TopBannerArr[i][0].evntDesc;

				if (dispNm == null) {
					dispNm = "";
				}

				if (evntDesc == null) {
					evntDesc = "";
				}

				var _html ="";

				

				
				if (i == 0) {
					_html = '<a class="banner-item type4 firstitem gp_className" ga-category="헤더" ga-action="탑배너1" ga-label="' + dispNm + '" href="javascript:bizSpringTag(\''+dispUrl+'&_IC_=top'+Math.round(i+1)+'\',\'^헤더^탑배너^'+dispNm+'\');">';
				} else if (i == 3) {
					_html = '<a class="banner-item type4 lastitem gp_className" ga-category="헤더" ga-action="탑배너4" ga-label="' + dispNm + '" href="javascript:bizSpringTag(\''+dispUrl+'&_IC_=top'+Math.round(i+1)+'\',\'^헤더^탑배너^'+dispNm+'\');">';
				} else {
					_html = '<a class="banner-item type4 gp_className" ga-category="헤더" ga-action="탑배너' + i +'" ga-label="' + dispNm + '" href="javascript:bizSpringTag(\''+dispUrl+'&_IC_=top'+Math.round(i+1)+'\',\'^헤더^탑배너^'+dispNm+'\');">';
				}
				

				if (i == 3) {
					_html = _html + '<span class="label-wrap"><span class="cat-label">'+dispNm+'</span><span class="main-label">'+evntDesc+'</span></span></a>';
				} else {
					_html = _html + '<img src="'+imageServer+dispImflNm+'"/><span class="label-wrap"><span class="cat-label">'+dispNm+'</span><span class="main-label">'+evntDesc+'</span></span></a>';
				}

				$("#top_bar").append(_html);

				

				
				if ( i == 3 ) return false;
				
			});
			if($("#top_bar").size() > 0) $(".header-banner").css({ backgroundColor : $("#top_bar").find("img").first().attr("src").split("-")[1] == undefined ? "#FFF" : "#"+ $("#top_bar").find("img").first().attr("src").split("-")[1].split(".")[0] });
		} catch (err){}
	}

	function loadPCdirect() {
		try {
			var ulSize    = 0;
			$(PCdirectJson).each(function(idx,cOAPCdirectInfVO) {
				$("#pcdirect").attr("href", "javascript:bizSpringTagForVisit('"+cOAPCdirectInfVO.dispUrl+"','^스카이스크래퍼^바로접속ON');");
				ulSize += 1;
				if ( ulSize == 1 ) return false;
			});
		} catch (err){}
	}
	function bizSpringTagForVisit(url, pathVal) {
		var bookMarkFlag = 'true';

		if(bookMarkFlag == 'true') {
			try {
				_trk_flashEnvView('_TRK_CP=' + pathVal);
			} catch(e){}
		} else {

		}

		url = url.replace(/ /g,'');
		if(url != "" && url != undefined){
			location.href = url;
		}
	}


	function bizSpringTag(url, pathVal) {
		try {
			_trk_flashEnvView('_TRK_CP=' + pathVal);
		} catch(e){}

		url = url.replace(/ /g,'');
		if(url != "" && url != undefined) {
			location.href = url;
		}
	}

	function bizspringClickTrace(tag) {
		try {
			if(!isEmpty(tag)) _trk_clickTrace('EVT', tag);
		} catch (e) {}
	}

	function openLoginTag(url, pathVal) {

		try {

            //현재는 사용안함 향후 매체동의 사용시에 주석 제거
		    //sessionStorage.setItem("recentCokiUseAgr", "Y");

			_trk_flashEnvView('_TRK_CP=' + pathVal);
		} catch(e){}

		// 2020.11.25 icj : url이 없는 경우 현재 url 전달
		if(isEmpty(url)){
			// 2021.01.13 : url이 없는경우 특정 url은 제외 처리
			if (isLoginExpectUrl(location.href)) {
				url = "";
			} else {
				url = location.href;
			}

		}

		openLoginPopup(url);
	}

	//2020.03.04 gnb_search.js에서 이동
	var searchAdTempArr = new Array();
	
	function initSearchAD(){
		if(typeof searchADLinkList !== 'undefined'){ //searchADLinkList.js 배치로 만들어진 파일이라 local Test시 에러방지
			if(searchADLinkList.length > 0){
				//2021.12.21 인터넷 노출 컬럼 기준 필터링 
				for (var i = 0; i < searchADLinkList.length; i++){
					if (searchADLinkList[i].itntDispYn == "Y"){
						searchAdTempArr.push(i); //인터넷 노출될 인덱스 값 저장 
			   	    }
			    }
				
				adIndex = Math.round(Math.random() * 10) % searchAdTempArr.length;
				
				gv_gnbHomeBnnrTitl = searchADLinkList[searchAdTempArr[adIndex]].bnnrTitl;
				gv_gnbHomeBnnrLinkUrl = searchADLinkList[searchAdTempArr[adIndex]].bnnrLinkUrl;
			}
		}

		if(typeof searchADTextList !== 'undefined'){
			if(searchADTextList.length > 0){
				gv_gnbSearchADTextList = searchADTextList;
			}
		}

		// 2020.12.24 icj : 미선택시에만 값 세팅
		if(!$('.header .search').hasClass('selected')){
			  $("#gnbSearchKeyword").val(gv_gnbHomeBnnrTitl);
		}

	}
	
	function doSearchGnb () {
		var searchKeyword = $("#gnbSearchKeyword").val();
		if(searchKeyword == null || searchKeyword == "") {
			alert("검색어를 입력해주세요.");
			return false;
		}
		if(searchKeyword.indexOf("www.") >= 0) {
			alert("검색할 수 없는 키워드가 포함되어 있습니다.");
			return false;
		}

		//검색어 값이 처음 현시된 글과 같을경우 해당 Url에 이동
		if(typeof gv_gnbHomeBnnrTitl !=='undefined'){
	        if(gv_gnbHomeBnnrTitl == searchKeyword){
				var url = gv_gnbHomeBnnrLinkUrl;
				if(gv_gnbHomeBnnrLinkUrl.indexOf("http:") == -1 && gv_gnbHomeBnnrLinkUrl.indexOf("https:") == -1 ) {
					if(url.indexOf("/p/") >= 0){
						url = serverHost + "/" + url;
					} else {
						url = "http://" + url;
					}
				}
				try {
					_trk_flashEnvView('_TRK_CP=^헤더^검색창광고^' + searchKeyword);
				} catch(e){}

				window.location.href = url;
				return false;
			}
		}

		var isSearchADText = goSearchADText(searchKeyword);

		if(!isSearchADText){
			var form = document.gnbPdeSearchForm;
			form.action = "https://www.hmall.com/p/pde/search.do";
			form.submit();
		}
	}

	function goSearchADText(searchKeyword){

		if(gv_gnbSearchADTextList.length > 0){
			var index = -1;
			for(var idx = 0 ; idx < gv_gnbSearchADTextList.length ; idx++){
				if(!isEmpty(gv_gnbSearchADTextList[idx].bnnrTitl)){
					if(gv_gnbSearchADTextList[idx].bnnrTitl == searchKeyword){
						index  = idx;
						break;
					}
				}
			}

			if(index >= 0){
				if(!isEmpty(gv_gnbSearchADTextList[index])){
					var url = gv_gnbSearchADTextList[index].bnnrLinkUrl;
					if(url.indexOf("http:") == -1 && url.indexOf("https:") == -1 ) {
						if(url.indexOf("/p/") >= 0){
							url = serverHost + "/" + url;
						} else {
							url = "http://" + url;
						}
					}

					// 180305 - bizSpring - rlatkdals
					_trk_bnnrTitl = "TEXT검색어_"+ gv_gnbSearchADTextList[index].bnnrTitl;
					_trk_clickTrace('EVT', _trk_bnnrTitl);

					window.location.href = url;
					return true;
				}
			}
		}
		return false;
	}

	$(function() {
	   var flag = 0;
	   $(document).on('click', '#gnbSearchKeyword', function() {
	       var searchTerm = "";
	       //최초 검색키워드 설정 후 초기화
		   if(searchTerm=="A"){
			   searchTerm='';
		   }
	       if(flag == 0) {
	           $("#gnbSearchKeyword").val(searchTerm);
	           flag = 1;

	           //IE 커서 위치를 맨 뒤로
	           if(this.createTextRange) {
	                  var range = this.createTextRange();
	                  range.move('character', this.value.length);
	                  range.select();
	           }
	       }

	       $(".search-box").focus();
	   });

	});

	/* GNB - 카테고리 vs008 */
	function setCategory(url){
		$.ajax({
			type : "get"
			//,url : "/p/coe/getSectCtgr.do"
			,url : "//image.hmall.com/gen/html/sectCtgr.html"
			,dataType : "html"
			,crossDomain: true
			,success : function(data, textStatus, jqXHR){
				$("#categoryArea").append(data);
				$(".category-list li:first, .category-list-contents:first").addClass("on");
				catNavigation();
			},complete: function(){
				//var CtrAdBannerPJson = $.parseJSON('[{"cd":"10","adBnnrNo":52434,"bnnrTitl":"타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀","bnnrImflNm":"\/HM\/HM026\/20200603\/191146\/0529_kse.jpg","bnnrLinkUrl":"http:\/\/www.hmall.com\/p\/dpa\/searchSpexSectItem.do?sectId=1974291","dispStrtDtm":"20171101000000","dispEndDtm":"20210522000000","srcCntn":"내용내용내용내용내용내용내용내용내용내용내용내용내용내용","bbPrc":null},{"cd":"09","adBnnrNo":52442,"bnnrTitl":"TV방송","bnnrImflNm":"\/HM\/HM026\/20200519\/161503\/1.PNG","bnnrLinkUrl":"http:\/\/www.hmall.com\/p\/dpa\/searchSpexSectItem.do?sectId=1974291","dispStrtDtm":"20171101000000","dispEndDtm":"20210522000000","srcCntn":"테스트","bbPrc":null}]');
				setCategoryBanner(CtrAdBannerPJson);
			},error : function(e) {
				//cors 오류 시 기존 ajax 타도록 수정
				$.ajax({
					type : "get"
					,url : "/p/coe/getSectCtgr.do"
					,dataType : "html"
					,crossDomain: true
					,success : function(data, textStatus, jqXHR){
						$("#categoryArea").append(data);
						$(".category-list li:first, .category-list-contents:first").addClass("on");
						catNavigation();
					},complete: function(){
						//var CtrAdBannerPJson = $.parseJSON('[{"cd":"10","adBnnrNo":52434,"bnnrTitl":"타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀","bnnrImflNm":"\/HM\/HM026\/20200603\/191146\/0529_kse.jpg","bnnrLinkUrl":"http:\/\/www.hmall.com\/p\/dpa\/searchSpexSectItem.do?sectId=1974291","dispStrtDtm":"20171101000000","dispEndDtm":"20210522000000","srcCntn":"내용내용내용내용내용내용내용내용내용내용내용내용내용내용","bbPrc":null},{"cd":"09","adBnnrNo":52442,"bnnrTitl":"TV방송","bnnrImflNm":"\/HM\/HM026\/20200519\/161503\/1.PNG","bnnrLinkUrl":"http:\/\/www.hmall.com\/p\/dpa\/searchSpexSectItem.do?sectId=1974291","dispStrtDtm":"20171101000000","dispEndDtm":"20210522000000","srcCntn":"테스트","bbPrc":null}]');
						setCategoryBanner(CtrAdBannerPJson);
					}
				});
			}
		});
	}

	/* GNB - 카테고리 배너 vs008 */
	function setCategoryBanner(jsonData){
		var _data = jsonData;

		$(_data).each(function(_idx){
			if(this.cd != null && this.cd != "") {
				var _catecode = this.cd.toString();
				var _mainLabel = this.bnnrTitl == null ? " " : this.bnnrTitl.toString();
				var _subLabel = this.srcCntn == null ? " " : this.srcCntn.toString();
				var _dispUrl = this.bnnrLinkUrl == null ? " " : this.bnnrLinkUrl.toString();
				var _imgUrl = this.bnnrImflNm == null ? " " : this.bnnrImflNm.toString();

				/* 임시처리 TV쇼핑 노출되지 않도록 처리 */
				var _html = "<div class='exhibition-banner'>" +
						"<a href='"+ _dispUrl +"'>" +
						"<img src='"+ 'https://image.hmall.com' + _imgUrl +"' alt='기획전 Banner' onerror=\"this.src='//image.hmall.com/p/img/co/sample/img-bnn01.jpg'\"/>" +
						"<span class='banner-text'>" +
						"<strong>"+ _mainLabel +"</strong>" +
						"<em>"+ _subLabel +"</em>" +
						"</span>" +
						"</a>" +
						"</div>";

				$('.category-list-contents[data-catecode="'+ _catecode +'"]').append(_html);
			}
		});
	}


	//for chrome debugger
	//# sourceURL= script-for-Top2.js

	$(document).on('click', '.logo', function() {
		if($(this).parent('div').attr('class') != 'header-inner') {
			var form = document.createElement('form');
			var objs;
	
			objs = document.createElement('input');
			objs.setAttribute('type', 'text');
			objs.setAttribute('name', 'cacheYn');
			objs.setAttribute('value', 'N');
			form.appendChild(objs);
			form.setAttribute('method','post');
			form.setAttribute('action','/p/index.do');
			document.body.appendChild(form);
			form.submit();
			//window.location.href = "/p/index.do?cacheYn=N";
		}
	});

</script>

		<!-- header -->
		<%@ include file="../header.jsp"%>

		<!-- 최근본상품 -->
		<div id="recentlyItem" class="layer-popup recently"
			style="display: none;"></div>




		<!-- 브랜드 검색 : 추천 브랜드  -->
		<div class="layer-popup brand" style="display: none;">
			<!-- style 임시 적용 : 확인용 -->
			<div class="pop-wrap">
				<div class="pop-content-wrap">
					<strong class="pop-title">브랜드 검색</strong>
					<!-- 검색 영역 -->
					<div class="search" role="search">
						<div class="field">
							<div class="inputbox">
								<label class="inplabel"><input type="text" name="brndTp"
									placeholder="브랜드를 입력해 주세요" title="브랜드 검색"></label>
								<button class="btn ico-clearabled"
									onclick="javascript:brnClear();" id="CEOBrndSearchClear">
									<i class="icon"></i><span class="hiding">지우기</span>
								</button>

							</div>
						</div>
						<button class="btn btn-search">
							<span>검색</span>
						</button>
					</div>
					<!-- // 검색 영역 -->
					<div class="pop-content">
						<!-- 팝업 컨텐츠 -->
						<div class="middle-content">
							<div class="recommend-brand">
								<p class="title">
									<strong>추천 브랜드</strong>
								</p>
								<ul id="brand-list">
									<!-- 추천 브랜드 목록 -->
								</ul>
							</div>
							<div class="result-brand" style="display: none;">
								<p class="title">
									<strong>'가구' 검색결과</strong><span>총 <em></em>건
									</span>
								</p>
								<ul id="hangulSrchResult">

								</ul>
							</div>
							<div class="nodata" style="display: none;">
								<span class="bgcircle"><i class="icon nodata-type10"></i></span>
								<p>브랜드 검색결과가 없습니다.</p>
							</div>
						</div>
						<!-- //팝업 컨텐츠 -->
					</div>
				</div>
				<!-- // .pop-content-wrap -->
				<button class="btn-close"
					onclick="javascript:$('.layer-popup.brand').css('display','none');">
					<span>팝업 닫기</span>
				</button>
			</div>
		</div>
		<!-- TODO action 변경필요 -->
		<form name="brndSearchMoveForm" action="/p/pde/brndSearchL.do"
			method="get">
			<input type="hidden" name="srchBrndCd" value=""> <input
				type="hidden" name="sort" value="SELL_QTY@DESC">
			<!-- 많이 팔린 순 정렬 기본-->
			<input type="hidden" name="moveGbn" value="first">
		</form>
		<!-- 브랜드 검색 : 추천 브랜드  -->
		<script>
function brndOpenPopup(){
    makeSpecialBrndCategoryUi();
    $('.layer-popup.brand').css('display','block');
}

/* GNB - 브랜드검색 */
function makeSpecialBrndCategoryUi() {
     var specialContents = $("#brand-list");    
     var cateStr ="";
     var idx = 0;
    
     var listMod = 0;
    
     specialContents.empty();
     var imageServer = 'https://image.hmall.com';
    
    $.ajax({
        url: "/p/smBrndSearchAjax.do"
        , type: "get"
        , dataType: "json"
        , async: true
        , data: { brndMainType : 'Y'}
        , success: function(data) {
            for (var i=0; i < 20; i++) {
                var brndImgPath = imageServer+ "/static/image/sect/brand/disp_img/" + data.brndList[i].dispImgNm;
                //brndImgPath = brndImgPath + (data.brndList[i].sImgNm == null ? "/large_img/"+data.brndList[i].lImgNm : "/small_img/"+data.brndList[i].sImgNm);
                cateStr = cateStr + "<li>";
                cateStr = cateStr + "<a href=#>";
                cateStr = cateStr + "<span class=\"img-brand\"><img src=\""+ brndImgPath + "\" alt=\"" + data.brndList[i].brndNm + "\" onerror=\"this.src='//image.hmall.com/p/img/co/logo-brand-default.jpg'\" height=\"50\" width=\"50\"></span>";
                cateStr = cateStr + "<em class=\"name-brand\">" + data.brndList[i].brndNm + "</em>";
                cateStr = cateStr + "</a>";
                if(data.brndList[i].brndJjimCnt != 0){
                    cateStr = cateStr + "<button class=\"btn btn-like active\" data-brnd-cd =\""+data.brndList[i].brndCd+"\" data-brnd-nm =\""+data.brndList[i].brndNm+"\" onClick=\"javascript:fnBranChoice('"+data.brndList[i].brndCd+"','" + data.brndList[i].brndNm +"',event);\"><i class=\"icon\"></i><span class=\"hiding\">찜하기</span></button>";    
                }else{
                    cateStr = cateStr + "<button class=\"btn btn-like\" data-brnd-cd =\""+data.brndList[i].brndCd+"\" data-brnd-nm =\""+data.brndList[i].brndNm+"\" onClick=\"javascript:fnBranChoice('"+data.brndList[i].brndCd+"','" + data.brndList[i].brndNm +"',event);\"><i class=\"icon\"></i><span class=\"hiding\">찜하기</span></button>";
                }  
                cateStr = cateStr + "</li>";
            }    
            specialContents.append(cateStr);
        }
    });
}
/* 대표브랜드 이동 */
$(document).on('click', '#brand-list li', function() {
    var brndSrchTyp = $(this).find('.btn-like').data('brnd-cd') + ' ' + $(this).find('.btn-like').data('brnd-nm');
    fnBrndSrchMove(brndSrchTyp);
});

/* 대표브랜드 이동 */
function goBrnUrl(obj){
    var brndSrchTyp = $(this).find('.btn-like').data('brnd-cd') + ' ' + $(this).find('.btn-like').data('brnd-nm');
    //console.log($(this).parent().length);
    //console.log('brndSrchTyp :' + brndSrchTyp);
    return false;
    fnBrndSrchMove(brndSrchTyp);
};

//브랜드 검색화면으로 이동하는 함수
function fnBrndSrchMove(srchBrndCd){
    var brndNm = srchBrndCd.split(' ')[1];
    var pathVal = "브랜드검색_" + brndNm;
    $("form[name='brndSearchMoveForm']").find("input[name='srchBrndCd']").val(srchBrndCd);
    $("form[name='brndSearchMoveForm']").submit();
}

/* 검색어 삭제 버튼 */
function brnClear(){
    
	$("input[name='brndTp']").val('');
    $("input[name='brndTp']").focus();
    $(".result-brand").attr('style', 'display:none');
    $(".recommend-brand").attr('style', 'display:block');
    $("#CEOBrndSearchClear").hide();
};

function CEOBrndSearchBtn(){
	var p = $("input[name='brndTp']").val();
    p = p.toUpperCase();
    
	if(p.length > 0){
	    $.ajax({
	        url: "/p/smBrndSearchAjax.do"
	        , type: "get"
	        , dataType: "json"
	        , async: true
	        , data: {  brndSearchTxt : p
	            /* brndSearchTxt : brndSearchTxt, brndSearchVal : brndSearchVal */
	        }
	        , success: function(data) {
	            ajaxBrndResult(data, p)
	            sessionStorage.setItem('brndTp', p);
	            sessionStorage.setItem('srchVal', '');
	            sessionStorage.setItem('srchValId', '');
	        }
	    });
	}else{
		alert("검색어를 입력해주세요");
	}
}

/*검색박스에 브랜드명 입력시 ajax*/
$("input[name='brndTp']").keyup(function(e){
    /*검색박스에 입력된 검색어를 가져온다*/
    var p = $("input[name='brndTp']").val();
        p = p.toUpperCase();
        
    if(p.length > 0){
    	$("#CEOBrndSearchClear").show();
        $.ajax({
            url: "/p/smBrndSearchAjax.do"
            , type: "get"
            , dataType: "json"
            , async: true
            , data: {  brndSearchTxt : p
                /* brndSearchTxt : brndSearchTxt, brndSearchVal : brndSearchVal */
            }
            , success: function(data) {
                ajaxBrndResult(data, p)
                sessionStorage.setItem('brndTp', p);
                sessionStorage.setItem('srchVal', '');
                sessionStorage.setItem('srchValId', '');
            }
        });
    }else{
    	$("#CEOBrndSearchClear").hide();
        $(".result-brand").attr('style', 'display:none');
        $(".recommend-brand").attr('style', 'display:block');
    }
    return false;
});

/*브랜드검색 비동기호출 함수*/
function ajaxBrndResult(result, srchTxt){
    /* search-list */
    $(".result-brand .title strong").text("'"+srchTxt+"' 검색결과");
    $("#hangulSrchResult").empty();
    var ulText = $("#hangulSrchResult");
    var qs_text = result;
    var liText = "";
    if (qs_text.brndList.length > 0){
        $(".recommend-brand").attr('style', 'display:none');
        $(".result-brand").attr('style', 'display:block');
        $(".result-brand em").text(qs_text.brndList.length);
        for ( var i=0; i< qs_text.brndList.length ; i++){
            var brndNmTxt = qs_text.brndList[i].brndNm.replace(srchTxt,'<strong class="keyword">'+srchTxt+'</strong>');
             liText += '<li><a href="javascript:fnBrndSrchMove(\''+qs_text.brndList[i].brndCd + " " + qs_text.brndList[i].brndNm + '\');"><span class="search-text">'+brndNmTxt+'</span></a>';
             if(qs_text.brndList[i].brndJjimCnt > 0){
                liText += '<button class="btn btn-like active" data-brnd-cd ="'+qs_text.brndList[i].brndCd+'" data-brnd-nm ="'+qs_text.brndList[i].brndNm+'" onClick="javascript:fnBranChoice(\''+qs_text.brndList[i].brndCd+ "'\,\'" + qs_text.brndList[i].brndNm +'\',event);"><i class="icon"></i><span class="hiding">찜</span></button></li>';
            }else{
                liText += '<button class="btn btn-like" data-brnd-cd ="'+qs_text.brndList[i].brndCd+'" data-brnd-nm ="'+qs_text.brndList[i].brndNm+'" onClick="javascript:fnBranChoice(\''+qs_text.brndList[i].brndCd+ "'\,\'" + qs_text.brndList[i].brndNm +'\',event);"><i class="icon"></i><span class="hiding">찜</span></button></li>';
            }
        }
        $(".nodata").attr('style', 'display:none');
        $(ulText).append(liText);
    }else{
        $(".recommend-brand").attr('style', 'display:none');
        $(".result-brand").attr('style', 'display:block');
        $(".result-brand em").text('0');
        $(".nodata").attr('style', 'display:block');
        $(".nodata").css('display', 'inline-flex');
    }
}

//브랜드 찜 함수
function fnBranChoice(brndCd, brndNm, event){
    if(event.stopPropagation) {
        event.stopPropagation(); // FF
    } else {
        event.cancelBubble=true; // IE
    }
    if(!event.preventDefault){
         event.returnValue = false; //IE
      } else {
         event.preventDefault();
    }
    
    if(custNo == null || custNo == '') {
        if(confirm("브랜드 찜을 하기 위해 로그인이 필요합니다.\n로그인 하시겠습니까?")){
             openLoginPopup('');
        }
        return false;
    }
    $.ajax({
        type: "post"
        ,url: "/p/brndGgimP.do"
        ,data: { "brndCd" : brndCd }
        ,async: true
        ,dataType: 'jsonp'
        ,crossDomain: true
        ,success : function(data) {
            if (data.ActorError == "false") {
                var pathVal = "브랜드검색_찜_" + brndNm;
                $(event.target).parent('button').addClass("active");
                $("[data-brnd-cd='"+brndCd+"']").addClass('active');
                alert(data.ErrorMessage);
            }
            else {
                var pathVal = "브랜드검색_찜_취소_" + brndNm;
                $(event.target).parent('button').removeClass("active");
                $("[data-brnd-cd='"+brndCd+"']").removeClass('active');
                alert(data.ErrorMessage);
            }
        }
    });
}

</script>

		<form name="registMemberForm" method="post">
			<input type="hidden" name="email" value=""> <input
				type="hidden" name="emailCertNo"> <input type="hidden"
				name="langType" value="korean">

			<!-- 전자상거래 규제 개선 -->
			<input type="hidden" name="isOverseasSectPup" value="N"> <input
				type="hidden" name="popupYn" value="N"> <input type="hidden"
				name="redirectUrl" value=""> <input type="hidden"
				name="errorMessage" value=""> <input type="hidden"
				name="token"> <input type="hidden" name="snsType">
		</form>

		<script type="text/javascript">
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) {return;}
		js = d.createElement(s); js.id = id;
		js.src = "//connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

	window.fbAsyncInit = function() {
		FB.init({
			appId      : '532674750212632',
			cookie     : true,
			status     : true,
			xfbml      : true,
			version    : 'v3.2'
		});
	};

	function fbLogin() {
		var pathVal = "^헤더^마이페이지 레이어^페이스북 로그인";

		try {
			_trk_flashEnvView('_TRK_CP=' + pathVal);
		} catch(e){}

		//현재 페이스북 로그인 여부 확인 후 FB.login fuction 호출 여부 구분
		FB.getLoginStatus(function(response){

			if(response.status == "connected") {
				var token = response.authResponse.accessToken;
				FB.api('/me', {fields: 'email'}, function(response){
					//opener.name = "parent";
					if(response.email !== undefined){
						var form = $("form[name='registMemberForm']")[0];
						//form.target = opener.name;
						form.setAttribute("action", "https://www.hmall.com/p/cob/snsAuth.do");

						$("input[name='token']").val(token);
						$("input[name='snsType']").val("10");

						form.submit();
						showLoadingBar("180px", "150px");
					}
					else{
						// 페이스북 가입 마지막 단계(가입확인 메일 체크) 확인 안한 계정 로그인시
						alert("check your confirmation email");
					}
					//window.close();
				});
			}else {
				FB.login(function(response){
					if(response.authResponse){
						var token = response.authResponse.accessToken;
						FB.api('/me', {fields: 'email'}, function(response){
							//opener.name = "parent";
							if(response.email !== undefined){
								var form = $("form[name='registMemberForm']")[0];
								//form.target = opener.name;
								form.setAttribute("action", "https://www.hmall.com/p/cob/snsAuth.do");

								$("input[name='token']").val(token);
								$("input[name='snsType']").val("10");

								form.submit();
								showLoadingBar("180px", "150px");
							}
							else{
								// 페이스북 가입 마지막 단계(가입확인 메일 체크) 확인 안한 계정 로그인시
								alert("check your confirmation email");
							}
							//window.close();
						});
					}
				}, {scope: 'email'});
			}
		});
	}
</script>

		<script type="text/javascript">
	function naverLogin() {
		var pathVal = "^헤더^마이페이지 레이어^네이버 로그인";

		try {
			_trk_flashEnvView('_TRK_CP=' + pathVal);
		} catch(e){}

		var returnURL = "";
		var redirect_uri ='https://www.hmall.com';
		/* if(returnURL.indexOf("&") > -1){
            returnURL = returnURL.replace(/&amp;/g,"||");
        } */

		var gnbLoginYn = "Y";
		redirect_uri += '/p/cob/naverLoginChk.do?gnbLoginYn=' + gnbLoginYn + '&returnUrl=' + returnURL;

		var url = "/p/cob/naverLogin.do?redirect_uri=" + encodeURIComponent(redirect_uri);
		var popName = "NaverLogin";
		var popOption = "height=760, width=795, fullscreen=no, location=no, scrollbars=no, menubar=no, toolbar=no, titlebar=no, directories=no, resizable=no, top=0, left=0, status=no";
		window.open(url, popName, popOption);
	}
	
	loadPCdirect();
	ajaxCallback();
</script>

		<script type="text/javascript" defer="defer">
	(function() {
		function gaUseWinload() {
			//for google analytics click event
			useWinload();
		}
		if (window.attachEvent) {
			window.attachEvent('onload', gaUseWinload);
		} else {
			window.addEventListener('load', gaUseWinload, false);
		}
	})();
</script>
		<!--//header -->


		<!-- full 배경이 들어간 구조 bgcmain -->
		<main class="cmain bgcmain" role="main" id="mainContents">
			<div class="container">
				<input type="hidden" name="giftOrderYn">

				<div class="cbody">
					<div class="contents">
						<div class="csection">
							<div class="cart-area">
								<div class="cart-head">
									<div class="cart-top">
										<div class="cart-all">
											<strong>장바구니</strong> <span>(<em class="cart-count">${ basketList.size() }</em>)
											</span>
										</div>
										<ol class="cart-list-num">
											<li class="active">
												<!-- active일 경우 style 변경 --> <strong>01</strong> <span>장바구니</span>
											</li>
											<li><strong>02</strong> <span>주문서작성</span></li>
											<li><strong>03</strong> <span>주문완료</span></li>
										</ol>
										<!-- 가격이 내려간 상품이 있을 경우 노출 -->
										<div class="toast arrtl bgc" style="display: none;">
											<p>가격이 내려간 상품이 있습니다</p>
											<button type="button" class="btn-close">
												<i class="icon"></i><span class="hiding">닫기</span>
											</button>
										</div>
									</div>
									<div class="cart-bottom">
										<div class="btngroup">
											<button type="button" class="btn btn-cart-del"
												onclick="deleteAllBasket();">
												<i class="icon cart-del"></i><span>장바구니 비우기</span>
											</button>
											<button type="button" class="btn btn-cart-set lyopen"
												data-modules-modal="target:#cartAlarm;">
												<i class="icon cart-set"></i><span>알림설정</span>
											</button>
										</div>
									</div>
								</div>
								<!-- //.cart-head -->

								<div class="cart-body">

									<!-- 품절체크 -->

									<!-- 장바구니에 담긴 상품이 있을 경우 -->
									<c:if test="${ basketList.size() > 0 }">

										<form action="#" name="totBasktForm" method="post"
											onsubmit="return false;">

											<!-- 일반상품 -->
											<div class="shipping-listwrap" aria-label="일반상품">
												<div class="cart-check">
													<div class="checkbox">
														<label class="chklabel"><input type="checkbox"
															name="all" id="gen"
															onclick="check(this, 'gen', 'all', '');"><i
															class="icon"></i><span>일반상품</span></label> <span
															class="cart-count">(<strong>${ basketList.size() }</strong>/<em>${ basketList.size() }</em>)
														</span>
													</div>
													<!-- <button type="button" class="btn btn-linelgray sm"
													ㄴ	onclick="deleteBasktItem(this)">
														<span>선택삭제</span>
													</button> -->
												</div>
												<!-- //.cart-check -->

												<%
													ProductDAO productDAO = ProductDAO.getInstance();
													ProductVO product = null;
												%>
												<!-- 초기화 -->
												<c:forEach var="basket" items="${ basketList }">
													<c:set var="pCode" value="${ basket.productCode }"></c:set>
													<%
														int pCode = (int) pageContext.getAttribute("pCode");
														product = productDAO.getProduct(pCode);
													%>
													<div class="shipping-list" id="gen">
														
														<!-- .pdwrap -->
														<div class="pdwrap pdlist ml" style="display:;"
															id="004438_000000_13">
															
															<input type="hidden" id="exclItemTrgtGbcd_2076649377"
																name="exclItemTrgtGbcd" value=""> <input
																type="hidden" id="slitmNm_2076649377" name="slitmNm"
																value="<%=product.getProductName()%>"> <input
																type="hidden" name="slitmCd"
																value="<%=product.getProductCode()%>">

															<!-- 새벽배송/신선식품 추가 20180705 특화배송조유진 -->
															<input type="hidden" name="ordAgreeInf"
																value="<%=product.getProductName()%>"> <input
																type="hidden" name="uitmCdInfPup"
																value="<%=product.getProductName()%>">
															<input type="hidden" name="venCd" value="004438">
															<input type="hidden" name="cardEventYn" value="">
															<input type="hidden" name="basktGbcd" value="02">
															<input type="hidden" name="brand"
																value="<%=product.getBrand()%>">

															<div class="checkbox">
																<label class="chklabel"><input type="checkbox"
																	name="basktInf" value="2076649377|00001|0|${ basket.amount }|<%=product.getDiscountPrice()%>"
																	onclick="check(this, 'gen', '2076649377', '00001');"><i
																	class="icon"></i><span><%=product.getProductName()%></span></label>
															</div>
															<!-- 장바구니 삭제 (박주영) -->
																<input type="hidden" name="sbNo" value="${ basket.sbNo }">
																<button class="btn btn-cart-del" onclick="deleteBasket();">
																	<i class="icon cart-del"></i>
																	<span class="hiding">삭제</span>
																</button>
															
															
															<div class="pdlist-wrap">
																<div class="pditem">
																	<figure class="pdthumb">
																		<a
																			href="HmallServlet?command=productDetail&pCode=<%=product.getProductCode()%>">
																			<div class="thumb">
																				<img
																					src="product_images/<%=product.getProductImg()%>.jpg?RS=120x120&amp;AR=0"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=120x120&amp;AR=0')">
																			</div>
																		</a>
																		<figcaption>
																			<a
																				href="HmallServlet?command=product_detail&pCode=<%=product.getProductCode()%>">
																				<div class="pdprice">

																					<!-- TODO 곽희섭 20170608 통합포인트 추가 -->


																					<input type="hidden" name="sellPrc"
																						value="<%=product.getPrice()%>"> <input
																						type="hidden" name="bbprc"
																						value="<%=product.getDiscountPrice()%>">


																					<ins class="normal" aria-label="정상가">
																						<em> <fmt:formatNumber
																								value="<%=product.getDiscountPrice()%>"
																								pattern="#,###" />
																						</em><b>원</b>
																					</ins>



																				</div>
																				<div class="benefits">

																					<span>무료배송</span>



																					<!-- 카드즉시할인KJH -->

																				</div>



																				<div class="pdoption" aria-label="옵션/수량">
																					<span class="count">수량: <em>${ basket.amount }개</em></span>
																				</div>
																			</a>
																		</figcaption>
																		<div class="pdlike">
																			<a href="javascript:;"
																				onclick="zzimItem(this, '2076649377', '00001');"
																				class="btn btn-like" id="zzim_2076649377:00001"><i
																				class="icon"></i><span class="hiding">찜</span></a>
																		</div>
																	</figure>
																</div>
																<!-- //.pditem -->

																<!-- gifts-area : 필수사은품 -->

																<!-- //.gifts-area -->

																<!-- btngroup: 수량,속성변경 / 선물하기 / 스토어픽 구매 / 바로구매 -->
																<div class="btngroup">
																	<div class="pdfunc">
																		<button type="button"
																			class="btn btn-linelgray sm btn-prop"
																			id="optBtn_2045598435_00001"
																			onclick="showChgUitmPup(this, '2045598435', '00001', 0, 18900, '');">
																			<span>수량변경</span><i class="icon"></i>
																		</button>
																	</div>



																	<button type="button" class="btn btn-default"
																		onclick="setGiftOrder('N');buyDirect(this);"
																		id="buyDirectBtn_2076649377">
																		<span>바로구매</span>
																	</button>

																</div>
																<!-- // btngroup: 수량,속성변경 / 선물하기 / 스토어픽 구매 / 바로구매 -->

																<!-- 속성변경 옵션 class=selected 추가하면 활성화 됨 -->
																<div class="prop-change selected"
																	id="chgUitmLayer_2045598435_00001">

																	<input type="hidden" name="slitmCd" value="<%=product.getProductCode()%>">
																	<input type="hidden" name="uitmCd" value="00001">
																	<input type="hidden" name="uitmCombYn" value="">

																	<input type="hidden" name="uitmSellPrc" value="<%=product.getDiscountPrice()%>">


																	<input type="hidden" name="dluMaxBuyQtyCnt" value="999">
																	<input type="hidden" name="lwstBuyQtyCnt" value="0">
																	<div class="optgroup">

																		<strong><%=product.getProductName()%></strong>

																		<div class="quantity" id="uitm">
																			<input type="hidden" name="uitmCd" value="00001">
																			<div class="count">
																				<button type="button" class="btn btn-minus"
																					aria-label="수량 감소" onclick="uitmMinus(this, '0')">
																					<i class="icon"></i><span class="hiding">감소</span>
																				</button>
																				<div class="inputbox">
																					<label class="inplabel"><input
																						type="number" name="ordQty" maxlength="2"
																						value="${ basket.amount }" onkeyup="uCheckOrdQty(this,'999', '0')"
																						title="입력하세요"></label>
																				</div>
																				<button type="button" class="btn btn-plus"
																					aria-label="수량 증가" onclick="uitmPlus(this, '999')">
																					<i class="icon"></i><span class="hiding">증가</span>
																				</button>
																			</div>
																			<div class="pdprice">
																				<input type="hidden" name="sellPrc" value="<%=product.getDiscountPrice()%>">
																				<ins aria-label="가격">
																					<em>
																					<!-- 총 가격 계산을 위해 가격 변수로 선언 (박주영) -->
																					<c:set var="price" value="<%=product.getDiscountPrice()%>"></c:set>
																					<fmt:formatNumber
																								value="${ price * basket.amount }"
																								pattern="#,###" /></em><b>원</b>
																				</ins>
																				<button type="button" class="btn-delete"
																					onclick="removeUitmRow(this);">
																					<i class="icon"></i><span class="hiding">삭제</span>
																				</button>
																			</div>
																		</div>



																	</div>
																	<div class="btngroup">
																		<button type="button"
																			class="btn btn-linelgray small30"
																			onclick="$('#optBtn_2045598435_00001').toggleClass('selected');$('#chgUitmLayer_2045598435_00001').toggleClass('selected');">
																			<span>취소</span>
																		</button>
																		<!-- 변경적용 클릭 시 DB amount update -->
																		<button type="button"
																			class="btn btn-linelgray small30"
																			onclick="updateBasket(this);">
																			<%-- onclick="changeBasktItemUitmInf(${ basket.productCode }, '00001');"> --%>
																			<span>변경적용</span>
																		</button>
																	</div>
																</div>
																<!-- //.prop-change -->


															</div>
															<!-- //.pdlist-wrap -->
														</div>

														<!-- //.pdwrap -->
													</div>
												</c:forEach>
												<!-- //.shipping-list -->
											</div>

											<!-- //.shipping-listwrap  일반상품 -->
										</form>

									</c:if>


								</div>
								<!-- //.cart-body -->

								<c:if test="${ basketList.size() == 0 }">
									<!-- 장바구니에 담긴 상품이 없을 경우 -->
									<div class="nodata">
										<span class="bgcircle"><i class="icon nodata-type7"></i></span>
										<p>
											<span>장바구니에 담긴 상품이 없습니다.</span>
										</p>
									</div>
								</c:if>

								<!-- //.no-data -->

							</div>
							<!-- //.cart-area -->
						</div>
						<!-- //.csection -->

						<!-- 상품리스트에 하나라도 체크되면 활성화됨 -->
						<div class="sticky-ui-wrapper util-option-sticky">
							<div class="sticky-placeholder" style=""></div>
							<div class="util-option sticky"
								data-modules-sticky="padding:-40;breakPoint:.container;className:util-option-sticky;"
								style="">
								<div class="sticky-inner">
									<div class="result">
										<p class="sel-tit">
											선택한 상품<span>(<em id="selCnt">0</em>)
											</span>
										</p>
										<p>
											<strong>상품금액</strong>
											<ins>
												<em id="selSlitmAmt">0</em><b>원</b>
											</ins>
										</p>
										<!-- <p class="sale"><strong>할인</strong><ins><em class="off">0</em><b>원</b></ins></p>-->
										<p class="ship-fee">
											<strong>배송비</strong>
											<ins>
												<em id="selDlvAmt">0</em><b>원</b>
											</ins>
										</p>
										<!-- 선택한 상품이 없을 경우 em에 class="off" 붙여주세요.  -->
									</div>
									<div class="total-price">
										<a href="javascript:;" class="btn-total"><span>총 주문
												금액</span></a>
										<ins>
											<em id="selOrdAmt">0</em><b>원</b>
										</ins>
									</div>
									<div id="uobtnprsnbox" class="btngroup _gift"
										style="display: none;">
										<button class="btn btn-linelgray"
											onclick="setGiftOrder('Y');orderSelect();">
											<span>선물하기</span>
										</button>
										<button class="btn btn-purchase"
											onclick="setGiftOrder('N');orderSelect();">
											<span>바로구매</span>
										</button>
									</div>
									<div id="uobtnbox" class="btngroup">
										<button type="button" class="btn btn-purchase"
											onclick="setGiftOrder('N');orderSelect();">
											<span>선택상품 구매하기</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<!-- //.util-option -->

					</div>
					<!-- //.contents -->

					<!--product-content-->
					<div class="product-content">
						<div class="product-area">

							<div class="article produt-slide">
								<h3 class="major-headings">이 상품 지금 딱!</h3>
								<div class="pdwrap xllist">
									<div class="pdlist-wrap">


										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2076649377&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2076649377_[10%쿠폰] 씨스팡 관절팔팔 12주분 (6박스) + 혈관팔팔 1박스(15일분) 증정"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/3/9/64/76/2076649377_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[10%쿠폰] 씨스팡 관절팔팔
														12주분 (6박스) + 혈관팔팔 1박스(15일분) 증정</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>152,910</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2086121835&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2086121835_[렌탈] LG전자 정수기 外 (상품권 최대 30만원)"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/8/1/12/86/2086121835_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[렌탈] LG전자 정수기 外
														(상품권 최대 30만원)</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>1,254,000</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2137805052&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2137805052_[H몰 한정]해피바스 퍼퓸 바디워시 900G 4입+500G 순한바디워시 증정"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/0/5/80/37/2137805052_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[H몰 한정]해피바스 퍼퓸
														바디워시 900G 4입+500G 순한바디워시 증정</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>17,800</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2130344685&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2130344685_[안신애패치]아웃도어 비타토닝 패치/대형12회분+일반형12회분"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/6/4/34/30/2130344685_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[안신애패치]아웃도어 비타토닝
														패치/대형12회분+일반형12회분</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>35,520</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2139428977&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2139428977_[SHOW] 셀티바 엘라스틴 데스모신 6박스+엘라스틴 1박스+어린콜라겐 2박스"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/9/8/42/39/2139428977_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[SHOW] 셀티바 엘라스틴
														데스모신 6박스+엘라스틴 1박스+어린콜라겐 2박스</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>198,000</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2079392415&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2079392415_[까사미아] 이사/혼수에 딱~ 소파/거실장 모음전"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/4/2/39/79/2079392415_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[까사미아] 이사/혼수에 딱~
														소파/거실장 모음전</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>1,332,380</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2108547422&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2108547422_[뉴트리원] 윤아 비비랩 저분자피쉬콜라겐 파우더 6통(6개월분) /잠들기전한포"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/4/7/54/08/2108547422_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[뉴트리원] 윤아 비비랩
														저분자피쉬콜라겐 파우더 6통(6개월분) /잠들기전한포</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>79,900</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2104040174&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2104040174_[트렌드라인 for casamiashop] 레슬리 원목침대(매트제외 SS)"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/1/0/04/04/2104040174_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[트렌드라인 for
														casamiashop] 레슬리 원목침대(매트제외 SS)</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>236,550</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>


									</div>
									<!-- //.pdlist-wrap -->
								</div>
								<!-- //.pdwrap -->
							</div>


							<!-- 오늘의 추천상품 : 메인 내 오늘추천 탭의 전체 카테고리 상품  -->

							<div class="article produt-slide">
								<h3 class="major-headings">오늘의 추천 상품</h3>
								<div class="pdwrap xllist">
									<div class="pdlist-wrap">


										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2045598435&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="오늘의 추천 상품"
												ga-custom-creative="2045598435_(다운쿠폰)[웅진]빅토리아 탄산수 500mlx40펫 택2"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/4/8/59/45/2045598435_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">(다운쿠폰)[웅진]빅토리아
														탄산수 500mlx40펫 택2</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>18,900</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2013924818&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="오늘의 추천 상품"
												ga-custom-creative="2013924818_(MD추천)[정식품]그린비아 식사대용/환자식 모음전"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/8/4/92/13/2013924818_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">(MD추천)[정식품]그린비아
														식사대용/환자식 모음전</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>34,900</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2097543347&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="오늘의 추천 상품"
												ga-custom-creative="2097543347_[산과들에]인기 하루한줌견과 100봉/ 신상품 코코너츠화이트 100봉 / 요거트 건포도"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/3/3/54/97/2097543347_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[산과들에]인기 하루한줌견과
														100봉/ 신상품 코코너츠화이트 100봉 / 요거트 건포도</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>28,900</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2123049756&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="오늘의 추천 상품"
												ga-custom-creative="2123049756_(MD추천)롯데칠성 아이시스 ECO 무라벨 2.0L x 6개"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/7/9/04/23/2123049756_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">(MD추천)롯데칠성 아이시스
														ECO 무라벨 2.0L x 6개</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>7,000</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>


									</div>
									<!-- //.pdlist-wrap -->
								</div>
								<!-- //.pdwrap -->
							</div>

							<!-- //오늘의 추천상품 : 메인 내 오늘추천 탭의 전체 카테고리 상품  -->

							<!-- .produt-slide : 내 장바구니와 유사한 장바구니에 담긴 다른 상품 -->
							<div class="article produt-slide hidden" id="rcmm1">
								<h3 class="major-headings">내 장바구니와 유사한 장바구니에 담긴 다른 상품</h3>
								<!-- 장바구니에 담긴 상품이 없을 시 텍스트 변경 : 이 상품 지금 딱!-->
								<div class="pdwrap xllist"></div>
								<!-- //.pdwrap -->
							</div>
							<!-- //.produt-slide : 내 장바구니와 유사한 장바구니에 담긴 다른 상품 -->

							<!-- .produt-slide :  장바구니 상품과 동일한 카테고리 베스트 셀러 -->
							<div class="article produt-slide hidden" id="rcmm2">
								<h3 class="major-headings">함께 구매하면 좋은 상품</h3>
								<!-- 장바구니에 담긴 상품이 없을 시 텍스트 변경 : 지금 인기 많은 상품 -->
								<div class="pdwrap xllist"></div>
								<!-- //.pdwrap -->
							</div>
							<!-- //.produt-slide : 장바구니 상품과 동일한 카테고리 베스트 셀러 -->
						</div>
					</div>
					<!--product-cotent-->
				</div>
				<!-- //.cbody -->

				<!-- cfoot -->
				<div class="cfoot">
					<div class="contents">
						<div class="cart-info">
							<h3 class="major-headings">장바구니 이용안내</h3>
							<div class="cart-infocnt" role="region" aria-label="장바구니 이용안내">
								<h4 class="subheadings">장바구니 보관 안내</h4>
								<ul class="dotlist">
									<li>장바구니에 담긴 상품은 1달 동안 보관됩니다. 더 오래 보관 하시려면 "찜"에 저장해 주시기
										바랍니다.</li>
									<li>장바구니에 보관 된 상품이라 해도, 가격이나 혜택이 변동 될 수 있으니 주문하시기 전에 다시 한번
										확인하시기 바랍니다.</li>
									<li>상품에 따라 반품이나 교환 시 별도로 배송비가 청구되는 경우가 있습니다.</li>
								</ul>
								<h4 class="subheadings">무이자 할부 이용 안내</h4>
								<ul class="dotlist">
									<li>상품상세 페이지나 장바구니에 기재된 무이자할부 개월수는 해당상품을 단독 구매할 경우 적용되는
										조건입니다.</li>
									<li>여러종류의 상품을 함께 구매 할 경우, 보다 낮은 개월 수 의 무이자 할부가 적용됩니다.</li>
									<li>무이자할부 대상이 아닌 상품을 함께 구매 할 경우, 무이자 할부가 적용되지 않습니다.</li>
									<li>일부 특가상품은 무이자 할부 대상에서 제외되며 또한 각 상품별로 무이자 할부 개월수가 상이하오니,
										최종 결제 페이지에서 무이자 할부 개월수를 다시 한번 확인하시기 바랍니다.</li>
									<li>상품별로 무이자할부 혜택을 받고 싶으시다면, 개별 주문 부탁드립니다.</li>
								</ul>
							</div>
							<!-- //.cart-infocnt -->

						</div>
						<!-- //.cart-info -->
					</div>
				</div>
				<!-- //.cfoot -->

			</div>
			<!-- //.container -->
		</main>
		<!-- //.cmain -->

		<form id="productModifyForm" action="#" method="post"></form>
		<form id="goBasktList"
			action="https://www.hmall.com/p/odb/basktList.do" method="post"></form>
		<form id="orderForm"
			action="https://www.hmall.com/p/oda/orderRedirect.do" method="post"></form>
		<form id="deleteForm" method="post"></form>



		<script type="text/javascript">
// 20201202 footer script 오류로... 임시!
//$(window).on("load", function() {

/* [UX-147]추천 알고리즘  비 활성화 처리*/
// 	if ( 0 > 0 ) {
//      cartRcmm("similarCart", "");
//      cartRcmm("together");
//  } else {
//      cartRcmm("similarPrsn");
//  }
//});
</script>

		<!-- 페이지 footer -->
		<%@ include file="../footer.jsp"%>

		<script type="text/javascript" defer="defer">
		(function() {
		    function injectScript() {
		        var _TRK_InSc = document.createElement('script');
		        _TRK_InSc.type = 'text/javascript';
		        _TRK_InSc.async = true;
		        _TRK_InSc.src = '//image.hmall.com/p/js/co/901_Insight_WebAnalytics.js';
		        document.body.appendChild(_TRK_InSc);
		        
		        
		        var _TRK_InTagSc = document.createElement('script');
		        _TRK_InTagSc.type = 'text/javascript';
		        _TRK_InTagSc.async = true;
		        _TRK_InTagSc.src = '//image.hmall.com/p/js/co/tagging.collector-1.3.min.js';
		        document.body.appendChild(_TRK_InTagSc);
		    }
		    if (window.attachEvent) {
		        window.attachEvent('onload', injectScript);
		    } else {
		        window.addEventListener('load', injectScript, false);
		    }
		})();
	</script>
		<script>
		function bizSpringPopTag(url, pathVal){
		   	try {
		   		_trk_flashEnvView('_TRK_CP=' + pathVal); 
			} catch(e){}
			
			url = url.replace(/ /g,'');
		    if(url != "" && url != undefined){
		    	window.open(url);
		    }
		}

	</script>
		<!-- 2019.04.29 Facebook Pixel Code 삽입 -->
		<script>
      !function(f,b,e,v,n,t,s)
      {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
      n.callMethod.apply(n,arguments):n.queue.push(arguments)};
      if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
      n.queue=[];t=b.createElement(e);t.async=!0;
      t.src=v;s=b.getElementsByTagName(e)[0];
      s.parentNode.insertBefore(t,s)}(window, document,'script',
      'https://connect.facebook.net/en_US/fbevents.js');
      fbq('init', '307742333494098');
      fbq('track', 'PageView');
    </script>
		<noscript>
			<img height="1" width="1" style="display: none"
				src="https://www.facebook.com/tr?id=307742333494098&ev=PageView&noscript=1" />
		</noscript>
		<!-- End Facebook Pixel Code -->

		<!-- Naver Premium Log -->
		<script type="text/javascript">
        var _NGUL = "wcs.naver.net/wcslog.js";
        var _NPR = location.protocol=="https:"?"https://"+_NGUL:"http://"+_NGUL;
        document.writeln("<scr"+"ipt type='text/ja"+"vascript' src='"+ _NPR +"'></scr"+"ipt>");
    </script>
		<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>


		<script type="text/javascript">
        if(!wcs_add) var wcs_add = {};
        wcs_add["wa"] = "s_5117770cb5ce";    // 네이버프리미엄로그 키값 변경(이호정선임) -> PC/MO 도메인 통일로 같은 값 사용(기존 : s_33f688a7b8a5)

        if (!_nasa) var _nasa={};

        wcs.inflow();
        wcs_do(_nasa);
    </script>
		<!-- End Naver Premium Log -->

		<!-- Google analytics -->
		<script type="text/javascript"
			src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=041116"></script>
		<script type="text/javascript"
			src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=041116"></script>

		<script type="text/javascript">


var oneClickFlag = 0;
function setDimension(){
	
	if(oneClickFlag != 0){
        return false;
    }
	
	oneClickFlag = 1;
    
    if(location.pathname.indexOf("/p/cob/memberLogin.do") > -1){
        return;
    }
	var GA_info = {};
	
	
	GA_info = setDimenData(GA_info);

	
	GA_Init(GA_info);

    
    if(location.pathname.replace("//", "/") == '/m/pda/smItemDetailR.do' || location.pathname.replace("//", "/") == '/p/pda/itemPtc.do' && pdaItemPtcCnt == 0){
    	pdaItemPtcCnt = 1;
        var	product_array = [];
        product_array.push(
            {
                'id':'',
                'name':'',
                'brand': '',
                'category' : '',
                'dimension51': 'default',
                'dimension52':'',
                'dimension53':'',
                'dimension54':'',
                'dimension55':'',
                'dimension56':'',
                'dimension57':'',
                'dimension58':'',
                'dimension59':'',
                'dimension60':'',
                
                'dimension62':'',
                'dimension63':'',
                'dimension64':''
            }
        );

        var ecommerce_hit = new Object();
        ecommerce_hit[GAHitKey.NonInteraction] = '1';
        var action_obj = new Object();

        
        GADataSend_Ecommerce(GAEcommerceStepKey.Detail, action_obj, product_array, ecommerce_hit);

    }else if(location.pathname == '/p/oda/orderComplete.do' && ordCompleteCnt == 0){
    	ordCompleteCnt = 1;
        var	product_array = [];
        
        

        var ecommerce_hit = new Object();
        ecommerce_hit[GAHitKey.NonInteraction] = '1';
        ecommerce_hit[GAHitKey.currencyCode] = 'KRW';
        
        

        ecommerce_hit[GACustomKey.Metric1] = 0;
        
        ecommerce_hit[GACustomKey.Metric2] = 0;
        
        
        ecommerce_hit['dimension74'] = '';
        ecommerce_hit['dimension75'] = '';



        var action_obj = new Object();
        action_obj[GAActionFieldKey.TransactionID]='';
        action_obj[GAActionFieldKey.TransactionRevenue]='0';
        action_obj[GAActionFieldKey.TransactionShipping]='0';
        
        action_obj[GAActionFieldKey.TransactionCouponCode]='';






        
        GADataSend_Ecommerce(GAEcommerceStepKey.Purchase, action_obj, product_array, ecommerce_hit);
        oneClickFlag = 0;
    }
}


function setDimenData(GA_info){
	var _ga = getCookieGA('_ga');
	if(_ga != null){
		GA_info[GACustomKey.Dimension1] = _ga;
	}

	var uid = "";
    if(getCookieGA('ENCEHCustNO') != null && getCookieGA('ENCEHCustNO') != ""){
    	uid = getCookieGA('ENCEHCustNO');
    }
	
	if(uid == "" || uid.length != 32){
        
    }else{
		GA_info[GACustomKey.Dimension2] = uid;
        GA_info[GAHitKey.UserId] = uid;

        
	}

     GA_info[GACustomKey.Dimension3] = "20220411"; 
     GA_info[GACustomKey.Dimension4] = "일반"; 
    
    	GA_info[GACustomKey.Dimension6] = "N"; 
     GA_info[GACustomKey.Dimension7] = "N"; 
    
     GA_info[GACustomKey.Dimension9] = "20220411"; 
    
    var _gaid = getCookieGA('GAID');
    if(_gaid != null){GA_info[GACustomKey.Dimension11] = _gaid;}
    
        GA_info[GACustomKey.Dimension12] = "Y";
        GA_info[GACustomKey.Dimension24] = "5";
    
    
     GA_info[GACustomKey.Dimension13] = "U"; 
     GA_info[GACustomKey.Dimension14] = "2"; 
     GA_info[GACustomKey.Dimension15] = "실버"; 

     GA_info[GACustomKey.Dimension22] = "기타"; 
    
    
    
    
    
    
     GA_info[GACustomKey.Dimension30] = "N"; 
    
     GA_info[GACustomKey.Dimension37] = "0"; 
     GA_info[GACustomKey.Dimension38] = "N"; 
    
    
     GA_info[GACustomKey.Dimension41] = "PCWEB"; 
     GA_info[GACustomKey.Dimension47] = "N"; 
    

    if(location.pathname == '/p/pde/search.do'){
        
        
        
        
        
        GA_info[GACustomKey.Dimension19] = "N";
        
        
    }

	GA_info[GACustomKey.Dimension16] = "PCWEB";
	
	GA_info[GACustomKey.Dimension35] = location.href.replace("http://", "").replace("https://", "");

	return GA_info;
}



function setGaDataSend_Event(evntType,product_array){
	/* var product_array = [];
	if(product_array_param != null && product_array_param != undefined){
		product_array = product_array_param;
	} */
    var ecommerce_hit = new Object();
    var action_obj = new Object();
	
    
    if(location.pathname == '/m/pda/smItemDetailR.do' || location.pathname == '/p/pda/itemPtc.do'){
        
        if(evntType == GAEcommerceStepKey.Checkout){
            action_obj[GAActionFieldKey.CheckoutStep] = '1';
            GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
        }else{
            ecommerce_hit[GAHitKey.NonInteraction] = '1';
            GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
        }
        
    }else if(location.pathname == '/p/oda/order.do'){
        
        try {
        	var itemGbcd = ""; // 무형상품체크, 유/무형 상품 같이 구매 불가하므로..
            
        } catch (e) {
           
        }

        if(evntType == GAEcommerceStepKey.Checkout){
        	var ecommerce_hit = new Object();
            var action_obj = new Object();
            action_obj[GAActionFieldKey.CheckoutStep] = '2';

            var selOrderType = $("input[name='payType']:checked").val();

            if(selOrderType == '10'  ){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '01 카드';
                ecommerce_hit['dimension75'] = '01 카드';
            }else if(selOrderType == '20'){
                action_obj[GAActionFieldKey.CheckoutOptions] = '02 현금';
                ecommerce_hit['dimension75'] = '02 현금';
            }else if(selOrderType == '40'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '12 휴대폰결제';
                ecommerce_hit['dimension75'] = '12 휴대폰결제';
            }else if(selOrderType == '91'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '15 페이코';
                ecommerce_hit['dimension75'] = '15 페이코';
            }else if(selOrderType == '30'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '20 현금(실시간)';
                ecommerce_hit['dimension75'] = '20 현금(실시간)';
            }else if(selOrderType == '95'){
                action_obj[GAActionFieldKey.CheckoutOptions] = '21 네이버페이';
                ecommerce_hit['dimension75'] = '21 네이버페이';
            }else if(selOrderType == '96'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '22 스마일페이';
                ecommerce_hit['dimension75'] = '22 스마일페이';
            }else if(selOrderType == '97'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '23 카카오페이';
                ecommerce_hit['dimension75'] = '23 카카오페이';
            }else if(selOrderType == '81'){
                action_obj[GAActionFieldKey.CheckoutOptions]  = '25 토스';
                ecommerce_hit['dimension75'] = '25 토스';
            }else if(selOrderType == '99') {
                action_obj[GAActionFieldKey.CheckoutOptions]  = '24 현금간편결제';
                ecommerce_hit['dimension75'] = '24 현금간편결제';
            }else if(selOrderType == '50') {
                action_obj[GAActionFieldKey.CheckoutOptions]  = '98 카드+현금';
                ecommerce_hit['dimension75'] = '98 카드+현금';
            }else if(selOrderType == '93') {
                action_obj[GAActionFieldKey.CheckoutOptions]  = '99 삼성페이';
                ecommerce_hit['dimension75'] = '99 삼성페이';
            }else {
                action_obj[GAActionFieldKey.CheckoutOptions]  = 'default';
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
            GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
        }
    }else{
        GADataSend_Ecommerce(evntType, action_obj, product_array, ecommerce_hit);
    }

}



function sendSlitmClick(slitmNm, slitmCd, tabNm){

    if(slitmNm == "" || slitmCd == "" || tabNm == "")
        return;

    var product_array = [];
    product_array.push({'id': slitmCd, 'name': slitmNm});

    var action_obj = new Object();
    action_obj[GAActionFieldKey.ProductActionList] = tabNm;

    var ecommerce_hit = new Object();
    GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj, product_array, ecommerce_hit);
}



function getParameterByName(url, name) {
	if(url == "" || name == "" || url == undefined || name == undefined){
		return;
	}
	
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(url);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function setGaPromotion(title, name, position, creative, id){
	var action_obj = new Object();
    var ecommerce_hit = new Object();
    var tabNm = title;
    if (tabNm.length > 0) { 
        tabNm = tabNm.substring(tabNm.indexOf(">")+1, tabNm.length);
    }
    
    ecommerce_hit[GAHitKey.Title] = title;
    
    action_obj["promo1"] = {};
    action_obj["promo1"][GAActionFieldKey.PromotionName] = name;
    action_obj["promo1"][GAActionFieldKey.PromotionPosition] = position;
    action_obj["promo1"][GAActionFieldKey.PromotionCreative] = creative;
    action_obj["promo1"][GAActionFieldKey.PromotionID] = id;
    
    if(name.substring(0, name.indexOf("_")) == "메인"){
    	console.log("setGaPromotion()................4");
    	ecommerce_hit[GACustomKey.Dimension31] = '메인';
    	ecommerce_hit[GACustomKey.Dimension32] = '메인>'+ tabNm;
    	ecommerce_hit[GACustomKey.Dimension33] = '메인>'+ tabNm;
    	ecommerce_hit[GACustomKey.Dimension34] = '메인>'+ tabNm;	
    }
    
    GADataSend_Ecommerce(GAEcommerceStepKey.PromotionClick, action_obj, null, ecommerce_hit);
}

function getCookieGA(name) {
    var cname = name + "=";
    var dc = document.cookie;
    if (dc.length > 0) {
        begin = dc.indexOf(cname);
        if (begin != -1) {
            begin += cname.length;
            end = dc.indexOf(";", begin);
            if (end == -1) end = dc.length;
            if ( "EHCustName" == name || "LAST_SECT" == name) {
                return decodeURIComponent(dc.substring(begin, end));
            }
            else {
                return unescape(dc.substring(begin, end)).replace('GA1.2.','');
            }
        }
    }
    return null;
}

function sendSlitmClickGo(slitmNm, slitmCd, tabNm,url){

    if(slitmNm == "" || slitmCd == "" || tabNm == "" || url =="")
        return;

    var product_array = [];
    product_array.push({'id': slitmCd, 'name': slitmNm});

    var action_obj = new Object();
    action_obj[GAActionFieldKey.ProductActionList] = tabNm;

    var ecommerce_hit = new Object();
    GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj, product_array, ecommerce_hit);

    document.location.href = url;
}
function sendSlitmClickNewWin(slitmNm, slitmCd, tabNm, url){

    if(slitmNm == "" || slitmCd == "" || tabNm == "" || url =="")
        return;

    var product_array = [];
    product_array.push({'id': slitmCd, 'name': slitmNm});

    var action_obj = new Object();
    action_obj[GAActionFieldKey.ProductActionList] = tabNm;

    var ecommerce_hit = new Object();
    GADataSend_Ecommerce(GAEcommerceStepKey.Click, action_obj, product_array, ecommerce_hit);

    try {
        _trk_flashEnvView('_TRK_PI=LYRNWN');
    } catch(e) {}

    try {
        _trk_clickTrace("EVT", "상품리스트_새창");
    } catch (e) {}
    window.open(url, '_blank');
}

function bizSpringTagForHome(url, tag, pathVal){
    
	location.href = url
}

function gaTagging(obj_GA, msg1, msg2, msg3){
    console.log("gaTagging()................");
    var title =     $(obj_GA).attr("ga-custom-title") == undefined ? "" : $(obj_GA).attr("ga-custom-title");            
    var name =      $(obj_GA).attr("ga-custom-name") == undefined ? "" : $(obj_GA).attr("ga-custom-name");  
    var position =  $(obj_GA).attr("ga-custom-position") == undefined ? "" : $(obj_GA).attr("ga-custom-position");
    var creative =  $(obj_GA).attr("ga-custom-creative") == undefined ? "" : $(obj_GA).attr("ga-custom-creative");
    var id =        $(obj_GA).attr("ga-custom-id") == undefined ? "" : $(obj_GA).attr("ga-custom-id");
    var etc =       $(obj_GA).attr("ga-custom-etc") == undefined ? "" : $(obj_GA).attr("ga-custom-etc");
    var etc2 =      $(obj_GA).attr("ga-custom-etc2") == undefined ? "" : $(obj_GA).attr("ga-custom-etc2");
    
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

    if (etc == "home"){
        bizSpringTagForHome(msg1, msg2, msg3);
    } else {
    	if (msg1 != null && msg1 != "" && msg1.length > 0) {
            location.href = msg1;
    	}
    }
}



</script>
		<!-- GA Custum lib -->
		<script async=""
			src="https://www.googletagmanager.com/gtag/js?id=AW-1066206974"></script>
		<script>
      try{
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
          gtag('config', 'AW-1066206974');
          gtag('config', 'AW-937000404');
      }catch(e){}
    
      //Google Analytics
      var init_Obj = new Object();
    
      $(window).on("load",function() {
          //GA 맞춤측정 데이터 전송 및 클릭이벤트 초기화
          console.log("setDimension and useWindload 호출");
          setDimension();
          useWinload();
      });
    </script>
		<!-- Google analytics end -->



		<script type="text/javascript"
			src="//image.hmall.com/p/js/co/netfunnel.js"></script>
		<script type="text/javascript">
try{
NetFunnel_AliveNotice({action_id:"hmall_1"});
} catch(e) {}
var cValue = document.cookie.match('(^|;) ?' + 'ck_nfn_p' + '=([^;]*)(;|$)');
var ck_nfn = cValue? cValue[2] : null;
if(ck_nfn != "" && ck_nfn != null){
	var d = new Date();
    d.setTime(d.getTime() + (3*60*1000));
    var expires = "expires=" + d.toUTCString();
    var cname = "ck_nfn_p";
    var cvalue = "check";
    document.cookie = cname + "=" + cvalue + "; " + expires + ";path=/;domain=.hmall.com";
}

</script>
		<!--//footer -->
		<!-- Alert 레이어 -->
		<div class="ui-modal alert" id="pec001-01" tabindex="-1" role="dialog"
			aria-label="H.Point Pay 통합회원 안내">
			<div class="ui-modal-dialog" role="document">
				<div class="content">
					<p class="ctypo15">
						H.Point Pay는 H.Point 통합회원만<br> 이용하실 수 있습니다.
					</p>
					<p class="ctypo17 bold mt10px">
						H.Point 통합회원으로<br>가입하시겠습니까?
					</p>
				</div>
				<!-- //.content -->
				<!-- alert은 버튼 위치 변경 -->
				<div class="btngroup">
					<button class="btn btn-linegray" data-dismiss="modal">
						<span>취소</span>
					</button>
					<button class="btn btn-default" onclick="fn_upntPopupOpen();">
						<span>확인</span>
					</button>
					<!-- 데이터 전송 후 닫힘 $(element).modal().hide() -->
				</div>
				<button class="btn btn-close" data-dismiss="modal">
					<i class="icon xico"></i><span class="hiding">레이어 닫기</span>
				</button>
			</div>
			<!-- //.ui-modal-dialog -->
		</div>

		<!-- skyscraper include-->


		<!-- 스카이스크래퍼 -->








		<script type="text/javascript">

var skySclbrodEndTime = "";
var skyScldtvEndTime = "";

function setOnAirSkySc(){
	try {
		$.ajax({
	        type: "get"
	        ,url: "https://wwwca.hmall.com/p/coe/onAirList.do?time=041116"
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
	              ,url: "/p/coe/onAirList.do?time=041116"
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
            ,url: "https://wwwca.hmall.com/p/coe/onAirCardPrmoList.do?time=041116"
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
                    ,url: "/p/coe/onAirCardPrmoList.do?time=041116"
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









					<a class="recent-view-title">ON AIR</a>
					<ul id="banner-onair">


						<li><a href="javascript:;" class="tv-shopping"
							onclick="gaTagging(this, &quot;/p/pda/itemPtc.do?sectId=1003&amp;slitmCd=2138673777&amp;bfmtNo=202204113011&amp;brodDt=20220411&amp;brodStrtDtm=16:05&amp;brodType=P&quot;, &quot;etvhm_etv&quot;, &quot;eTV온에어^영상상품^[1+1]유한양행 와이즈바이옴 패밀리 유산균 (총 12박스)&quot;)"
							ga-custom-title="메인>홈쇼핑" ga-custom-name="메인_홈쇼핑탭"
							ga-custom-position="TV쇼핑" ga-custom-creative="방송상품"
							ga-custom-id="2138673777_[1+1]유한양행 와이즈바이옴 패밀리 유산균 (총 12박스)"
							ga-custom-etc="home"> <img
								src="https://image.hmall.com/static/7/3/67/38/2138673777_0.jpg?RS=140x140&amp;AR=0"
								alt="[1+1]유한양행 와이즈바이옴 패밀리 유산균 (총 12박스)"
								onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=140x140&amp;AR=0')">
								<span class="over-box"> <strong
									class="onair-kind shopping">TV쇼핑</strong> <em
									class="onair-time" id="onAirHtime"
									data-brodenddtm="20220411171000">00:42:07</em>
							</span>
						</a></li>



						<li><a href="javascript:;" class="tv-shopping"
							onclick="gaTagging(this, &quot;/p/pda/itemPtc.do?sectId=1003&amp;slitmCd=2135698808&amp;bfmtNo=202204115012&amp;brodDt=20220411&amp;brodStrtDtm=16:20&amp;brodType=P&quot;, &quot;etvhm_etv&quot;, &quot;eTV온에어^영상상품^[미식백과] 염경환의 국내산 오곡누룽지 60g x 75봉 + 무료체험 2봉&quot;)"
							ga-custom-title="메인>홈쇼핑" ga-custom-name="메인_홈쇼핑탭"
							ga-custom-position="TV쇼핑" ga-custom-creative="방송상품"
							ga-custom-id="2135698808_[미식백과] 염경환의 국내산 오곡누룽지 60g x 75봉 + 무료체험 2봉"
							ga-custom-etc="home"> <img
								src="https://image.hmall.com/static/8/8/69/35/2135698808_0.jpg?RS=140x140&amp;AR=0"
								alt="[미식백과] 염경환의 국내산 오곡누룽지 60g x 75봉 + 무료체험 2봉"
								onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=140x140&amp;AR=0')">
								<span class="over-box"> <strong class="onair-kind shop">TV+샵</strong>
									<em class="onair-time" id="onAirHdtime"
									data-brodenddtm="20220411171959">00:51:07</em>
							</span>
						</a></li>

					</ul>

				</div>
				<div class="qr_view_area">
					<span class="qr_txt">쇼핑라이브</span> <span class="img_qr"><img
						src="https://image.hmall.com/p/img/co/img-qr.jpg"
						alt="쇼핑라이브 qr이미지"></span>
				</div>
				<div class="wing-slide exhibition01" id="skyScCardArea">









					<ul>


						<li style=""><a
							href="https://www.hmall.com/p/dpa/crdDmndDcPrmo.do?prmoNo=P202204082807">
								<span class="img"><img
									src="//image.hmall.com/p/img/ev/icon/ico-card-nh.png"
									alt="NH농협카드"></span> <span class="card-txt"> <strong
									class="card-name">NH농협카드</strong> <span class="benefit-txt">
										<em class="point-red"> 7% </em> 즉시 할인



								</span>
							</span>
						</a></li>

						<li style="display: none;"><a
							href="https://www.hmall.com/p/dpa/crdDmndDcPrmo.do?prmoNo=P202204072026">
								<span class="img"><img
									src="//image.hmall.com/p/img/ev/icon/ico-card-kb.png"
									alt="KB국민카드"></span> <span class="card-txt"> <strong
									class="card-name">KB국민카드</strong> <span class="benefit-txt">
										<em class="point-red"> 5% </em> 즉시 할인



								</span>
							</span>
						</a></li>

					</ul>
					<!-- 페이징 -->

					<div class="pagination">
						<button class="btn btn-prev">
							<span>이전</span>
						</button>
						<span class="numbering"><strong class="current">1</strong>
							/ <em class="total">2</em></span>
						<button class="btn btn-next">
							<span>다음</span>
						</button>
					</div>





					<!-- // 페이징 -->
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
    
    /*
    setTimeout(function() { 
    	setCardPromotion();
    }, 300);
    */
</script>
		<!-- 스카이스크래퍼 -->


		<!--알림설정 클릭 시 가격변경 알리미 팝업-->
		<div class="ui-modal" id="cartAlarm" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="ui-modal-dialog cart alarm" role="document">
				<div class="pop-wrap">
					<strong class="pop-title">가격변경 알리미</strong>
					<div class="pop-content">
						<p class="desc">장바구니에 담긴 상품의 가격이 인하되면 알림을 보내드립니다.</p>
						<div class="content">
							<div class="box-type">
								<p class="radio-box-tit">수신방법</p>
								<div class="radiobox">
									<div class="radio-cnt">
										<label class="radlabel"><input type="radio"
											name="basktNotfMthdGbcd" value="2"><i class="icon"></i><span>앱푸시
												(PUSH)</span></label>
									</div>

									<div class="radio-cnt">
										<label class="radlabel"><input type="radio"
											name="basktNotfMthdGbcd" value="1"><i class="icon"></i><span>이메일
												(ill***@naver.com)</span></label>
										<button class="btn btn-round xs"
											onclick="window.location.href='/p/mpd/changeMemberInfoFormMain.do'">
											<span>변경</span>
										</button>
									</div>

								</div>
							</div>
							<ul class="dotlist">
								<li>상품이 재입고 되면 알림을 보내드립니다.</li>
								<li>앱푸시(PUSH)는 수신 동의가 되어 있어야 발송됩니다. <br> (확인 및 수신동의 :
									Hmall앱 &gt; 설정 &gt; 알림설정 &gt; 혜택 알림받기 ON)
								</li>
								<li>21시 ~ 익일 08시에는 가격변경 알리미가 발송되지 않습니다. 단, 야간알림 PUSH 수신
									동의시에는 알림이 발송됩니다.</li>
							</ul>
							<div class="btngroup">
								<button type="button" class="btn btn-linegray"
									data-dismiss="modal">
									<span>취소</span>
								</button>
								<!--data-dismiss="modal" 줄 경우 닫힘-->


								<button type="button" class="btn btn-default ml"
									onclick="registBasketAlrimi('Y');">
									<span>알림신청</span>
								</button>



							</div>
						</div>
					</div>

					<button type="button" class="btn-close sm" data-dismiss="modal">
						<span>팝업 닫기</span>
					</button>
					<!--data-dismiss="modal" 줄 경우 닫힘-->
				</div>
			</div>
		</div>
		<!--//알림설정 클릭 시 가격변경 알리미 팝업-->

		<!--품절된 상품 > 재입고 알림 버튼 클릭시 재입고 팝업-->
		<div class="ui-modal" id="cartRestock" tabindex="-1" role="dialog"
			aria-labelledby="cartRestock">
			<div class="ui-modal-dialog cart restock-alarm" role="document">
				<div class="pop-wrap">
					<strong class="pop-title">재입고 알리미</strong>
					<div class="pop-content">
						<form name="restock" onsubmit="return false;">
							<input type="hidden" name="slitmCd"> <input type="hidden"
								name="uitmCd"> <input type="hidden" name="useYn"
								value="Y">
							<p class="desc">상품이 재입고되면 알림을 보내드립니다.</p>
							<div class="content">
								<div class="box-type item">
									<!-- pditem이 있을 경우 item 클래스 추가 -->
									<div class="pditem">
										<figure class="pdthumb">
											<div class="thumb" id="restock_img"></div>
											<figcaption>
												<p class="pdtit" id="restock_name"></p>
											</figcaption>
										</figure>
									</div>
									<p class="radio-box-tit">수신방법</p>
									<div class="radiobox">
										<label class="radlabel"><input type="radio"
											name="rad1" checked="" aria-checked="true"><i
											class="icon"></i><span>휴대폰 SMS (010-****-0945)</span></label>
									</div>
								</div>
								<ul class="dotlist">
									<li>상품이 재입고 되면 알림을 보내드립니다.</li>
									<li>앱푸시(PUSH)는 수신 동의가 되어 있어야 발송됩니다. <br> (확인 및 수신동의 :
										Hmall앱 &gt; 설정 &gt; 알림설정 &gt; 혜택 알림받기 ON)
									</li>
									<li>재입고 알리미 신청 확인 및 삭제는 Hmall 모바일 &gt; 마이페이지 &gt; 재입고
										알리미에서 하실 수 있습니다.</li>
								</ul>
								<div class="btngroup">
									<button type="button" class="btn btn-linegray"
										data-dismiss="modal">
										<span>취소</span>
									</button>
									<!--data-dismiss="modal" 줄 경우 닫힘-->
									<button type="button" class="btn btn-default"
										onclick="insertAlrim();">
										<span>알림신청</span>
									</button>
								</div>
							</div>
						</form>
					</div>
					<button type="button" class="btn-close sm" data-dismiss="modal">
						<span>팝업 닫기</span>
					</button>
					<!--data-dismiss="modal" 줄 경우 닫힘-->
				</div>
			</div>
		</div>
		<!--//품절된 상품 > 재입고 알림 버튼 클릭시 재입고 팝업-->

		<!--주의사항안내 : PEB003 신선식품 주의사항 안내-->
		<div class="ui-modal" id="divFreshFoodPd" tabindex="-1" role="dialog"
			aria-labelledby="divFreshFoodPd">
			<div class="ui-modal-dialog cart caution caution-fresh"
				role="document">
				<div class="pop-wrap">
					<strong class="pop-title">신선식품 주의사항 안내</strong>
					<div class="pop-content">
						<p class="desc">
							<span>아래 신선식품(냉장, 냉동 포함) 상품은 상품가치 하락 사유로 <em>배송중에는 취소
									불가</em>하며, 단순 변심으로 인한 <em>교환, 반품이 불가</em>합니다. <br> (단, 상품 하자
								제외)
							</span>
						</p>
						<div class="content">
							<div class="product-list" id="divFreshFoodPdItemList"></div>
							<div class="btngroup">
								<button type="button" class="btn btn-linegray"
									data-dismiss="modal">
									<span>취소</span>
								</button>
								<button type="button" class="btn btn-default"
									onclick="orderLayerPop('divFreshFoodPd');">
									<span>동의</span>
								</button>
							</div>
						</div>
					</div>
					<button type="button" class="btn-close sm" data-dismiss="modal">
						<span>팝업 닫기</span>
					</button>
					<!--data-dismiss="modal" 줄 경우 닫힘-->
				</div>
			</div>
		</div>
		<!--//주의사항안내 : PEB003 신선식품 주의사항 안내-->
		<!--주의사항안내 : PEB004 할부개월 수 주의사항 안내-->
		<div class="ui-modal" id="divWintInsmMthsPd" tabindex="-1"
			role="dialog" aria-labelledby="divWintInsmMthsPd">
			<div class="ui-modal-dialog cart caution caution-installment"
				role="document">
				<div class="pop-wrap">
					<strong class="pop-title">할부개월 수 안내</strong>
					<div class="pop-content">
						<p class="desc" id="pMinWintInsmMths"></p>
						<div class="content">
							<div class="product-list" id="divWintInsmMthsPdItemList"></div>
							<ul class="dotlist">
								<li>상품별로 제공하는 무이자할부 혜택을 이용하시려면 각각 구매해주세요.</li>
								<li>12개월 이상 무이자할부는 카드사별 적용조건이 상이하여 결제수단(카드) 선택 시 확인 가능합니다.</li>
							</ul>
							<div class="btngroup">
								<button type="button" class="btn btn-linegray"
									data-dismiss="modal">
									<span>취소</span>
								</button>
								<button type="button" class="btn btn-default"
									onclick="orderLayerPop('divWintInsmMthsPd')">
									<span>주문 진행</span>
								</button>
							</div>
						</div>
					</div>
					<button type="button" class="btn-close sm" data-dismiss="modal">
						<span>팝업 닫기</span>
					</button>
					<!--data-dismiss="modal" 줄 경우 닫힘-->
				</div>
			</div>
		</div>
		<!--//주의사항안내 : PEB004 할부개월 수 주의사항 안내-->
		<!--주의사항안내 : PEB005 신용카드 즉시할인 적용안내 주의사항 안내-->
		<div class="ui-modal" id="divCrdImdtDc" tabindex="-1" role="dialog"
			aria-labelledby="divCrdImdtDc">
			<div class="ui-modal-dialog cart caution caution-sale"
				role="document">
				<div class="pop-wrap">
					<strong class="pop-title">신용카드 즉시할인 적용안내</strong>
					<div class="pop-content">
						<p class="desc">
							<span>구매하실 상품들의 즉시할인 비대상이 포함되어있습니다. <br> 함께 주문하실 경우 <em>신용카드
									즉시 할인이 적용되지 않습니다.</em></span>
						</p>
						<div class="content">
							<div class="product-list" id="ulCrdImdtDc"></div>
							<ul class="dotlist">
								<li>상품별로 제공하는 카드즉시할인 혜택을 이용하시려면 개별 구매해주세요.</li>
							</ul>
							<div class="btngroup">
								<button type="button" class="btn btn-linegray"
									data-dismiss="modal">
									<span>취소</span>
								</button>
								<button type="button" class="btn btn-default"
									onclick="fn_crdImdtDcOrder();">
									<span>주문 진행</span>
								</button>
							</div>
						</div>
					</div>
					<button type="button" class="btn-close sm" data-dismiss="modal">
						<span>팝업 닫기</span>
					</button>
					<!--data-dismiss="modal" 줄 경우 닫힘-->
				</div>
			</div>
		</div>
		<!--//주의사항안내 : PEB005 신용카드 즉시할인 적용안내 주의사항 안내-->
		<!--주의사항안내 : PEB006 주문상품 주의사항 안내-->
		<div class="ui-modal" id="divOrdMakePd" tabindex="-1" role="dialog"
			aria-labelledby="divOrdMakePd">
			<div class="ui-modal-dialog cart caution caution-product"
				role="document">
				<div class="pop-wrap">
					<strong class="pop-title">주문상품 주의사항 안내</strong>
					<div class="pop-content">
						<p class="desc">
							<span>아래 상품은 <em>주문제작</em> 예정이므로 <em>취소, 교환, 반품이 불가</em>
								합니다. <br> (상품 하자 제외)
							</span>
						</p>
						<div class="content">
							<div class="product-list" id="divOrdMakePdItemList"></div>
							<div class="btngroup">
								<button type="button" class="btn btn-linegray"
									data-dismiss="modal">
									<span>취소</span>
								</button>
								<button type="button" class="btn btn-default"
									onclick="orderLayerPop('divOrdMakePd');">
									<span>동의</span>
								</button>
							</div>
						</div>
					</div>
					<button type="button" class="btn-close sm" data-dismiss="modal">
						<span>팝업 닫기</span>
					</button>
					<!--data-dismiss="modal" 줄 경우 닫힘-->
				</div>
			</div>
		</div>
		<!--//주의사항안내 : PEB006 주문상품 주의사항 안내-->
		<!--주의사항안내 : PEB007 포장개봉 주의사항 안내-->
		<div class="ui-modal" id="divBoxOpenPd" tabindex="-1" role="dialog"
			aria-labelledby="divBoxOpenPd">
			<div class="ui-modal-dialog cart caution caution-product-pack"
				role="document">
				<div class="pop-wrap">
					<strong class="pop-title">포장개봉 주의사항 안내</strong>
					<div class="pop-content">
						<p class="desc">
							<span>아래 상품은 특성상, <em>박스(BOX) 또는 밀봉포장 개봉으로 인한 상품 가치
									하락시 교환/반품이 불가</em> 한 상품입니다. (단, 상품가치 하락없이 재화 등의 내용을 확인하기 위해 포장 등을
								훼손한 경우는 제외)
							</span>
						</p>
						<div class="content">
							<div class="product-list" id="divBoxOpenPdItemList"></div>
							<div class="btngroup">
								<button type="button" class="btn btn-linegray"
									data-dismiss="modal">
									<span>취소</span>
								</button>
								<button type="button" class="btn btn-default"
									onclick="orderLayerPop('divBoxOpenPd');">
									<span>동의</span>
								</button>
							</div>
						</div>
					</div>
					<button type="button" class="btn-close sm" data-dismiss="modal">
						<span>팝업 닫기</span>
					</button>
					<!--data-dismiss="modal" 줄 경우 닫힘-->
				</div>
			</div>
		</div>
		<!--//주의사항안내 : PEB007 PEB007 포장개봉 주의사항 안내-->


		<div class="ui-modal cart-recom" id="cart-recommend" tabindex="-1"
			role="dialog" aria-label="이런 상품 어떠세요? 레이어 팝업">
			<div class="ui-modal-dialog w1080" role="document">
				<div class="content">
					<p class="ui-title">이런 상품 어떠세요?</p>
					<div class="content-body">
						<div class="pdlist-wrap col5">
							<!--// 5xn class="col5" 추가 -->
						</div>
					</div>
					<button class="btn btn-close" data-dismiss="modal">
						<i class="icon xico"></i><span class="hiding">레이어 닫기</span>
					</button>
				</div>
			</div>
		</div>

		<!-- [11/24]_수정(찜리스트 알럿추가) -->
		<div class="ui-modal alert" id="zzimlistAdd" tabindex="-1"
			role="dialog" aria-label="찜리스트추가">
			<div class="ui-modal-dialog" role="document">
				<div class="content">
					<span class="bgcircle check-on-sm"><i class="icon check-on"></i></span>
					<p class="ctypo17 bold">찜리스트에 추가되었습니다.</p>
				</div>
				<div class="btngroup">
					<!-- <button class="btn btn-linelgray" data-dismiss="modal"><span>취소</span></button> -->
					<button class="btn btn-default" data-dismiss="modal">
						<span>확인</span>
					</button>
					<!-- 데이터 전송 후 닫힘 $(element).modal().hide() -->
				</div>
				<button class="btn btn-close" data-dismiss="modal">
					<i class="icon xico"></i><span class="hiding">레이어 닫기</span>
				</button>
			</div>
		</div>

		<!-- [01/15] 선물포장안내-->
		<div class="ui-modal" id="modalGiftNoti" tabindex="-1" role="dialog"
			aria-label="선물포장안내">
			<div id="gift-popup-content" class="ui-modal-dialog giftnoti"
				role="document">
				<div class="content">
					<p class="ui-title">선물포장안내</p>
					<div class="content-body">
						<p class="ctypo17 bold" id="gift-popup-p">
							구매 하시는 상품은 선물포장, <br> <span>쇼핑백신청</span>이 가능한 상품입니다.
						</p>
						<p class="ctypo14" id="gift-popup-p-two">선물 포장을 신청하시겠습니까?</p>
						<div id="gift-popup-button" class="btngroup">
							<button class="btn btn-linegray"
								onclick="setBoxPrsnPackGbcd('0');setSpbgPrsnPackGbcd('0');order(packBoxBasktIngArr,packCrdImdtDcPrmoChkYN);">
								<span>아니오</span>
							</button>
							<button class="btn btn-default"
								onclick="setBoxPrsnPackGbcd('1');setSpbgPrsnPackGbcd('1');order(packBoxBasktIngArr,packCrdImdtDcPrmoChkYN);">
								<span>예</span>
							</button>
						</div>
					</div>
					<button class="btn btn-close" onclick="boxPackItemClose();"
						data-dismiss="modal">
						<i class="icon xico"></i><span class="hiding">레이어 닫기</span>
					</button>
				</div>
			</div>
		</div>

		<!-- 크리테오 장바구니 페이지 트래커  ---->
		<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js"
			async="true"></script>
		<script type="text/javascript">
window.criteo_q = window.criteo_q || [];
window.criteo_q.push(   
        { event: "setAccount", account: 15047 },
        { event: "setSiteType", type: "d" },
        { event: "viewBasket", item: [ 
              
]});
</script>

	</div>
	<div id="criteo-tags-div" style="display: none;"></div>
	<script type="text/javascript" async=""
		src="//image.hmall.com/p/js/co/901_Insight_WebAnalytics.js"></script>
	<script type="text/javascript" async=""
		src="//image.hmall.com/p/js/co/tagging.collector-1.3.min.js"></script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div></div>
		</div>
	</div>
</body>
</html>