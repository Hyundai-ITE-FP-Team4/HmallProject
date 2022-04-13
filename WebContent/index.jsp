<%@page import="java.sql.Timestamp"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	//현재 날짜/시간 
	LocalDateTime localDateTime = LocalDateTime.now();
	System.out.println(localDateTime);

	// LocalDateTime -> Timestamp로 변경
	Timestamp timestamp2 = Timestamp.valueOf(localDateTime);
	System.out.println(timestamp2);


%>
<html>
<html lang="ko">
 
<head>
	<style class="vjs-styles-defaults">
      .video-js {
        width: 300px;
        height: 150px;
      }

      .vjs-fluid {
        padding-top: 56.25%
      }
    </style><style class="vjs-styles-dimensions"></style><style class="vjs-styles-dimensions"></style>

<meta property="og:title" content="현대홈쇼핑 - 현대Hmall">
<meta property="og:url" content="https://hmall.com">
<meta property="og:type" content="현대홈쇼핑 - 현대Hmall">
<meta property="og:description" content="백화점, 브랜드, 홈쇼핑까지- 당신의 모든 취향을 읽다. 볼거리 가득! 쓸 곳 많은 h.point 혜택">
<meta property="og:image" content="//image.hmall.com/p/img/co/meta/hmall_meta.jpg">
<meta property="og:image:width" content="1000">
<meta property="og:image:height" content="750">

<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="//image.hmall.com/p/img/co/favicon/favicon.ico">
<title>현대홈쇼핑 - 현대Hmall</title> 
    
		<meta name="title" content="현대홈쇼핑 - 현대Hmall">
		<meta name="description" content="백화점, 브랜드, 홈쇼핑까지- 당신의 모든 취향을 읽다.">
		<meta name="keywords" content="현대홈쇼핑, 현대몰, 현대Hmall, 현대H몰, Hmall, H몰, 에이치몰, 현대홈쇼핑편성표, 현대에이치몰, 현대쇼핑몰, 쇼핑라이브, HPoint, dpdlclahf, hahf, showppinglive, shoppinglive, 쇼핑live, show핑live, 불금데이, 현대백화점, H펫샵, 펫클럽, HPoint, H.Point, 에이치포인트, COS, 코스, 고비, gobi, 제이바이, jby, 이상봉, 아이디, id, 에이앤디, andy, 라씨엔토, laciento, 꼬에, coe, 밀라노스토리, milanostory, &amp;otherstoies, 앤아더스토리즈, 안나수이, 아이디, 뷰벨, 유리드, URID, 주식회사꼬르륵, 꼬르륵, 메이크썸굿, 히츠폼즈, 엠비티아이, 드고떼, MBTI, 브라텐, braten">
   
<!-- includeScript -->
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/ec.js"></script><script async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-MZFFDJ8"></script><script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script><script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script><script src="https://connect.facebook.net/signals/config/307742333494098?v=2.9.57&amp;r=stable" async=""></script><script src="https://connect.facebook.net/en_US/sdk.js?hash=3b2eb66d54be54687aaaab7a7b0b3d67" async="" crossorigin="anonymous"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=AW-937000404&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="https://www.googleadservices.com/pagead/conversion_async.js"></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script id="facebook-jssdk" src="//connect.facebook.net/en_US/sdk.js"></script><script src="https://www.googleoptimize.com/optimize.js?id=OPT-NBGRL7P"></script>

<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, height=device-height">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no, email=no, address=no"> 
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
<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/common.css"><!-- 공통 css -->
<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/layout.css"><!-- 공통 Layout css -->
<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/popup.css"><!-- 공통 Popup css -->
<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/jquery-ui.css"><!-- jQuery UI css -->
<style>
.hidden {display:none !important;}
</style>
<script src="//image.hmall.com/p/js/co/jquery-3.4.1.min.js"></script><!-- jQuery Plugin -->
<script src="//image.hmall.com/p/js/co/jquery.easing.min.js"></script><!-- jQuery UI Effect -->
<script src="//image.hmall.com/p/js/co/jquery-ui.1.12.1.min.js"></script><!-- jQuery UI js -->
<script src="//image.hmall.com/p/js/co/ukDetect.min.js"></script><!-- UI에 사용하는 Detect -->
<script src="//image.hmall.com/p/js/co/slick.min.js"></script><!-- 공통 Slide 플러그인 -->
<script src="//image.hmall.com/p/js/co/common.js"></script><!-- UI에 사용하는 기본 js  -->
<script src="//image.hmall.com/p/js/co/co.js"></script><!-- UI에 사용하는 기본 js  -->
<script src="//image.hmall.com/p/js/co/jquery.cookie.js"></script>
<script src="//image.hmall.com/p/js/co/commonFunction.js"></script><!-- as-is common.js 상속  -->
<script src="//image.hmall.com/p/js/co/reDirectExceptUrlList.js"></script><!-- 로그인버튼 click 리다이렉트 예외 url리스트  -->

<!-- Google analytics -->
<script type="text/javascript" src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=040711"></script>
<script type="text/javascript" src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=040711"></script>

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

     GA_info[GACustomKey.Dimension3] = "20201119"; 
     GA_info[GACustomKey.Dimension4] = "일반"; 
     GA_info[GACustomKey.Dimension5] = "0eb00191b11cfa7666ed2d0ff76f0334"; 
    	GA_info[GACustomKey.Dimension6] = "Y"; 
     GA_info[GACustomKey.Dimension7] = "Y"; 
     GA_info[GACustomKey.Dimension8] = "20220116"; 
     GA_info[GACustomKey.Dimension9] = "20220407"; 
    
    var _gaid = getCookieGA('GAID');
    if(_gaid != null){GA_info[GACustomKey.Dimension11] = _gaid;}
    
        GA_info[GACustomKey.Dimension12] = "Y";
        GA_info[GACustomKey.Dimension24] = "";
    
    
     GA_info[GACustomKey.Dimension13] = "M"; 
     GA_info[GACustomKey.Dimension14] = "2"; 
     GA_info[GACustomKey.Dimension15] = "실버"; 

     GA_info[GACustomKey.Dimension22] = "동시가입"; 
     GA_info[GACustomKey.Dimension23] = "20201119"; 
     GA_info[GACustomKey.Dimension25] = "20201119"; 
     GA_info[GACustomKey.Dimension26] = "20220203"; 
     GA_info[GACustomKey.Dimension27] = "20201119"; 
     GA_info[GACustomKey.Dimension28] = "20220203"; 
     GA_info[GACustomKey.Dimension29] = "20220203"; 
     GA_info[GACustomKey.Dimension30] = "N"; 
     GA_info[GACustomKey.Dimension36] = "1천P이상"; 
     GA_info[GACustomKey.Dimension37] = "0"; 
     GA_info[GACustomKey.Dimension38] = "N"; 
     GA_info[GACustomKey.Dimension39] = "종합(방송+일반)"; 
     GA_info[GACustomKey.Dimension40] = "상담원"; 
     GA_info[GACustomKey.Dimension41] = "PCWEB"; 
     GA_info[GACustomKey.Dimension47] = "N"; 
     GA_info[GACustomKey.Dimension78] = "KrOjwEoXHxMwNBSZSW04/w=="; 

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



</script> <!-- GA Custum lib -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=AW-1066206974"></script>
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








<script type="text/javascript">
$(document).ready(function() {
	jjimList();
	listAlrimiWithItem();
});


var rgx1 = /\D/g;
var rgx2 = /(\d+)(\d{3})/;

// 금액 타입 체크
function getNumber(obj) {
  var num01, num02;
  num01 = obj.value;
  num02 = num01.replace(rgx1,"");
  num01 = setComma(num02);
  obj.value =  num01;
}

// 콤마 입력 변환
function setComma(inNum) {     
  var outNum;
  outNum = inNum;
  while (rgx2.test(outNum)) {
       outNum = outNum.replace(rgx2, '$1' + ',' + '$2');
   }
  return outNum;
}

//개인화 찜, 알리미 
var personalJJimData;
var personalAlrimiData;

/**
 * 로그인 사용자 찜 리스트 조회 및 처리
 */
function jjimList(){
    if(isLogin() == 'true') {
        $.ajax({
            type: "post"
            ,url: "/p/mpc/selectWishList.do"
            ,dataType: "json"
            ,async: true
            ,success : function(data) {
                personalJJimData = data.result;
                personalJJimSet();
            },
            error : function(){
            }
        });
    }
}

/*
 * 로그인 사용자 알림 리스트 조회 및 처리
 */
function listAlrimiWithItem(){	
	if(isLogin() == 'true') {
        $.ajax({
            type: "post"
            ,url: "/p/bma/listAlrimiWithItem.do"
            ,dataType: "json"
            ,async: true
            ,success : function(data) {
                personalAlrimiData = data.result;
                personalAlrimiSet();
            },
            error : function(){
            }
        });
    }
}

/*
 * 로그인 사용자 찜 처리
 */
function personalJJimSet(){

    var $alimlike = $('div.alimlike');
    $alimlike.find('a.btn-like.on').removeClass('on');
    
    if(!personalJJimData){
        return;
    }
    
    var jjimCnt = personalJJimData.length;
    
    if(jjimCnt > 0){
        for(var i=0; i < jjimCnt ; i++){
            // 찜. 알리미
            $alimlike.each(function(){
                var $btnlike = $($(this).find('a.btn-like')[0]);                
                var slitmCd =  $(this).data('slitmcd');
                
                if(!$btnlike.hasClass('on') && slitmCd == personalJJimData[i]){
                    $btnlike.addClass('on');
                }
            });
        }
    }
}

/*
 * 로그인 사용자 알림 처리
 */
function personalAlrimiSet(){
   var $alimlike = $('div.alimlike');

   // clean
   $alimlike.find('a.btn-alim.on').removeClass('on');

   if(!personalAlrimiData){
      return;
   }
  
   var alrimiCnt = personalAlrimiData.length;  

   /* 일반 상품 알림 처리 */
   if($alimlike.length > 0 && alrimiCnt > 0){
      for(var i=0; i < alrimiCnt ; i++){
          // 찜. 알리미
          $alimlike.each(function(){
              var bsitmCd =  $(this).data('bsitmcd');
              var $btnalim = $($(this).find('a.btn-alim')[0]);

              if(null != bsitmCd && bsitmCd == personalAlrimiData[i].bsitmCd){
                  $btnalim.addClass('on');
              }    
          });
      }
   }

   /* PC 편성표 특화 알림 처리 */
   // clean
   $alimlike.find('button.on').removeClass('on');

   if($alimlike.find('button').length > 0 && alrimiCnt > 0){
      for(var i=0; i < alrimiCnt ; i++){

          if(null == personalAlrimiData[i].bsitmCd)
              continue;

    	  // console.log('알림 활성화 할 내 구독 : ' + personalAlrimiData[i].bsitmCd);
          
          // 찜. 알리미
          $alimlike.each(function(ti, tv){
              var bsitmCd =  $(tv).attr('data-bsitmcd');
              var $btnalim = $($(tv).find('button')[0]);

              if(null != bsitmCd && bsitmCd == personalAlrimiData[i].bsitmCd){
                  $btnalim.addClass('on');
              }    
                  
          });
      }
   }
}

/*
 * 호출 URL에 따른 _trk_clickTrace 처리
 */
function dp_clickTrace(type) {
	try {        
        // 특정 URL 포함이면 필요시 추가
        if(loca_contain('pde/search.do')){
        	trk_title('검색결과_상품리스트_찜', '검색결과_상품리스트_알리미', type);
        }        
    } catch(e) {}
}
/*
 *  url에 포함여부
 */
function loca_contain(url){
	return location.href.indexOf(url) > -1;
}

/*
 * @ggimTitle 찜
 * @alimiTitle 알리미
 */
function trk_title(ggimTitle, alimiTitle, type){
	var title;
	if(type == 'ggim'){
       title = ggimTitle;             
    }else if(type == 'alimi'){
    	title = alimiTitle;
    }	
    console.log('trk_title', title);
    _trk_clickTrace('EVT', title);
}


/*
 * 2020.12.04 icj 찜하기
 */
var goActionCnt = 0; // 두번 클릭 방지
function goChioceProcess(itemType, venCd, venItemCd, slitmCd, event, obj) {
    goActionCnt++;
    
    dp_clickTrace('ggim');    

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

    if((venCd != null && venCd == '009741' && venItemCd != null)){
        alert("기프티콘 상품은 찜하기에 담을 수 없습니다!!");
        return;
    }

    if((venCd != null && venCd == '008117' && venItemCd != null)){
        alert("기프티쇼 상품은 찜하기에 담을 수 없습니다!!");
        return;
    }

    if((venCd != null && venCd == '009014' && venItemCd != null)){
        alert("큐피콘 상품은 찜하기에 담을 수 없습니다!!");
        return;
    }

    if((venCd != null && venCd == '009428' && venItemCd != null)){
        alert("멀티콘 상품은 찜하기에 담을 수 없습니다!!");
        return;
    }

    if(itemType == '04'){
        alert("이 상품은 전문상담원과 상담 후 구매하실 수 있습니다.\n상담을 원하시면 080-000-0000으로 문의하여 주시기 바랍니다.\n전문상담원이 친절히 안내해 드리겠습니다.");
        return;
    }

    if(isLogin() != 'true') {
        if(confirm("찜을 하기 위해 로그인이 필요합니다.\n로그인 하시겠습니까?")){
            openLoginPopup(location.href);
        }
        return false;
    }
    
    if(goActionCnt > 1) return;
    
    var params = "chkedSlitmCdUitmCds=" + slitmCd;
              
    //파라미터 sectId 가 존재 할경우 sectId 전달
    var sectId = "";
    if (sectId == "" || sectId == "0") {
        sectId = "";
    }
    
    // 2020.11.19 icj PDAItemPtcMst.jsp zzimDone 참조. 2020.12.03 삭제기능 포함
    $.ajax({
        url: "/p/mpc/insertGgim.do"
        ,dataType: "json"
        ,data: params
        ,success : function(data) {
             goActionCnt = 0;
             jjimList();
             var gaAction;
             if(data.insertResult != 'undefined' && data.insertResult == '0'){
                  alert("찜하기가 불가능한 상품입니다.");
                  //alert("판매중인 단품이 없어 찜하지 못했습니다.");
                  return true;
             }else if(data.insertResult != 'undefined' && data.insertResult == '1'){
                  $(event.target).removeClass("on");   
                  alert("찜목록에서 삭제 되었습니다.");
                  try {
                      var jjimTag = data.slitmCd + "_" + data.slitmNm;
                                    
                      gaAction = '찜취소';
                      var $slitmInfo = null;
                      if($(obj).length > 0) {
                      	 $slitmInfo = $(obj).closest('figure');
                      	 setGaPromotion($slitmInfo.attr("ga-custom-title"), $slitmInfo.attr("ga-custom-name"), $slitmInfo.attr("ga-custom-position"), gaAction, jjimTag);
                      }else {
                    	 GA_Event('검색결과','상품리스트_찜취소', jjimTag);
                      }
                      
                  } catch (e) {alert(e); }
                  return true;
             }else if(data.custGGimCnt >= 200){
                  alert("더 이상 찜 할 수 없습니다. 찜리스트에서 오래된 상품을 삭제 후 다시 이용해 주세요.");  
                  return true;
             }else {            	 
            	 if(data != null && data.needLogin){
            		 // 세션 로그인이 풀려서 로그인이 안된 경우
            		 if(confirm("찜을 하기 위해 로그인이 필요합니다.\n로그인 하시겠습니까?")){
	                      openLoginPopup(location.href);
	                 }
	                 return false;
            	 }
                  $(event.target).addClass("on");                        
                  alert("찜 목록에 추가 되었습니다.");
                  try {
                      var jjimTag = data.slitmCd + "_" + data.slitmNm;
                      
                      gaAction = '찜';
                      var $slitmInfo = null;
                      if($(obj).length > 0) {
                    	  $slitmInfo = $(obj).closest('figure');
                          setGaPromotion($slitmInfo.attr("ga-custom-title"), $slitmInfo.attr("ga-custom-name"), $slitmInfo.attr("ga-custom-position"), gaAction, jjimTag);
                      }else {
                    	  GA_Event('검색결과','상품리스트_찜', jjimTag);  
                      }
                      
                  } catch (e) {}
             }                   
        },
        error : function(){
             console.log("json error");
             goActionCnt = 0;
         }
    });               
}

/*
 * 2020.12.01 icj 방송 알리미    
 * PDAItemPtcMst.jsp bitemAlrimPopupNew 참조
 */
function bitemAlrimPopupTrk(slitmNm, slitmCd, bsitmCd) {
    if(isLogin() != 'true') {
        openLoginPopup(location.href);
        return false;
    }               
    
    dp_clickTrace('alimi');
    
    
    // 방송 알리미 팝업
    // addBitemAlrimCommonPopupNew(slitmNm, slitmCd, bsitmCd);  //AS-IS
        alimPopup(slitmNm, slitmCd, bsitmCd, function(w){
    	listAlrimiWithItem();
    });
}

function alimPopup(slitmNm, slitmCd, bsitmCd, callback) {
    var w = openPopup("/p/bma/editBitmAlrimNewPup.do?slitmNm=" + encodeURIComponent(slitmNm) + "&slitmCd="+slitmCd + "&bsitmCd="+bsitmCd,
    		"", 600, 700, "yes", $(window).width(), $(window).height());
    
    var wInterval = setInterval(function(){
        if(w.closed){
//             console.log('닫힘');
            callback(w);
            clearInterval(wInterval);
        }else {
//             console.log('열림')
        }
    },1000);
}


function alimLayer() {
	$.ajax({
        type: "POST"
        ,url: "/p/bma/editBitmAlrimNewPup.do"
        ,data: {
            returnUrl : location.href,
            slitmCd : slitmCd,
            slitmNm : slitmNm
        }
        ,dataType: "html"
        ,async: false
        ,success : function(data) {
            if($("#bitmAlrimLayer").length == 0){
                var html = '<div class="layer-popup brand" id="bitmAlrimLayer">';
                html += '<div class="pop-wrap">';
                html += '<div class="pop-content-wrap">';
                html += '<strong class="pop-title">방송 알리미</strong></div>';
                html += '<div class="pop-content" id="bitmAlrimBody"></div>';
                html += '<button class="btn-close" id="bitmAlrimCloseBtn"><span>팝업 닫기</span></button>';    
                html += '</div>';
                $('body').append(html);
                
                $('#bitmAlrimCloseBtn').click(function(){
                    $("#bitmAlrimLayer").hide();
                });
            }
            $("#bitmAlrimBody").html(data);
            $("#bitmAlrimLayer").show();
        }
        ,
        error : function() {
            alert('방송알리미 신청시 오류가 발생했습니다. 잠시후 다시 시도하세요.');
            console.log("json error");
        }
    });
}

//상품상세이동
function goItemDetail(url, obj, target) {
    var $slitmInfo = $(obj).closest('.pdthumb');
    if($slitmInfo){
        if($slitmInfo.hasClass('comingsoon')){
            alert('아직 판매중이 아닙니다.');
            return false;
        } 
        /*
        if($slitmInfo.hasClass('soldOut')){
            alert('품절입니다.');
            return false;
        }
        */
    }
    
    /* ga tagging */
    try{
        if($slitmInfo && $slitmInfo.attr("ga-custom-title")){
            setGaPromotion($slitmInfo.attr("ga-custom-title"), $slitmInfo.attr("ga-custom-name"), $slitmInfo.attr("ga-custom-position"), $slitmInfo.attr("ga-custom-creative"), $slitmInfo.attr("ga-custom-id"))    
        }
    } catch(e) {
        console.log(e);
    }
    
    if(target){
        window.open(url,target);
    }else{
        window.location.href = url;
    }
    
}

function personalSet(){
    personalJJimSet();
    personalAlrimiSet();
}

// 방송톡
function brodChatCheck(){

    //방송톡 가능여부
    $.ajax({
        type: "GET",
        //url: "https://marsheg.sweettracker.net:4443/user/api/is_aviliable_chat/format/json",
        url: "https://broadeg.happytalk.io/user/api/is_aviliable_chat/format/json",
        success: function(result) {                     
                if(result.code == 'success'){                
                    // 로그인 체크 및 팝업창 열기
                    if(isLogin() == 'true'){
                        var screenWidth = $(window).width();
                        var screenHeight = $(window).height();
                        var width = 480;     
                        var height = 700;    
                        var left = (screenWidth - width) / 2;
                        var top = (screenHeight - height) / 2;
                        var url = "https://www.hmall.com/p/bmc/brodChatPup.do";                     
                        var popName = "brodChatPup";
                        var popOption = "height="+ height +", width="+ width +", left="+left+", top="+top+", fullscreen=no, location=no, scrollbars=no, menubar=no, toolbar=no, titlebar=no, directories=no, resizable=no";
                        window.open(url, popName, popOption);
                    }else{
                        openLoginPopup("/p/bmc/brodPordPbdv.do"); return false;
                    }               
                }else{
                     //채팅방 상태가 좋지 않으면 오류메시지 표시.
                     alert(result.results);                     
                }            
        },
        async: false,
        dataType: 'jsonp',
        crossDomain: true
    });
}

// 기획전 템플릿 다운로드 쿠폰 적용
var roulette_flag = 0; //계속 클릭 방지
function DirectCopnDownload(prmoNo){
	
	var now_urls = location.href;
    var returnUrl = now_urls.split('hmall.com');
    
	if(isLogin() == 'true'){
		
		if(roulette_flag != 0){
	        return false;
	    }
		roulette_flag = 1;
		
		$.ajax({
			type: "post"
			,url: "/pevent/eva/evntSectCopnDownLoad.do"
			,dataType: "json"
			,data:{prmoNo:prmoNo}
			,async: false
			,success : function(data) {
				if(data.save){
					roulette_flag = 0;
					alert("쿠폰이 발행되었습니다.");
				}else{
					roulette_flag = 0;
					if( data.errorMsg == "UPNT_REGISTER" ){
						if(confirm("H.Point 통합회원 가입 후 이벤트 응모 가능합니다.\nH.Point 전환가입 하시겠습니까?")) {
                             window.location.href = "/p/cua/registUpnt.do";
                        }else{
                        	return false;	
                        }
					}else{
						if(data.otp == "no"){
                            openPopup("/pevent/eva/evaEvntSmsSelfCertPup.do?btn=agree&returnUrl="+returnUrl[1], 'smsSendPup', "500", "611", null, $(window).width(), $(window).height());
                        }else{
                            alert(data.errorMsg);   
                            return false;
                        }
					}
				}
			}
			,error : function(request,status,error){
				if(confirm('응모시 오류가 발생했습니다.')){
				}
				roulette_flag = 0;
			}
			});
			return false;
	}else{
		openLoginPopup(returnUrl[1]);
		return false;
	}
}    

//for chrome debugger
//# sourceURL=script-for-main-dprenew.js
</script>

<!-- includeScript -->
<script type="text/javascript" src="//image.hmall.com/p/js/co/intersectionObserver.js?ver=040711"></script>




<script type="text/javascript">

    var isScrollDown = false;
	var itemPage = 1;
	if ("0" == "0") {
		itemPage = 0;
	}
	var itemArea = ""; 
	//var curPageTemplate = "";
	var preLoadData = "";
	
	// 뒤로가시시 처리
	var pageScrollTop;
	var reloadPage;
	
	$(function () {
		// 뒤로가기를 위한 세션 스토리지 초기화
		if(window.sessionStorage != null)  {
		    var storedMainPage = sessionStorage.getItem('mainPage');
		    if(isEmpty(storedMainPage) || storedMainPage != 'bordEtv') {
		        sessionStorage.setItem('mainPage', 'bordEtv');
		        sessionStorage.setItem('mainPageAjax', 1);
		        sessionStorage.setItem('mainPageScrollTop', $(window).scrollTop());
		        pageScrollTop = $(window).scrollTop();
		        reloadPage = itemPage;
		    } else {
		        pageScrollTop = new Number(sessionStorage.getItem('mainPageScrollTop'));
		        reloadPage = new Number(sessionStorage.getItem('mainPageAjax'));
		    }
		}
		
	
	    // 뒤로가기시 로딩        
	    if(reloadPage > 1) {
	        for(var i=0; i < reloadPage -1; i++){
	            loadReviewList(false, false);
	        }
	
	        //alert(pageScrollTop)
	        $(window).scrollTop(pageScrollTop);
	        
	        // 
	        //alert($(window).scrollTop())
	        
	        setTimeout(function () {
	            //alert(pageScrollTop)
	            $(window).scrollTop(pageScrollTop);
	        }, 1000);
	        
	        
	        $('body').commonUi('initLibrary');
	        personalSet();
	
	        // 이미지 로딩 
	        initObserver();
	        
	    } else {
	    	
	    	if (itemPage == 0) {
                // 다음페이지 데이터 먼저 로딩
                loadReviewList(true, false);
	    	} else {
	    	    // 다음페이지 데이터 먼저 로딩(실제 추가하지는 안음)
		        loadReviewList(true, true);
	    	}
	    }
	
	    $(window).scroll(function(e) {
	
	        if(window.sessionStorage != null){
	            //console.log("isScroll :: " +$(this).scrollTop());
	            sessionStorage.setItem('mainPageScrollTop', $(this).scrollTop());
	        }
	        
	        //console.log("isScroll :: " +isScrollDown);
	        if(isScrollDown) return false;
	        
	
	        
	        var dh = $(document).height();
	        var wh = $(window).height();
	        var wt = $(window).scrollTop();
	        var actionPoint = (dh / 4) * 3; 
	
	        //console.log("actionPoint :: " +actionPoint + " (wh + wt) :: " +(wh + wt));
	
	        if (actionPoint <= (wh + wt)) {
	            loadReviewList(true, true)
	        }
	    });
	});


    function loadReviewList(async, preload) {

        if(isScrollDown) return false;
        isScrollDown = true;
        
        var dispTrtyNmCd = "bordEtv";
        var mainDispSeq = "3";
        var itemArea = "";
        var isLoadingBar = false;
        
        try {
            var url = "";             
            var param = new Object();

            //console.log("dispTrtyNmCd-->"+dispTrtyNmCd)
            
            if (dispTrtyNmCd == "home") { //메인홈                            
                
                url = "/p/homePage.do";
                itemArea = "div.home-wrap"; 
                itemPage++;
                isLoadingBar = true;
                if(window.sessionStorage != null){
                    sessionStorage.setItem('mainPageAjax', itemPage);
                }

                // 이전에 로드한 데이터 추가
                if (preload && !isEmpty(preLoadData)) {
                    $(itemArea).append(preLoadData);
                    
                    $('body').commonUi('initLibrary');
                    personalSet();

                    // 이미지 로딩 
                    initObserver();
                }
                 
                if (itemPage > 5)
                    return;
                
                param = { mainDispSeq : mainDispSeq
                        , itemPage : itemPage
                        , loginCheck : 'true'
                        , EHAdltCertYn : ''
                        , preView : ''
                };
                
            } else if (dispTrtyNmCd == "bordEtv") { //홈쇼핑                            
                
                url = "/p/tvMainRPage.do";
                itemArea = "div.homeshoping-wrap"; 
                itemPage++;
                isLoadingBar = true;
                if(window.sessionStorage != null){
                    sessionStorage.setItem('mainPageAjax', itemPage);
                }

                // 이전에 로드한 데이터 추가
                if (preload && !isEmpty(preLoadData)) {
                    $(itemArea).append(preLoadData);
                    
                    $('body').commonUi('initLibrary');
                    personalSet();

                    // 이미지 로딩 
                    initObserver();
                }
                 
                if (itemPage > 5)
                    return;
                
                param = { mainDispSeq : mainDispSeq
                        , itemPage : itemPage
                        , loginCheck : 'true'
                        , EHAdltCertYn : ''
                        , preView : ''
                };
                
            } else if (dispTrtyNmCd == "bordDtv") { //미리TV                            
                
                url = "/p/tvPlusShopMainRPage.do";
                itemArea = "div.main-contents-area"; 
                itemPage++;
                isLoadingBar = true;
                if(window.sessionStorage != null){
                    sessionStorage.setItem('mainPageAjax', itemPage);
                }

                // 이전에 로드한 데이터 추가
                if (preload && !isEmpty(preLoadData)) {
                    $(itemArea).append(preLoadData);
                    
                    $('body').commonUi('initLibrary');
                    personalSet();

                    // 이미지 로딩 
                    initObserver();
                }
                 
                if (itemPage > 2)
                    return;
                
                param = { mainDispSeq : mainDispSeq
                        , itemPage : itemPage
                        , preView : ''
                };
                
            } else if (dispTrtyNmCd == "dptsMain") { // 백화점                            
            	
                url = "/p/dsMainRPage.do";
                itemArea = "div.body-hdpdwrap"; 
                itemPage++;
                if(window.sessionStorage != null){
                    sessionStorage.setItem('mainPageAjax', itemPage);
                }

                // 이전에 로드한 데이터 추가
                if (preload && !isEmpty(preLoadData)) {
                    $(itemArea).append(preLoadData);
                    
                    $('body').commonUi('initLibrary');
                    personalSet();

                    // 이미지 로딩 
                    initObserver();
                }
                 
                if (itemPage > 3)
                    return;
                
                param = { mainDispSeq : mainDispSeq
                        , itemPage : itemPage
                        , preView : ''
                };
                
            } else {
                isScrollDown = false;
                return;
            }
 
            //console.log("ajax call page=" + itemPage);
            //alert(itemPage);
            
            if (isLoadingBar) {
                $(itemArea).append("<div id='mainLoadingArea'><ul>로딩중...</ul></div>");
                moreLoading(true, $("#mainLoadingArea ul"),true);
            }                    
                    
            $.ajax({
                type: "get"
                ,url: "https://www.hmall.com" + url
                ,dataType: "html"
                ,data: param
                ,async: async
                ,success : function(data) {
                	
                   if (preload == false) {
                       $(itemArea).append(data);

                       if (async) {
                           $('body').commonUi('initLibrary');
                           personalSet();

                           // 이미지 로딩 
                           initObserver();
                       }
                       
                   } else {
                       preLoadData = data;
                   }


                   if (isLoadingBar) {
                       moreLoading(false, $("#mainLoadingArea ul"));
                       $("#mainLoadingArea").remove();
                   }
                   isScrollDown = false;
                   

                   // 현재 로딩한 페이지가 화면을 꽉 채우지 못하면 추가 로딩
                   if ($("main").height() < $(window).height()) {
                       loadReviewList(true, true)
                   }
                }
                ,
                error : function(e) {   
                	
                	// CA 가 아니면 중지
                	if (isEmpty("https://www.hmall.com")) {

                        if (isLoadingBar) {
                            moreLoading(false, $("#mainLoadingArea ul"));
                            $("#mainLoadingArea").remove();
                        }
                        
                        isScrollDown = false;
                        return;
                	}
                		
                	
                    // 실패시 원래 URL
                	$.ajax({
                        type: "get"
                        ,url: url
                        ,dataType: "html"
                        ,data: param
                        ,async: false
                        ,success : function(data) {
                            
                           if (preload == false) {
                               $(itemArea).append(data);

                               if (async) {
                                   $('body').commonUi('initLibrary');
                                   personalSet();

                                   // 이미지 로딩 
                                   initObserver();
                               }
                               
                           } else {
                               preLoadData = data;
                           }


                           if (isLoadingBar) {
                               moreLoading(false, $("#mainLoadingArea ul"));
                               $("#mainLoadingArea").remove();
                           }
                           isScrollDown = false;
                        }
                        ,
                        error : function(e) {   

                           if (isLoadingBar) {
                               moreLoading(false, $("#mainLoadingArea ul"));
                               $("#mainLoadingArea").remove();
                           }
                           isScrollDown = false;
                        }
                    });
                }
            });
        } catch(e) {}
    }
</script>
<script type="text/javascript" src="//image.hmall.com/p/js/co/intersectionObserver.js?ver=041217"></script>
<!-- Main Contents css = Contents css부분은 각페이지마다 다르게 해당되는 css가 호출 됨(폴더 구조별)  -->
<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/main.css">
<link href="//image.hmall.com/p/css/co/video-js.css" rel="stylesheet">
<script src="//image.hmall.com/p/js/co/video.js"></script>
<script src="//image.hmall.com/p/js/co/videojs-http-streaming.js"></script>
<script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/1066206974/?random=1649752878972&amp;cv=9&amp;fst=1649752878972&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=2&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa460&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Findex.do&amp;tiba=%ED%98%84%EB%8C%80%ED%99%88%EC%87%BC%ED%95%91%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/937000404/?random=1649752879099&amp;cv=9&amp;fst=1649752879099&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=2&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa460&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Findex.do&amp;tiba=%ED%98%84%EB%8C%80%ED%99%88%EC%87%BC%ED%95%91%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}
</style>
</head>



<body>
<!-- wing banner 미노출 시 : wing-none 클래스 추가 -->
<div class="wrap hyundai-home">
    <div class="nav-skip"><a href="#mainContents">본문 콘텐츠로 건너뛰기</a></div>

    <!-- GNB 메인 -->
 
<!-- header -->
<script type="text/javascript" src="//image.hmall.com/gen/js/searchPopKeyWordList.js?ver=041217"></script>
<script type="text/javascript" src="//image.hmall.com/gen/js/searchADTextList.js?ver=041217" charset="UTF-8"></script>
<script type="text/javascript" src="//image.hmall.com/gen/js/searchADLinkList.js?ver=041217" charset="UTF-8"></script>
<script type="text/javascript" src="//image.hmall.com/gen/js/searchSpecialShopLinkList.js?ver=041217" charset="UTF-8"></script>
<script type="text/javascript" src="//image.hmall.com/gen/js/searchBrndShopLinkList.js?ver=041217" charset="UTF-8"></script>

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

        
        $.ajax({
            type: "post"
            , url: "/p/GA_getDimension.do"
            , data: ""
            , dataType: "json"
            , async: true
            , success : function(data) {
                console.log("ajax Return");
            }
        });
        
	}

    
    
    
    
    
    
    
    
    var _gaid = getCookieGA('GAID');
    if(_gaid != null){GA_info[GACustomKey.Dimension11] = _gaid;}
    
     GA_info[GACustomKey.Dimension12] = "N"; 
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

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



</script> <!-- GA Custum lib -->
<script type="text/javascript" src="//image.hmall.com/gen/js/new_main_data.js?ver=041217" charset="UTF-8"></script>

<!-- TODO 곽희섭 20170523 통합포인트 추가 -->
<script type="text/javascript" src="//image.hmall.com/p/js/cu/SsoAjax.js?version=1"></script>

<script type="text/javascript">
	var serverHost       = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0 || location.href.indexOf("local") > 0) ? "https://" + location.host : "https://www.hmall.com";
	var serverHostForSSL = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0 || location.href.indexOf("local") > 0) ? "https://" + location.host : "https://www.hmall.com";

	/* TODO 곽희섭 20170524 통합포인트 추가 */
	var ssoAuthYn       = "";
	var ssoAuthCd       = "";
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
<form id="loginForm" name="loginForm" method="post" action="https://www.h-point.co.kr/cu/login.nhd" target="sendLogin">
	<input type="hidden" name="retUrl" value="https://www.hmall.com/p/cob/upntGatePage.do">
	<input type="hidden" name="retPage" value="">
	<input type="hidden" name="prtnrId" value="D020" readonly="">
	<input type="hidden" name="chnnlId" value="1102">
	<input type="hidden" name="htmlYn" value="Y">
	
	<input type="hidden" name="ci" value="">
</form>
<form id="myPntForm" name="myPntForm" method="post" action="" target="myPntForm">
	<input type="hidden" name="mcustNo" value="">
</form>


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
					_html = '<a class="banner-item type3 firstitem gp_className" ga-category="헤더" ga-action="탑배너1" ga-label="' + dispNm + '" href="javascript:bizSpringTag(\''+dispUrl+'&_IC_=top'+Math.round(i+1)+'\',\'^헤더^탑배너^'+dispNm+'\');">';
				} else if (i == 1) {
					_html = '<a class="banner-item type3 gp_className" ga-category="헤더" ga-action="탑배너2" ga-label="' + dispNm + '" href="javascript:bizSpringTag(\''+dispUrl+'&_IC_=top'+Math.round(i+1)+'\',\'^헤더^탑배너^'+dispNm+'\');">';
				} else {
					_html = '<a class="banner-item type3 lastitem gp_className" ga-category="헤더" ga-action="탑배너4" ga-label="' + dispNm + '" href="javascript:bizSpringTag(\''+dispUrl+'&_IC_=top'+Math.round(i+1)+'\',\'^헤더^탑배너^'+dispNm+'\');">';
				}
				

				

				if (i == 3) {
					_html = _html + '<span class="label-wrap"><span class="cat-label">'+dispNm+'</span><span class="main-label">'+evntDesc+'</span></span></a>';
				} else {
					_html = _html + '<img src="'+imageServer+dispImflNm+'"/><span class="label-wrap"><span class="cat-label">'+dispNm+'</span><span class="main-label">'+evntDesc+'</span></span></a>';
				}

				$("#top_bar").append(_html);

				
				if ( i == 2 ) return false;
				

				
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

	<%@ include file="../header.jsp" %>  
	
	<!-- 최근본상품 -->
    <div id="recentlyItem" class="layer-popup recently" style="display:none;">
    </div>
    

<form name="registMemberForm" method="post">
	<input type="hidden" name="email" value="">
	<input type="hidden" name="emailCertNo">
	<input type="hidden" name="langType" value="korean">

	<!-- 전자상거래 규제 개선 -->
	<input type="hidden" name="isOverseasSectPup" value="N">
	<input type="hidden" name="popupYn" value="N">
	<input type="hidden" name="redirectUrl" value="">
	<input type="hidden" name="errorMessage" value="">
	<input type="hidden" name="token">
	<input type="hidden" name="snsType">
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
	
	setTopBanner();
	
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

    <!-- //.header -->

    <main class="cmain main" role="main" id="mainContents"><!-- 메인페이지 'main' 클래스 추가 -->
        <div class="container">
            <div class="contents">
                <!--contents-area-->
                <div class="main-contents-area">
                    <!--home-wrap-->
                    <div class="home-wrap">
           <!--  F1F9E3 /  -->
       
       <div class="home-section bg" style="background-color:#F1F9E3;">
           <div class="bg-wrap">
               <div class="bg-img">

                   
               </div>
           </div>
       </div>
       <div class="home-section top" style="height:800px;">
           <div class="left-area">
               <div class="popslider" style="height:600px;">
                   <div class="sliderwrap slick-initialized slick-slider isArrows" data-modules-slick="arrows:true;dots:false;autoplay:true;paging:false;infinite:true;slidesToShow:1;"><button class="slick-prev slick-arrow" aria-label="Previous" type="button" style="display: inline-block;">Previous</button><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 2625px; transform: translate(-525px, 0px);"><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                        	
                            <a href="javascript:;" style="background-color:#00cbbf;" onclick="gaTagging(this, 'https://www.hmall.com/m/index.do?mainSeq=50', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="메인팝업" ga-custom-creative="환절기 뷰티 페어" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:1" tabindex="-1">
                            
                            
                                <div class="txt-area">
                                    <span class="sub-txt">환절기 뷰티 페어 </span>
                                    <span class="main-txt">보습 &amp; 진정 집중 케어 <br>최대 10%적립 찬스</span>
                                </div>
                                <span class="img"><img src="https://image.hmall.com/HM/HM115/20220407/144416/220412_00cbbf_popup.jpg" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                            </a>
                        </div></div></div><div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                        	
                            <a href="javascript:;" style="background-color:#62c31f;" onclick="gaTagging(this, 'https://www.hmall.com/m/dpa/searchSpexSectItem.do?PlanSaleSectID=2721561', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="메인팝업" ga-custom-creative="단 하루! 녹십자 유산균 단독혜택" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:1" tabindex="0">
                            
                            
                                <div class="txt-area">
                                    <span class="sub-txt">단 하루! 녹십자 유산균 단독혜택 </span>
                                    <span class="main-txt">오리지널 포스트바이오틱스 9박스 <br>1개월 9,500원+경품추첨</span>
                                </div>
                                <span class="img"><img src="https://image.hmall.com/HM/HM115/20220408/110523/220412_62c31f_popup.jpg" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                            </a>
                        </div></div></div><div class="slick-slide" data-slick-index="1" aria-hidden="true" style="width: 525px;" tabindex="-1"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
          	
                            <a href="javascript:;" style="background-color:#00cbbf;" onclick="gaTagging(this, 'https://www.hmall.com/m/index.do?mainSeq=50', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="메인팝업" ga-custom-creative="환절기 뷰티 페어" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:1" tabindex="-1">
                            
                                <div class="txt-area">
                                    <span class="sub-txt">단 하루! 녹십자 유산균 단독혜택 </span>
                                    <span class="main-txt">오리지널 포스트바이오틱스 9박스 <br>1개월 9,500원+경품추첨</span>
                                </div>
                                <span class="img"><img src="https://image.hmall.com/HM/HM115/20220408/110523/220412_62c31f_popup.jpg" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                            </a>
                        </div></div></div></div></div><button class="slick-next slick-arrow" aria-label="Next" type="button" style="display: inline-block;">Next</button></div>
               </div>

               <div class="top-category-list">
                   <ul>
                       
                       
                       <li>
                       	   
                           <a href="javascript:;" onclick="gaTagging(this, 'https://www.hmall.com/m/index.do?mainSeq=7', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="이벤트아이콘" ga-custom-creative="이벤트/혜택" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:3">
						   
						                              
                               <span class="icon"><img src="https://image.hmall.com/MH/MH002/20210208/052516/icon_banner_h_event.png" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                               <span class="tit">이벤트/혜택</span>
                           </a>
                       </li>
                       
                       <li>
                       	   
                           <a href="javascript:;" onclick="gaTagging(this, 'https://www.hmall.com/m/index.do?mainSeq=64', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="이벤트아이콘" ga-custom-creative="선물하기" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:3">
						   
						                              
                               <span class="icon"><img src="https://image.hmall.com/MH/MH002/20210208/052551/icon_banner_h_present.png" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                               <span class="tit">선물하기</span>
                           </a>
                       </li>
                       
                       <li>
                       	   
                           <a href="javascript:;" onclick="gaTagging(this, 'https://www.hmall.com/m/dpa/searchSpexSectItem.do?PlanSaleSectID=2740029', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="이벤트아이콘" ga-custom-creative="VIP라운지" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:3">
						   
						                              
                               <span class="icon"><img src="https://image.hmall.com/MH/MH002/20211119/152702/vip_lounge.png" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                               <span class="tit">VIP라운지</span>
                           </a>
                       </li>
                       
                       <li>
                       	   
                           <a href="javascript:;" onclick="gaTagging(this, 'https://www.hmall.com/p/dpa/searchSpexSectItem.do?sectId=2382784', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="이벤트아이콘" ga-custom-creative="가격!끝판왕" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:3">
						   
						                              
                               <span class="icon"><img src="https://image.hmall.com/HM/HM115/20211224/155654/event_icon_16.jpg" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                               <span class="tit">가격!끝판왕</span>
                           </a>
                       </li>
                       
                       <li>
                       	   
                           <a href="javascript:;" onclick="gaTagging(this, 'https://www.hmall.com/m/index.do?mainSeq=50', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="이벤트아이콘" ga-custom-creative="뷰티전문관" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:3">
						   
						                              
                               <span class="icon"><img src="https://image.hmall.com/MH/MH002/20210513/145036/152a.jpg" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                               <span class="tit">뷰티전문관</span>
                           </a>
                       </li>
                       
                       
                   </ul>
               </div>
               
           </div>

           <div class="right-area">
           
               
               <div class="topslider" style="height:250px;">
                   <div class="sliderwrap slick-initialized slick-slider slick-single" data-modules-slick="arrows:false;dots:true;autoplay:true;paging:false;infinite:true;slidesToShow:1;"><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 525px; transform: translate(0px, 0px);"><div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                       	   
                           <a style="background:#518881;" href="javascript:;" onclick="gaTagging(this, 'https://www.hmall.com/p/dpa/searchSpexSectItem.do?sectId=2756243', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="탑배너" ga-custom-creative="Hmall 단독 최저가 포트메리온 " ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:2" tabindex="0">
                           
                           
                           
                               <div class="txt-area">
                                   <span class="tit">Hmall 단독 최저가 포트메리온 </span>
                                   
                                   
                                       <span class="txt">4인 홈세트 20만원대!<br>최대 10% 적립까지</span>
                                   
                               </div>
                               <span class="img"><img src="https://image.hmall.com/HM/HM115/20220407/132218/0412_top_518881.jpg" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                               
                               
                               <span class="logo"><img src="https://image.hmall.com/HM/HM002/20220126/150405/logoImg20220126150416.png" alt="브랜드줌" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')"></span>
                               
                           </a>
                       </div></div></div></div></div></div>
               </div>
               
               <div class="dealslider" style="height:450px;">
                   <div class="sliderwrap slick-initialized slick-slider isArrows slick-paging" data-modules-slick="arrows:true;dots:false;autoplay:true;paging:true;infinite:true;slidesToShow:1;"><button class="slick-prev slick-arrow" aria-label="Previous" type="button" style="">Previous</button>
                   <div class="slick-list draggable">
                   
                   	<div class="slick-track" style="opacity: 1; width: 6300px; transform: translate(-2625px, 0px);">
                   		<div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                   
                           <ul class="deal-list">
                        
                           <li>
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2795126', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="봄 신상전 특별 할인50~90% " ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2795126.jpg" alt="[JJ지고트] 220411주차" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                       </div>
                                       <div class="tfxt-area">
                                           <span class="tit">JJ지고트 브랜드위크</span>
                                           <span class="txt">봄 신상전 특별 할인50~90% </span>
                                           <span class="benefit">추가 할인쿠폰까지!</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2477009', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="관절 팔팔/혈행 개선 혈관 팔팔" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2477009.jpg" alt="씨스팡 봄건강 세일" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">씨스팡 브랜드 위크</span>
                                           <span class="txt">관절 팔팔/혈행 개선 혈관 팔팔</span>
                                           <span class="benefit">15% 쿠폰+13% 적립+사은품</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide" data-slick-index="0" aria-hidden="true" style="width: 525px;" tabindex="-1"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2477009', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="관절 팔팔/혈행 개선 혈관 팔팔" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2477009.jpg" alt="씨스팡 봄건강 세일" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">씨스팡 브랜드 위크</span>
                                           <span class="txt">관절 팔팔/혈행 개선 혈관 팔팔</span>
                                           <span class="benefit">15% 쿠폰+13% 적립+사은품</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2757288', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="종근당·차바이오·스키니랩 外" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2757288.jpg" alt="건강식품 최대 60%할인" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">건강식품&amp;다이어트</span>
                                           <span class="txt">종근당·차바이오·스키니랩 外</span>
                                           <span class="benefit">추가 10% 쿠폰 &amp; 적립까지</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide" data-slick-index="1" aria-hidden="true" style="width: 525px;" tabindex="-1"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2757891', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="오메가3·대마종자유 外" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//MH/MH002/20220411/141613/3.png" alt="[4/11~4/17] 닥터린 브랜드위크" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">이번주는 닥터린 위크</span>
                                           <span class="txt">오메가3·대마종자유 外</span>
                                           <span class="benefit">최대 50%+10% 적립</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2132547392', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="에스트라 아토베리어 크림" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/3/7/54/32/2132547392_0.jpg" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">환절기 철통보습템!</span>
                                           <span class="txt">에스트라 아토베리어 크림</span>
                                           <span class="benefit">임신/출산선물 기획세트</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide" data-slick-index="2" aria-hidden="true" style="width: 525px;" tabindex="-1"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2132641155', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="38M-24롤X2팩으로 더 오래!" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/1/1/64/32/2132641155_0.jpg" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">크리넥스 3겹 데코앤소프트</span>
                                           <span class="txt">38M-24롤X2팩으로 더 오래!</span>
                                           <span class="benefit">36,900원+추가쿠폰</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=1535226', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="시몬스 최대 35% 쿠폰" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr1535226.jpg" alt="시몬스 비밀특가 WEEK" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">단 하루 역대급 혜택!</span>
                                           <span class="txt">시몬스 최대 35% 쿠폰</span>
                                           <span class="benefit">5~7% 카드 할인+최대 13% 적립</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide" data-slick-index="3" aria-hidden="true" style="width: 525px;" tabindex="-1"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, 'https://www.hmall.com/m/index.do?mainSeq=50', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="보습&amp;진정 집중 케어" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2794516.png" alt="22.04.환절기 뷰티 페어" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                               <span class="logo">
                                                   <img src="https://image.hmall.com/HM/HM002/20210402/104629/logoImg20210402104645.png" alt="페어" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                               </span>
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">환절기 뷰티 페어</span>
                                           <span class="txt">보습&amp;진정 집중 케어</span>
                                           <span class="benefit">최대 10%적립 찬스!</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2370007', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="입생로랑 · 아르마니 · 비오템 外" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2370007.jpg" alt="[0411-0413][브랜드줌] 로레알 그룹전" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                               <span class="logo">
                                                   <img src="https://image.hmall.com/HM/HM002/20220126/150405/logoImg20220126150416.png" alt="브랜드줌" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                               </span>
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">럭셔리뷰티 봄 신상♥ </span>
                                           <span class="txt">입생로랑 · 아르마니 · 비오템 外</span>
                                           <span class="benefit">최대 15%쿠폰 + 카드즉시할인</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide slick-current slick-active" data-slick-index="4" aria-hidden="false" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2394644', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="모던하우스 최대 13% 적립" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="0">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2394644.jpg" alt="[모던하우스] 추가쿠폰혜택 모던하우스 인기상품 특집" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">봄맞이 인테리어</span>
                                           <span class="txt">모던하우스 최대 13% 적립</span>
                                           <span class="benefit">카드 즉시 할인까지</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2378557', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="봄나들이템으로 준비완료!" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="0">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2378557.jpg" alt="[브랜드줌] 승용완구 대전" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                               <span class="logo">
                                                   <img src="https://image.hmall.com/HM/HM002/20220126/150405/logoImg20220126150416.png" alt="브랜드줌" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                               </span>
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">국민나들이템 핫딜찬스♥</span>
                                           <span class="txt">봄나들이템으로 준비완료!</span>
                                           <span class="benefit">H.Point 10%적립+카드사혜택!</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide" data-slick-index="5" aria-hidden="true" tabindex="-1" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2621506', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="브라운 X 오랄비" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2621506.jpg" alt="브라운X오랄비 모음전" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">상쾌 양치! 깔끔 면도!</span>
                                           <span class="txt">브라운 X 오랄비</span>
                                           <span class="benefit">적립 10%+10% 다운 쿠폰</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, 'https://www.hmall.com/p/dpa/searchSpexSectItem.do?sectId=1568232', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="12% 할인 + 10% 다운 쿠폰" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr1568232.jpg" alt="보뚜 브랜드위크" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">미리 준비하는 가정의 달</span>
                                           <span class="txt">12% 할인 + 10% 다운 쿠폰</span>
                                           <span class="benefit">최대 혜택받으러 Go!</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide" data-slick-index="6" aria-hidden="true" tabindex="-1" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2756243', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="4/11~13, Hmall 단독!" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//MH/MH002/20220408/161109/20220408160935527.1807501.jpg" alt="혼수맞이 포트메리온 外 특가행사" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                               <span class="logo">
                                                   <img src="https://image.hmall.com/HM/HM002/20220126/150405/logoImg20220126150416.png" alt="브랜드줌" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                               </span>
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">포트메리온 4인 홈세트</span>
                                           <span class="txt">4/11~13, Hmall 단독!</span>
                                           <span class="benefit">20만원대 + 최대 10% 적립</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2687094', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="최대 13%적립" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2687094.JPG" alt="[독차지] K-CRAFT 선물전" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                               <span class="logo">
                                                   <img src="https://image.hmall.com/HM/HM002/20220407/154459/logoImg20220407154506.png" alt="독차지(2022)" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                               </span>
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">K-CRAFT 선물전</span>
                                           <span class="txt">최대 13%적립</span>
                                           <span class="benefit">4/11~4/13, 3일간</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide" data-slick-index="7" aria-hidden="true" tabindex="-1" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=114416', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="괜찮네 텀블러 12,900원" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr114416.jpg" alt="괜찮네 락앤락 기획전" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                               <span class="logo">
                                                   <img src="https://image.hmall.com/HM/HM002/20220407/154459/logoImg20220407154506.png" alt="독차지(2022)" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                               </span>
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">텀블러 파격가 행사</span>
                                           <span class="txt">괜찮네 텀블러 12,900원</span>
                                           <span class="benefit">4/11~13, 단 3일간</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2751604', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="19%쿠폰 + 카드즉시할인" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//HM/HM118/20220405/154500/tromm.jpg" alt="LG 트롬 통합 가전 기획전" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">LG 트롬 통합 가전 기획전</span>
                                           <span class="txt">19%쿠폰 + 카드즉시할인</span>
                                           <span class="benefit">4/11~13, 단 3일간</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide" data-slick-index="8" aria-hidden="true" tabindex="-1" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2739408', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="신상/HOT한 상품 다 모였다!" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2739408.png" alt="[원더브라/플레이텍스] 22년 신상 런칭 H몰 단독 특가전" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">원더브라/플레이텍스 언더웨어</span>
                                           <span class="txt">신상/HOT한 상품 다 모였다!</span>
                                           <span class="benefit">기간한정 특가,최대 15%쿠폰♥</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=1906597', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="봄~여름 신상 오픈! 이월 상품까지!" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//HM/HM113/20220405/162036/1906597_750x750.jpg" alt="블루독패밀리 22SS BRAND SALE" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">블루독 패밀리♥ 우리 아이 나들이룩</span>
                                           <span class="txt">봄~여름 신상 오픈! 이월 상품까지!</span>
                                           <span class="benefit">카드할인+추가쿠폰혜택까지!</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide" data-slick-index="9" aria-hidden="true" tabindex="-1" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2795126', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="봄 신상전 특별 할인50~90% " ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2795126.jpg" alt="[JJ지고트] 220411주차" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">JJ지고트 브랜드위크</span>
                                           <span class="txt">봄 신상전 특별 할인50~90% </span>
                                           <span class="benefit">추가 할인쿠폰까지!</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2477009', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="관절 팔팔/혈행 개선 혈관 팔팔" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2477009.jpg" alt="씨스팡 봄건강 세일" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">씨스팡 브랜드 위크</span>
                                           <span class="txt">관절 팔팔/혈행 개선 혈관 팔팔</span>
                                           <span class="benefit">15% 쿠폰+13% 적립+사은품</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div><div class="slick-slide slick-cloned" data-slick-index="10" aria-hidden="true" tabindex="-1" style="width: 525px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                           <ul class="deal-list">
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2477009', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="관절 팔팔/혈행 개선 혈관 팔팔" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2477009.jpg" alt="씨스팡 봄건강 세일" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">씨스팡 브랜드 위크</span>
                                           <span class="txt">관절 팔팔/혈행 개선 혈관 팔팔</span>
                                           <span class="benefit">15% 쿠폰+13% 적립+사은품</span>
                                       </div>
                                   </a>
                               </li>
                           
                           
                        
                           <li>
                                   
                                       
                                           
                                       
                                       
                                       
                                   
                                   
                                   <a class="gp_className" href="javascript:;" onclick="gaTagging(this, '/p/dpa/searchSpexSectItem.do?sectId=2757288', '', '');" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="딜배너" ga-custom-creative="종근당·차바이오·스키니랩 外" ga-custom-id="" ga-custom-etc="urlAction" tag-comment="GA요청:홈탭:4" tabindex="-1">
                                   
                                   
                                   
                                       <div class="img">
                                           <img src="https://image.hmall.com//static/image/sect/mblbnnr2757288.jpg" alt="건강식품 최대 60%할인" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
                                           
                                               <span class="flag-da">AD</span>
                                           
                                           
                                       </div>
                                       <div class="txt-area">
                                           <span class="tit">건강식품&amp;다이어트</span>
                                           <span class="txt">종근당·차바이오·스키니랩 外</span>
                                           <span class="benefit">추가 10% 쿠폰 &amp; 적립까지</span>
                                       </div>
                                   </a>
                               </li>
                           
                           </ul>
                       </div></div></div></div></div><button class="slick-next slick-arrow" aria-label="Next" type="button" style="">Next</button><div class="slick-slidetotal" style=""><em class="current">5</em><strong class="total">10</strong></div></div>
               </div>
               
               
           </div>
       </div>
      

      
      
 
      
      
       <div class="home-section best" style="margin-top: 0px;">
           <h3 class="section-tit">인기키워드 베스트</h3>
           <div class="moreview best-item">
           
               <div class="tab-wrap" id="hmKeyBestArea">
                   <ul class="ui-tab" role="tablist">
                   <li role="presentation" class="ui-active">  <a href="#rank1" aria-controls="rank1" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="" aria-expanded="true">      <span class="rank">1</span>      <span class="keyword">써스데이아일랜드</span>        <i class="arrow right"></i>    </a></li><li role="presentation">  <a href="#rank2" aria-controls="rank2" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="">      <span class="rank">2</span>      <span class="keyword">모덴</span>        <i class="arrow right"></i>    </a></li><li role="presentation">  <a href="#rank3" aria-controls="rank3" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="">      <span class="rank">3</span>      <span class="keyword">여성자켓</span>        <i class="arrow right"></i>    </a></li><li role="presentation">  <a href="#rank4" aria-controls="rank4" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="">      <span class="rank">4</span>      <span class="keyword">여성트렌치코트</span>        <i class="arrow right"></i>    </a></li><li role="presentation">  <a href="#rank5" aria-controls="rank5" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="">      <span class="rank">5</span>      <span class="keyword">폴로</span>        <i class="arrow right"></i>    </a></li><li role="presentation">  <a href="#rank6" aria-controls="rank6" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="">      <span class="rank">6</span>      <span class="keyword">여성원피스</span>        <i class="arrow right"></i>    </a></li><li role="presentation">  <a href="#rank7" aria-controls="rank7" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="">      <span class="rank">7</span>      <span class="keyword">원피스</span>        <i class="arrow right"></i>    </a></li><li role="presentation">  <a href="#rank8" aria-controls="rank8" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="">      <span class="rank">8</span>      <span class="keyword">라코스테여성</span>        <i class="arrow right"></i>    </a></li><li role="presentation">  <a href="#rank9" aria-controls="rank9" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="">      <span class="rank">9</span>      <span class="keyword">USPA폴로니트3종</span>        <i class="arrow right"></i>    </a></li><li role="presentation">  <a href="#rank10" aria-controls="rank10" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)" )="">      <span class="rank">10</span>      <span class="keyword">여성반팔티셔츠</span>        <i class="arrow right"></i>    </a></li></ul>
                   <div class="btns">
                       <button type="button" class="btn btn-linelgray small" data-modules-customtoggle="parent:.moreview;openText:6~10위 보기;closeText:1~5위 보기;"><i class="icon change"></i><span data-text="">6~10위 보기</span></button>
                   </div>
               </div>
               <div role="tabpanel" class="tab-pane ui-active" id="rank1">






            <div class="bestslider">
                <div class="sliderwrap slick-initialized slick-slider isArrows" data-modules-slick="arrows:true;dots:false;autoplay:false;paging:false;infinite:true;slidesToShow:3;"><button class="slick-prev slick-arrow" aria-label="Previous" type="button" style="">Previous</button><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 7992px; transform: translate(-666px, 0px);"><div class="slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138486135', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138486135_[하프클럽/써스데이아일랜드]여성 기본 나시 티셔츠 (T204MSL231W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/1/6/48/38/2138486135_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 기본 나시 티셔츠 (T204MSL231W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 기본 나시 티셔츠 (T204MSL231W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>30,580</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138394704', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138394704_[하프클럽/써스데이아일랜드]여성 스카시 변형 코바늘 포인트 보트넥 풀오버(T204MSW23" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/7/4/39/38/2138394704_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 스카시 변형 코바늘 포인트 보트넥 풀오버(T204MSW23" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 스카시 변형 코바늘 포인트 보트넥 풀오버(T204MSW23</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>80,760</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138484593', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138484593_[하프클럽/써스데이아일랜드]여성 패턴물 수영복 팬츠 (T204MSM234W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/5/4/48/38/2138484593_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 패턴물 수영복 팬츠 (T204MSM234W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 패턴물 수영복 팬츠 (T204MSM234W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>86,900</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2133078367', '', '');" tabindex="0" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2133078367_써스데이아일랜드(T216MJK133W) 싱글여밈 핸드메이드 자켓" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/3/8/07/33/2133078367_0.jpg?RS=400x400&amp;AR=0" alt="써스데이아일랜드(T216MJK133W) 싱글여밈 핸드메이드 자켓" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
	                                            <span class="playtime"><i class="icon"></i><em>00:35</em></span>
	                                       
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">써스데이아일랜드(T216MJK133W) 싱글여밈 핸드메이드 자켓</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>213,610</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138505406', '', '');" tabindex="0" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138505406_[써스데이아일랜드] (T222MJE135W) 부츠컷 데님팬츠" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/4/5/50/38/2138505406_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드] (T222MJE135W) 부츠컷 데님팬츠" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
	                                            <span class="playtime"><i class="icon"></i><em>00:34</em></span>
	                                       
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드] (T222MJE135W) 부츠컷 데님팬츠</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>106,510</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2131738452', '', '');" tabindex="0" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2131738452_써스데이아일랜드(T216MBL150W) 시보리 소매 블라우스" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/4/8/73/31/2131738452_0.jpg?RS=400x400&amp;AR=0" alt="써스데이아일랜드(T216MBL150W) 시보리 소매 블라우스" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
	                                            <span class="playtime"><i class="icon"></i><em>00:35</em></span>
	                                       
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">써스데이아일랜드(T216MBL150W) 시보리 소매 블라우스</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>118,410</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="3" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138906071', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138906071_[써스데이아일랜드](T224MOP310W)체크 쉬폰 원피스" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/0/6/90/38/2138906071_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T224MOP310W)체크 쉬폰 원피스" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T224MOP310W)체크 쉬폰 원피스</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>195,760</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="4" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138979470', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138979470_[써스데이아일랜드](T224MBL301W)패턴 아일렛 블라우스" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/4/9/97/38/2138979470_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T224MBL301W)패턴 아일렛 블라우스" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T224MBL301W)패턴 아일렛 블라우스</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>118,410</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="5" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138859235', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138859235_[써스데이아일랜드](T222MOP144W)빅카라 데님 A라인 원피스" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/2/9/85/38/2138859235_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T222MOP144W)빅카라 데님 A라인 원피스" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T222MOP144W)빅카라 데님 A라인 원피스</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>166,010</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="6" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2139147504', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2139147504_[써스데이아일랜드](T224MOP319W)레이스 깅엄 패턴 원피스" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/5/7/14/39/2139147504_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T224MOP319W)레이스 깅엄 패턴 원피스" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T224MOP319W)레이스 깅엄 패턴 원피스</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>195,760</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="7" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138905139', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138905139_[써스데이아일랜드](T222MST134W)플라워 아트윅 볼륨 스윗셔츠" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/1/5/90/38/2138905139_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T222MST134W)플라워 아트윅 볼륨 스윗셔츠" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T222MST134W)플라워 아트윅 볼륨 스윗셔츠</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>94,610</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="8" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138903669', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138903669_[써스데이아일랜드](T224MJK303W)백 프린트 워싱 데님자켓" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/6/3/90/38/2138903669_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T224MJK303W)백 프린트 워싱 데님자켓" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T224MJK303W)백 프린트 워싱 데님자켓</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>177,910</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="9" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138905627', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138905627_[써스데이아일랜드](T224MOP301W)오버롤 데님 원피스" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/6/5/90/38/2138905627_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T224MOP301W)오버롤 데님 원피스" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T224MOP301W)오버롤 데님 원피스</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>189,810</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="10" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138901511', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138901511_[써스데이아일랜드](T224MBL302W)레이스 블라우스" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/5/1/90/38/2138901511_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T224MBL302W)레이스 블라우스" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T224MBL302W)레이스 블라우스</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>142,210</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="11" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138486975', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138486975_[하프클럽/써스데이아일랜드]여성 레터링 프린트 크롭 티셔프(T204MTS237W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/9/6/48/38/2138486975_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 레터링 프린트 크롭 티셔프(T204MTS237W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 레터링 프린트 크롭 티셔프(T204MTS237W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>35,780</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="12" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138524285', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138524285_[하프클럽/써스데이아일랜드]여성 레이스 디테일 반팔 블라우스(T204MBL246W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/2/4/52/38/2138524285_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 레이스 디테일 반팔 블라우스(T204MBL246W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 레이스 디테일 반팔 블라우스(T204MBL246W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>86,900</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="13" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138582418', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138582418_[써스데이아일랜드](T222MOP139W)패턴 믹스 루즈 원피스" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/4/2/58/38/2138582418_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T222MOP139W)패턴 믹스 루즈 원피스" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T222MOP139W)패턴 믹스 루즈 원피스</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>166,010</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="14" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138270883', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138270883_[써스데이아일랜드](T222MVT133W)꼬리사 베스트" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/8/0/27/38/2138270883_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T222MVT133W)꼬리사 베스트" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T222MVT133W)꼬리사 베스트</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>106,510</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="15" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2126443788', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2126443788_[Thursday Island] 여성 아웃포켓 통일자 팬츠(T194MPT233W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/7/3/44/26/2126443788_0.jpg?RS=400x400&amp;AR=0" alt="[Thursday Island] 여성 아웃포켓 통일자 팬츠(T194MPT233W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[Thursday Island] 여성 아웃포켓 통일자 팬츠(T194MPT233W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>173,930</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="16" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138901371', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138901371_[써스데이아일랜드](T222MJE135W)부츠컷 데님팬츠" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/3/1/90/38/2138901371_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드](T222MJE135W)부츠컷 데님팬츠" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드](T222MJE135W)부츠컷 데님팬츠</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>106,510</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="17" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138486151', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138486151_[하프클럽/써스데이아일랜드]여성 백 프린트 크롭 린넨 자켓(T204MJK236W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/1/6/48/38/2138486151_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 백 프린트 크롭 린넨 자켓(T204MJK236W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 백 프린트 크롭 린넨 자켓(T204MJK236W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>162,540</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="18" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138489473', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138489473_[하프클럽/써스데이아일랜드]여성 백슬릿 H라인 미디 스커트(T204MSK236W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/4/9/48/38/2138489473_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 백슬릿 H라인 미디 스커트(T204MSK236W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 백슬릿 H라인 미디 스커트(T204MSK236W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>86,900</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="19" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138524071', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138524071_[하프클럽/써스데이아일랜드]여성 나시 티셔츠 (T204MTS250W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/0/4/52/38/2138524071_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 나시 티셔츠 (T204MTS250W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 나시 티셔츠 (T204MTS250W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>56,240</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="20" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138486141', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138486141_[하프클럽/써스데이아일랜드]여성 반다나 프린트 블루종 점퍼(T204MJP236W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/1/6/48/38/2138486141_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 반다나 프린트 블루종 점퍼(T204MJP236W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 반다나 프린트 블루종 점퍼(T204MJP236W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>131,880</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="21" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138487881', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138487881_[하프클럽/써스데이아일랜드]여성 보더 루즈핏 로브 원피스(T204MOP250W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/8/7/48/38/2138487881_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 보더 루즈핏 로브 원피스(T204MOP250W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 보더 루즈핏 로브 원피스(T204MOP250W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>121,660</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="22" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138486931', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138486931_[하프클럽/써스데이아일랜드]여성 골조직 변형 라운드넥 풀오버(T204MSW238W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/9/6/48/38/2138486931_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 골조직 변형 라운드넥 풀오버(T204MSW238W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 골조직 변형 라운드넥 풀오버(T204MSW238W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>76,680</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="23" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138487871', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138487871_[하프클럽/써스데이아일랜드]여성 보더 믹스 슬리브리스 원피스(T204MOP251W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/8/7/48/38/2138487871_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 보더 믹스 슬리브리스 원피스(T204MOP251W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 보더 믹스 슬리브리스 원피스(T204MOP251W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>131,880</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="24" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138489445', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138489445_[하프클럽/써스데이아일랜드]여성 플리츠 스커트 (T204MSK239W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/4/9/48/38/2138489445_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 플리츠 스커트 (T204MSK239W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 플리츠 스커트 (T204MSK239W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>101,200</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="25" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138394712', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138394712_[하프클럽/써스데이아일랜드]여성 메탈 립 자수 포인트 라운드넥 풀오버(T204MSW231W" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/7/4/39/38/2138394712_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 메탈 립 자수 포인트 라운드넥 풀오버(T204MSW231W" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 메탈 립 자수 포인트 라운드넥 풀오버(T204MSW231W</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>70,540</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="26" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138490302', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138490302_[하프클럽/써스데이아일랜드]여성 핀턱 스커트 팬츠(T204MPT235W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/3/0/49/38/2138490302_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 핀턱 스커트 팬츠(T204MPT235W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 핀턱 스커트 팬츠(T204MPT235W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>90,980</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="27" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138486135', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138486135_[하프클럽/써스데이아일랜드]여성 기본 나시 티셔츠 (T204MSL231W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/1/6/48/38/2138486135_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 기본 나시 티셔츠 (T204MSL231W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 기본 나시 티셔츠 (T204MSL231W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>30,580</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="28" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138394704', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138394704_[하프클럽/써스데이아일랜드]여성 스카시 변형 코바늘 포인트 보트넥 풀오버(T204MSW23" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/7/4/39/38/2138394704_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 스카시 변형 코바늘 포인트 보트넥 풀오버(T204MSW23" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 스카시 변형 코바늘 포인트 보트넥 풀오버(T204MSW23</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>80,760</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide" data-slick-index="29" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138484593', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138484593_[하프클럽/써스데이아일랜드]여성 패턴물 수영복 팬츠 (T204MSM234W)" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/5/4/48/38/2138484593_0.jpg?RS=400x400&amp;AR=0" alt="[하프클럽/써스데이아일랜드]여성 패턴물 수영복 팬츠 (T204MSM234W)" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[하프클럽/써스데이아일랜드]여성 패턴물 수영복 팬츠 (T204MSM234W)</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>86,900</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide slick-cloned" data-slick-index="30" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2133078367', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2133078367_써스데이아일랜드(T216MJK133W) 싱글여밈 핸드메이드 자켓" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/3/8/07/33/2133078367_0.jpg?RS=400x400&amp;AR=0" alt="써스데이아일랜드(T216MJK133W) 싱글여밈 핸드메이드 자켓" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
	                                            <span class="playtime"><i class="icon"></i><em>00:35</em></span>
	                                       
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">써스데이아일랜드(T216MJK133W) 싱글여밈 핸드메이드 자켓</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>213,610</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide slick-cloned" data-slick-index="31" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2138505406', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2138505406_[써스데이아일랜드] (T222MJE135W) 부츠컷 데님팬츠" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/4/5/50/38/2138505406_0.jpg?RS=400x400&amp;AR=0" alt="[써스데이아일랜드] (T222MJE135W) 부츠컷 데님팬츠" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
	                                            <span class="playtime"><i class="icon"></i><em>00:34</em></span>
	                                       
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">[써스데이아일랜드] (T222MJE135W) 부츠컷 데님팬츠</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>106,510</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div><div class="slick-slide slick-cloned" data-slick-index="32" aria-hidden="true" tabindex="-1" style="width: 222px;"><div><div class="items" style="width: 100%; display: inline-block; vertical-align: top;">
                         <div class="pdlist-wrap">
                             <ul>
                                 <li class="pdthumb">
                                     <a href="javascript:;" onclick="gaTagging(this, '/p/pda/itemPtc.do?slitmCd=2131738452', '', '');" tabindex="-1" ga-custom-title="메인>홈" ga-custom-name="메인_홈탭" ga-custom-position="인기키워드BEST상품" ga-custom-creative="1위_써스데이아일랜드" ga-custom-id="2131738452_써스데이아일랜드(T216MBL150W) 시보리 소매 블라우스" ga-custom-etc="ACTION_NAME" tag-comment="GA요청:홈탭:13">
                                     
                                         <div class="thumb">
                                             <img src="https://image.hmall.com/static/4/8/73/31/2131738452_0.jpg?RS=400x400&amp;AR=0" alt="써스데이아일랜드(T216MBL150W) 시보리 소매 블라우스" onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=400x400&amp;AR=0')">
                                             <div class="ready">
                                                 
                                                 
	                                            <span class="playtime"><i class="icon"></i><em>00:35</em></span>
	                                       
                                             </div>
                                         </div>
                                         <div class="figcaption">
                                             <div class="pdname" aria-label="제품명">써스데이아일랜드(T216MBL150W) 시보리 소매 블라우스</div>
                                             <div class="pdprice">
<span class="rateprice" aria-label="할인율이 적용된 가격">
<p class="discount" aria-label="할인가"><em>118,410</em>원</p>
</span>
</div>

                                         </div>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div></div></div></div></div><button class="slick-next slick-arrow" aria-label="Next" type="button" style="">Next</button></div>
            </div>
</div>
               <div role="tabpanel" class="tab-pane" id="rank2"></div>
               <div role="tabpanel" class="tab-pane" id="rank3"></div>
               <div role="tabpanel" class="tab-pane" id="rank4"></div>
               <div role="tabpanel" class="tab-pane" id="rank5"></div>
               <div role="tabpanel" class="tab-pane" id="rank6"></div>
               <div role="tabpanel" class="tab-pane" id="rank7"></div>
               <div role="tabpanel" class="tab-pane" id="rank8"></div>
               <div role="tabpanel" class="tab-pane" id="rank9"></div>
               <div role="tabpanel" class="tab-pane" id="rank10"></div>
           </div>
       </div>
       <script type="text/javascript">
       setHmKeyBest();
       </script>
      

      
      

      
      
      
      


      <!-- 신규브랜드 -->
      
      <!-- // 신규브랜드 -->
      
      

      
      

     





      

      







      
      
      
</div>
                    <!--//home-wrap-->
                    
                    
                    




                    
	                
	                
                    <div class="coin-layer" id="subBannerPopup" style="width: 200px; display: none;">
                        
	                        <div class="contents">
	                        	
	                            <a href="https://www.hmall.com/m/pda/itemPtc.do?sectId=&amp;slitmCd=2132039140">
	                            
	                            
	                                
	                                    <img src="https://image.hmall.com/HM/HM115/20220406/145502/220412_coin.jpg" alt="" onerror="noImage(this, '//image.hmall.com/p/img/co/noimg-thumb.png')">
	                                
	                                <div class="txt-area" style="background-color:#;">
	                                    <span class="sub-txt">LG 코드제로</span>
	                                    <span class="main-txt">19%쿠폰+카드즉시할인</span>
	                                </div>
	                            </a>
	                        </div>
	                        <button type="button" onclick="closeSubPopup(this,'checkSubPup01')" class="btn btn-close"><i class="icon xico"></i><span class="hiding">닫기</span></button>
                        
                    </div>
                    <script type="text/javascript"> 
	                    // 서브팝업 오늘그만보기
	                    function closeSubExpire(cookId) {                  
	                        var date = new Date();
	                        date.setHours(23, 59, 59, 999);
	                        document.cookie = cookId + "=done;path=/;expires="+date.toUTCString();
	                    } 
	                    
	                    // 서브팝업 닫기
	                    function closeSubPopup(obj, cookId) {          
	                        $('#subBannerPopup').hide();         
	                        closeSubExpire(cookId);
	                    } 
                    </script>
                    
                   
                    
                </div>
                <!--//contents-area-->
            </div>
        </div>
        <!-- //.container -->
    </main>
    <!-- //.cmain -->


    
    <!-- footer include-->
    



<!-- footer -->
<%@ include file="../footer.jsp" %>


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
    <noscript><img height="1" width="1" style="display:none"
      src="https://www.facebook.com/tr?id=307742333494098&ev=PageView&noscript=1"
    /></noscript>
    <!-- End Facebook Pixel Code -->
	
    <!-- Naver Premium Log -->
    <script type="text/javascript">
        var _NGUL = "wcs.naver.net/wcslog.js";
        var _NPR = location.protocol=="https:"?"https://"+_NGUL:"http://"+_NGUL;
        document.writeln("<scr"+"ipt type='text/ja"+"vascript' src='"+ _NPR +"'></scr"+"ipt>");
    </script><script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>


    <script type="text/javascript">
        if(!wcs_add) var wcs_add = {};
        wcs_add["wa"] = "s_5117770cb5ce";    // 네이버프리미엄로그 키값 변경(이호정선임) -> PC/MO 도메인 통일로 같은 값 사용(기존 : s_33f688a7b8a5)

        if (!_nasa) var _nasa={};

        wcs.inflow();
        wcs_do(_nasa);
    </script>
    <!-- End Naver Premium Log -->
    
	<!-- Google analytics -->
	<script type="text/javascript" src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=041217"></script>
	<script type="text/javascript" src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=041217"></script>
	
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

        
        $.ajax({
            type: "post"
            , url: "/p/GA_getDimension.do"
            , data: ""
            , dataType: "json"
            , async: true
            , success : function(data) {
                console.log("ajax Return");
            }
        });
        
	}

    
    
    
    
    
    
    
    
    var _gaid = getCookieGA('GAID');
    if(_gaid != null){GA_info[GACustomKey.Dimension11] = _gaid;}
    
     GA_info[GACustomKey.Dimension12] = "N"; 
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

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



</script> <!-- GA Custum lib -->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=AW-1066206974"></script>
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



<script type="text/javascript" src="//image.hmall.com/p/js/co/netfunnel.js"></script>
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
<div class="ui-modal alert" id="pec001-01" tabindex="-1" role="dialog" aria-label="H.Point Pay 통합회원 안내">
    <div class="ui-modal-dialog" role="document">
        <div class="content">
            <p class="ctypo15">H.Point Pay는 H.Point 통합회원만<br> 이용하실 수 있습니다.</p>
            <p class="ctypo17 bold mt10px">H.Point 통합회원으로<br>가입하시겠습니까?</p>
        </div>
        <!-- //.content -->
        <!-- alert은 버튼 위치 변경 -->
        <div class="btngroup">
            <button class="btn btn-linegray" data-dismiss="modal"><span>취소</span></button>
            <button class="btn btn-default" onclick="fn_upntPopupOpen();"><span>확인</span></button>
            <!-- 데이터 전송 후 닫힘 $(element).modal().hide() -->
        </div>
        <button class="btn btn-close" data-dismiss="modal"><i class="icon xico"></i><span class="hiding">레이어 닫기</span></button>
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
	        ,url: "https://wwwca.hmall.com/p/coe/onAirList.do?time=041217"
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
	              ,url: "/p/coe/onAirList.do?time=041217"
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
            ,url: "https://wwwca.hmall.com/p/coe/onAirCardPrmoList.do?time=041217"
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
                    ,url: "/p/coe/onAirCardPrmoList.do?time=041217"
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
    <div class="sticky-ui-wrapper wing-banner-sticky"><div class="sticky-placeholder"></div><div class="wing-banner banner-right" data-modules-sticky="padding:0;breakPoint:.header-menu-wrap;className:wing-banner-sticky" style="top: 123px;">
        <!-- fixed 클래스 추가 시 고정 -->
        <a href="/pevent/eva/evntTmplDivideView.do?prmoNo=00049341">
        <div class="visit-indicator">바로접속
            
        
            <span class="visit-staus on" style="margin-left: 0px">ON</span>
        
        </div>
        </a>
        <div class="recent-view-area" id="skyScOnAirArea">

    </div>
        <div class="qr_view_area">
            <span class="qr_txt">쇼핑라이브</span>
            <span class="img_qr"><img src="https://image.hmall.com/p/img/co/img-qr.jpg" alt="쇼핑라이브 qr이미지"></span>
        </div>
        <div class="wing-slide exhibition01" id="skyScCardArea">
        







            
	            <ul>
	               
                    
		                <li style="">
		                    
                            
                            
                                
                            
		                    <a href="https://www.hmall.com/p/dpa/crdDmndDcPrmo.do?prmoNo=P202204072115">
		                        <span class="img"><img src="//image.hmall.com/p/img/ev/icon/ico-card-hyundaihmall.png" alt="H.Point Pay<br>현대홈쇼핑 현대카드"></span>
		                        <span class="card-txt">
		                            <strong class="card-name">H.Point Pay<br>현대홈쇼핑 현대카드</strong>
		                            <span class="benefit-txt">
		                              <em class="point-red">
		                                  
		                                      7%
		                                      
		                                  
		                              </em> 
		                                  
                                               즉시 할인
                                              
                                              
                                          
		                            </span>
		                        </span>
		                    </a>
		                </li>
		            
		                <li style="display: none;">
		                    
                            
                            
                                
                            
		                    <a href="https://www.hmall.com/p/dpa/crdDmndDcPrmo.do?prmoNo=P202204072036">
		                        <span class="img"><img src="//image.hmall.com/p/img/ev/icon/ico-card-hyundai.png" alt="현대카드"></span>
		                        <span class="card-txt">
		                            <strong class="card-name">현대카드</strong>
		                            <span class="benefit-txt">
		                              <em class="point-red">
		                                  
		                                      7%
		                                      
		                                  
		                              </em> 
		                                  
                                               즉시 할인
                                              
                                              
                                          
		                            </span>
		                        </span>
		                    </a>
		                </li>
		            
	            </ul>
	            <!-- 페이징 -->
	            
		            <div class="pagination">
		                <button class="btn btn-prev"><span>이전</span></button>
		                <span class="numbering"><strong class="current">1</strong> / <em class="total">2</em></span>
		                <button class="btn btn-next"><span>다음</span></button>
		            </div>
	            
	            
            
            
            
                <!-- // 페이징 -->
    </div>
        <!-- // .wing-slide -->
    
        <div class="btn-top"><a href="javascript:;">TOP</a></div>
    </div></div>
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
    

</div>
<!-- //.wrap -->
<script>
    // $('#homeBanner').modal().show();

    var isLoginYn = 'Y';
    var lastClickedDispTrtyNmCd = "";
    var lastClickedLowDispTrtySeq = "";

    function scrollToGoodLuckTab() {


        var $target = $('#goodluckitemArea');

        console.log('top : ' + document.documentElement.scrollTop + ' / ' + ($target.offset().top));

        if(document.documentElement.scrollTop > $target.offset().top0) {
        	setTimeout(function() {
			console.log('run');
			// $(document).scrollTop($target.offset().top + 1);
		} , 300);
	    
    	}
        
    }
    

    var sortTypeGoodLuck = "";
    
    function goodluckInit () {
    	
	    $('#goodluckMenu').on('active.scrollItems', function(e){
	    	
	        var $this = $(this);
	        var sticky = $this.closest('.goodluck-sticky');
	        var stickyWrapper = $this.closest('.goodluck-sticky-wrapper');
	        var target = e.relatedTarget;
	        var goodluckMenu2deps = $('#goodluckMenu2deps');
	        var goodluckMenu2depsTmp = $('#goodluckMenu2depsTmp');
	        var sortGoodluck = $('#sortGoodluck');
	        
	        // category tab detail
	        goodluckMenu2deps.find('li').not('.hm_goodluck').remove();
	        var tabname = $(e.target).find('.ui-active').attr('data-dispTrtyNmCd');
	        goodluckMenu2depsTmp.find('li.' + tabname).clone().appendTo(goodluckMenu2deps)
	
	        // category tab wrapper
	        if(target.hasClass('open-deps2')){
	            goodluckMenu2deps.show();
	            sortGoodluck.show();
	        }else{
	            goodluckMenu2deps.hide();
	            sortGoodluck.hide();
	        }
	        stickyWrapper.height(sticky.height())
	        
            // 정렬조건 초기화
    
            // 굿럭템실시간 삭제
            $("#goodluckRealitemArea").remove();
            $("#goodluckRealitemArea2").remove();
            $("#goodluckRealitemArea3").remove();
            $("#hmCategoryListArea").remove();
            $("#hmProdListArea").remove();
            
                 
	        // 일단 무조건 전체 로딩
	        var dispTrtyNmCd = $('#goodluckMenu li.ui-active').attr('data-dispTrtyNmCd');
	        

            if (dispTrtyNmCd == "hm_goodluck2") {
                // 오늘오픈 인 경우 굿럭템 실시간 조회(오늘오픈)
                loadScreenOfgoodluckReal();
            } else {
                loadScreenOfgoodluckTab(dispTrtyNmCd, '', sortTypeGoodLuck);
            }
	
	        // open-deps2
	        // console.log();

            scrollToGoodLuckTab();
	    });
	
        $(document).on('click', '#goodluckMenu2deps li a', function(e){
	    	
	        var dispTrtyNmCd = $('#goodluckMenu li.ui-active').attr('data-dispTrtyNmCd'); // main tab
	        var lowDispTrtySeq = $(this).attr('data-lowdisptrtyseq'); // sub tab [전체=null]
 
            $(this).closest('ul').find('a').removeClass('active');
            $(this).addClass('active');
	        
	        if (dispTrtyNmCd == "hm_goodluck2") {
                // 오늘오픈 인 경우 굿럭템 실시간 조회(오늘오픈)
                loadScreenOfgoodluckReal();
            } else {
            	loadScreenOfgoodluckTab(dispTrtyNmCd, lowDispTrtySeq, sortTypeGoodLuck);
            }

	        scrollToGoodLuckTab();
	    })
	
	    $('#sortGoodluck a').on('click', function(e){
	        
	        $('#sortGoodluck a').removeClass("active");
	        $(this).addClass("active");
	        
	        
	        
	        sortTypeGoodLuck = $(this).data("sort");
	
	        loadScreenOfgoodluckTab(lastClickedDispTrtyNmCd, lastClickedLowDispTrtySeq, sortTypeGoodLuck);

	        scrollToGoodLuckTab();
	    });
	    
    }



     // 굿럭템 조회
     function loadScreenOfgoodluckTab (dispTrtyNmCd, lowDispTrtySeq, sortType){
    	

         var caServerHost = "https://wwwca.hmall.com";
         var hdptYn = "";
         var prchMdaGbcd = "";

         if (dispTrtyNmCd == "hm_goodluck6") {
             hdptYn = "Y"
         } else {
             prchMdaGbcd = "40"
             hdptYn = "N"
         }
         
         
         // 마지막 클릭 굿럭템 보관
         lastClickedDispTrtyNmCd = dispTrtyNmCd;
         lastClickedLowDispTrtySeq = lowDispTrtySeq;
         
         // 로딩바
         moreLoading(true, $("#goodluckitemlist ul"),true);
        
         $.ajax({
             type: "get"
             ,url: caServerHost + "/p/homeGoodLuckItemList.do"
             //,data: {'pageSize': "20", 'lastItemIndex' : '1', 'itemDispTrtyNmCd' : 'hm_goodluck', 'mainDispSeq' : '1', 'lowDispTrtySeq' : '1'} 
             ,data: {'pageSize': "100"
	            	  , 'lastItemIndex' : '1'
	            	  , 'mainDispSeq' : '1'
	            	  , 'itemDispTrtyNmCd' : dispTrtyNmCd
	            	  , 'lowDispTrtySeq' : lowDispTrtySeq
	            	  , 'sortType' : sortType
	            	  , 'hdptYn' : hdptYn
	            	  , 'prchMdaGbcd' : prchMdaGbcd
	                  , 'loginCheck' : 'true'
	                  , 'EHAdltCertYn' : ''
	                  , 'preView' : ''
			  , 'categoryName' : $('li[data-disptrtynmcd=' + dispTrtyNmCd + ']  span').text()
            	  } 
             ,dataType: "html"
             ,async: true
             ,success : function(data) {
                 $("#goodluckitemlist ul").html(data);
                 
                 personalJJimSet();
                 personalAlrimiSet();
                	 
                 // 로딩바
                 moreLoading(false, $("#goodluckitemlist ul"));
             }
             ,
             error : function(){
            	 $.ajax({
                     type: "get"
                     ,url: "/p/homeGoodLuckItemList.do"
                     //,data: {'pageSize': "20", 'lastItemIndex' : '1', 'itemDispTrtyNmCd' : 'hm_goodluck', 'mainDispSeq' : '1', 'lowDispTrtySeq' : '1'} 
                     ,data: {   'pageSize': "100"
                              , 'lastItemIndex' : '1'
                              , 'mainDispSeq' : '1'
                              , 'itemDispTrtyNmCd' : dispTrtyNmCd
                              , 'lowDispTrtySeq' : lowDispTrtySeq
                              , 'sortType' : sortType
                              , 'hdptYn' : hdptYn
                              , 'prchMdaGbcd' : prchMdaGbcd
                              , 'loginCheck' : 'true'
                              , 'EHAdltCertYn' : ''
                              , 'preView' : ''
                          } 
                     ,dataType: "html"
                     ,async: true
                     ,success : function(data) {
                         $("#goodluckitemlist ul").html(data);
                         
                         personalJJimSet();
                         personalAlrimiSet();
                             
                         // 로딩바
                         moreLoading(false, $("#goodluckitemlist ul"));
                     }
                     ,
                     error : function(){
                         // 로딩바
                         moreLoading(false, $("#goodluckitemlist ul"));
                     }
                 });
             }
         });
     }
    
	
	//굿럭템 실시간 조회
	function loadScreenOfgoodluckReal (){

         //var caServerHost = "https://wwwca.hmall.com";
         var caServerHost = "";
         var goodluckAnchor = $('#goodluckMenu li.ui-active span').text();
         moreLoading(true, $("#goodluckitemlist ul"),true);
        
		 $.ajax({
		     type: "get"
		     ,url: caServerHost + "/p/homeGoodLuckRealItemList.do"
		     //,data: {'pageSize': "20", 'lastItemIndex' : '1', 'itemDispTrtyNmCd' : 'hm_goodluck', 'mainDispSeq' : '1', 'lowDispTrtySeq' : '1'} 
		     ,data: { 'pageSize': "20"
		    	    , 'lastItemIndex' : '1'
		    	    , 'mainDispSeq' : '1'
                    , 'loginCheck' : 'true'
                    , 'EHAdltCertYn' : ''
                    , 'preView' : ''
                    , 'goodluckAnchor' : goodluckAnchor
		    	    } 
		     ,dataType: "html"
		     ,async: true
		     ,success : function(data) {
		         //console.log('new tab data');
		         //console.log(data);
		         
		         // 굿럭템 하위에 추가
		         $("#goodluckitemArea").after(data); 
		         
		         $('body').commonUi('initLibrary'); //PC인경우
		         
		         personalJJimSet();
		         personalAlrimiSet();
		         
                 // 로딩바
                 moreLoading(false, $("#goodluckitemlist ul"));
                 $("#goodluckitemlist ul").html("");
		     }
		     ,
		     error : function(){
		    	 $.ajax({
		             type: "get"
		             ,url: "/p/homeGoodLuckRealItemList.do"
		             //,data: {'pageSize': "20", 'lastItemIndex' : '1', 'itemDispTrtyNmCd' : 'hm_goodluck', 'mainDispSeq' : '1', 'lowDispTrtySeq' : '1'} 
		             ,data: { 'pageSize': "20"
		                    , 'lastItemIndex' : '1'
		                    , 'mainDispSeq' : '1'
		                    , 'loginCheck' : 'true'
		                    , 'EHAdltCertYn' : ''
		                    , 'preView' : ''
		                    , 'goodluckAnchor' : goodluckAnchor
		                    } 
		             ,dataType: "html"
		             ,async: true
		             ,success : function(data) {
		                 //console.log('new tab data');
		                 //console.log(data);
		                 
		                 // 굿럭템 하위에 추가
		                 $("#goodluckitemArea").after(data); 
		                 
		                 $('body').commonUi('initLibrary'); //PC인경우
		                 
		                 personalJJimSet();
		                 personalAlrimiSet();
		                 
		                 // 로딩바
		                 moreLoading(false, $("#goodluckitemlist ul"));
		                 $("#goodluckitemlist ul").html("");
		             }
		             ,
		             error : function(){
		                 // 로딩바
		                 moreLoading(false, $("#goodluckitemlist ul"));
		                 $("#goodluckitemlist ul").html("");
		             }
		        });
		     }
		});
	}

    
    // 인기키워드 베스트 
    function setHmKeyBest() {
        if(typeof popKeyWordListJson == 'undefined') return;
    	
	    if ($("#hmKeyBestArea").length == 0)
	    	return;
	    
        var listKeyWord = "";
        $(popKeyWordListJson).each(function (key, value) {
            listKeyWord += '<li role="presentation">';
            listKeyWord += '  <a href="#rank'+(key + 1)+'" aria-controls="rank'+(key + 1)+'" role="tab" data-modules-tab="" onclick="setHmKeyBestItemList(this)")>';
            listKeyWord += '      <span class="rank">' + (key + 1) + '</span>';
            listKeyWord += '      <span class="keyword">' + value.keyword + '</span>';
            listKeyWord += '        <i class="arrow right"></i>';
            listKeyWord += '    </a>';
            listKeyWord += '</li>';
        });
        $("#hmKeyBestArea ul").append(listKeyWord);
        $("#hmKeyBestArea a:first").click();
    };
    
    // 인기키워드 베스트 상품리스트 
    function setHmKeyBestItemList(obj) {
        
    	var $obj = $(obj);
    	var rankId = $obj.attr('aria-controls');
    	
    	if ($("#"+rankId).find("li").length > 0) 
    		return false;
    	
        $.ajax({
            type: "get"
            ,url: "/p/homeSearchKeyBest.do"
            ,data: {searchTerm:$obj.find('.keyword').text(), rank:$obj.find('.rank').text()} 
            ,dataType: "html"
            ,async: false
            ,success : function(data) {
                // 굿럭템 하위에 추가
                $("#" + rankId).append(data); 
                $('body').commonUi('initLibrary'); //PC인경우
            }
            ,
            error : function(){
            }
       });
    }
    
    // 기획전 이동
    function goSpexTmpl(url) {
    	//location.href = "/p/dpa/searchSpexSectItem.do?sectId=";
    	location.href = url;
    }
   
    $(document).ready(function() {
    	
    	// 이미지 로딩 
        initObserver();
    	
        // 인기키워드 베스트 로딩
        //setHmKeyBest();
        
    	
    	// 굿럭템 로딩 
    	//setTimeout(function() { 
	    //	$("#goodluckMenu > li:first").click();
        //}, 2000);
        
    });

  //for chrome debugger
  //# sourceURL=script-for-home-mainhome.js
</script>



<script type="text/javascript" async="" src="//image.hmall.com/p/js/co/901_Insight_WebAnalytics.js"></script><script type="text/javascript" async="" src="//image.hmall.com/p/js/co/tagging.collector-1.3.min.js"></script><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div><iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE" style="display: none;"></iframe></body>    