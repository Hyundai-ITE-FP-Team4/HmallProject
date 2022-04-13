<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="ko" class="desktop winos chrome x64 tablet">
<head>
<meta name="title" content="${ categoryVO.categoryName } - 현대Hmall">



<meta name="description" content="Hmall > ${ parentCategoryVO.categoryName } > ${ categoryVO.categoryName }">
<meta name="keywords" content="Hmall > Hmall > ${ parentCategoryVO.categoryName } > ${ categoryVO.categoryName }">





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
	src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=040814"></script>
<script type="text/javascript"
	src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=040814"></script>



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
        
        
        
        
        GA_info[GACustomKey.Dimension17] = "";
        GA_info[GACustomKey.Dimension76] = "123.142.252.**";
        
        
        
        
        
        
        GA_info[GACustomKey.Dimension19] = "Y";
        
        
        
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
    var sectId = "2731740";
    if (sectId == "" || sectId == "0") {
        sectId = "2731740";
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

<title>${ categoryVO.categoryName } - 현대Hmall</title>

<script type="text/javascript"
	src="https://image.hmall.com/pc/js/hmall/co/jquery.form.js"></script>

<script type="text/javascript">
        var isMySearchTxts = false;
        var hdptGubunForDetailData = []; //지점정보 디테일 데이터
        var makecoInfoValueForDetailData = []; //브랜드 디테일 데이터
        var checkedMakecoInfoValueForDetailData = []; //체크된 브랜드 디테일 데이터들의 인덱스
        var reloadYN = "N"; // 리로드할지 여부
        var detailDataMap ; // hashMap을 만들어 put. get.을 이용 >> 상세검색 저장시 사용
        var scrollbarFlag = false;
        var autoCateData = []; // 매장정보 데이터
        var selectItemAttrFilter = [];
        var selectTagFilter = [];

        jQuery(function($){
            //가격을 100단위로 고정
            var minSellPrc = $("input[name='minSellPrc']").val()*1; //검색된 상품의 최소가격
            var maxSellPrc = $("input[name='maxSellPrc']").val()*1; //검색된 상품의 최대가격
            var minValue = $("input[name='sPrice']").val()*1;   //param 최소가격
            var maxValue = $("input[name='ePrice']").val()*1;    //param 최대가격
            var searchFindNameGlobal = "";
            if(minValue % 100 != 0){//가격 단위를 100원단위로 고정
                minValue = parseInt(minValue / 100) * 100 ;
            }

            if(maxValue % 100 != 0){//가격 단위를 100원단위로 고정
                maxValue = parseInt(maxValue / 100) * 100 + 100;
            }

            if(minSellPrc % 100 != 0){//가격 단위를 100원단위로 고정
                minSellPrc = parseInt(minSellPrc / 100) * 100;
            }

            if(maxSellPrc % 100 != 0){//가격 단위를 100원단위로 고정
                maxSellPrc = parseInt(maxSellPrc / 100) * 100 + 100;
            }

            $("input[name='minSellPrc']").val(minSellPrc); //필터조건 없이 검색된 상품의 최소가격
            $("input[name='maxSellPrc']").val(maxSellPrc); //필터조건 없이 검색된 상품의 최대가격
            $("input[name='sPrice']").val(minValue);   //검색후 상품 최소가격
            $("input[name='ePrice']").val(maxValue);    //검색후 상품의 최대가격
            var sMinValue = gfn_appendComma(minValue, 3); //comma가 적용된 String Type의 최소 가격
            var sMaxValue = gfn_appendComma(maxValue, 3); //comma가 적용된 String Type의 최대 가격
            if(sMinValue == 0){
                sMinValue = gfn_appendComma(minSellPrc, 3);
            }
            if(sMaxValue == 0){
                sMaxValue = gfn_appendComma(maxSellPrc, 3);
            }

            $("#rangeVal_L").val(sMinValue);
            $("#rangeVal_R").val(sMaxValue);

            console.log("checkHash() calling");
            checkHash();

            //pdeSearchForm 벨리데이트 함수(멀티검색 포함)
            $("form[name='pdeSearchForm']").bind("submit", function(){
            	return false;
                var searchTerm = $.trim($("form[name='gnbPdeSearchForm'] input[name='searchTerm']").val());
                var bndlDlvYn = $("form[name='pdeSearchForm'] input[name='bndlDlvYn']").val() == "Y" ? true : false;
            });

            HashMap = function(){
                this.map = new Array();
            };

            HashMap.prototype = {
                put : function(key, value){
                    this.map[key] = value;
                },
                get : function(key){
                    return this.map[key];
                },
                getAll : function(){
                    return this.map;
                },
                clear : function(){
                    this.map = new Array();
                },
                isEmpty : function(){
                    return (this.map.size() == 0);
                },
                remove : function(key){
                    delete this.map[key];
                },
                toString : function(){
                    var temp = '';
                    for(i in this.map){
                        temp = temp + ',' + i + ':' +  this.map[i];
                    }
                    temp = temp.replace(',','');
                    return temp;
                },
                keySet : function(){
                    var keys = new Array();
                    for(i in this.map){
                        keys.push(i);
                    }
                    return keys;
                }
            };

            // 필터
            $(".detail-filter-list .filter").unbind("click").bind("click", function() {
                clickFilter($(this));
            });

            // 페이징시 선택필터 세션저장
            $(".paging a").click(function() {
                setSimpleFilter();
            });

            // 키워드 검색버튼 (button태그에 onclick이벤트 가 form안에 있어서 정상 수행되지 않음. 이벤트 바인딩해줘야함)
            $("#searchKeywordBtn").click(function (){
                searchKeyword('Y');
            });

            $("#rangeVal_L").keydown(function(e){
                if(event.keyCode == 13){
                    $(".rangePrice").focusout();
                    e.preventDefault();
                }
            });
            $("#rangeVal_R").keydown(function(e){
                if(event.keyCode == 13){
                    $(".rangePrice").focusout();
                    e.preventDefault();
                }
            });

            $("#rangeVal_L").bind("focusout", function(){

                //가격의 min,max확인
                var minlimitPrice = $(".pl_lnb_listing2 input[name='minSellPrc']").val()*1; //필터조건 없이 검색된 상품의 최소가격
                var maxlimitPrice = $(".pl_lnb_listing2 input[name='maxSellPrc']").val()*1; //필터조건 없이 검색된 상품의 최대가격
                var priceFrom = removeComma($("#rangeVal_L").val()) * 1;
                var priceTo = removeComma($("#rangeVal_R").val()) * 1;

                var checkValue = true;
                if(priceTo > maxlimitPrice || priceTo <= 0 ){
                    checkValue = false;
                    $("#rangeVal_R").val(maxlimitPrice);
                }

                if(priceFrom < minlimitPrice || priceFrom <= 0 ){
                    checkValue = false;
                    $("#rangeVal_L").val(minlimitPrice);
                }

                if(priceFrom >  priceTo){
                    checkValue = false;
                    if($(this).attr("id") == "rangeVal_L"){
                        $("#rangeVal_L").val(minlimitPrice);
                    }else if($(this).attr("id") == "rangeVal_R"){
                        $("#rangeVal_R").val(maxlimitPrice);
                    }
                }

                if(!checkValue){
                    window.alert("잘못된 가격입니다.");
                    var checkValue = true;
                    if($(this).attr("id") == "rangeVal_L"){
                        $("#rangeVal_L").focus();
                    }else if($(this).attr("id") == "rangeVal_R"){
                        $("#rangeVal_R").focus();
                    }
                }

                if(!isEmpty($(this).val())){
                    $(this).val(removeComma($(this).val()));//,있을경우 appendComma를 할경우 데이터가 이상해짐

                    if($(this).attr("id") == "rangeVal_L"){
                        $(".rangeBox input[name=sPrice]").val($(this).val());
                    }
                    else if($(this).attr("id") == "rangeVal_R"){
                        $(".rangeBox input[name=ePrice]").val($(this).val());
                    }

                    $(this).val(gfn_appendComma($(this).val()));
                    //가격 chk
                    $("#chocCondClosePrc").addClass("chk");
                }else{
                    $(this).val(0);
                }
            });
            checkHash();
        });

        /*
		 * 상품 상세 링크
		 */
        function itemDetailLinkProc(url, collection, searchTerm){
            var form = document.createElement("form");
            var parm = new Array();
            var input = new Array();

            if(searchTerm == undefined){
                searchTerm = 'A';
            }

            if(searchTerm != "A" && $.trim(searchTerm).length > 0) url += "&searchTerm="+encodeURI(searchTerm);

            form.action = url;
            form.method = "post";
            form.charset = "UTF-8";

            parm.push(['collection' , collection]);

            createHash(); //뒤로가기 hash생성: 추천영역 a href 에서 공통으로 사용하기위해 함수로 변경
            setSimpleFilter();

            for(var i =0 ; i < parm.length ; i++){
                input[i] = document.createElement("input");
                input[i].setAttribute("type", "hidden");
                input[i].setAttribute("name", parm[i][0]);
                input[i].setAttribute("value", parm[i][1]);
                form.appendChild(input[i]);
            }
            document.body.appendChild(form);
            location.href = url;
        }

        function createHash(){
            /* 상품상세 진입 전 해시에 상세검색에 저장한 데이터를 넣는다. */
            insertHash(); // 1.detailMap에 요소들 insert
            var hashData = goDetailData(); // 2.detailMap을 스트링형태로 반환
            document.location.hash = hashData; // 3.스트링 형태로 만든걸 hash에 저장
        }

        // 2020.12.15 icj : hash 세팅 수정
        function insertHash(){ //상품상세 진입 전 체크되어있는게 있는지 확인 후 hash에 돌려줄 값을 return 한다.

            makecoInfoValueForDetailData = [];
            checkedMakecoInfoValueForDetailData = [];
            selectItemAttrFilter = [];
            selectTagFilter = [];

            // 브랜드
            $('input:checkbox[name="makecoInfo"]').each(function(index) {
                if(this.checked){
                    makecoInfoValueForDetailData.push(this.value.split(" ")[0]);
                    checkedMakecoInfoValueForDetailData.push(index);
                }
            });

            // 옵션속성
            selectItemAttrFilter = [];
            $(".itemAttr-filter").each(function() {
                var $itemAttrFilter = $(this).find('input:checkbox[name="itemAttr"]');
                $itemAttrFilter.each(function(index) {
                    if(this.checked){
                        selectItemAttrFilter.push(this.value);
                    }
                    var len = selectItemAttrFilter.length;
                    if(len > 0 && selectItemAttrFilter[len-1] != "`" && index == $itemAttrFilter.length-1){
                        selectItemAttrFilter.push("`");
                    }
                });
            });

            // 태그
            selectTagFilter = [];
            $(".tag-filter").each(function() {
                var $tagFilter = $(this).find('input:checkbox[name="tagFilter"]');
                $tagFilter.each(function(index) {
                    if(this.checked){
                        selectTagFilter.push(this.value);
                    }
                    var len = selectTagFilter.length;
                    if(len > 0 && selectTagFilter[len-1] != "`" && index == $tagFilter.length-1){
                        selectTagFilter.push("`");
                    }
                });
            });

            setDetailData("autoCateData", autoCateData);

            // 가격 (최소)
            setDetailData("minPrice", $(".inpgroup #rangeVal_L").val());

            // 가격 (최대)
            setDetailData("maxPrice", $(".inpgroup #rangeVal_R").val());

            // 결과 내 검색
            var searchbar = encodeURIComponent($("#pl_lnb_searchbar").val());
            if(undefined != searchbar && "A" != searchbar){
                setDetailData("searchbar", encodeURIComponent(searchbar));
            }

            // 검색어 제외 2020.12.15 icj -> class방식에서 checkbox value방식으로 변경
            setDetailData("noFlagTypeI", $("#reSearch1").prop('checked'));

            // 페이지정보
            setDetailData("pageInfo", $(".page-prevarea strong").text());

            setDetailData("makecoInfo", makecoInfoValueForDetailData);
            setDetailData("makecoInfoIndex", checkedMakecoInfoValueForDetailData);
            setDetailData("itemAttrFilter", encodeURIComponent(selectItemAttrFilter));
            setDetailData("tagFilter", encodeURIComponent(selectTagFilter));

            //뒤로 가기시 복구 로직을 스토리지 방식으로 변경
            var hashData = goDetailData();
            var htmls = $("#reflashArea").html();
            sessionStorage.setItem("searchSectItem.do?sectId=2731740#" + hashData, htmls);
        }

        function clickFilter(filter) {
            var filterNm = $(filter).attr("data-filter-nm");
            var filterId = $(filter).prop("id");

            var isChcked = $(filter).is(':checked');
            var isCategory = $(filter).is("[class*=csfCategory]");
            var isNotAllCategory = $(filter).is("#allCate");
            var isPrice = $(filter).is("#priceRangeVal");
            var isBrand = $(filter).is("[name=makecoInfo]");
            var isBrandPopup = $(filter).is("#brndApply");
            var isSelected = isChcked || isCategory || isNotAllCategory || isPrice;

            if (isPrice) { // 가격직접입력
                filterNm = getDirPriceFilterNm();
            }

            if (isBrand) {
                filterId = $(filter).attr("data-filter-id");
            }

            // 브랜드 팝업 적용
            if (isBrandPopup) {
                $(".brands-show").find("input[name='makecoInfo']:checked").each(function() {
                    filterNm = $(this).attr("data-filter-nm");
                    filterId = $(this).attr("data-filter-id");

                    appendSelectedFilter(filterNm, filterId);
                });
            }
            else if (filterNm != undefined && filterId != undefined) {
                if (isCategory) {
                    $("[data-filter-id*='csfCategory']").detach();
                }
                if (isSelected) {
                    appendSelectedFilter(filterNm, filterId);
                } else {
                    $("[data-filter-id='"+filterId+"']").detach();
                }
            }

            reArrangeFilter();
        }

        function appendSelectedFilter(filterNm, filterId) {
            if(existsFilter(filterId)) { return false; }
            $(".selected-filter-list").find("ul").append('<li class="ui-nav sel" data-filter-id="'+filterId+'" data-filter-nm="'+filterNm+'"><span>'+filterNm+' <button class="del" onclick="uncheckFilter(this);"><span class="hiding">삭제</span></button></span></li>');
        }

        function existsFilter(filterId) {
            try {
                return $(".selected-filter-list").find('[data-filter-id="'+filterId+'"]').length > 0;
            } catch(e) {

            }
            return false;
        }

        function getDirPriceFilterNm() {
            var sPrice = $("#rangeVal_L").val();
            var ePrice = $("#rangeVal_R").val();
            return (sPrice.length > 0 && ePrice.length > 0) ? (sPrice + "~" + ePrice) : undefined;
        }

        function reArrangeFilter(){

            // 언체크된 필터 제거
            removeUncheckedFilter($(".selected-filter-list .sel"));

            // 선택필터 영역 노출 여부
            let $selectedList = $(".selected-filter-list");
            var len = $selectedList.find(".sel").length;
            if (len > 0) {
                $selectedList.css("display", "flex");
            } else {
                $selectedList.css("display", "none");
            }

            setSimpleFilter();
        }

        function setSimpleFilter() {
            // 선택필터 영역 세션에 저장
            if ($(".selected-filter-list").css("display") != "none") {
                var simpleFilter = $(".selected-filter-list").html();
                sessionStorage.setItem("selected-filter-list", saveHtmlDataEdit(simpleFilter));
            } else {
                sessionStorage.removeItem("selected-filter-list");
            }
        }

        function getSimpleFilter() {
            // 선택필터 영역 세션에 저장
            if (window.sessionStorage != null){
                var simpleFilter = sessionStorage.getItem("selected-filter-list");
                if(simpleFilter != null) {
                    $(".selected-filter-list").html(simpleFilter);
                    $(".selected-filter-list").css("display", "flex");
                    sessionStorage.removeItem("selected-filter-list");
                }
            }
        }

        function saveHtmlDataEdit(value){
            var data = value.replaceAll("   ","");
            return data;
        }

        function removeUncheckedFilter(filterList){
            $(filterList).each(function() {
                var filterId = $(this).attr("data-filter-id");
                if (filterId == undefined) {
                    $(this).detach();
                    return true;
                // 카테고리
                } else if (filterId.indexOf("csfCategory") >= 0) {
                    return true;
                // 가격직접입력
                } else if (filterId.indexOf("priceRangeVal") >= 0) {
                    if (getDirPriceFilterNm() == undefined) {
                        $(this).detach();
                    }
                    return true;
                // 브랜드
                } else if (filterId.indexOf("brnd") >= 0) {
                    if (!isCheckedBrnd(filterId)) {
                        $(this).detach();
                    }
                    return true;
                }
                // 체크여부
                var isChecked = $("#"+filterId).prop("checked");
                if (!isChecked) {
                    $(this).detach();
                }
            });
        }

        function isCheckedBrnd(filterId) {
            try {
                return $("input[name='makecoInfo']:checked").filter("[data-filter-id='"+filterId+"']").length > 0;
            } catch(e) {
                console.log(e);
            }
            return false;
        }

        function uncheckFilter(filter) {
            var filterId = $(filter).closest("li").attr("data-filter-id");
            var isCategory = filterId.indexOf("csfCategory") >= 0;
            var isPrice = filterId.indexOf("priceRangeVal") >= 0;
            var isBrand = filterId.indexOf("brnd") >= 0;
            if (isCategory) {
                $("#allCate").trigger("click");
                return false;
            }
            else if (isPrice) {
                initDirPrice();
                return false;
            }
            else if (isBrand) {
                uncheckBrndFilter(filterId);
                return false;
            }
            $("#"+filterId).trigger("click");
        }

        function initDirPrice() {
            $("#rangeVal_L").val("");
            $("#rangeVal_R").val("");
            $("form[name='pdeSearchForm'] input[name='sPrice'][type='hidden']").val("");
            $("form[name='pdeSearchForm'] input[name='ePrice'][type='hidden']").val("");
            searchProcAjax();
        }

        function uncheckBrndFilter(filterId) {
            $("input[name='makecoInfo']:checked").filter("[data-filter-id='"+filterId+"']").prop("checked", false);
            brandSelectProc();
        }

        // 키워드 검색
        function searchKeyword(isDirectInput, keyword){
            if ("Y" == isDirectInput) {
                keyword = $("#searchKeyword").val();
            } else if (keyword == undefined || $.trim(keyword).length == 0 || keyword == 'A') {
                return false;
            }
            setKeyword(keyword);
            searchProcAjax();
        }

        // 키워드 초기화 검색
        function initKeyword() {
            setKeyword('');
            searchProcAjax();
        }

        // 키워드 keydownEvent
        function keydownKeyword(e) {
            // 조회
            if (e.keyCode == 13) {
                searchKeyword("Y");
                return false;
            }
            return true;
        }

        // 키워드 set
        function setKeyword(keyword) {
            $("#searchKeyword").attr("value", keyword);
            $("form[name='pdeSearchForm']").find("input[name='searchTerm']").val(keyword);
        }

        // 상품리스트 가로, 세로 변경
        function btnItemTypeChange(itemListType){
            //변경전에 checked된 체크된것을 체크 해제
            $(".divItemList input:checked").attr("checked", null);
            //변경
            $(".splitscreen li").removeClass();

            if(itemListType == 'itemListType_1'){
                $(".splitscreen li:first").addClass("ss_01_on");
                $(".splitscreen li:last").addClass("ss_03");
                $(".pdeSearchFormHiddenInput input[name='itemListType']").val('type1');

                try {
                    _trk_clickTrace('EVT','검색상품리스트_이미지형');
                } catch (e) {}

            }
            else if(itemListType == 'itemListType_2'){
                $(".splitscreen li:first").addClass("ss_01");
                $(".splitscreen li:last").addClass("ss_03_on");
                $(".pdeSearchFormHiddenInput input[name='itemListType']").val('type2');

                try {
                    _trk_clickTrace('EVT','검색상품리스트_리스트형');
                } catch (e) {}
            }

            $(".itemListType").hide();
            $("." + itemListType).show();
        }

        // listSize 변경으로 상품 리스트 재조회
        function listSubmit(val){
            var listSize = $(val).val();
            $("form[name='pdeSearchForm']").find("input[name='listSize']").val(listSize);
            searchProcAjax();
        }

        // 검색시 필수 param인 listSize값을 제외한 form 영역의 hiddend 영역 input 기본값으로 변경
        function pdeSearchFormHiddenInputClear(){
            $(".pdeSearchFormHiddenInput input:not(.nonClear)").val(null); //remove 하면 안됨
            $(".pdeSearchFormHiddenInput input[name='page']").val(1);
            $(".pdeSearchFormHiddenInput input[name='sort']").val('BASIC@DESC');
            $(".pdeSearchFormHiddenInput input[name='itemListType']").val('type1');
        }

        //로직 시작
        $(document).ready(function(){
            var slitmNm = 'A';
            
                
                    $("#listSize option[value='60']").attr("selected", true);
                
                
            
            $("#selectListSize").selectbox('refresh');
        });

        function goCornerGubn(str){
            // 리스트 초기화
            page = 1;
            gubn = str;
            searchList();
        }

        function sort(str) {
            // 리스트 초기화
            page = 1;
            orderBy = str;
            searchList();
        }

        function searchList(){
            var url = "/pevent/eva/evntAppZinMain.do";
            var queryStr = "page="+page+"&gubn="+gubn;
            location.href = url+"?"+queryStr;
        }

        /*
		 * 혜택 영역 검색 이벤트 처리
		 */
        function benefitProc(checkboxName, obj) {
            try {
                if($(obj).is(":checked")) {
                    var eventCategory=$(obj).attr("ga-category");
                    var eventAction=$(obj).attr("ga-action");
                    var eventLabel = $(obj).parents("label").find("span").text();
                    GA_Event(eventCategory, eventAction, eventLabel);
                }
            } catch (e) {}
            searchProcAjax();
        }

        function itemAttrProc(obj) {
            if($(obj).prop('checked')){
                try {
                    var eventAction = $(obj).closest(".filter-content").siblings(".filter-label").find("em").text().trim();
                    var eventLabel = $(obj).siblings('span:eq(0)').text().trim();
                    GA_Event("검색결과_상세검색필터", eventAction, eventLabel);
                } catch(e) {
                    console.log("error at itemAttrProc sendGA");
                }
            }
            searchProcAjax();
        }

        function tagFilterProc(obj) {
            if($(obj).prop('checked')){
                try {
                    var eventAction = "상품속성_" + $(obj).parents("div").siblings(".filter-label:eq(0)").find("em").text().trim();
                    var eventLabel = $(obj).siblings('span:eq(0)').text().trim();
                    GA_Event("검색결과_상세검색필터", eventAction, eventLabel);
                } catch(e) {
                    console.log("error at itemAttrProc sendGA");
                }
            }
            searchProcAjax();
        }

        /*
		 * 검색어 제외 처리
		 */
        function searchTextProc(obj){
            if($("._searchexcept").find("i").attr("class") == "icon-tv checked"){
                $("._searchexcept").find("i").attr("class", "icon-tv");
            }
            else {
                $("._searchexcept").find("i").attr("class", "icon-tv checked");
            }
        }

        /*
		 * 지점선택 검색 영역 이벤트 처리
		 */
        function shopSelectProc(selectShopId, obj){
            // totoary js checked 보다 먼저 이벤트가 발생하기 때문에 꺼꾸로 본다
            if(!$(obj).hasClass("checked")) {
                $(obj).find("input").prop("checked", true);
            } else {
                $(obj).find("input").prop("checked", false);
            }

            searchProcAjax();
        }

        function setDetailData(name, value){
            if(detailDataMap == undefined){
                detailDataMap = new HashMap();
            }

            if( detailDataMap.get(name) != null ){   //key에 대한 value가 존재시 기존 value를 삭제하고. 새로운 value를 넣는다.
                detailDataMap.remove(name);
            }

            detailDataMap.put(name, value);
        }

        function checkHash() {

            //화면 롤백시 스토리지 사용
            //검색엔진에서 중첩해서 호출하는 구조이기 때문에 한번에 복구가 되지 않기 때문에 스토리지로 한번에 복구하는 방식으로 수정
            var hash = document.location.hash;
            var key = "searchSectItem.do?sectId=2731740" + hash;
            console.log(key);
            var htmls = sessionStorage.getItem(key);
            if(htmls != null && htmls != ""){//
                sessionStorage.removeItem(key);
                $("#reflashArea").html(htmls);

                //slick 에서 변환되었던 html을 강제로 재변환
                $('.slick-initialized').find(".slick-list").find(".slick-track").find(".slick-slide").each(function(index, item) {
                    var itemhtml = $(this).find("div").html();
                    //console.log('itemhtml : ' + itemhtml );
                    $(this).closest(".slick-track").closest(".slick-list").closest(".ul").append(itemhtml);
                });
                $('.slick-initialized').each(function(index, item) {
                    $(this).removeClass("slick-initialized");
                    $(this).removeClass("slick-slider");
                });
                $(".slick-list").remove();
                $("#_thehandsome").empty();
                $("#_thehyundai").empty();
                $('body').commonUi('initLibrary');

                //slick 오류로 생기는 영역제거
                $('.slick-slide').each(function(index, item){
                    if(!$(this).find('div').hasClass("pdthumb")){
                        $(this).remove();
                    }
                });
            }
            getSimpleFilter();
        }

        /*
		 * 브랜드 검색 영역 이벤트 처리
		 */
        function brandSelectProc(selectBrandId, obj){
            searchProcAjax();
        }

        /*
         * 카테고리, 현대백화점 링크 이벤트 처리
         */
        function searchLinkProc(searchFindName, linkFlg){
            if(linkFlg == 1){
                try {
                    _trk_clickTrace('EVT',"검색결과_LNB_카테고리");
                } catch (e) {}
            }
            else {
                try {
                    _trk_clickTrace('EVT',"검색결과_LNB_현대백화점");
                } catch (e) {}
            }
            $("form[name='pdeSearchForm']").find("input[name='csfDepth']").val('A');
            searchProc("S_TYPE3");
        }
		
        function selDptsOption() {
            var chkCnt = 0;
            $(".dropdown-menu li label").each(function() {
                if($(this).hasClass("checked")) {
                    chkCnt++;
                    $(this).find("input").prop("checked", true);
                }
            });
            
            if(chkCnt == 0) {
                alert("최소 1개 매장은 선택하셔야 됩니다.");
                return;
            }

            searchLinkProc('hdptcategory_Area_', 2);
        }

        // 매체선택
        function searchAutoCate(obj, autoCates) {
            $(".autoCate").removeClass("ui-active");
            $(obj).closest("li").addClass("ui-active");
            $("form[name='pdeSearchForm']").find("input[name='autoCate']").val(autoCates);
            searchProcAjax();
        }

        function searchInit(){
        	// ga tagging
        	try {
        		GA_Event("검색결과_상세검색필터", "초기화", "");
        	} catch(e) {
        		console.log("error - GA_Event");
        	}

        	var initUrl = "/p/dpa/searchSectItem.do?sectId=2731740";
            var param = "";

            // 정렬
            var sort = $("form[name='pdeSearchForm']").find("input[name='sort']").val();
            if(undefined != sort && "BASIC@DESC" != sort){
            	param += "#&sortMom="+sort;
            }
        	// hash태그 포함한 url 리다이렉팅을 위한 랜덤변수
            var ran = Math.floor(Math.random()*100) + 1;
            window.location.href = initUrl + "&ran=" + ran + "&" + param ;
        }

        /*
         * custom-input
         * */
        $(document).on("click", "[class*='custom-input']", function(e){
            
            if($(this).hasClass("disabled")) return;
            if(!$(this).hasClass("checked")){
                $(this).addClass("checked");
                $(this).children("input").prop({ checked : "checked" });
                
                // check all
                if($(this).hasClass("all")){
                    var _inputID = $(this).children("input").attr("id").split("-all")[0];
                    $("input[id^="+ _inputID +"]").closest("label:not('.all'):not('.checked')").trigger("click");
                }
                
            } else {
                $(this).removeClass("checked");
                $(this).children("input").prop({ checked : "" });
                
                // uncheck all
                if($(this).hasClass("all")){
                    var _inputID = $(this).children("input").attr("id").split("-all")[0];
                    $("input[id^="+ _inputID +"]").closest("label:not('.all')").trigger("click");
                }
            }
            
            e.preventDefault();
        });

        // 검색
        function searchProcAjax() {

            reArrangeFilter();

            var brodMore = $("form[name='pdeSearchForm']").find("input[name='brodMore']").val();
            var sectDispGbcd = $("form[name='pdeSearchForm']").find("input[name='sectDispGbcd']").val();
            var page = $("form[name='pdeSearchForm']").find("input[name='page']").val();
            var listSize = $("form[name='pdeSearchForm']").find("input[name='listSize']").val();
            var sort = $("form[name='pdeSearchForm']").find("input[name='sort']").val();
            var itemListType = $("form[name='pdeSearchForm']").find("input[name='itemListType']").val();
            var priceFlag = $("form[name='pdeSearchForm']").find("input[name='priceFlag']").val();
            var searchResultHdpt = $("form[name='pdeSearchForm']").find("input[name='searchResultHdpt']").val();
            var searchResultBrod = $("form[name='pdeSearchForm']").find("input[name='searchResultBrod']").val();
            var searchResultNormal = $("form[name='pdeSearchForm']").find("input[name='searchResultNormal']").val();
            var searchResultOutlet = $("form[name='pdeSearchForm']").find("input[name='searchResultOutlet']").val();
            var minSellPrc = $("form[name='pdeSearchForm']").find("input[name='minSellPrc']").val();
            var maxSellPrc = $("form[name='pdeSearchForm']").find("input[name='maxSellPrc']").val();
            var searchTerm = $("form[name='pdeSearchForm']").find("input[name='searchTerm']").val();
            var dspF = $("form[name='pdeSearchForm']").find("input[name='f']").val();
            var weightYn = $("form[name='pdeSearchForm']").find("input[name='weightYn']").val();
            var searchEnlgType = $("form[name='pdeSearchForm']").find("input[name='searchEnlgType']").val();
            var venCode = $("form[name='pdeSearchForm']").find("input[name='venCode']").val();
            var ven2Code = $("form[name='pdeSearchForm']").find("input[name='ven2Code']").val();
            var brndCd = $("form[name='pdeSearchForm']").find("input[name='brndCd']").val();
            var mdCode = $("form[name='pdeSearchForm']").find("input[name='mdCode']").val();
            var mdFlag = $("form[name='pdeSearchForm']").find("input[name='mdFlag']").val();
            var evntNm = $("form[name='pdeSearchForm']").find("input[name='evntNm']").val();
            var sCat = $("form[name='pdeSearchForm']").find("input[name='sCat']").val();

            var csfLCat = $("form[name='pdeSearchForm']").find("input[name='csfLCat']").val();
            var csfMCat = $("form[name='pdeSearchForm']").find("input[name='csfMCat']").val();
            var csfSCat = $("form[name='pdeSearchForm']").find("input[name='csfSCat']").val();
            var csfDCat = $("form[name='pdeSearchForm']").find("input[name='csfDCat']").val();
            var csfNameCode = $("form[name='pdeSearchForm']").find("input[name='csfNameCode']").val();
            var csfDepth = $("form[name='pdeSearchForm']").find("input[name='csfDepth']").val();
            var autoCate = $("form[name='pdeSearchForm']").find("input[name='autoCate']").val();

            // 지점선택 체크박스 확인 
            var hdptGubunValue = [];
            $('input:checkbox[name="hdptGubun"]').each(function() {
                if(this.checked){
                    hdptGubunValue.push(this.value);
                }
            });

            // 브랜드 체크박스 확인
            var makecoInfoValue = [];
            $('input:checkbox[name="makecoInfo"]').each(function() {
                if(this.checked){
                    makecoInfoValue.push(this.value);
                }
            });

            // 옵션속성
            var itemAttrFilter = [];
            $(".itemAttr-filter").each(function() {
                var $itemAttrFilter = $(this).find('input:checkbox[name="itemAttr"]');
                $itemAttrFilter.each(function(index) {
                    if(this.checked){
                        itemAttrFilter.push(this.value);
                    }
                    var len = itemAttrFilter.length;
                    if(len > 0 && itemAttrFilter[len-1] != "`" && index == $itemAttrFilter.length-1){
                        itemAttrFilter.push("`");
                    }
                });
            });

            // 태그
            var tagFilter = [];
            $(".tag-filter").each(function() {
                var $tagFilter = $(this).find('input:checkbox[name="tagFilter"]');
                $tagFilter.each(function(index) {
                    if(this.checked){
                        tagFilter.push(this.value);
                    }
                    var len = tagFilter.length;
                    if(len > 0 && tagFilter[len-1] != "`" && index == $tagFilter.length-1){
                        tagFilter.push("`");
                    }
                });
            });

            // 혜택영역 체크박스 확인
            var wintInsmMths = $("input[name=wintInsmMths]").prop("checked") ? $("input[name=wintInsmMths]").val() : "";
            var famtFxrtVal = $("input[name=famtFxrtVal]").prop("checked") ? $("input[name=famtFxrtVal]").val() : "";
            var crdDcYN = $("input[name=crdDcYN]").prop("checked") ? $("input[name=crdDcYN]").val() : "";
            var giftYn = $("input[name=giftYn]").prop("checked") ? $("input[name=giftYn]").val() : "";
            var hpointAmt = $("input[name=hpointAmt]").prop("checked") ? $("input[name=hpointAmt]").val() : "";
            var frdlvYn = $("input[name=frdlvYn]").prop("checked") ? $("input[name=frdlvYn]").val() : "";
            var cvstDlvYn = $("input[name=cvstDlvYn]").prop("checked") ? $("input[name=cvstDlvYn]").val() : "";
            var nchgDlvYn = $("input[name=nchgDlvYn]").prop("checked") ? $("input[name=nchgDlvYn]").val() : "";
            var dawnDlvYn = $("input[name=dawnDlvYn]").prop("checked") ? $("input[name=dawnDlvYn]").val() : "";
            var stpicPossYn = $("input[name=stpicPossYn]").prop("checked") ? $("input[name=stpicPossYn]").val() : "";
            var prsnOrdPossYn = $("input[name=prsnOrdPossYn]").prop("checked") ? $("input[name=prsnOrdPossYn]").val() : "";
            var frgnDrctBuyYn = $("input[name=frgnDrctBuyYn]").prop("checked") ? $("input[name=frgnDrctBuyYn]").val() : "";
            var fstDlvYn = $("input[name=fstDlvYn]").prop("checked") ? $("input[name=fstDlvYn]").val() : "";

            // 상품정보 체크박스 확인
            var vdoExstYn = $("input[name=vdoExstYn]").prop("checked") ? $("input[name=vdoExstYn]").val() : "";
            var itemReviewExstYn = $("input[name=itemReviewExstYn]").prop("checked") ? $("input[name=itemReviewExstYn]").val() : "";
            var custScrgOverYn = $("input[name=custScrgOverYn]").prop("checked") ? $("input[name=custScrgOverYn]").val() : "";

            $("form[name='pdeSearchForm'] input[name='sPrice']").val(removeComma($("#rangeVal_L").val()));
            $("form[name='pdeSearchForm'] input[name='ePrice']").val(removeComma($("#rangeVal_R").val()));
            var sPrice = removeComma($("#rangeVal_L").val());
            var ePrice = removeComma($("#rangeVal_R").val());

            var logYn = $("form[name='pdeSearchForm'] input[name='logYn'][type='hidden']").val();
            var hmPdOnly = $("form[name='pdeSearchForm'] input[name='hmPdOnly'][type='hidden']").val();
            var bndlDlvYn = $("form[name='pdeSearchForm'] input[name='bndlDlvYn']").val() == "Y" ? true : false;

            // 묶음배송
            var bndlDlvYn = $("form[name='pdeSearchForm'] input[name='bndlDlvYn']").val();
            var slitmCd = $("form[name='pdeSearchForm'] input[name='slitmCd']").val();
            var itemDCsfNm = $("form[name='pdeSearchForm'] input[name='itemDCsfNm']").val();
            var hdptYn = $("form[name='pdeSearchForm'] input[name='hdptYn']").val();

            var formData = {};
            formData["areaType2Flag"] = false; //일반검색 검색내 검색 사용 플래그
            formData["weightYn"] = weightYn;
            formData["sectDispGbcd"] = sectDispGbcd;
            formData["page"] = page;
            formData["listSize"] = listSize;
            formData["sort"] = sort;
            formData["itemListType"] = itemListType;
            if(autoCate != undefined) formData["autoCate"] = autoCate.split(",");
            formData["searchEnlgType"] = searchEnlgType;
            formData["venCode"] = venCode;
            formData["ven2Code"] = ven2Code;
            formData["brndCd"] = brndCd;
            formData["mdCode"] = mdCode;
            formData["mdFlag"] = mdFlag;
            formData["evntNm"] = evntNm;
            formData["searchResultHdpt"] = searchResultHdpt;
            formData["searchResultBrod"] = searchResultBrod;
            formData["makecoInfo"] = makecoInfoValue;
            formData["minSellPrc"] = minSellPrc;
            formData["maxSellPrc"] = maxSellPrc;
            formData["f"] = dspF;
            formData["csfLCat"] = csfLCat;
            formData["csfMCat"] = csfMCat;
            formData["csfSCat"] = csfSCat;
            formData["csfDCat"] = csfDCat;
            formData["csfNameCode"] = csfNameCode;
            formData["csfDepth"] = csfDepth;
            formData["priceFlag"] = priceFlag;
            formData["sCat"] = sCat;
            formData["hdptGubun"] = hdptGubunValue;
            formData["sCat"] = sCat;
            formData["searchTerm"] = searchTerm;
            if(brodMore != "") {formData["brodMore"] = brodMore;}

            if(wintInsmMths != "") {formData["wintInsmMths"] = wintInsmMths;}
            if(famtFxrtVal != "") {formData["famtFxrtVal"] = famtFxrtVal;}
            if(crdDcYN != "") {formData["crdDcYN"] = crdDcYN;}
            if(giftYn != "") {formData["giftYn"] = giftYn;}
            if(hpointAmt != "") {formData["hpointAmt"] = hpointAmt;}
            if(frdlvYn != "") {formData["frdlvYn"] = frdlvYn;}
            if(cvstDlvYn != "") {formData["cvstDlvYn"] = cvstDlvYn;}
            if(nchgDlvYn != "") {formData["nchgDlvYn"] = nchgDlvYn;}
            if(dawnDlvYn != "") {formData["dawnDlvYn"] = dawnDlvYn;}
            if(stpicPossYn != "") {formData["stpicPossYn"] = stpicPossYn;}
            if(prsnOrdPossYn != "") {formData["prsnOrdPossYn"] = prsnOrdPossYn;}
            if(frgnDrctBuyYn != "") {formData["frgnDrctBuyYn"] = frgnDrctBuyYn;}
            if(fstDlvYn != "") {formData["fstDlvYn"] = fstDlvYn;}

            if(vdoExstYn != "") {formData["vdoExstYn"] = vdoExstYn;}
            if(itemReviewExstYn != "") {formData["itemReviewExstYn"] = itemReviewExstYn;}
            if(custScrgOverYn != "") {formData["custScrgOverYn"] = custScrgOverYn;}

            if(sPrice != "" && priceFlag == "on") {
                formData["sPrice"] = sPrice;
            } else{
                formData["sPrice"] = "";
            }

            if(ePrice != ""  && priceFlag == "on") {
                formData["ePrice"] = ePrice;
            } else{
                formData["ePrice"] = "";
            }

            if(bndlDlvYn != undefined) {formData["bndlDlvYn"] = bndlDlvYn;}
            if(slitmCd != undefined) {formData["slitmCd"] = slitmCd;}
            if(itemDCsfNm != undefined) {formData["itemDCsfNm"] = itemDCsfNm;}
            if(hdptYn != undefined) {formData["hdptYn"] = hdptYn;}

            if(itemAttrFilter.length > 0) {formData["itemAttrFilter"] = itemAttrFilter.join('@');}
            if(tagFilter.length > 0) {formData["tagFilter"] = tagFilter.join('@');}

            formData["ajaxYn"] = "Y";
            formData["logYn"] = logYn;
            formData["hmPdOnly"] = hmPdOnly;
            formData["threeDepthSrchYn"] = "Y";

            try {
            	loading(true);
            } catch (e) {}
            

            $.ajaxSettings.traditional = true;
            $.ajax({
                type: "POST"
                ,url: "/p/dpa/searchSectItem.do?sectId=2731740" 
                ,data: formData
                ,dataType: "html"
                ,async: true
                ,success : function(data) {
                    // 2020.12.14 icj : 데이터가 없는 경우 브랜드 정보도 없기 때문에 화면을 재구성하면 안됨 -> 기존화면에서 필요없는 데이터만 삭제하고 결과가 없다고 표시
                    var hmallProductCnt = $(data).find('input[name=itemSearchAllCnt]').val();
                    if(hmallProductCnt == 0){
                    	$('#pdListDiv').html('');
                    	$('.paging').html('');
                    	
                    	var nodataHtml = '<div class="nodata"><p class="results-title">검색된 상품 중에서<br>선택된 필터에 해당하는 결과가 없습니다.</p></div>';
                    	$('#nodataDiv').html(nodataHtml);
                    	
                    	// 메세지 하단영역 상품 삭제
                    	$('#crossFamily').remove();
                    	$('#_thehandsome').parent().remove();
                    	$('#_thehyundai').parent().remove();
                    	
                    	loading(false);

                        // 선택필터 영역 불러오기
                        getSimpleFilter();

                    	// 필터클릭 이벤트 바인딩
                        $(".detail-filter-list .filter").unbind("click").bind("click", function() {
                            clickFilter($(this));
                        });

                        // 페이징시 선택필터 세션저장
                        $(".paging a").click(function() {
                            setSimpleFilter();
                        });

                    	return false;
                    }
                    
                    // 전체 데이터
                    $("#itemListArea").html(data);
                    // 조회건수
                    $("#mainSearchCnt").html($("#ajaxSearchCnt").val());
                    $("#rangeVal_L").val(sPrice);
                    $("#rangeVal_R").val(ePrice);
                    
                    // 찜리스트
                    jjimList();
                    // 알림리스트
                    listAlrimiWithItem();
                    // 선택필터 영역 불러오기
                    getSimpleFilter();
                    // 필터클릭 이벤트 바인딩
                    $(".detail-filter-list .filter").unbind("click").bind("click", function() {
                        clickFilter($(this));
                    });

                    // 페이징시 선택필터 세션저장
                    $(".paging a").click(function() {
                        setSimpleFilter();
                    });

                    // 2019.09 문주성 : reload 되었을 때에만, '브랜드' 재지정해준다.
                    if(reloadYN == "Y") {
                        $('input:checkbox[name="makecoInfo"]').each(function(index, item) {
                            var splitSecondVal = checkedMakecoInfoValueForDetailData.join(',');

                            if(splitSecondVal != "" && splitSecondVal.indexOf(',') != -1) {
                                splitSecondVal = splitSecondVal.split(',');
                            }

                            for(var k=0; k<splitSecondVal.length; k++){
                                if(index == splitSecondVal[k]) {
                                    $(item).prop("checked", true);
                                    $(item).parent().attr("class", $(item).parent().attr("class") + " checked");
                                }
                            }
                        });

                        // 페이지 정보 리셋팅
                        $(".pl_main_category_pages a").each(function(index, item) {
                            if($(item).attr("class").indexOf("_active") != -1){
                                $("form[name='pdeSearchForm']").find("input[name='page']").val($(item).text());
                            }
                        });
                        searchProcAjax();
                        reloadYN = "N";
                    }
                    
                    // listSize select 박스 값 처리 - 2020.11.20 icj
                    var listSize = $('form[name=pdeSearchForm] input[name=listSize]').val();
                     $("#listSize option[value="+ listSize + "]").attr("selected", true);
                   

                    try {
                    	   loading(false);
                    } catch (e) {
                    }

                    $('body').commonUi('initLibrary')
                }
                ,
                error : function() {
                    console.log("searchProcAjax error");
                    try {
                    	 loading(false);
                    } catch (e) {
                    }
                }
            });
        }

        // 검색
        function searchProc(searchFlg){
            if(searchFlg == "S_TYPE1"){
                try {
                    _trk_flashEnvView('_TRK_IK=' + "A", '_TRK_G8=1');
                } catch (e) {}
                //$("form[name='pdeSearchForm']").find("input[name='searchTerm']").val("A");
            }
            else if(searchFlg == "S_TYPE3"){
                $("form[name='pdeSearchForm']").find("input[name='type']").val("2");
            }
            
            var sPrice = removeComma($("#rangeVal_L").val());
            var ePrice = removeComma($("#rangeVal_R").val());
            var priceFlag = $("form[name='pdeSearchForm'] input[name='priceFlag']").val();

            if(sPrice != "" && priceFlag =="on"){
                $("form[name='pdeSearchForm'] input[name='sPrice']").val(sPrice);
            } else{
                $("form[name='pdeSearchForm'] input[name='sPrice']").remove();
            }

            if(ePrice != "" && priceFlag =="on"){
                $("form[name='pdeSearchForm'] input[name='ePrice']").val(ePrice);
            } else{
                $("form[name='pdeSearchForm'] input[name='ePrice']").remove();
            }

            // [HDHS-19239] url파라미터 제거
            var tmpSearchTerm = $("form[name='pdeSearchForm']").find("input[name='searchTerm']").val();
            if( undefined == tmpSearchTerm || "A" == tmpSearchTerm || "" == $.trim(tmpSearchTerm) ){
            }

            searchProcAjax();
        }

        // 정렬
        function searchSortProc(obj){
	        var sort = $(obj).find("input.sort").val();
            if(!isEmpty(sort)) {
                $("form[name='pdeSearchForm']").find("input[name='sort']").val(sort);
            }
            $("form[name='pdeSearchForm']").find("input[name='searchTerm']").val("A");

            var clickTraceNm = "";
            if($("form[name='pdeSearchForm']").find("input[name='sort']").val() == "BASIC@DESC"){
                clickTraceNm = "추천순";
            }
            else if($("form[name='pdeSearchForm']").find("input[name='sort']").val() == "SELL_PRC@ASC"){
                clickTraceNm = "낮은가격순";
            }
            else if($("form[name='pdeSearchForm']").find("input[name='sort']").val() == "SELL_PRC@DESC"){
                clickTraceNm = "높은가격순";
            }
            else if($("form[name='pdeSearchForm']").find("input[name='sort']").val() == "REG_DTM@DESC"){
                clickTraceNm = "최근등록순";
            }
            else if($("form[name='pdeSearchForm']").find("input[name='sort']").val() == "ITEM_EVAL_CNT@DESC"){
                clickTraceNm = "상품평수순";
            }
            else if($("form[name='pdeSearchForm']").find("input[name='sort']").val() == "ITEM_AVRG_EVAL_SCRG@DESC"){
                clickTraceNm = "상품평점순";
            }
            else if($("form[name='pdeSearchForm']").find("input[name='sort']").val() == "SELL_QTY@DESC"){
                clickTraceNm = "판매량순";
            }

            try {
                _trk_clickTrace('EVT',"검색결과_상품리스트_" + clickTraceNm);
            } catch (e) {}
            
            searchProc("S_TYPE5");
        }

        /*
		 * 브랜드 검색 레이어 처리를 위한 함수 (초성으로 필터링)
		 */
        function cho_hangul(str) {
            var cho = ["ㄱ","ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"];
            var result = "";
            for(i=0;i<str.length;i++) {
                code = str.charCodeAt(i)-44032;
                if(code>-1 && code<11172) {
                    result += hanToEn(cho[Math.floor(code/588)]);
                }
            }
            return result;
        }

        function hanToEn(han) {
            var result = "";

            if(han == "ㄱ") {
                result = "a";
            } else if(han == "ㄴ") {
                result = "b";
            } else if(han == "ㄷ") {
                result = "c";
            } else if(han == "ㄹ") {
                result = "d";
            } else if(han == "ㅁ") {
                result = "e";
            } else if(han == "ㅂ") {
                result = "f";
            } else if(han == "ㅅ") {
                result = "g";
            } else if(han == "ㅇ") {
                result = "h";
            } else if(han == "ㅈ") {
                result = "i";
            } else if(han == "ㅊ") {
                result = "j";
            } else if(han == "ㅋ") {
                result = "k";
            } else if(han == "ㅌ") {
                result = "l";
            } else if(han == "ㅍ") {
                result = "m";
            } else if(han == "ㅎ") {
                result = "n";
            } else {
                result = han;
            }

            return result;
        }

        function enToHan(eng) {
            var result = "";

            if(eng == "a") {
                result = "ㄱ";
            } else if(eng == "b") {
                result = "ㄴ";
            } else if(eng == "c") {
                result = "ㄷ";
            } else if(eng == "d") {
                result = "ㄹ";
            } else if(eng == "e") {
                result = "ㅁ";
            } else if(eng == "f") {
                result = "ㅂ";
            } else if(eng == "g") {
                result = "ㅅ";
            } else if(eng == "h") {
                result = "ㅇ";
            } else if(eng == "i") {
                result = "ㅈ";
            } else if(eng == "j") {
                result = "ㅊ";
            } else if(eng == "k") {
                result = "ㅋ";
            } else if(eng == "l") {
                result = "ㅌ";
            } else if(eng == "m") {
                result = "ㅍ";
            } else if(eng == "n") {
                result = "ㅎ";
            } else {
                result = eng;
            }

            return result;
        }

        function brandCheckArea(chkBrandNameStr){
            var subChkStr = chkBrandNameStr.substring(0,1);
            var chk_num = subChkStr.search(/[0-9]/g);
            //var chk_eng = subChkStr.search(/[a-z]/ig);
            var chk_han = cho_hangul(subChkStr);

            if(chk_han != ""){
                return chk_han;
            }
            else if(chk_num == 0){
                return subChkStr;
            }
            else {
                return subChkStr.toUpperCase();
            }
        }

        /*
		  * 브랜드 명 정렬
		  */
        function brandNameSort(brandDspLists){
            var brandKRList = [];
            var brandNumberList = [];
            var brandEngList = [];
            var brandengList = [];
            var brandDspListsLen = brandDspLists.length;

            for(var i = 0 ; i < brandDspListsLen ; i++){
                if(brandDspLists[i].search(/[0-9]/g) == 0){
                    brandNumberList.push(brandDspLists[i]);
                }
                else if(brandDspLists[i].match(/[A-Z]/)) {
                    brandEngList.push(brandDspLists[i]);
                }
                else if(brandDspLists[i].match(/[a-z]/)) {
                    brandengList.push(brandDspLists[i]);
                }
                else {
                    brandKRList.push(brandDspLists[i]);
                }
            }
            brandKRList = brandKRList.sort();
            brandNumberList = brandNumberList.sort();
            brandEngList = brandEngList.sort();
            brandengList = brandengList.sort();

            return brandKRList.concat(brandengList, brandEngList, brandNumberList);
        }

        /*
		 * 브랜드 검색 레이어 생성
		 */
        function brandSearchAll(obj) {
            $("#brandDetail").modal().show()
            brandSearchAllList(obj);
        }

        function brandSearchAllList(obj, callback) {
            var brandAllList = $("#brandAllList").children();
            var brandDspLists = [];
            var index = 0;
            var brandAllListLen = brandAllList.length;

            for (var i = 0; i < brandAllListLen; i++) {
                var brandList = brandAllList[i];
                var brandName = $(brandList).find("input[id='hidBrandNm0"+(i+1)+"']").val();
                var brandFilter = $(brandList).find("input[id='hidBrandFilter0"+(i+1)+"']").val();

                //특수문자가 아닐 경우에만 브랜드명으로 초성 확인-리모콘 버튼 활성화
                if(!checkSpecial(brandName)){
	               try{
		                var brandFirst = brandCheckArea(brandName);
		                var $brand = $("#pl_brands_brandlist").find(".brandAllH_" + brandFirst);
	                    if ($brand.hasClass("disabled")) {
	                    	$brand.removeClass("disabled");
	                        brandDspLists[index++] = brandCheckArea(brandName);
	                    }
	               }catch(e){
	            	   // 노출불가 케이스 통과시킴
	            	   console.log(brandName + ' 노출불가');
	            	   continue;
	               }
                }
            }

            // 브랜드명 정렬
            brandDspLists = brandNameSort(brandDspLists);

            var brandDspListsLen = brandDspLists.length;
            // 각각의 초성 모음으로 바인딩

            for (var j = 0; j < brandDspListsLen; j++) {
                var brandListHtml = "";
                brandListHtml = brandListHtml + '<dl id=brandAllH_'+brandDspLists[j]+'>'+'<dt>' + enToHan(brandDspLists[j]) + '</dt>';
                brandListHtml = brandListHtml + '<dd id="pl_brands_brandname_list">';
                var index = 0;
                for (var i = 0; i < brandAllListLen; i++) {
                    var brandList = brandAllList[i];
                    var brandName = $(brandList).find("input[id='hidBrandNm0"+(i+1)+"']").val();
                    var brandFilter = $(brandList).find("input[id='hidBrandFilter0"+(i+1)+"']").val();
                    if(brandDspLists[j] == brandCheckArea(brandName)){
                        var brandCode = $(brandList).find("input[id='hidBrandCd0"+(i+1)+"']").val();
                        var isChecked = $(brandList).find("input[id='hidBrandIsChecked0"+(i+1)+"']").val();

                        if(isChecked == "true"){
                            brandListHtml = brandListHtml + '<label class="chklabel square checked">';
                            brandListHtml = brandListHtml + '<input type="checkbox"  checked="checked" name="makecoInfo" '
                                                          // + 'id="checkbox-bname' + (index+1) + 'brandname_'+brandCheckArea(brandName)+'_'+(index+1)+'" '
                                                          + 'id="brand-id-'+i+'"'
                                                          + 'data-filter-nm="'+brandName+'"'
                                                          + 'data-filter-id="brnd-'+brandCode+'"'
                                                          + 'value="'+brandFilter+'">';
                        }
                        else {
                            brandListHtml = brandListHtml + '<label class="chklabel square">';
                            brandListHtml = brandListHtml + '<input type="checkbox"  name="makecoInfo" '
                                                          // + 'id="checkbox-bname' + (index+1) + 'brandname_'+ brandCheckArea(brandName)+'_'+(index+1)+'"'
                                                          + 'id="brand-id-'+i+'"'
                                                          + 'data-filter-nm="'+brandName+'"'
                                                          + 'data-filter-id="brnd-'+brandCode+'"'
                                                          + 'value="'+brandFilter+'">';
                        }
                        brandListHtml = brandListHtml + '<i class="icon"></i><span>';
                        brandListHtml = brandListHtml + ''+brandName+'';
                        brandListHtml = brandListHtml + '</span></label>';
                    }
                }
                brandListHtml = brandListHtml + '</dd></dl>';
                $("#custom-scroll-content").append(brandListHtml);
            }
            //callback(true);
        }


        /*
		 * 브랜드 더보기 닫기시 딤 끄기
		 */
        $(document).on('click', "._btn_close", function(e) {
            remove_page_dim();
        });

        /*
		  * 브랜드 더보기 레이어 추가 선택
		  */
        function brandAddSelectProc(selectBrandId){
            if($("#pl_brands_brandname_list input[id='"+selectBrandId+"']").is(":checked")){
                $("#pl_brands_brandname_list input[id='"+selectBrandId+"']").prop('checked', false);
            }
            else {
                $("#pl_brands_brandname_list input[id='"+selectBrandId+"']").prop('checked', true);
            }
        }

        /*
		 * 브랜드 검색 레이어 이벤트 처리
		 */
        function brandSelectLayerProc(obj, procFlg){
            var brandNamesL = $("#custom-scroll-content").find("label");  //해당클래스가 여러개라, id로도 구분..

            if(procFlg == "cancel"){
	            // 체크 박스 모두 해제
	            for (var i = 0; i < brandNamesL.length; i++) {
	                var chkBrandNames = brandNamesL[i];
	                $(chkBrandNames).find("input[name='makecoInfo']").prop('checked', false);
	            }
            }else if(procFlg == "selectall"){
                // 전체 선택
                for (var i = 0; i < brandNamesL.length; i++) {
                    var chkBrandNames = brandNamesL[i];
                    $(chkBrandNames).find("input[name='makecoInfo']").prop('checked', true);
                }
            }else {
                // 적용 : 선택된 체크 박스 저장후 레이어 닫고 브랜드 검색 시작
                // 본 페이지와 동기화
                var tmpBrandCd;
                for (var i = 0; i < brandNamesL.length; i++) {
                    var chkBrandNames = brandNamesL[i];
                    if($(chkBrandNames).find("input[name='makecoInfo']").is(":checked")){
                        tmpBrandCd = $(chkBrandNames).find("input[name='makecoInfo']").val().split(" ");
                        $(".chocCondBrnd_"+tmpBrandCd[0]).prop('checked', true);
                    }
                    else {
                        tmpBrandCd = $(chkBrandNames).find("input[name='makecoInfo']").val().split(" ");
                        $(".chocCondBrnd_"+tmpBrandCd[0]).prop('checked', false);
                    }
                }
                searchProc('S_TYPE1');
            }
        }

        /*
		  * 브래드 레이어의 브랜드명 검색
		  */
        function brandLayerTxtSearch(){
            var brandName = $("input[name='pl_brands_searchform_search']").val();

            if($("#pl_brands_brandlist").find(".brandAllH_"+brandCheckArea(brandName)+" a").attr("class") != "disabled"){
                $("#pl_brands_brandlist").find(".brandAllH_"+brandCheckArea(brandName)+" a").click();
            }
        }

        /*
		  * 브랜드 더보기 레이어 검색어 필드 키 이벤트 처리
		  */
        function brandTxtSearchKeyEvent(){
            if(event.keyCode == 13){
                brandLayerTxtSearch();
                event.preventDefault();
                return false;
            }
        }


        function goDetailData(){ //해시 데이터를 String으로 만든다..

            var addUrl = "";
            if( detailDataMap != undefined){ //상세데이터가 있다면..각각을 넣어준다.

                var allTemp = detailDataMap.getAll();
                for(i in allTemp){
                    addUrl += "&" + i + "=" + detailDataMap.get(i);
                }
            }

            return addUrl;
        }

        //특수문자 검증
        function checkSpecial(chkBrandNameStr) {
            var subChkStr = chkBrandNameStr.substring(0,1);

            // 2020.12.04 icj : 브랜드명에 (주)가 있어서 (도 제외 패턴 추가
            var special_pattern = /[`~!@#$%^&*|\\\'\";:\(/?]/gi;
            if (special_pattern.test(subChkStr) == true) {            	
                return true;
            } else {
                return false;
            }
        }

        
        /**
         * 이미지 오류 숨김처리
         */
        function hideNoImg(iId) {
        	var $obj = $("#"+iId);
        	var cnt = $obj.parents("ul").find("li").length;
        	if($obj.parents(".product-wrap.pdslide") == 0){ // 상품 리스트
        		if(cnt == 1){ // 1개는 노출처리
        			return; 
        		}
        	} else{ // 0개일경우 영역제거
        		if(cnt == 1){
        			$obj.parents(".product-wrap.pdslide").remove();
        			return; 
        		}
        	}
        	$obj.parents("li").remove();
        }

        //for chrome debugger
        //# sourceURL=script-for-PDESearch3Depth.js
    </script>


<script type="text/javascript">
        var hmallItemTotalSize = "160950";
        var brodItemTotalSize = "2381";
        var brodPrrgItemTotalSize = "0";
        var total = Number(hmallItemTotalSize) + Number(brodItemTotalSize) + Number(brodPrrgItemTotalSize);
        var searchTxt = "";

        _TRK_PI="IKWD";
        
        _TRK_IK="A";
        if(_TRK_IK == "A"){
            _TRK_IK = searchTxt;
        }
   
        _TRK_IKWDRS=total;

    </script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/1066206974/?random=1649397193312&amp;cv=9&amp;fst=1649397193312&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=11&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa3u0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731740&amp;ref=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731203%26GnbGroup%3DAllCategory%26Code%3D01&amp;tiba=%ED%8B%B0%EC%85%94%EC%B8%A0%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/1066206974/?random=1649397194019&amp;cv=9&amp;fst=1649397194019&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=11&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa3u0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731740&amp;ref=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731203%26GnbGroup%3DAllCategory%26Code%3D01&amp;tiba=%ED%8B%B0%EC%85%94%EC%B8%A0%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/937000404/?random=1649397194102&amp;cv=9&amp;fst=1649397194102&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=11&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa3u0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731740&amp;ref=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731203%26GnbGroup%3DAllCategory%26Code%3D01&amp;tiba=%ED%8B%B0%EC%85%94%EC%B8%A0%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/937000404/?random=1649397194109&amp;cv=9&amp;fst=1649397194109&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=11&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa3u0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731740&amp;ref=https%3A%2F%2Fwww.hmall.com%2Fp%2Fdpa%2FsearchSectItem.do%3FsectId%3D2731203%26GnbGroup%3DAllCategory%26Code%3D01&amp;tiba=%ED%8B%B0%EC%85%94%EC%B8%A0%20-%20%ED%98%84%EB%8C%80Hmall&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
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






;
width








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






;
opacity








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
	<input name="monitor" type="hidden" value="monitor">
	<div class="wrap display-3depth">

		<!-- header -->

		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchPopKeyWordList.js?ver=040809"></script>
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchADTextList.js?ver=040809"
			charset="UTF-8"></script>
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchADLinkList.js?ver=040809"
			charset="UTF-8"></script>
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchSpecialShopLinkList.js?ver=040809"
			charset="UTF-8"></script>
		<script type="text/javascript"
			src="//image.hmall.com/gen/js/searchBrndShopLinkList.js?ver=040809"
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
        
        
        
        
        GA_info[GACustomKey.Dimension17] = "";
        GA_info[GACustomKey.Dimension76] = "123.142.252.**";
        
        
        
        
        
        
        GA_info[GACustomKey.Dimension19] = "Y";
        
        
        
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
			src="//image.hmall.com/gen/js/new_main_data.js?ver=040809"
			charset="UTF-8"></script>


		<!-- TODO 곽희섭 20170523 통합포인트 추가 -->
		<script type="text/javascript"
			src="//image.hmall.com/p/js/cu/SsoAjax.js?version=1"></script>

		<script type="text/javascript">
	var serverHost       = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0 || location.href.indexOf("local") > 0) ? "https://" + location.host : "https://www.hmall.com";
	var serverHostForSSL = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0 || location.href.indexOf("local") > 0) ? "https://" + location.host : "https://www.hmall.com";

	/* TODO 곽희섭 20170524 통합포인트 추가 */
	var ssoAuthYn       = "";
	var ssoAuthCd       = "";
	var upntCustNoEnc   = "";
	var mcustNo         = ""; //TODO 곽희섭 20170804 통합멤버십 회원 코드
	var custNo          = ""; //TODO 곽희섭 20170810 회원코드
	var upntCustYn      = ""; // 통멤회원여부
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

		var searchTerm = "A";
		var searchBaseKeyword = "A";
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
/* 		$(document).on("click", function() {
			if($('.category-menu-wrap').is(':visible')){
				$('.category-menu-wrap').hide();
			}
		}); */
		
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
				type="hidden" name="retPage"
				value="/p/dpa/searchSectItem.do?sectId=2731740"> <input
				type="hidden" name="prtnrId" value="D020" readonly=""> <input
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
	       var searchTerm = "A";
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
				name="redirectUrl" value="/p/dpa/searchSectItem.do?sectId=2731740">
			<input type="hidden" name="errorMessage" value=""> <input
				type="hidden" name="token"> <input type="hidden"
				name="snsType">
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

		var returnURL = "/p/dpa/searchSectItem.do?sectId=2731740";
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

		<div class="nav-skip">
			<a href="#mainContents">본문 콘텐츠로 건너뛰기</a>
		</div>

		<main class="cmain main" role="main" id="mainContents">

			<!-- ajax 새로고침 영역 설정-->
			<div id="reflashArea" class="container">


				<!-- 매장전시이주형 searchResult 변수를 중복사용하고 있어서 다른 변수로 선언함 -->


				<form name="searchPageNation"
					action="/p/dpa/searchSectItem.do?sectId=2731740" method="post"></form>


				<!-- 검색을 위한 Form 영역 -->
				<form name="pdeSearchForm"
					action="/p/dpa/searchSectItem.do?sectId=2731740" method="post">

					<div class="pdeSearchFormHiddenInput" style="display: none">
						<input type="hidden" class="nonClear" name="weightYn" value="">
						<input type="hidden" name="sectDispGbcd" value="01">
						<!-- 화면에서만 사용하는 변수 -->

						<input type="hidden" name="page" value="1"> <input
							type="hidden" class="nonClear" name="listSize" value="60">
						<!-- listSize -->
						<input type="hidden" name="sort" value="REG_DTM@DESC">
						<!-- sort -->

						<input type="hidden" name="itemListType" value="type1">
						<!-- 상품 가로[type2], 세로[type1] -->

						<input type="hidden" name="priceFlag" value=""> <input
							type="hidden" name="csfLCat" value="">
						<!-- csfLCat -->
						<input type="hidden" name="csfMCat" value="">
						<!-- csfMCat -->
						<input type="hidden" name="csfSCat" value="">
						<!-- csfSCat -->
						<input type="hidden" name="csfDCat" value="">
						<!-- csfDCat -->
						<input type="hidden" name="csfNameCode" value="">
						<!-- csfNameCode -->
						<input type="hidden" name="csfDepth" value="A">
						<!-- csfDepth -->

						<!-- 매장에서 넘어오는 param -->





						<!-- //매장에서 넘어오는 param -->


						<input type="hidden" name="brodMore" value=""> <input
							type="hidden" name="logYn" value=""> <input type="hidden"
							name="hmPdOnly" value="N"> <input type="hidden"
							name="searchTerm" value="A"> <input type="hidden"
							name="autoCate" value="">
					</div>

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


							<!-- 로케이션 소분류 -->
							<li data-menu="" class=""><a
								href="HmallServlet?command=category&cCode=${ categoryVO.categoryCode }" class="cate"> ${ categoryVO.categoryName }</a>


								<div class="category-wrap" data-submenu="" style="">
									<ul class="category-list">
										<c:forEach var="category" items="${ categoryList }">
											<li><a href="HmallServlet?command=category&cCode=${ category.categoryCode }">${ category.categoryName }</a></li>
										</c:forEach>
									</ul>
								</div></li>


							<!-- //로케이션정보 -->

						</ul>
						<!-- // .location-menu -->
					</div>
					<!-- //.location -->
					<!-- //로케이션 메뉴 끝 -->

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
											<!-- ## 상위그룹매장  -->

											<!-- 좌측영역 LOOP2 -->
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
						<div class="contents" id="pl_main">

							<div class="display-list-wrap" id="itemListArea">

								<h2 class="title30">
									<span> ${ categoryVO.categoryName }</span> <em>( <fmt:formatNumber
											value="${ products.size() }" pattern="#,###" /> )
									</em>
								</h2>

								<div class="list-sort-area">
									<div class="sortOption">
										<!--// 활성화시 a태그에 active 클래스 추가 -->
										<a href="javascript://"
											onclick="javascript:searchSortProc(this);" class="active">
											<input type="hidden" class="sort" value="REG_DTM@DESC">최근등록순
										</a> <a href="javascript://"
											onclick="javascript:searchSortProc(this);"> <input
											type="hidden" class="sort" value="SELL_QTY@DESC">많이팔린순
										</a> <a href="javascript://"
											onclick="javascript:searchSortProc(this);"> <input
											type="hidden" class="sort" value="BASIC@DESC">MD추천순
										</a> <a href="javascript://"
											onclick="javascript:searchSortProc(this);"> <input
											type="hidden" class="sort" value="SELL_PRC@ASC">낮은가격순
										</a> <a href="javascript://"
											onclick="javascript:searchSortProc(this);"> <input
											type="hidden" class="sort" value="SELL_PRC@DESC">높은가격순
										</a> <a href="javascript://"
											onclick="javascript:searchSortProc(this);"> <input
											type="hidden" class="sort" value="ITEM_EVAL_CNT@DESC">상품평수순
										</a>


									</div>

									<div class="sort-form"></div>

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

								<!-- 선택필터 노출영역 -->
								<div class="selected-filter-list" style="display: none">
									<ul data-modules-scrollitems="align:center;"
										class="prev-disabled"></ul>
									<a href="javascript:searchInit();" class="reload"><i
										class="icon"></i><span>초기화</span></a>
								</div>



								<div class="pdlist-wrap" id="pdListDiv">
									<ul>

										<!-- 무료배송 2020.11.19 icj 무료배송 세팅 위치 변경 -->
										<!-- 혜택 영역 -->
										<!-- //혜택 영역 -->
										<c:forEach var="product" items="${ products }">

											<li class="pdthumb">
												<!-- 2020.11.26 icj 가중치 weightYn 옵션시에 이미지 위에 상품코드 노출, a 태그로 이동하지 않도록 밖으로 배치 -->
												<a href="javascript://"
												onclick="itemDetailLinkProc('HmallServlet?command=product_detail&pCode=${ product.productCode }', 'DV0001_U02', 'A');">
													<div class="thumb">
														<img
															src="product_images/${ product.productImg }.jpg?RS=300x300&amp;AR=0"
															alt="[${ product.brand }] ${ product.productName }"
															id="${ product.productCode }_img"
															onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=300x300&amp;AR=0')">
													</div>
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
																<!-- 상품종류? START -->
																<!-- 상품종류? END -->
																<span>무료배송</span>

															</div>
															<p class="like-count"></p>
															<!-- 2020.11.26 icj : weightYn에 따른 가중치 표기 추가 -->
														</div>
													</div>
											</a><a href="javascript://"
												onclick="sendSlitmClickNewWin('[${ product.brand }] ${ product.productName }','${ product.productCode }','검색결과','HmallServlet?command=product_detail&pCode=${ product.productCode }');"
												class="hoverview"> <i class="icon"></i>새창열기
											</a>
												<div class="alimlike"
													data-slitmcd="${ product.productCode }"
													data-bsitmcd="${ product.productCode }">

													<a href="javascript:;" class="btn btn-like"
														onclick="javascript:goChioceProcess('00','019780','0514615885','2139546502', event);">
														<i class="icon"></i><span class="hiding">찜</span>
													</a>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
								<!-- //.pdlist-wrap -->

								<div class="paging">


									<!-- 페이지 선택 -->
									<div class="page-prevarea">

										<a
											href="HmallServlet?command=category&cCode=${ categoryVO.categoryCode }&amp;sPrice=&amp;ePrice=&amp;minSellPrc=900&amp;maxSellPrc=134900&amp;sectDispGbcd=01&amp;itemListType=type1&amp;sort=REG_DTM%40DESC&amp;areaType2Flag=false&amp;listSize=60&amp;autoCate=&amp;csfLCat=&amp;csfMCat=&amp;csfSCat=&amp;csfDCat=&amp;csfNameCode=&amp;csfDepth=A&amp;threeDepthSrchYn=Y&amp;searchTerm=A">
											<strong aria-label="현재 선택페이지">1</strong></a>


										<a
											href="/p/dpa/searchSectItem.do?sectId=2731740&amp;page=11&amp;sPrice=&amp;ePrice=&amp;minSellPrc=900&amp;maxSellPrc=134900&amp;sectDispGbcd=01&amp;itemListType=type1&amp;sort=REG_DTM%40DESC&amp;areaType2Flag=false&amp;listSize=60&amp;autoCate=&amp;csfLCat=&amp;csfMCat=&amp;csfSCat=&amp;csfDCat=&amp;csfNameCode=&amp;csfDepth=A&amp;threeDepthSrchYn=Y&amp;searchTerm=A"
											class="page-next" aria-label="다음페이지 이동"><i class="icon"></i><span
											class="hiding">다음페이지 이동</span></a> <a
											href="/p/dpa/searchSectItem.do?sectId=2731740&amp;page=2682&amp;sPrice=&amp;ePrice=&amp;minSellPrc=900&amp;maxSellPrc=134900&amp;sectDispGbcd=01&amp;itemListType=type1&amp;sort=REG_DTM%40DESC&amp;areaType2Flag=false&amp;listSize=60&amp;autoCate=&amp;csfLCat=&amp;csfMCat=&amp;csfSCat=&amp;csfDCat=&amp;csfNameCode=&amp;csfDepth=A&amp;threeDepthSrchYn=Y&amp;searchTerm=A"
											class="page-last" aria-label="마지막페이지 이동"><i class="icon"></i><span
											class="hiding">마지막페이지 이동</span></a>

									</div>



								</div>



								<input id="ajaxSearchCnt" type="hidden" value="(160,876)">
							</div>

							<!-- 브랜드 더보기 레이어 영역 as-is class="pl_dim" 참고-->
							<div class="ui-modal brand-detail" id="brandDetail" tabindex="-1"
								role="dialog" aria-label="브랜드 더보기">
								<div class="ui-modal-dialog" role="document">
									<div class="content">
										<p class="ui-title">브랜드 더보기</p>
										<div class="inputbox md">
											<label class="inplabel icon-find"> <input type="text"
												name="pl_brands_searchform_search"
												id="pl_brands_searchform_search"
												onkeyup="brandTxtSearchKeyUpEvent();"
												onkeydown="brandTxtSearchKeyEvent();" placeholder="브랜드 검색">
											</label>
											<button class="btn btn-find" type="button"
												onclick="brandLayerTxtSearch();">
												<i class="icon find"></i><span class="hiding">검색</span>
											</button>
											<button class="btn ico-clearabled" type="button"
												id="brandKeywordClear"
												onclick="javascript:brandClearWord();">
												<i class="icon"></i><span class="hiding">지우기</span>
											</button>
										</div>
										<!-- class="selectall" "active" "disabled" -->
										<ul class="brand-filtermenu" id="pl_brands_brandlist">
											<li><a href="#all"
												onclick="brandSelectLayerProc(this, 'selectall');"
												class="selectall"><span>전체</span></a></li>
											<li class="brandAllH_A disabled"><a href="#brandAllH_A"><span>A</span></a></li>
											<li class="brandAllH_B disabled"><a href="#brandAllH_B"><span>B</span></a></li>
											<li class="brandAllH_C disabled"><a href="#brandAllH_C"><span>C</span></a></li>
											<li class="brandAllH_D disabled"><a href="#brandAllH_D"><span>D</span></a></li>
											<li class="brandAllH_E disabled"><a href="#brandAllH_E"><span>E</span></a></li>
											<li class="brandAllH_F disabled"><a href="#brandAllH_F"><span>F</span></a></li>
											<li class="brandAllH_G disabled"><a href="#brandAllH_G"><span>G</span></a></li>
											<li class="brandAllH_H disabled"><a href="#brandAllH_H"><span>H</span></a></li>
											<li class="brandAllH_I disabled"><a href="#brandAllH_I"><span>I</span></a></li>
											<li class="brandAllH_J disabled"><a href="#brandAllH_J"><span>J</span></a></li>
											<li class="brandAllH_K disabled"><a href="#brandAllH_K"><span>K</span></a></li>
											<li class="brandAllH_L disabled"><a href="#brandAllH_L"><span>L</span></a></li>
											<li class="brandAllH_M disabled"><a href="#brandAllH_M"><span>M</span></a></li>
											<li class="brandAllH_N disabled"><a href="#brandAllH_N"><span>N</span></a></li>
											<li class="brandAllH_O disabled"><a href="#brandAllH_O"><span>O</span></a></li>
											<li class="brandAllH_P disabled"><a href="#brandAllH_P"><span>P</span></a></li>
											<li class="brandAllH_Q disabled"><a href="#brandAllH_Q"><span>Q</span></a></li>
											<li class="brandAllH_R disabled"><a href="#brandAllH_R"><span>R</span></a></li>
											<li class="brandAllH_S disabled"><a href="#brandAllH_S"><span>S</span></a></li>
											<li class="brandAllH_T disabled"><a href="#brandAllH_T"><span>T</span></a></li>
											<li class="brandAllH_U disabled"><a href="#brandAllH_U"><span>U</span></a></li>
											<li class="brandAllH_V disabled"><a href="#brandAllH_V"><span>V</span></a></li>
											<li class="brandAllH_W disabled"><a href="#brandAllH_W"><span>W</span></a></li>
											<li class="brandAllH_X disabled"><a href="#brandAllH_X"><span>X</span></a></li>
											<li class="brandAllH_Y disabled"><a href="#brandAllH_Y"><span>Y</span></a></li>
											<li class="brandAllH_Z disabled"><a href="#brandAllH_Z"><span>Z</span></a></li>
											<li class="brandAllH_a disabled"><a href="#brandAllH_a"><span>ㄱ</span></a></li>
											<li class="brandAllH_b disabled"><a href="#brandAllH_b"><span>ㄴ</span></a></li>
											<li class="brandAllH_c disabled"><a href="#brandAllH_c"><span>ㄷ</span></a></li>
											<li class="brandAllH_d disabled"><a href="#brandAllH_d"><span>ㄹ</span></a></li>
											<li class="brandAllH_e disabled"><a href="#brandAllH_e"><span>ㅁ</span></a></li>
											<li class="brandAllH_f disabled"><a href="#brandAllH_f"><span>ㅂ</span></a></li>
											<li class="brandAllH_g disabled"><a href="#brandAllH_g"><span>ㅅ</span></a></li>
											<li class="brandAllH_h disabled"><a href="#brandAllH_h"><span>ㅇ</span></a></li>
											<li class="brandAllH_i disabled"><a href="#brandAllH_i"><span>ㅈ</span></a></li>
											<li class="brandAllH_j disabled"><a href="#brandAllH_j"><span>ㅊ</span></a></li>
											<li class="brandAllH_k disabled"><a href="#brandAllH_k"><span>ㅋ</span></a></li>
											<li class="brandAllH_l disabled"><a href="#brandAllH_l"><span>ㅌ</span></a></li>
											<li class="brandAllH_m disabled"><a href="#brandAllH_m"><span>ㅍ</span></a></li>
											<li class="brandAllH_n disabled"><a href="#brandAllH_n"><span>ㅎ</span></a></li>
											<li class="brandAllH_0 disabled"><a href="#brandAllH_0"><span>0</span></a></li>
											<li class="brandAllH_1 disabled"><a href="#brandAllH_1"><span>1</span></a></li>
											<li class="brandAllH_2 disabled"><a href="#brandAllH_2"><span>2</span></a></li>
											<li class="brandAllH_3 disabled"><a href="#brandAllH_3"><span>3</span></a></li>
											<li class="brandAllH_4 disabled"><a href="#brandAllH_4"><span>4</span></a></li>
											<li class="brandAllH_5 disabled"><a href="#brandAllH_5"><span>5</span></a></li>
											<li class="brandAllH_6 disabled"><a href="#brandAllH_6"><span>6</span></a></li>
											<li class="brandAllH_7 disabled"><a href="#brandAllH_7"><span>7</span></a></li>
											<li class="brandAllH_8 disabled"><a href="#brandAllH_8"><span>8</span></a></li>
											<li class="brandAllH_9 disabled"><a href="#brandAllH_9"><span>9</span></a></li>
										</ul>
										<div class="content-body">
											<div class="brands-show" id="custom-scroll-content"
												data-modules-scroll=""></div>
											<!-- //.brands-show -->
											<!-- 선택 해제/적용은 Method/Event는 스크립트 가이드 참조 -->
											<div class="btngroup">
												<button type="button"
													onclick="brandSelectLayerProc(this, 'cancel');"
													class="btn btn-lineblack">
													<span>선택 해제</span>
												</button>
												<button type="button"
													onclick="clickFilter(this);brandSelectLayerProc(this, 'apply');"
													class="btn btn-default" id="brndApply" data-dismiss="modal">
													<span>적용</span>
												</button>
											</div>
										</div>
										<!-- //.content-body -->

										<button class="btn btn-close" data-dismiss="modal">
											<i class="icon xico"></i><span class="hiding">레이어 닫기</span>
										</button>
									</div>
									<!-- //.content -->
								</div>
								<!-- //.ui-modal-dialog -->
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
		src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=040809"></script>
	<script type="text/javascript"
		src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=040809"></script>

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
        
        
        
        
        GA_info[GACustomKey.Dimension17] = "";
        GA_info[GACustomKey.Dimension76] = "123.142.252.**";
        
        
        
        
        
        
        GA_info[GACustomKey.Dimension19] = "Y";
        
        
        
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
				<!-- 페이징 -->

				<div class="pagination">
					<button class="btn btn-prev">
						<span>이전</span>
					</button>
					<span class="numbering"><strong class="current">1</strong> /
						<em class="total">2</em></span>
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


	<script>
    // 브랜드 초성클릭 시 스크롤 이동 함수
    (function(global, $, undefined){
        $(document).on('click', '#brandDetail .brand-filtermenu a', function(e){
            e.preventDefault();
            var $this = $(this);
            lists = $this.parent(),
            scrollCont = $('#custom-scroll-content'),
            target = $(this.hash),
            posTop = 0;
            if(this.hash !== '#all'){
                var posTop = target.position().top + scrollCont.scrollTop() - parseInt(scrollCont.css('padding-top')) + parseInt(target.css('margin-top'));
            }
            if(lists.hasClass('disabled')) return;
            lists.activeItem('active')
            $('#custom-scroll-content').scrollTop(posTop)
        });
    })(window, jQuery);
</script>


	<script type="text/javascript" async=""
		src="//image.hmall.com/p/js/co/901_Insight_WebAnalytics.js"></script>
	<script type="text/javascript" async=""
		src="//image.hmall.com/p/js/co/tagging.collector-1.3.min.js"></script>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div></div>
		</div>
	</div>
	<form action="/p/pda/itemPtc.do?slitmCd=2139530239&amp;sectId=2731740"
		method="post">
		<input type="hidden" name="collection" value="DV0001_U02">
	</form>
</body>
</html>