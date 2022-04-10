<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, height=device-height">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection"
	content="telephone=no, email=no, address=no">
<meta name="apple-mobile-web-app-capable" content=" yes">
<meta name="robots" content="index,follow">



<meta name="title"
	content="[${ productVO.brand }] ${ productVO.productName } - 현대Hmall">
<meta name="keywords"
	content="[${ productVO.brand }] ${ productVO.productName } ">



<meta name="description"
	content="스포츠/레져 > 스포츠용품 > 스포츠화/운동화 > 런닝화/조깅화/워킹화">
<meta name="author" content="@Hmall">
<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="//image.hmall.com/p/img/co/favicon/favicon.ico">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="imagetoolbar" content="no" />
<title>[${ productVO.brand }] ${ productVO.productName } -
	현대Hmall</title>
<meta property="og:title" content="${ productVO.productName }" />
<meta property="og:type" content="product" />
<meta property="og:url"
	content="https://www.hmall.com/p/pda/itemPtc.do?slitmCd=2135294542" />
<meta property="og:image"
	content="http://image.hmall.com/static/5/4/29/35/2135294542_0.jpg?RS=140&AR=0" />
<meta property="og:site_name" content="현대Hmall" />
<meta property="og:description" content="현대Hmall" />
<meta property="product:price:amount" content="${ productVO.price }">
<meta property="product:price:currency" content="KRW">
<meta property="product:sale_price:amount"
	content="${ productVO.discountPrice }">
<meta property="product:sale_price:currency" content="KRW">







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
	src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=040517"></script>
<script type="text/javascript"
	src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=040517"></script>



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
                'id':'2135294542',
                'name':'[나이키] W 에어맥스 97 DH8016-100',
                'brand': '180198(나이키코리아공식(진행코드))',
                'category' : '스포츠레져/스포츠용품/스포츠화운동화/런닝화조깅화워킹화',
                'dimension51': 'default',
                'dimension52':'현대Hmall',
                'dimension53':'S7(스포츠/레져)',
                'dimension54':'S705(스포츠용품)',
                'dimension55':'S70509(스포츠화/운동화)',
                'dimension56':'S7050904(런닝화/조깅화/워킹화)',
                'dimension57':'8072스포츠슈즈(승현우)',
                'dimension58':'e스포츠팀',
                'dimension59':'015318((주)윈윈스포츠)',
                
                'dimension60':'default',
                'dimension62':'유형상품',
                'dimension63':'일반상품',
                'dimension64':'2731484(운동화/워킹화/런닝화)'
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


<!-- Main Contents css = Contents css부분은 각페이지마다 다르게 해당되는 css가 호출 됨(폴더 구조별)  -->
<link rel="stylesheet" type="text/css"
	href="//image.hmall.com/p/css/pd/product.css">
<script type="text/javascript"
	src="//image.hmall.com/p/js/co/jquery.form.js"></script>
<script type="text/javascript"
	src="//image.hmall.com/p/js/pd/product.js"></script>


<link href="//image.hmall.com/p/css/co/video-js.css?ver=040517"
	rel="stylesheet">
<script src="//image.hmall.com/p/js/co/video.js?ver=040517"></script>
<script
	src="//image.hmall.com/p/js/co/videojs-http-streaming.js?ver=040517"></script>

<!-- 2019.02.07 스포어픽 버튼 호출 함수 수정  prd-detail.js -->

<!-- GENERAL -->
<script type="text/javascript">
//이벤트 상품 장바구니찜불가 처리
var notBaskGim = "";
var itemPreviewF = false;
var preview = "";
var prmoDate = "";
var onAir = false;
// 스토어픽 관련 함수 
var stpicPossYn = "N";
var stpVenCd    = "015318";
var stpVenNm    = "";

var pdaItemPtcCnt = 0;
var __basktInfArr = new Array();
var customHistory = [];
//성인인증 후 뒤로가기시 location
var orgRefer = '';
var atflGbcd = "0";  		// 전체:0,  포토:1,  동영상:2

/* 2019.02.07 스토어픽 픽업일자 설정 */
function fn_setStpicPickUpDt(pickUpDt){

    $("#modalStorePick .pickup-date-list").each(function() {
//         if($(this).attr("class") != "unable" ){
//             if($(this).attr("id") == "li_"+pickUpDt){
//                 $(this).addClass("on");
//             }else{
//                 $(this).removeClass("on");
//             }
//         }
    });
    // $("#li"+pickUpDt).removeClass("on");
    $("#cartForm input[name=stpicPickUpDt]").val(pickUpDt);
    $("#itemInfForm input[name=stpicPickUpDt]").val(pickUpDt);

}

</script>






<script type="text/javascript">
var dealYn = "Y";
var new_now = '20220405171337';
var currNow = "" + (parseInt(new_now) +1 ) ; //현재시간 지정
var now;
var endTime = '';
var gStockDispYn = "N";
var gCombYn = "Y";
var slitmCd = '2135294542';
var isMoreDetailBtn = false;
var optItemExpsGbcd = "1";
var btnOptCd = ""; 
var btnOptCnt = 0;
var bsitmCd = '2135294542';
var listCondition  ="" ;
var itemsCommChk = true ;
var optionDetailViewClk = false;

var photoReviewAll = "";
//판매예정상품
var sellPlanYn = "";

$(document).ready(function() {
    addEventListener("message", listener, false);
    
    var adltItemYn = 'N';
    if(adltItemYn != 'Y') {
        //setRcmmItemViewList(slitmCd);
        //setRcmmItemBuyList(slitmCd);
        //setRcmmItemRecommendList(bsitmCd); // 190725
    }
    var slitmNm = '[나이키] W 에어맥스 97 DH8016-100';
    //setAsctItemRcmm(slitmCd, slitmNm, bsitmCd);
   
    // 전체보기 백업
    photoReviewAll = $("#modalPhotoReview .photo-review ul").html();
    
    try {
        tabCol();
    } catch (e) {}
    
    if(dealYn == "Y") {   
        playerStop();
        
        /* 백화점 이미지 노출 */
        /*
        if( $('ul.productGalleryNewUL > li:eq(0)').hasClass('hdpt') ) $('.dpt_flag').show();
        else $('.dpt_flag').hide();
        */
        var optSlitmDtlList = "94";
        if(optSlitmDtlList == 1) {
            if($(".pdtSelectCont").length > 0) {
                $(".pdtSelectCont ul li.on").click();
            } else {
                setDealUitm($(".optSelect .selbox:first .iListCont li:first"), 0);
            }
        } 
        
        //버튼형 옵션상품의 마스터 상품코드 링크서 이동처리 
        
        
        var odtmDealYn = "N";
        if(odtmDealYn == "N") dealTimer();
        
        var esOptTxt = $(".handiness .convenient_select .bottom_action .sumPrice .sum.tit").text();
        var esOptHepl = $(".handiness .convenient_select .bottom_action .sumPrice .sum.tit a.getHelp");
        $(".handiness .convenient_select .bottom_action .sumPrice .sum.tit").text($.trim(esOptTxt));
        $(".handiness .convenient_select .bottom_action .sumPrice .sum.tit").append($(esOptHepl));
        
        setDealItemSoldOut();
        
        try {
            setDealItemCss();
        } catch (e) {}
        
        if($("#deal_unitDetail").length > 0) {
            $("#deal_unitDetail").find("style").each(function() {
                $(this).remove();
            });
        }
        
        
    } else {
        //버튼형 옵션 상품이 마스터 상품코드 링크에서 이동 처리 (2018.04.26)
        if (!isEmpty(btnOptCd)) {
        
            var optSlitmDtlList = "0";
            
            if($(".pdtSelectCont").length > 0) {
                $(".pdtSelectCont ul li.on").click();
            }
        }
      
        //document.title 변경
        var hdhsItemYn = 'N';
        
        /*
        if(hdhsItemYn =='Y'){
            document.title = "TV방송상품 - 현대Hmall";
        }
        */
        
        var clhStrtDtm = "";
        var clhEndDtm = "";
        now = "Tue Apr 05 17:13:37 KST 2022";
        if(!isEmpty(clhStrtDtm) && Number(clhEndDtm) > Number(now)) {
            clickhTimer();
        }
        
//         $(".product-option-wrap:first .ui-dropdown-group .ui-dropdown").each(function(){
//             if($(this).index() != $(".product-option-wrap:first .ui-dropdown-group:first").index() && $(this).find(".bottom-fixed").length > 0) {
//                 $(this).find(".bottom-fixed").remove();
//                 $('.ui-dropdown.sel-option .dropdown-menu').addClass("no-fixed");
//             }
//         });
        
        extraInfo(slitmCd);
        
        var existMultiOption = $(".right-info input[name=existMultiOption]").val();
        if(gStockDispYn == "Y" && existMultiOption > 0) {
            var tmpUitmAttrTypeSeq = $(".product-option-wrap:first .sel-option:first input[name=uitmAttrTypeSeq]").val();
            if(tmpUitmAttrTypeSeq != undefined && !isEmpty(tmpUitmAttrTypeSeq)){
                tmpUitmAttrTypeSeq = Number(tmpUitmAttrTypeSeq) + 1;
            }
            var uitmAttrOneYn = $(".product-option-wrap:first .sel-option:first input[name=uitmAttrOneYn]").val();
            var selIndex = $(".product-option-wrap:first .sel-option:first").index();
            if(uitmAttrOneYn == "Y" && $(".product-option-wrap:first .sel-option").length > 1) {
                selIndex = selIndex + 1;
            }
            selectItemStockCount(tmpUitmAttrTypeSeq, slitmCd, selIndex);
        }
        
        function setDayName() {
            return ['일', '월', '화', '수', '목', '금', '토'];
        }
        function setMonth() {
            return ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
        }
        
        
        if ($('input.datePickerForItemPtc').length != 0) {
        
            
              
            $( ".datePickerForItemPtc" ).datepicker({
                dateFormat: 'yy-mm-dd',    //날짜 포맷이다. 보통 yy-mm-dd 를 많이 사용하는것 같다.
                prevText: '이전 달',   // 마우스 오버시 이전달 텍스트
                nextText: '다음 달',   // 마우스 오버시 다음달 텍스트
                closeText: '닫기', // 닫기 버튼 텍스트 변경
                currentText: '오늘', // 오늘 텍스트 변경
                monthNames: setMonth(),
                monthNamesShort: setMonth(),
                dayNames: setDayName(),
                dayNamesShort: setDayName(),
                dayNamesMin: setDayName(),
                showMonthAfterYear: true,   // true : 년 월  false : 월 년 순으로 보여줌
                yearSuffix: '년',    //
                showButtonPanel: true,  // 오늘로 가는 버튼과 달력 닫기 버튼 보기 옵션
                numberOfMonths: 1,
                altField: 'input[name=dlvHopeDt]',
                altFormat: 'yymmdd',
                maxDate: '+1M',
                minDate: "4",
//                beforeShow: function() {
//                    $("#ui-datepicker-div").css("z-index", "200");
//                },
                onSelect: function(dateText, inst) {
                    $(".datePickerForItemPtc").val(dateText);
                },beforeShowDay:checkHoliday
            });
            
            
            $.datepicker.setDefaults($.datepicker.regional['kr']);
        }
    }
    
    // 별점 영역 내용 없을경우 | 제거 
    if(isEmpty($.trim($('.basic-info .pdinfo .benefits').html()))) {
    	$('.basic-info .pdinfo .benefits').remove();
    }
    
    
    
    
    
    
    if(isEmpty(preview)) {
        document.oncontextmenu  = nocontextmenu;
    }
    
    toolTipHover();
    
    if($('span.numberByStrNew').length > 0 ){
          $.each($('span.numberByStrNew'), function(){
              var number = $.trim($(this).text());
              var text = numberByStr(number);
              $(this).text(text);
          });
        }
    
    $('.useAvailCall').click(function(e) {
        e.preventDefault();
        $('#useAvailCall').show();
    });
    /*
    if($(".itemRishpAlrim").length > 0) {
        if($("#soldoutForm").find("input[name=soldoutExistYn]").val() == "Y" || $("#soldoutForm").find("input[name=optItemAllSoldOutYn]").val() == "Y") {
            $(".sumPrice.notLayer").show();
            $(".itemRishpAlrim").show();
        } else {
            $(".sumPrice.notLayer").hide();
            $(".itemRishpAlrim").hide();
        }
    }*/
    
    if(isEmpty($.trim($(".specific_guide").html())) && $(".discount_spcf a.button.select_basic").length > 0) {
        $(".discount_spcf a.button.select_basic").hide();
    }
    
    if($(".productGalleryNewUL .movieLi").length > 0) $(".productGalleryNewUL .movieLi").removeClass("active");
    
    if($(".discount_spcf").length == 0 && !isEmpty($.trim($(".optsBasic .specific_guide").html()))) {
        $(".optsBasic .specific_guide").show();
    }
    
    if($("#section_cont_1 .depart_con > dl > dd").length > 0) {
        if(isEmpty($.trim($("#section_cont_1 .depart_con > dl > dd").html().replace(/<br>/gi, "")))) {
            $("#section_cont_1 .depart_con").hide();
        }
    }
    
    if($(".prod_buy_info > dl > dd").length > 0) {
        if(isEmpty($.trim($(".prod_buy_info > dl > dd").html().replace(/<br>/gi, "")))) {
            $(".prod_buy_info").hide();
        }
    }
    
    if($("#section_cont_6").length > 0) {
        plusCheckBox();
    }
    
    setTimeout(function() {
        $("#divMovie_2_wrapper").css({margin : '0 auto'});
    }, 1500);
    
    if('N' == "Y" && 'Y' == "Y"){
        pageViewCallback(); 
    }

    
    
    initOptionUi();
    var itemType = "GENERAL";
    var soldoutYn = 'false';
    soldoutYn = (soldoutYn == "true") ? true : false;

    if(calcSellPrc() <= 0 && itemType != 'FREEINSURANCE'
    		|| itemType == "INSURANCE" 
            || itemType == "RENTAL"
            || itemType == "RENTAL_PHONE"
            || itemType == "TRAVEL"
            || itemType == "PHONE_HSHOP"
            || itemType == "PHONE_HMALL"
            || itemType == "FUNERAL"
    		|| soldoutYn) {
    	$(".sum-price").hide();
    }

    /* 택배 스토어픽 클릭시 */
    $(".pd_ship_a_nomral, .pd_ship_a_storePick").on("click", function(){
    	var classIndex = 0;
    	if($(this).hasClass('pd_ship_a_nomral')) {
	        $('.pd_shipping_type_nomral').show();
	        $('.pd_shipping_type_storePick').hide();
        } else {
            $('.pd_shipping_type_nomral').hide();
            $('.pd_shipping_type_storePick').show();
            classIndex = 1;
        }

        $('input[name=pickMethod]:eq('+classIndex+')').prop('checked', true);
        $('input[name=pickMethod_bottom]:eq('+classIndex+')').prop('checked', true);
        $('input[name=pickMethod_deal]:eq('+classIndex+')').prop('checked', true);
    });

    if($("input[name=pickMethod]").length > 0 && $("input[name=pickMethod]").val() != "undefined" && $("input[name=pickMethod]").val() != ""){
        var classIndex = 0;
        if($("input[name=pickMethod]").val() == "1") {
            $('.pd_shipping_type_nomral').show();
            $('.pd_shipping_type_storePick').hide();
        } else {
            $('.pd_shipping_type_nomral').hide();
            $('.pd_shipping_type_storePick').show();
            classIndex = 1;
        }
        $('input[name=pickMethod]:eq('+classIndex+')').prop('checked', true);
        $('input[name=pickMethod_bottom]:eq('+classIndex+')').prop('checked', true);
        $('input[name=pickMethod_deal]:eq('+classIndex+')').prop('checked', true);
    }

    // 생방송중 방송 종료후 자동으로 페이지 리로드 
    if(onAir) {
        setInterval(function() {
            for(i=0;i < videojs.getAllPlayers().length;i++) {
                vodPlayer = videojs.getAllPlayers()[i];
                if(vodPlayer.paused() && vodPlayer.remainingTime() == 0 && onAir) {
                    location.reload();
                }
            }
        }, 1000);
    }
    // calcSellPrc()
});

function initOptionUi() {
    initSetOptionUi("ui-dropdown-group");

    if($(".product-option-wrap:first .ui-dropdown-more-group").length > 0) {
        var dropDownMoreGroupUi = '<div class="ui-dropdown-more-group"></div>';
        $(".right-option-area .util-inner .option-scroll").append(dropDownMoreGroupUi);
        $(".option-deal-wrap .util-inner .option-scroll").append(dropDownMoreGroupUi);
        initSetOptionUi("ui-dropdown-more-group");
    }
    // 옵션 세팅 끝
    // 버튼 세팅
    var disableBtn = '<button class="btn btn-disabled medium"><span></span></button>';
    var btnDirectBuy = '<button class="btn btn-default medium buy-now"><span>바로구매</span></button>';
    var btnAddCart = '<button class="btn btn-linelgray small"><span>장바구니</span></button>';
    var btnGift = '<button class="btn btn-linelgray small"><span>선물하기</span></button>';

    var shipMethodBottom1 = '<label class="radlabel sm pd_ship_a_nomral"><input type="radio" name="pickMethod_bottom" value="1" checked="" aria-checked="true"/><i class="icon"></i><span>택배받기</span></label>';
    var shipMethodBottom2 = '<label class="radlabel sm pd_ship_a_storePick"><input type="radio" name="pickMethod_bottom" value="2"/><i class="icon"></i><span>스토어픽 받기</span></label>';
    var shipMethodDeal1 = '<label class="radlabel sm pd_ship_a_nomral"><input type="radio" name="pickMethod_deal" value="1" checked="" aria-checked="true"/><i class="icon"></i><span>택배받기</span></label>';
    var shipMethodDeal2 = '<label class="radlabel sm pd_ship_a_storePick"><input type="radio" name="pickMethod_deal" value="2"/><i class="icon"></i><span>스토어픽 받기</span></label>';
    
    var shipMethodUi = '<div class="radiobox"></div>';
    var btnWrapIdx = 0;
    $(".prdBtnBoxGroup").each(function() {
    	if(isEmpty($.trim($(this).html()))) {
    		return;
    	}
        if($(this).find(".radiobox").length > 0) {
            // 스토어픽 택배로 받기 설정
            var shipMethodUiBottom = $(shipMethodUi); 
            $(shipMethodUiBottom).append(shipMethodBottom1);
            $(shipMethodUiBottom).append(shipMethodBottom2);
            
            $(".right-option-area .util-inner .total-wrap .pick-method").prepend(shipMethodUiBottom);
            
            if(dealYn == 'Y') {
                var shipMethodUiDeal = $(shipMethodUi); 
                $(shipMethodUiDeal).append(shipMethodDeal1);
                $(shipMethodUiDeal).append(shipMethodDeal2);
                
                $(".option-deal-wrap .util-inner .total-wrap .pick-method").prepend(shipMethodUiDeal);
            }
            return;
        }
        
        var btnGroup = [];
        var buttonGroupUi = '<div class="button-wrap pd_shipping_type_storePick" style="display:none"><div class="btngroup"></div></div>';
        if($(this).css("display") == "none") {
        	$(".total-wrap").append(buttonGroupUi);
        }
        
        $(this).find("button").each(function() {
            if($(this).hasClass("btn-like")) {
                return;
            }       
            if($(this).hasClass("btn-alarm")) {
                return;
            }

            var btnItem = {
                idx: 999,
                position: 1,
                type: getBtnType(this),
                text: $(this).find("span").text(), 
                defaultBtn:false , 
                enable: true, 
                linelgray: false,
                onclickFnc: $(this).attr("onClick") 
            }
            
            if($(this).hasClass("btn-default")) {
                btnItem.defaultBtn = true;
            }
            if($(this).hasClass("btn-disabled")) {
                btnItem.enable = false;
            }
            if($(this).hasClass("btn-linelgray")) {
                btnItem.linelgray = true;
            }

            if(btnItem.type == 'btn-buy') {
                btnItem.idx = 0;
                btnItem.position = 0;
            } else if(btnItem.type == 'btn-cart') {
                btnItem.idx = 2;
            } else if(btnItem.type == 'btn-gift') {
                btnItem.idx = 2;
            } else if(btnItem.defaultBtn) {
                btnItem.idx = 1;
            } else if(!btnItem.enable) {
                btnItem.idx = 1;
                btnItem.position = 0;
            } else if(!btnItem.linelgray) {
                btnItem.idx = 2;
            }
            btnGroup.push(btnItem);
        });  
        btnGroup.sort(sortBtn);
        for(i=0;i < btnGroup.length;i++) {
        	var btnWrapUi = setRigthBtnClass(btnGroup[i]);
            $(".right-option-area .util-inner .total-wrap .button-wrap:eq("+btnWrapIdx+") .btngroup").append($(btnWrapUi).clone());
            if(dealYn == 'Y') {
                $(".option-deal-wrap .util-inner .total-wrap .button-wrap:eq("+btnWrapIdx+") .btngroup").append($(btnWrapUi).clone());
            }
        }
        btnWrapIdx++;
    });
    
    
}

function initSetOptionUi(groupCssNm) {
	
	if($(".product-option-wrap:first").css("display") == 'none') {
		return;
	}
	
	//무료보험 상품인 경우 상품 옵션을 노출하지 않는다.
	var itemtype = 'GENERAL';
	if(itemtype == 'FREEINSURANCE'){
		return;
	}
	
    var prdSelectListCss = "select-product-list";
    var prdSelectDelCss = "btn-delete-sel-item";
    if(groupCssNm == "ui-dropdown-more-group") {
        prdSelectListCss = "select-product-add-list";
        prdSelectDelCss = "btn-delete-sel-add-item";
    }
    
    var dropDownUi = '<div class="ui-dropdown sel-prduct"><a class="drop" href="javascript://" data-modules-dropdown="" aria-expanded="false"><span>상품을 선택하세요.</span></a></div>';
    $(".product-option-wrap:first ."+groupCssNm+" .ui-dropdown.sel-prduct").each(function( index ) {
        $(".right-option-area .util-inner .option-scroll ."+groupCssNm).append(dropDownUi);
        var prdList = $(this).find(".dropdown-menu").clone(true);
        var input = $(this).find(".drop input").clone(true);
        var inputText = $(this).find(".drop input[name=defaultNm]").val();
        
        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+")").append(prdList);
        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+") a.drop span").text(inputText);
        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+") a.drop").append($(input).clone());
        if(dealYn == 'Y') {
            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm).append(dropDownUi);
            var dealPrdList = $(this).find(".dropdown-menu").clone(true);
            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+")").append(dealPrdList);
            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+") a.drop span").text(inputText);
            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+") a.drop").append($(input).clone());

            if($(".option-deal-thumbnaii ul").length > 0) {
                $(".option-deal-thumbnaii ul li:first").addClass("ui-active");
                $(".modal-optiondeal .content-body .tab-content .tab-pane:first").addClass("ui-active");
            }
        }
    });
    
    var dropDownUi = '<div class="ui-dropdown sel-option"><a class="drop" href="javascript://" data-modules-dropdown="" aria-expanded="false"><span>상품을 선택하세요.<span></a></div>';
    $(".product-option-wrap:first ."+groupCssNm+" .ui-dropdown.sel-option").each(function( index ) {
        var input = $(this).find(".drop input").clone(true);
        var inputText = $(this).find(".drop input[name=defaultNm]").val();
        $(".right-option-area .util-inner .option-scroll ."+groupCssNm).append(dropDownUi);
        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+") a.drop span").text(inputText);
        if($(this).find(".drop").hasClass("disabled")) {
            $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+") a.drop").addClass("disabled");
        }
        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+") a.drop").append($(input).clone());
        var prdList = $(this).find(".dropdown-menu").clone(true);
        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+")").append(prdList);
        if(dealYn == 'Y') {
            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm).append(dropDownUi);
            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown:eq("+index+") a.drop span").text(inputText);
            if($(this).find(".drop").hasClass("disabled")) {
                $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+") a.drop").addClass("disabled");
            }
            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown:eq("+index+") a.drop").append($(input).clone());
            var dealPrdList = $(this).find(".dropdown-menu").clone(true);
            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+")").append(dealPrdList);
        }
    });
    
    $(".product-option-wrap:first .stock-item."+prdSelectListCss+" .pditem,.product-option-wrap:first .stock-item."+prdSelectListCss+" .temp-item").each(function( index ) {
        var thumb = $(this).find(".product-info div.thumb").clone();
        var pdname = null;
        var pdoption = null;
        var quantity = null;
        var parentClass = "";
        $(this).find(".product-info div.figcaption div").each(function( index ) {
            if($(this).hasClass("pdname")) {
                pdname = $(this).clone(true); 
            }
            if($(this).hasClass("pdoption")) {
                pdoption = $(this).clone(true); 
            }
            if($(this).hasClass("quantity")) {
                quantity = $(this).clone(true); 
            }
        });
        
        if($(".right-option-area .util-inner .option-scroll").find("."+prdSelectListCss).length <= 0) {
            if($(this).hasClass("temp-item")) {
                $(".right-option-area .util-inner .option-scroll").append('<div class="selprduct-list '+prdSelectListCss+'" style="display:none">');
            } else {
                $(".right-option-area .util-inner .option-scroll").append('<div class="selprduct-list '+prdSelectListCss+'">');
            }
        }
        
        var prdInfoUi = "";
        if($(this).hasClass("temp-item")) {
            parentClass = ".temp-item";
            prdInfoUi = '<div class="temp-item" style="display:none"><div class="product-info"></div></div>';
        } else {
            parentClass = ".pditem";
            prdInfoUi = '<div class="pditem"><div class="product-info"></div></div>';
        }
        $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss).append(prdInfoUi);

        if(thumb.length > 0) {
            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append(thumb);
        }
        if(pdname != null) {
            if($(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").find(".figcaption").length == 0) {
                $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append('<div class="figcaption"></div>');
            }
            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info .figcaption").append(pdname);
        }
        if(pdoption != null) {
            if($(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").find(".figcaption").length == 0) {
                $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append('<div class="figcaption"></div>');
            }
            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info .figcaption").append(pdoption);
        }
        if(quantity != null) {
            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" "+parentClass).append(quantity);
        }
 
        var deleteButtonUi = '<button class="btn btn-close '+prdSelectDelCss+'"><i class="icon xico"></i><span class="hiding">삭제</span></button>';
        if(parentClass == ".temp-item") {
            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" "+parentClass).append(deleteButtonUi)
        }
        
        if(dealYn == 'Y') {
            if($(".option-deal-wrap .util-inner .option-scroll").find("."+prdSelectListCss).length <= 0) {
                if($(this).hasClass("temp-item")) {
                    $(".option-deal-wrap .util-inner .option-scroll").append('<div class="selprduct-list '+prdSelectListCss+'" style="display:none">');
                } else {
                    $(".option-deal-wrap .util-inner .option-scroll").append('<div class="selprduct-list '+prdSelectListCss+'">');
                }
            }
            
            $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss).append(prdInfoUi);
            if(thumb.length > 0) {
                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append(thumb.clone());
            }
            if(pdname != null) {
                if($(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").find(".figcaption").length == 0) {
                    $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append('<div class="figcaption"></div>');
                }
                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info .figcaption").append(pdname.clone());
            }
            if(pdoption != null) {
                if($(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").find(".figcaption").length == 0) {
                    $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append('<div class="figcaption"></div>');
                }
                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info .figcaption").append(pdoption.clone());
            }
            if(quantity != null) {
                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" "+parentClass).append(quantity.clone());
            }
            if(parentClass == ".temp-item") {
                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" "+parentClass).append(deleteButtonUi)
            }
        }
    }); 
}

function setRigthBtnClass(btnObj) {
    var btnUi = $('<button class="btn"><span></span></button>');

    switch(btnObj.type) {
    case "btn-buy":
        $(btnUi).addClass("medium");
        $(btnUi).addClass("btn-default");
        $(btnUi).addClass("buy-now");
        break;
    case "btn-cart":
    case "btn-gift":
        $(btnUi).addClass("small");
        $(btnUi).addClass("btn-linelgray");
        break;
    default:
    	if(btnObj.defaultBtn && !btnObj.linelgray) {
            $(btnUi).addClass("medium");
            $(btnUi).addClass("btn-default");
            $(btnUi).addClass("buy-now");
    	} else if(!btnObj.enable) {
            $(btnUi).addClass("medium");
            $(btnUi).addClass("btn-default");
            $(btnUi).addClass("btn-disabled");
    	}
        break;
    }
    if(btnObj.onclickFnc != undefined && btnObj.onclickFnc != null && btnObj.onclickFnc != "") {
        $(btnUi).attr("onClick",btnObj.onclickFnc);
    }
    $(btnUi).find("span").text(btnObj.text);
    return $(btnUi);
}

function sortBtn(a, b) {
    if(a.idx == b.idx) { return 0; } return a.idx > b.idx ? 1 : -1;
}

function getBtnType(obj) {
    if($(obj).hasClass('btn-gift')) { // 선물하기
        return 'btn-gift';
    } else if($(obj).hasClass('btn-cart')) { // 장바구니
        return 'btn-cart';
    } else if($(obj).hasClass('btn-buy')) {  // 바로구매/구매하기
        return 'btn-buy';
    } else if($(obj).hasClass('storepick')) { // 스토어픽
        return 'storepick';
    } else if($(obj).hasClass('btn-rebuy')) { // 예약구매
        return 'btn-rebuy';
    } else if($(obj).hasClass('btn-consult')) { // 상담신청
        return 'btn-consult';
    } else if($(obj).hasClass('btn-alarmtoc')) { // 알림톡
        return 'btn-alarmtoc';
    } else if($(obj).hasClass('btn-stock')) {  // 입고알림
        return 'btn-stock';
    } else if($(obj).hasClass('btn-end')) {    // 품절되었습니다
        return 'btn-end';
    } else if($(obj).hasClass('btn-app')) {   // 앱전용 상품 입니다.
        return 'btn-app';
    } else if($(obj).hasClass('btn-mobile')) { // 모바일 전용 상품 입니다.
        return 'btn-mobile';
    } else if($(obj).hasClass('btn-tv')) { // 방송중에만 구매가능
        return 'btn-tv';
    }
} 


//상세페이지 뷰 데이터
function pageViewCallback() {      

       var idnfMdaGbcd = "01";
 
       $.ajax({
           type: "post"
           , url: "/p/pda/pageViewData.do"  
           , data: { 
               "ItemCode" : slitmCd,
               "IdnfMdaGbcd" : idnfMdaGbcd
          }
           , dataType: "json"
           , async: false
           , success : function(data) { 
 
           }
       });
   }
   
function listener(event) {
    if(event.data == "ok") {
        buyDirectFormSubmit();
    }
}

/*
 * MAC 상품 일 경우 확대보기
 */
$(document).on("mouseenter mouseleave", ".mac_Pickcolor > li", function(e) {
    var $color_Tooltip = $(this).children(".color_Tooltip");
    if (e.type == "mouseenter")
        $color_Tooltip.css("display", "block");
    else
        $color_Tooltip.css("display", "none");
});

/**
 * 숫자만 입력가능
 */
$(document).on('keydown', 'input.onlyNumber, input[name=ordQty]', function(event) {
    // Allow: backspace, delete, tab, escape, enter and .
    if ( $.inArray(event.keyCode,[46,8,9,27,13,190]) !== -1 ||
         // Allow: Ctrl+A
        (event.keyCode == 65 && event.ctrlKey === true) ||
         // Allow: home, end, left, right
        (event.keyCode >= 35 && event.keyCode <= 39)) {
             // let it happen, don't do anything
             return;
    }
    else {
        // Ensure that it is a number and stop the keypress
        if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )) {
            event.preventDefault();
        }
    }
});

/*
 * 동영상 버튼 클릭 이벤트
 */
$(document).on("click", "#start-videoButn", function(){
    $(this).remove();
    $(".productVideoUL > li").addClass("active");
    $(".productGalleryNewUL > li").removeClass("active");
    $('#movie').removeClass('hidden');
});

/*
 * 탭메뉴 상단 고정
 */
$(window).scroll(function(e) {
    if($(".section_tab_new").length > 0 && !isMoreDetailBtn) {
        var tabId = $(".section_tab_new");
        var tabTop = tabId.offset().top;
        var tabH = tabId.height();
        
        if ($(window).scrollTop() >= tabTop && $(window).scrollTop() >= $("#section_cont_1").offset().top) { 
            tabId.addClass("fixed");
        } else {
            tabId.removeClass("fixed");
        }
        
        $(".section_tab_new li").each(function() {
            var liThis = $(this);
            var contId = liThis.find("a").attr("href");
            var contTop = $(contId).offset().top - (tabH + 20);
            
            if ($(window).scrollTop() >= contTop) {
                liThis.addClass("on").siblings().removeClass("on");
            }
        });
    } else {
        if(isMoreDetailBtn) {
            setTimeout(function() {
                isMoreDetailBtn = false;
            }, 500);
        }
    }
});

/*
 * 탭메뉴 선택시
 */
$(document).on('click', '.section_tab_new li', function(e) {
    var tabId = $(".section_tab_new");
    var tabTop = tabId.offset().top;
    var tabH = tabId.height();
    var liThis = $(this);
    var contId = liThis.find("a").attr("href");
    var contTop = $(contId).offset().top - (tabH + 10);
    
    e.preventDefault();
    $("body, html").animate({scrollTop: contTop}, 300);
    $(".setion_cont_new").css("padding-top", "30px");
    $(liThis).addClass("on").siblings().removeClass("on");
    isMoreDetailBtn = true;
    $(".section_tab_new").addClass("fixed");
    setBizSpring(contId);
});

/*
 * 상품상세 더보기 버튼
 */
$(document).on('click', '.more_detail_view', function(e) {
    var viewH = $(".prod_detail_view").height();
    var conH = $(".view_cont").height();
    var wrapH = $("#section_cont_1").height();
    var totalH = wrapH + conH - 595;

    $(this).toggleClass("open");
    $(".prod_detail_view").toggleClass("open");

    if($(this).hasClass("open")){
        $(this).find("span").text("상품상세 접기")
        $(".prod_detail_view").addClass("open");
        $(".prod_detail_view").css("height","");
        $("#section_cont_1").css("height","");
    }else{
        $(this).find("span").text("상품상세 더보기")
        $(".prod_detail_view").removeClass("open");
        $(".prod_detail_view").css("height","650");
        $("#section_cont_1").css("height","");
        $("body,html").animate({scrollTop: ($(".more_detail_view").offset().top - 300)}, 0);
    }
    setBizSpring("detailMore");
    isMoreDetailBtn = true;
});

/**
 * 사은품 이미지 +버튼 클릭시
 */
$(document).on('click', '.broad_guide .zoom_objct', function() {
    var tarObj = $(this).find(".thumbnail_list");
    if($(tarObj).length > 0) {
        if($(tarObj).css("display") == "none") {
            $(tarObj).show();
        } else {
            $(tarObj).hide();
        }
    }
});

/*
 * 상품평 정렬 버튼 클릭
 */
var reviewTabRefresh = true;
function searchEvalSort(url) {
	reviewTabRefresh = false;
	searchEvalPaging(url);
}

/*
 * 상품평 페이징
 */
 function searchEvalPaging(url) {
        var starNum = "";
        /*sort 조건 추가*/
        var  listCondition="";
        var imgYn = 0;
        listCondition = $("#posRight").val();
        
        if(listCondition == "01"){
        	GA_Event('상품상세','상품평','최신순');
        }else if(listCondition == "14"){
        	GA_Event('상품상세','상품평','도움순');
        }else if(listCondition == "16"){
        	GA_Event('상품상세','상품평','별점 높은순');
        }else if(listCondition == "17"){
        	GA_Event('상품상세','상품평','별점 낮은순');
        }
        
        
        //console.log("listCondition ==> "+ listCondition);    
        $.ajax({
            url: url
            , type: "get"
            , dataType: "html"
            , data : {
            	starNum : starNum,
            	listCondition:listCondition,
            	imgYn:imgYn, 
            	slitmCd:globalSlitmCd
            }
            , success: function(data) {
                itemsCommChk = false;
                $("#itemOptEvalInfo").html(data); 
                $('body').commonUi('initLibrary');
                if(reviewTabRefresh) {
                	location.href = "#reviewContentArea";
                }
                reviewTabRefresh = true;
                // setItemsCommSort(listCondition);
            }
        });
        
        return false;
};

/*
 * 상품평 쓰기 버튼
 */
$(document).on('click', '.itemEvalRegBtn', function() {
    
        openLoginPopup(window.location.href);
      return false;
    
    //var slitmCd = $(this).find("input").val();
    var slitmCd = $(this).siblings("input").val();
    $.ajax({
        url: "/p/pdc/selectBuyItemYnAjax.do?slitmCd=" + slitmCd
        , type: "get"
        , dataType: "json"
        , success: function(data) {
            evalWrite("Y");
            if(data.isBuyItem) {
                if(confirm("상품평은 주문하신 상품이 발송된 후에\n작성하실 수 있습니다.\n마이페이지로 이동해서 확인하시겠습니까?")) {
                    location.href = "/p/mpa/selectOrdDlvCrst.do";
                }
            } else {
                alert("상품평은 구매고객에 한해 작성이 가능합니다.");
            }
        }, error: function(){
            alert("처리중 문제가 발생하였습니다. 나중에 다시 등록해 주세요.");
        }
    });
});


/*
 * 신고 버튼 이벤트 
 */
$(document).on('click', '.user-info .user-info-alarm', function() { 
    goDecl(this)
    .then((res) => {
    	const [declCnt, slitmCd, itemEvalComtNo] = res;
    	return noShowEval(declCnt, slitmCd, itemEvalComtNo );
    }).then((res) => {
    	//console.log("res", res);
    }).catch((e) => {
    	//console.log("e", e);
    })
});

$(document).on('click', '.detail-box .atext', function(){
	goDecl(this)
    .then((res) => {
    	const [declCnt, slitmCd, itemEvalComtNo] = res;
    	return noShowEval(declCnt, slitmCd, itemEvalComtNo );
    }).then((res) => {
    	//console.log("res", res);
    }).catch((e) => {
    	//console.log("e", e);
    })
});
 
 
/* 신고 함수 */ 
function goDecl(obj)
{  
    
    openLoginPopup(window.location.href);
    return false;
    
 
    var slitmCd =$(obj).find("input[name=SLITM_CD]").val();
    var itemEvalComtNo =$(obj).find("input[name=ITEM_EVAL_COMT_NO]").val();
    
    return new Promise((resolve, reject) => {
    	if(confirm("이 상품평을 \n신고하시겠습니까?")) {
    	    //location.href = "/p/pdc/insertDeclAjax.do";
    	    $.ajax({
    	        url: "/p/pdc/insertDeclAjax.do?slitmCd=" + slitmCd+"&itemEvalComtNo="+itemEvalComtNo+"&comtEvalGbcd=2"
    	        , type: "get"
    	        , dataType: "json"
    	        , success: function(data) {
    	
    	            if(data.isBuyItem) {
    	                alert("신고되었습니다.");
    	            }else{
    	                alert(data.errMsg);
    	            }
    	            //console.log("goDecl", data.declCnt, slitmCd, itemEvalComtNo);
    	            resolve([data.declCnt, slitmCd, itemEvalComtNo]);
    	            
    	        }, error: function(){
    	            alert("처리중 문제가 발생하였습니다. 나중에 다시 등록해 주세요.");
    	        }
    	    }); 	
        }
    })
}

/* 상품평 미전시 함수 */
 function noShowEval(declCnt, slitmCd, itemEvalComtNo)
{  
	//console.log("noShowEval", declCnt, slitmCd, itemEvalComtNo);
    return new Promise((resolve, reject) => {
    	if(declCnt >= 5){
    		$.ajax({
    	        url: "/p/pdc/updateEvalDispYn.do?slitmCd=" + slitmCd +"&itemEvalComtNo="+ itemEvalComtNo +"&comtEvalGbcd=2"
    	        , type: "post"
    	        , dataType: "json"
    	        , success: function(data) {
    	            resolve("성공")
    	        }, error: function(){
    	            alert("미전시 처리중 문제가 발생하였습니다. 나중에 다시 등록해 주세요.");
    	            reject("전시 유지");
    	        }
    	    }); 
        }else{
        	reject("전시 유지");
        }
    })
}
 
/*
 * 도움 버튼
 */
 $(document).on('click', '.recommend-btn ', function() {     
     var select_list = $(this).parent().parent().find(".user-info");
     goRecomm(select_list); 
 });

 $(document).on('click', '#modalPhotoReviewDetail .estimate-box button', function() {     
     var select_list = $(this).closest(".right-area");
     goRecomm(select_list); 
 });

  
/* 도움 함수 */ 
 function goRecomm(select_list)
 {
    var slitmCd =$(select_list).find(" input[name=SLITM_CD]").val();
         
         var itemEvalComtNo =$(select_list).find(" input[name=ITEM_EVAL_COMT_NO]").val();
         var helpClickYn = $(this).parent().find("#HELP_CLICK_YN"+itemEvalComtNo).val();
          
         
             //window.location.href = serverHost + "/p/cob/loginForm.do?redirectUrl=" + encodeURIComponent(window.location.href);
             openLoginPopup(window.location.href);
             return false;
            
 
         var helpCnt = $(this).parent().find("#HELP_CNT"+itemEvalComtNo).val(); 
         var comtEvalGbcd ="1";
          
         $("#recomBtn"+itemEvalComtNo).bind('click', false);
         $.ajax({
             url: "/p/pdc/insertDeclAjax.do?slitmCd=" + slitmCd+"&itemEvalComtNo="+itemEvalComtNo+"&comtEvalGbcd="+comtEvalGbcd
             , type: "get"
             , dataType: "json"
             , success: function(data) {
                  
                 if(!data.isBuyItem){ 
                      alert(data.errMsg); 
                 } else {
                	 if(data.clickYn =="Y"){
                		 GA_Event('상품상세','상품평','도움');
                	 }else{
                		 GA_Event('상품상세','상품평','도움취소');
                	 }
                	 
                     
                     
                     if(data.clickCnt != 0){
                    	 $("#recomBtnP"+itemEvalComtNo).find("strong").html((data.clickCnt > 999 ? "999+":data.clickCnt));
                    	 $("#recomBtn"+itemEvalComtNo).html("<span><i class='icon like-on-sm'></i>도움("+(data.clickCnt > 999 ? "999+":data.clickCnt)+")</span>");
                     }else{
                    	 $("#recomBtnP"+itemEvalComtNo).find("strong").html("");
                    	 $("#recomBtn"+itemEvalComtNo).html("<span><i class='icon like-on-sm'></i>도움</span>");
                     }
                     
                }
                 
                 $("#HELP_CNT"+itemEvalComtNo).val(data.clickCnt );  
             
             }, error: function(){
                 alert("처리중 문제가 발생하였습니다. 나중에 다시 등록해 주세요.");
             },complete : function() {
                 $("#recomBtn"+itemEvalComtNo).unbind('click', false);
             }
         });
 }

/***
 * sort 클릭 최신순 (01),도움순 (14)
 */
 $(document).on('click', '#recentSort,#helpSort,#photoReviewYn', function() { 
     //console.log(" id = "+ $(this).attr("id"));
    var tmpSlitmCd = slitmCd;
    var params = {};
    var starNum ="";
    var id = $(this).attr("id");
    
    if(id=="photoReviewYn"){ //포토상품평 우선 클릭신 현재 선택된 순서로 조회
        var condName = $("#sortSelect").attr("value");
        id = condName;
    }
    
    var listCondition ="01" ; //최신순
    if(id=="helpSort"){
        listCondition ="14"; 
    }
    
    var imgYn = 0;
    if($("input[name='photoReviewYn']").is(":checked")){
        imgYn = 1;
    }
    
    if($(this).attr("id") == 'helpSort'){
        setBizSpring("helpSort");
    }else if($(this).attr("id") == 'recentSort'){
        setBizSpring("recentSort");
    }
    
    $(".star_select_wrap .custmrSatisfy input").each(function(i) {
            if($(this).is(":checked") && !$(this).prop("disabled")) {
                 starNum = starNum + "," + Math.abs(i - 6);
            }
    });
    
    
    if(id=="helpSort"){
        setBizSpring("helpSort");
    }else{
        setBizSpring("recentSort");
    }
    
     var url = "/p/pdc/selectItemEvalList.do";
     if(dealYn == "Y") {
        url = "/p/pdc/selectOptItemEvalList.do";
        
        var optSlitmCd = $("#section_cont_2 .prod_select_wrap .prod_select_value .opt input[name=optSlitmCd]").val();
        var optYn = 'N';
        var optImgNm = "";
        
        // 전체가 아닐 경우 옵션 상품 선택 으로 표시
        if($("#section_cont_2 .prod_select_wrap").html()!=null && $("#section_cont_2 .prod_select_wrap .prod_select_value .opt .p_prod_name").html().indexOf("전체")>0){
            optSlitmCd="";
        }
        
        //console.log(" optSlitmCd  => "+ optSlitmCd);
        
        if(isEmpty(optSlitmCd)) {
            optYn = 'Y';
            params["slitmCd"] = tmpSlitmCd;
            //console.log("OPT YN  Y ");
        } else {
            optYn = 'N';
            params["slitmCd"] = optSlitmCd;
            params["optSlitmCd"] = tmpSlitmCd;
            //console.log("OPT YN  N ");
        }
        
         if($("#prodOptYn").val() == 'N') optYn = $("#prodOptYn").val();
         
         params["optYn"] = optYn;
         params["optImgNm"] = optImgNm;
         params["optSlitmMstCd"] = tmpSlitmCd;
     } else {
         params["slitmCd"] = tmpSlitmCd;
         //console.log("그 이외...optYn ==>  "+ optYn);
     }
     params["dealYn"] = dealYn;
     params["listCondition"] = listCondition;
     params["starNum"] = starNum;
     params["imgYn"] = imgYn;
     params["refer"] = "itemPtc";
    // params["starNum"] = starNum;
   // console.log("#recentSort,#helpSort  url => "+ url);
    //console.log("PARAMS => ");
    //console.log(params);
    
    
    
    
    var selectStarArea; 
    if(!isEmpty(starNum)) {
        selectStarArea = $("#sortAppend .funcArea .star_select_wrap").clone(true);
     }  
      
      $.ajax({
          type: "post"
          , url: url
          , dataType: "html"
          , data : params
          ,success : function(data) {
          
            $(".itemOptEvalInfo").html(data);
           

            /* start select setting*/
            if(!isEmpty(starNum)) {
                $(".star_select_wrap").remove();
                $("#sortAppend .funcArea").append($(selectStarArea));  
            }
            
            /*sort on &off*/
            if(id=="helpSort"){
                $("#sortSelect").text("도움순");
                $("#sortSelect").val("helpSort");
            }else{
                $("#sortSelect").text("최신순");
                $("#sortSelect").val("recentSort");
            }
            
            if(imgYn == 0){
                $("input[name='photoReviewYn']").prop("checked",false)
            }
            
            
          }
          , error: function(data) {
            cosole.log("error  data =>"+ data);
          }
      });

    });



/*
 * 상품평 별점 필터
 */
$(document).on('click', '.star_select_wrap .custmrSatisfy input', function() {
    var tmpSlitmCd = slitmCd;
    var params = {};
    var itemQnaExpsYn = "Y";
    
    if($(this).prop("disabled")) {
        return false; 
    }
    
    var id = $(this).attr("id");
    var starNum= "";
    if(id == "prd_comntall_1") {
        if($(this).is(":checked")) {
            $(".star_select_wrap .custmrSatisfy input").prop("checked", true);
        } else {
            $(".star_select_wrap .custmrSatisfy input").prop("checked", false);
        }
    } else {
        $(".star_select_wrap .custmrSatisfy #prd_comntall_1").prop("checked", false);
        var totLiLen = Number($(".star_select_wrap .right_satisfied .group_prd_comnt").length) - 1;
        var selLen = 0;
        $(".star_select_wrap .custmrSatisfy .group_prd_comnt").each(function(){
            if($(this).find("input").is(":checked")) {
                selLen++;
            }
        });
        
        if(totLiLen == selLen) {
            $(".star_select_wrap .custmrSatisfy input").prop("checked", true);
        }
    }
    
    $(".star_select_wrap .custmrSatisfy input").each(function(i) {
        if($(this).is(":checked") && !$(this).prop("disabled")) {
             starNum = starNum + "," + Math.abs(i - 6);
        }
    });
    
    setBizSpring("starSelect");
    
    
    /*sort 조건 추가*/
    var  listCondition="",condName="";
    
    condName = $("#sortSelect").attr("value");
    
    if(condName == "recentSort"){
        listCondition ="01";
    }else{
        listCondition ="14";
    }
    
    var imgYn = 0;
    if($("input[name='photoReviewYn']").is(":checked")){
        imgYn = 1;
    }
    
    /* if($("#recentSort").hasClass("on")){
        //console.log("recentSort");
        condName="recentSort";
        listCondition ="01";
    }else{
        //console.log("helpSort");
        listCondition ="14";
        condName="helpSort";
    } */
    
    if(itemQnaExpsYn =="N") {listCondition ="01"; condName="recentSort";}//만족도는 sorting이 없으므로 최신순
    
    /*orignal 영역  clone*/
    var selectStarArea = $("#sortAppend .funcArea .star_select_wrap").clone(true);
        
    
    if(!isEmpty(starNum)) {
        starNum = starNum.replace(",", "");
        var url = "/p/pdc/selectItemEvalList.do";
        if(dealYn == "Y") {
            url = "/p/pdc/selectOptItemEvalList.do";
            var optSlitmCd = $("#section_cont_2 .prod_select_wrap .prod_select_value .opt input[name=optSlitmCd]").val();
            var optYn = 'N';
            var optImgNm = "";
            
            //console.log(" 전체 코멘트 " +$("#section_cont_2 .prod_select_wrap").html());
            // 전체가 아닐 경우 옵션 상품 선택 으로 표시
            if( $("#section_cont_2 .prod_select_wrap").html() !=null && $("#section_cont_2 .prod_select_wrap .prod_select_value .opt .p_prod_name").html().indexOf("전체")>0){
                optSlitmCd="";
            }
            
            //console.log(" optSlitmCd  => "+ optSlitmCd);
            
            if(isEmpty(optSlitmCd)) {
                optYn = 'Y';
                params["slitmCd"] = tmpSlitmCd;
            } else {
                params["slitmCd"] = optSlitmCd;
                params["optSlitmCd"] = optSlitmCd;
            }
            
            if($("#prodOptYn").val() == 'N') optYn = $("#prodOptYn").val();
            
            params["optYn"] = optYn;
            params["optImgNm"] = optImgNm;
            params["optSlitmMstCd"] = tmpSlitmCd;
        } else {
            params["slitmCd"] = tmpSlitmCd;
        }
        params["dealYn"] = dealYn;
        params["starNum"] = starNum;
        params["listCondition"] = listCondition;
        params["imgYn"] = imgYn;
        params["refer"] = "itemPtc";
        
        /*console.log("star params");
        console.log(params);*/
        
        $.ajax({
            type: "post"
            , url: url
            , dataType: "html"
            , data : params
            ,success : function(data) {
                $(".itemOptEvalInfo").html(data);
                
                /*선택된 별점 표기*/
                 $(".star_select_wrap").remove();
                 $("#sortAppend .funcArea").append($(selectStarArea)); 
                 //console.log(" listCondition => "+listCondition);
                 $(".itemOptEvalInfo #sortAppend .funcArea a").removeClass("on");
                 //$("#"+condName).addClass("on");
                 
                if(condName == "recentSort"){
                    $("#sortSelect").text("최신순");
                    $("#sortSelect").val("recentSort");
                }else{
                    $("#sortSelect").text("도움순");
                    $("#sortSelect").val("helpSort");
                }
                
                if(imgYn == 0){
                    $("input[name='photoReviewYn']").prop("checked",false)
                }
            }
            , error: function(data) {
            }
        });
    } else {
        var emptyhtml = '<div class="default_cont inquire"><ul class="no_qna"><li style="border-bottom:0px"><span></span>등록된 상품평이 없습니다.</li></ul></div>';
        var txtString = $("#sortAppend >p").text();
        //console.log(" txtString => "+ txtString);
        $("#sortAppend >p").text(txtString.substring(0,txtString.indexOf(" ")) + " 0건 ");
        $(".itemOptEvalInfo .photoList").html(emptyhtml);
        $(".pl_main_category_pages.itemEvalPaging").remove();
    }
});



/*
 * 상품평 더보기 닫기
 */
$(document).on('click', '.photoList li .photo_comnt', function() {
    var photoTit = $(this);
    var listHeight = $(this).parent().parent();

    if($(photoTit).hasClass("open")) {
        photoTit.removeClass("open");
        listHeight.removeClass("on");
        $(photoTit).find("a.btnMore").show();
        $(photoTit).find("a.btnMoreClose").hide();
    } else {
        photoTit.addClass("open");
        listHeight.addClass("on");
        $(photoTit).find("a.btnMore").hide();
        $(photoTit).find("a.btnMoreClose").show();
    }
});

function nocontextmenu() {
    alert("상품정보보호를 위하여 마우스 우측버튼 이용을 제한합니다.");
    return false;
}


/* 
 * 주말 휴일 제거 start
 */
var holiday;
function checkHoliday(date) {
    if(holiday == null) {
        loadHoliday();
    }
    var day = date.getDay();
    if(day == 0 || day == 6 || holiday[yyyyMMdd(date)] != null) {
        return [false, ""];
    } else {
        return [true, ""];
    }
}
            
function loadHoliday() {
    $.ajax({
        type:"post",
        url:"/p/pda/getHolidayList.do",
        async:false,
        dataType:"json",
        success:function(data) {
            holiday = data;
        }
    });
}

//LG전자 희망배송일
var lgElecHoliday;
function checkLGElecHoliday(date) {
    var day = date.getDay();
    if(lgElecHoliday[yyyyMMdd(date)] != null) {
        return [false, ""];
    } else {
        return [true, ""];
    }
}

function yyyyMMdd(d) {
    return d.getFullYear() + "" + zeroPad(String(d.getMonth() + 1), 2) + "" + zeroPad(String(d.getDate()), 2);
}

function zeroPad(str, len) {
    var pad = "";
    for(var i = 0; i < len - str.length; i++) {
        pad = pad + "0";
    }
    return pad + str;
}
// 주말 휴일 제거 end

/*
 * 상품 코드 복사
 */
function copySlitmCd(slitmCd) {
    
    if(document.all) {
        window.clipboardData.setData("Text", slitmCd);
        alert('해당 상품 코드가 클립보드에\n복사되었습니다.\n\Ctrl + V 또는 붙여넣기를 통해\n사용하실 수 있습니다.');
    } else {
        temp = prompt("Ctrl + C를 눌러 클립보드로 복사하세요", slitmCd);
    }
}

/*
 * 단축URL
 */
function copyShortenUrl(slitmCd) {
    
	GA_Event("상품상세", "공유하기_URL 복사", "");
	
    var shortenUrl = "http://hmall.com/?i" + slitmCd;
     
    if(document.all) {
        window.clipboardData.setData("Text", shortenUrl);
        alert('해당 상품 단축URL이 클립보드에\n복사되었습니다.\n\Ctrl + V 또는 붙여넣기를 통해\n사용하실 수 있습니다.');
    } else {
        temp = prompt("Ctrl + C를 눌러 클립보드로 복사하세요", shortenUrl);
    }
}

/*
 * qrcode
 */
function qrCode() {
    
    $("#qrCodeWrap").html('');
    $("#qrCodeWrap").append('<img name="imgQR" src="/p/pda/qrCode.do?width=111&height=111&detailUrl=http%3A%2F%2Fhmall.kr%2F%3Fi2135294542" alt="QR코드"/>');
    $("#qrCodeWrap").toggle();
}

/*
 * 상품평 기본정보 qna 셀박 선택시
 */
$(document).on("click", ".prod_select_wrap .prod_select_value a", function(e) {
    var select_option = $(this);
    var select_list = $(this).next();

    if($(select_list).is(':visible') == false ) {
        $(this).find(".opt").addClass("choice");
        $(select_list).show();
        try {
            selectScrollNameWidth();
        } catch (e) {}
    } else {
        $(this).find(".opt").removeClass("choice");
        $(select_list).hide();
    }
});

/*
 * 상품평 기본정보 qna 셀박 리스트 선택시
 */
$(document).on("click", ".select_scroll li", function(e) {
    var select_list = $(this).closest(".select_scroll");

    if($(select_list).is(':visible') == false ) {
        $(this).find(".opt").addClass("choice");
        $(select_list).show();
    } else {
        $(this).find(".opt").removeClass("choice");
        $(select_list).hide();
    }
});

/*
 * 속성 셀렉트 박스 선택시
 */
/* $(document).on("click", ".sel-option", function(e) {
    
    if(e.target.className.indexOf("btn btn-linelgray sm") > -1) {
        return;
    }
    var potCnt = $(this).find(".item-box-list li").length;
    if(potCnt == 0 && isEmpty(potCnt)) return;
    if(!$(this).hasClass("ui-active") && $(".ui-dropdown .sel-option.ui-active").length > 0) $(".ui-dropdown .sel-option.ui-active").removeClass("ui-active");
    $(this).toggleClass("ui-active");
    if($(".bottom-wrap").length > 0) { 
        $(".bottom-wrap > button").removeClass("on");
        $(".bottom-wrap .alarm-wrap").hide();
    }
    $('.ui-dropdown.sel-option').removeClass('ui-active');
});
*/
/*
 * 상세설명,상품평,Q&A,기본정보 셀박 마우스 벗어날때
 */
$(document).on("mouseleave", ".prod_select_wrap", function(e) {
    if($(this).find(".select_scroll").css("display") != "none") {
        $(this).find(".select_scroll").hide();
        $(this).find(".opt ").removeClass("choice");
    }
});


/*
 * 속성 셀렉트 마우스 벗어날때
 */
/* $(document).on("mouseleave", ".ui-dropdown", function(e) {
    if($(this).closest(".right_group").length > 0) {
        return;
    }
    
    if($(this).hasClass("open")) {
        
        $('#dropOption').dropdown("toggle");
    }
}); */

/* $(document).on("mouseleave", "#ui-dropdown sel-option", function(e) {
    if($(this).closest(".right_group").length > 0) {
        return;
    }
    
    if($(this).hasClass("open")) {
        
        $('#drop').dropdown("toggle");
    }
}); */

/*
 * 딜상품 n개 판매의 기간 계산
 */
function dealTimer() {
    var e_yyyy = Number(endTime.substring(0,4));
    var e_mm   = Number(endTime.substring(4,6)) - 1;
    var e_dd   = Number(endTime.substring(6,8));
    var e_hh   = Number(endTime.substring(8,10));
    var e_mi   = Number(endTime.substring(10,12));
    var e_ss   = Number(endTime.substring(12,14));

    var s_yyyy = Number(currNow.substring(0,4));
    var s_mm   = Number(currNow.substring(4,6)) -1 ;
    var s_dd   = Number(currNow.substring(6,8));
    var s_hh   = Number(currNow.substring(8,10));
    var s_mi   = Number(currNow.substring(10,12));
    var s_ss   = Number(currNow.substring(12,14));

    var txthours ;
    var txtminutes ;
    var txtseconds ;
    now = new Date(s_yyyy, s_mm, s_dd, s_hh, s_mi, s_ss);    //현재시간 지정
    var later = new Date(e_yyyy, e_mm, e_dd, e_hh, e_mi, e_ss);  //완료시간 지정

    var days = (later - now) / 1000/ 60 / 60 / 24;
    var daysRound = Math.floor(days);

    var thours = (later - now) / 1000 / 60 / 60;
    var thoursRound = Math.floor(thours);

    var hours = (later - now) / 1000 / 60 / 60 - (24 * daysRound);
    var hoursRound = Math.floor(hours);

    var minutes = (later - now) / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound);
    var minutesRound = Math.floor(minutes);

    var seconds = (later - now) / 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) - (60 * minutesRound);
    var secondsRound = Math.round(seconds);

    if (thoursRound < 10){
        txthours = "0"+thoursRound;
    }else{
        txthours = ""+thoursRound;
    }
    if (minutesRound < 10){
        txtminutes = "0"+minutesRound;
    }else{
        txtminutes = ""+minutesRound;
    }
    if (secondsRound < 10){
        txtseconds = "0"+secondsRound;
    }else{
        txtseconds = ""+secondsRound;
    }
    
    if (hoursRound < 10){
        txthours = "0"+hoursRound;
    }else{
        txthours = ""+hoursRound;
    }

    // 지난 상품일 경우
    if(later - now <= 0){
        daysRound = 0;
        txthours = "00";
        txtminutes = "00";
        txtseconds = "00";
    }

    if(daysRound > 0 ) {
        $("#dealTimerTxt").html(daysRound);
        $("#dealTimerTxt2").html(" 일 남음");
        $("#timeRemaining").html("");
    }else{
        $("#dealTimerTxt").html("");
        $("#dealTimerTxt2").html("오늘마감");
        $("#timeRemaining").html(txthours.substring(0,1) + txthours.substring(1,2) + ":" + txtminutes.substring(0,1) + txtminutes.substring(1,2)+":" + txtseconds.substring(0,1) + txtseconds.substring(1,2));
    }
    currNow = ""+(parseInt(currNow) + 1);
    setTimeout(dealTimer, 1000);
}

/*
 * 상품속성 선택
 */
$(document).on('click', '.item-box-list a', function(e) {
    var thisCssHeader = ".";
    if($(this).closest('.product-option-wrap').length > 0) {
    	if($('.product-option-wrap').index($(this).closest('.product-option-wrap')) != 0) {
    		return;
    	}
        thisCssHeader+='product-option-wrap';
    } else if($(this).closest('.right-option-area').length > 0) {
        thisCssHeader+='right-option-area';
    } else if($(this).closest('.option-deal-wrap').length > 0) {
        thisCssHeader+='option-deal-wrap';
    } else {
    	return;
    } 
    
//  if($(this).closest(".pop_body").length > 0) {
//       return;
//  }

     if($(this).find("input[name=selectptSoldOutYn]").val() == "Y") {
         return;
     }
     
     var parentObj = "";
     var thisIdx = 0;
     var thisGroupIdx = $(this).closest('.ui-dropdown').index();
     
     if($(this).closest(thisCssHeader+" .sel-prduct").length > 0) {
         parentObj = $(thisCssHeader+" .ui-dropdown");
         // $(".sel-prduct .dropdown-menu").attr("data-my-value",$(this).attr("data"));
         $(".product-option-wrap .sel-prduct .dropdown-menu a").removeClass('on');
         thisIdx = $(this).closest(".dropdown-menu a").index();
         $(".product-option-wrap .sel-prduct .dropdown-menu a:eq("+thisIdx+")").addClass('on');
     } else if($(this).closest(thisCssHeader+" .sel-option").length > 0) {
         parentObj = $(thisCssHeader+" .ui-dropdown");
         // $(".sel-option .dropdown-menu").attr("data-my-value",$(this).attr("data"));
         thisIdx = $(this).closest(".dropdown-menu a").index();
     }
     
     if(dealYn == "Y") {
         var selIndex = Number($(parentObj).index($(this).closest(".ui-dropdown")));            
         if($(".pdtSelectCont").length > 0 && $(this).closest(thisCssHeader).length > 0) {
             selIndex++;
         } else {
             if($(this).closest(thisCssHeader).length > 0) {
                 setBizSpring("itemSelList");
             }
         }
         if(dealDetailEventType == 0) {
	         var sortOrdgVal = $(this).find("input[name=selectptSortOrdg]").val();
	         $(".product-detail-view .pdlist-wrap.col2 .pdthumb").each(function(index) {
	        	if( $(this).find(".hoverdetail a input[name=dealProdGroupSortOrdg]").val() == sortOrdgVal ) {
	        		showDealIndex(index);
	        	}
	         });
         }
         dealDetailEventType = 0;
         
         setDealUitm(this, selIndex);
         //옵션 자세히 보기 클릭시 하단 상품설명 변경 (2019.08.16)
//          if($(this).closest(".right_group").length > 0 && !$(this).closest(".selbox").hasClass("optSelBox")) {
//              var eqNum = $(this).find("input[name=selectptSortOrdg]").val();
//              call_DetailView(eqNum);
//          }
         return;  
     }
     
     if($(this).closest(".ui-dropdown-more-group").length > 0) {
         addCmpsItem(this, thisCssHeader);
         return;
     }
     
     var limitCnt = Number(99);
     
     if(isEmpty(limitCnt)) {
         limitCnt = 99;
     }
     
     // 2018.08.17 김동민 수량체크 수정 
     var paramObj = "";
     paramObj = $(thisCssHeader+" .select-product-list .pditem");
     
     var orgSlitmCd = "";
     if(dealYn == "Y") {
         orgSlitmCd = $(this).closest(".pditem").find("input[name=slitmCd]").val();
     }

     var totalQty = fn_calTotalQty(0,orgSlitmCd,paramObj);    
     
     if(totalQty >= limitCnt) {        
         alert("본상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
         calcSellPrc();
         return;
     }
     
     var uitmCombYn = $("input[name='uitmCombYn']").val();
     var uitmChocPossYn = $("input[name='uitmChocPossYn']").val();
     
     if($(thisCssHeader+" .ui-dropdown-group .ui-dropdown").length > 1 || (uitmCombYn == "Y" && uitmChocPossYn == "Y")) {
         var uitmAttrTypeIndex = Number($(parentObj).index($(this).closest(".sel-option")));
         var uitmAttrTypeCnt = $(thisCssHeader+" .sel-option").length;
         var uitmSeq = $(this).find("input[name=uitmSeq]").val();
         var uitmNm = $(this).find("input[name=uitmAttrNm]").val();

//          var targetObj = $(this).closest(".dropdown-menu").prev();
//          $(targetObj).find("input[name=uitmSeq]").remove();
         // $(obj2).find(".myValue input[name=uitmSeq]").remove();
         
         var targetObj1 = $(".product-option-wrap:first .dropdown-menu:eq("+thisGroupIdx+")").prev();
         var targetObj2 = $(".right-option-area .dropdown-menu:eq("+thisGroupIdx+")").prev();
         var targetObj3 = $(".option-deal-wrap .dropdown-menu:eq("+thisGroupIdx+")").prev();
         $(targetObj1).find("input[name=uitmSeq]").remove();
         $(targetObj2).find("input[name=uitmSeq]").remove();
         $(targetObj3).find("input[name=uitmSeq]").remove();
         
         var input = $("<input type='hidden'/>");
         $(input).attr("name", "uitmSeq").val(uitmSeq);
         
         $(targetObj1).find("a.defaultVal").text(uitmNm);
         $(targetObj2).find("span").text(uitmNm);
         $(targetObj3).find("span").text(uitmNm);
         $(targetObj1).append($(input).clone());
         $(targetObj2).append($(input).clone());
         $(targetObj3).append($(input).clone());
         
         if(uitmCombYn == "Y" && uitmChocPossYn == "Y") {
             $(".product-option-wrap:first .drop,.right-option-area .drop,.option-deal-wrap .drop").each(function(index) {
                 var tmpIndex = $(this).closest(".sel-option").index();
                 if(tmpIndex > uitmAttrTypeIndex) {
                     var defaultNm = $(this).find("input[name=defaultNm]").val();
                     if($(this).closest(".option-scroll").length > 0) {
                         $(this).find("span").text(defaultNm);
                     } else {
                         $(this).find("a").text(defaultNm);
                     }
                     $(this).find("input[name=uitmSeq]").remove();
                     $(this).next().find(".item-box-list").html("");
                 }
             });
             
//              $(".convnt_cont .myValue").each(function(index) {
//                  var tmpIndex = $(this).closest(".selbox").index();
//                  if(tmpIndex > uitmAttrTypeIndex) {
//                      var defaultNm = $(this).find("input[name=defaultNm]").val();
//                      $(this).closest(".drop").find("input[name=uitmSeq]").remove();
//                      if($(this).closest(thisCssHeader).length > 0) {
//                          $(this).find("a").text(defaultNm);
//                          $(this).next().find(".iListCont ul").html("");
//                      }
//                  }
//              });
         }
         
         if((uitmAttrTypeIndex + 1) == uitmAttrTypeCnt) {
             var uitmSeqArr = new Array();
             var uitmNmArr = new Array();

             $(".product-option-wrap:first .sel-option .drop").each(function() {
                 var tmpUitmSeq = $(this).find("input[name=uitmSeq]").val();
                 var tmpUitmNm = $(this).find(".defaultVal").text();
                 if(!isEmpty(tmpUitmSeq)) uitmSeqArr.push(tmpUitmSeq);
                 if(!isEmpty(tmpUitmNm)) uitmNmArr.push($(this).find(".defaultVal").text());
             });

             /*
              * 동일 속성 선택 존재여부 체크 후 존재하는 경우 리턴
              */
             var flag = true;
             $(".product-option-wrap:first .select-product-list .pditem").each(function () {
                 var existsUitmSeqArr = new Array();

                 $(this).find("input[name='uitmSeq']").each(function () {
                     existsUitmSeqArr.push($(this).val());
                 });

                 if(existsUitmSeqArr.join('') == uitmSeqArr.join('')) {
                     alert("동일상품이 선택되었습니다.\n아래에서 선택사항을 확인해주세요.");
                     $(targetObj1).find("input[name=uitmSeq]").remove();
                     $(targetObj2).find("input[name=uitmSeq]").remove();
                     $(targetObj3).find("input[name=uitmSeq]").remove();
                     flag = false;
                 }
             });

             if(!flag) {
                 return;
             }

             addUitmHtml(uitmSeqArr, uitmNmArr, uitmNm);
             calcSellPrc();
         } else {
             var slitmCd = $("input[name='slitmCd']").val();
             var bsitmCd = $("input[name='bsitmCd']").val();
             var uitmAttrTypeSeq = "";
             
             if($(this).closest(thisCssHeader).length > 0) {
                 uitmAttrTypeSeq = $(this).closest(thisCssHeader).find("input[name=uitmAttrTypeSeq]:eq(" + (Number(uitmAttrTypeIndex) + 1) + ")").val();
             } else if($(this).closest(".left_side").length > 0) {
                 uitmAttrTypeSeq = $(this).closest(".left_side").find("input[name=uitmAttrTypeSeq]:eq(" + (Number(uitmAttrTypeIndex) + 1) + ")").val();
             }
             
             var uitmSeqArrParam = new Array();
             $(thisCssHeader+" .sel-option").each(function() {
                 if($(this).find(".drop").length > 0) {
                     var tmpDrop = $(this).find(".drop");
                     var tmpUitmSeq = $(tmpDrop).find("input[name=uitmSeq]").val();
                     if(!isEmpty(tmpUitmSeq)) {
                         uitmSeqArrParam.push(tmpUitmSeq);
                     }
                 } 
              });

             if(uitmSeqArrParam.length == 0) {
                 if($(this).closest(thisCssHeader).length > 0) {
                     uitmAttrTypeSeq = $(this).closest(thisCssHeader).find("input[name=uitmAttrTypeSeq]:eq(" + Number(uitmAttrTypeIndex) + ")").val();
                 }
             }

             $.ajax({
                 type: "post"
                 , url: "/p/pda/selectUitmAttr.do?uitmSeqArr=" + uitmSeqArrParam.join("&uitmSeqArr=")
                 , dataType: "json"
                 , data : {slitmCd : slitmCd, bsitmCd : bsitmCd, uitmAttrTypeSeq : uitmAttrTypeSeq}
                 ,success : function(data) {
                     if(data.uitmList) {
                         $(".product-option-wrap:first .item-box-list").eq(uitmAttrTypeIndex + 1).find("a").remove();
                         $(".right-option-area .item-box-list").eq(uitmAttrTypeIndex + 1).find("a").remove();
                         var vHtml = '';
                         
                         for(var i in data.uitmList) {
                             vHtml += '<a href="javascript:;">' +
                                      '  <div class="figcaption">'+
                                      '    <div class="pdnum">'+
                                      '    <p class="num" aria-label="상품속성">'+data.uitmList[i].uitmAttrNm+'</p>'+
                                      '    </div>'+
                                      '  </div>'+
                                      '<input type="hidden" name="uitmSeq" value="' + data.uitmList[i].uitmSeq + '"/><input type="hidden" name="uitmAttrNm" value="' + data.uitmList[i].uitmAttrNm + '"/>' +
                                      '</a>';
                         }
                         $(".product-option-wrap:first .item-box-list").eq(uitmAttrTypeIndex + 1).append(vHtml);
                         $(".right-option-area .item-box-list").eq(uitmAttrTypeIndex + 1).append(vHtml);
                     }
                     if(gStockDispYn == "Y") {
                         selectItemStockCount(uitmAttrTypeSeq, slitmCd, (uitmAttrTypeIndex + 1));
                     }
                 }
                 , error: function(data) {
                 }
             });
         }
     } else {
         var uitmCdVal = $(this).find("input[name=uitmCd]").val();
         if(isEmpty(uitmCdVal)) {
             return;
         }

         var uitmCd = uitmCdVal
//          var uitmTotNm = $(this).find(".num").text();
         var uitmTotNm = $(this).find("input[name=uitmAttrNm]").val();
         var flag = true;
         $(thisCssHeader+" .select-product-list .pditem").each(function() {
             if(flag) {
                 var exstUitmCd = $(this).find("input[name=uitmCd]").val();
                 if(exstUitmCd == uitmCd) {
                     alert("동일상품이 선택되었습니다.\n아래에서 선택사항을 확인해주세요.");
                     flag = false;
                     return false;
                 }
             }
         });
         if(!flag) return;
         var uitm1HexClrVal = $(this).find("input[name=uitm1HexClrVal]").val();
         var uitmImgNm = $(this).find("input[name=uitmImgNm]").val();

         addUitmBsicHtml(uitmCd, uitmTotNm, uitm1HexClrVal, uitmImgNm);
         calcSellPrc();
     }
 });
 
/*
 * 선택한 속성 삭제
 */
$(document).on("click", ".btn-delete-sel-item", function() {
    var thisIdx = $(this).closest(".pditem").index()-1;
    $(".product-option-wrap:first .select-product-list .pditem:eq("+thisIdx+")").remove();
    $(".right-option-area .select-product-list .pditem:eq("+thisIdx+")").remove();
	$(".option-deal-wrap .select-product-list .pditem:eq("+thisIdx+")").remove();
    calcSellPrc();
});

/*
 * 마이터스 버튼 눌렀을때 공통
 */
function changeMinus(obj, prc, ordQty) {
    var parentObj = "";
    if($(obj).closest(".product-option-wrap").length > 0) {
        parentObj = $(".product-option-wrap .select-product-list .pditem");
    } else if($(obj).closest(".right-option-area").length > 0) {
        parentObj = $(".right-option-area .select-product-list .pditem");
    } else if($(obj).closest(".option-deal-wrap").length > 0) {
        parentObj = $(".option-deal-wrap .select-product-list .pditem");
    }
    
    var selIndex = Number($(parentObj).index($(obj).closest(".pditem")));
    
    if(ordQty <= 1) {
        return;
    }
    
    var targetObj = $(obj).closest(".figcaption");
    var copyBasketObj = $(targetObj).closest(".pditem");
    $(copyBasketObj).find(".pdprice em").text(gfn_appendComma(prc));
    $(copyBasketObj).find("input[name=ordQty]").val(ordQty - 1);
    
    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty - 1);
    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty - 1);
    if(dealYn == 'Y') {
        $(".option-deal-wrap .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
        $(".option-deal-wrap .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty - 1);
    }
}

/*
 * 선택 속성 선택영역에 생성(조합형)
 */
function addUitmHtml(uitmSeqArr, uitmNmArr, uitmNm) {
    var quantityArea1 = $("<div class='pditem'></div>"); 
    var quantityArea2 = $("<div class='pditem'></div>"); 
    var quantityAreaTemp1 = $(".right-option-area .select-product-list .temp-item").children().clone(true);
    var quantityAreaTemp2 = $(".product-option-wrap:first .select-product-list .temp-item").children().clone(true);
    $(quantityArea1).append(quantityAreaTemp1);
    $(quantityArea2).append(quantityAreaTemp2);

    if($(quantityArea1).find(".pdname").length > 0) {
        if(isEmpty($.trim($(quantityArea1).find(".pdname").html()))) {
            $(quantityArea1).find(".pdname").remove();
            $(quantityArea2).find(".pdname").remove();
        }
    }
    
    var uiAreaCss = [".option",".color"];
    $(quantityArea1).find(".pdoption "+uiAreaCss[1]).css("display","none");
    $(quantityArea2).find(".pdoption "+uiAreaCss[1]).css("display","none");
    $(".product-option-wrap:first .drop").each(function(index) {
        if(index >= 2) {
         uiAreaCss[index] = ".etc"+index;
            $(quantityArea1).find(".pdoption").append('<span class="etc'+index+'" style="display: none;"></span>');
            $(quantityArea2).find(".pdoption").append('<span class="etc'+index+'"style="display: none;"></span>');
        }
    	var defaultNm = $(this).find("input[name=defaultNm]").val();
        var optionHtml = "";
        if((isEmpty(defaultNm) || defaultNm == undefined) && isEmpty(uitmNmArr[index])) {
            return;
        }
        if(isEmpty(defaultNm) || defaultNm == undefined) {
            optionHtml = "<em>"+uitmNmArr[index]+"</em>";
        } else {
            optionHtml = defaultNm+": <em>"+uitmNmArr[index]+"</em>";
        }
        $(quantityArea1).find(".pdoption "+uiAreaCss[index]).html(optionHtml); 
        $(quantityArea2).find(".pdoption "+uiAreaCss[index]).html(optionHtml); 
        $(quantityArea1).find(".pdoption "+uiAreaCss[index]).css("display","block");
        $(quantityArea2).find(".pdoption "+uiAreaCss[index]).css("display","block");
    });
    
    $(quantityArea1).find(".pdprice em").text(gfn_appendComma($("input[name='sellPrc']").val()));  // 가격 들어가는 자리
    $(quantityArea2).find(".pdprice em").text(gfn_appendComma($("input[name='sellPrc']").val()));  // 가격 들어가는 자리

    
    for(var i in uitmSeqArr) {
        var input = $("<input type='hidden'/>");
        $(input).attr("name", "uitmSeq").val(uitmSeqArr[i]);
        $(quantityArea1).append($(input).clone());
        $(quantityArea2).append($(input).clone());
    }
    $(quantityArea1).show();
    $(quantityArea2).show();
    $(".right-option-area .select-product-list").append($(quantityArea1));
    $(".product-option-wrap .select-product-list").append($(quantityArea2));
    $(".right-option-area .select-product-list").show();
    $(".product-option-wrap .select-product-list").show();
    // setUitmDefault();
}

/*
 * 선택 속성 선택영역에 생성
 */
function addUitmBsicHtml(uitmCd, uitmTotNm, uitm1HexClrVal, uitmImgNm) {
    var quantityArea1 = $("<div class='pditem'></div>"); 
    var quantityArea2 = $("<div class='pditem'></div>"); 
    var cloneItem1 = $(".product-option-wrap .select-product-list .temp-item").children().clone(true);
    var cloneItem2 = $(".right-option-area .select-product-list .temp-item").children().clone(true);
    $(quantityArea1).append(cloneItem1);
    $(quantityArea2).append(cloneItem2);
    
    if(!isEmpty(uitm1HexClrVal)) {
        var colArea = '<i class="Color" style="background: #' + uitm1HexClrVal + '"></i>';
        $(quantityArea1).find(".pdname").html(colArea + uitmTotNm); // 옵션명 들어가는 자리
        $(quantityArea2).find(".pdname").html(colArea + uitmTotNm); // 옵션명 들어가는 자리
    } else {
        $(quantityArea1).find(".pdname").text(uitmTotNm); // 옵션명 들어가는 자리
        $(quantityArea2).find(".pdname").text(uitmTotNm); // 옵션명 들어가는 자리
        $(quantityArea1).find(".pdoption").remove();
        $(quantityArea2).find(".pdoption").remove();
    }
    $(quantityArea1).find(".pdprice em").text(gfn_appendComma($("input[name='sellPrc']").val()));  // 가격 들어가는 자리
    $(quantityArea2).find(".pdprice em").text(gfn_appendComma($("input[name='sellPrc']").val()));  // 가격 들어가는 자리

    var input = $("<input type='hidden'/>");
    $(input).attr("name", "uitmCd").val(uitmCd);
    $(quantityArea1).append($(input).clone());
    $(quantityArea2).append($(input).clone());
    $(quantityArea1).show();
    $(quantityArea2).show();
    $(".product-option-wrap .select-product-list").append($(quantityArea1));
    $(".right-option-area .select-product-list").append($(quantityArea2));
    $(".product-option-wrap .select-product-list").show();
    $(".right-option-area .select-product-list").show();
}

/*
 * 옵션 초기화
 */
 function setUitmDefault() {
        var uitmAttrOneYn = $(".product-option-wrap .sel-option:first .drop input[name=uitmAttrOneYn]").val();
        // $(".option-scroll .drop-One").each(function(index) {
        $(".product-option-wrap .drop").each(function(index) {
            var defaultNm = $(this).find("input[name=defaultNm]").val();
            $(this).find("a").text(defaultNm);
            if(uitmAttrOneYn == "Y") {
                if($(this).find("input[name=uitmAttrTypeSeq]").val() != "1") $(this).closest(".myValue").find("input[name=uitmSeq]").remove();
            } else {
                $(this).closest(".drop").find("input[name=uitmSeq]").remove();
            }
            if($(this).find("input[name=uitmAttrTypeSeq]").val() != "1" && uitmAttrOneYn != "Y") {
                $(this).next().find(".item-box-list ul").html("");
            }
        });
        
        $(".convnt_cont .myValue").each(function(index) {
            var defaultNm = $(this).find("input[name=defaultNm]").val();
            $(this).find("a").text(defaultNm);
            if(uitmAttrOneYn == "Y") {
                if($(this).find("input[name=uitmAttrTypeSeq]").val() != "1") $(this).closest(".myValue").find("input[name=uitmSeq]").remove();
            } else {
                $(this).closest(".myValue").find("input[name=uitmSeq]").remove();
            }
            if($(this).find("input[name=uitmAttrTypeSeq]").val() != "1" && uitmAttrOneYn != "Y") {
                $(this).next().find(".iListCont ul").html("");
            }
        });
    }


/*
 * 총 수량을 반환한다 
 */
function fn_calTotalQty(pTotalQty, orgSlitmCd, obj) {
    var totalQty = pTotalQty;
    $(obj).each(function() {
    	totalQty = totalQty +  Number($(this).find("input[name=ordQty]").val());
    });
    
    return totalQty;
}

/*
 * 수량 input 변경
 */
function changeOrdQty(obj, limitCnt) {
    var targetObj = $(obj).closest(".inplabel");
    var ordQty = $(obj).val();
    var orgSlitmCd = "";
    var sellPrc = $("input[name='sellPrc']").val();
    var obj2 = "";
    var obj3 = "";
    var parentObj = "";
    var parentObj = "";
    if($(obj).closest(".product-option-wrap").length > 0) {
        parentObj = $(".product-option-wrap .select-product-list .pditem");
    } else if($(obj).closest(".right-option-area").length > 0) {
        parentObj = $(".right-option-area .select-product-list .pditem");
    } else if($(obj).closest(".option-deal-wrap").length > 0) {
        parentObj = $(".option-deal-wrap .select-product-list .pditem");
    }
    var selIndex = Number($(parentObj).index($(obj).closest(".pditem")));
    
    if(isEmpty(limitCnt)) {
        limitCnt = 99;
    }

    var totalQty = fn_calTotalQty(0, orgSlitmCd, parentObj);
    
    if(totalQty > limitCnt) {
        var cnt = limitCnt - (totalQty - ordQty);
        $(obj).val(cnt);
        alert("본상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
        ordQty = cnt;
    }

    var prc = Number(sellPrc) * (ordQty);
    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
    if(dealYn == 'Y') {
        $(".option-deal-wrap .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
        $(".option-deal-wrap .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
    }

    calcSellPrc();
}

/*
 * 속성 수량 더하기
 */
function plusOrdQty(obj, limitCnt) {
    var thisIdx = $(obj).parents(".pditem").index();
    var targetObj = $(obj).closest(".count");
    var ordQty = Number($(targetObj).find("input[name=ordQty]").val());
    var orgSlitmCd = "";
    var sellPrc = $("input[name='sellPrc']").val();
    
    if(isEmpty(limitCnt)) {
        limitCnt = 99;
    }
    
    var parentObj = "";
    if($(obj).closest(".product-option-wrap").length > 0) {
        parentObj = $(".product-option-wrap .select-product-list .pditem");
    } else if($(obj).closest(".right-option-area").length > 0) {
        parentObj = $(".right-option-area .select-product-list .pditem");
    } else if($(obj).closest(".option-deal-wrap").length > 0) {
        parentObj = $(".option-deal-wrap .select-product-list .pditem");
    }
        
    var totalQty = fn_calTotalQty(0, orgSlitmCd, parentObj);
    if(totalQty >= limitCnt) {
        alert("본상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
        return false;
    }

    var prc = Number(sellPrc) * (ordQty + 1);

    changeQty(obj, prc, ordQty + 1);
    
    calcSellPrc();
}

/*
 * 수량 변경 공통
 */
function changeQty(obj, prc, ordQty) {
    var parentObj = "";
    if($(obj).closest(".product-option-wrap").length > 0) {
        parentObj = $(".product-option-wrap .select-product-list .pditem");
    } else if($(obj).closest(".right-option-area").length > 0) {
        parentObj = $(".right-option-area .select-product-list .pditem");
    } else if($(obj).closest(".option-deal-wrap").length > 0) {
        parentObj = $(".option-deal-wrap .select-product-list .pditem");
    }
    
    var selIndex = Number($(parentObj).index($(obj).closest(".pditem")));
    
    var targetObj = $(obj).closest(".count");
    var copyBasketObj = $(targetObj).closest(".pditem");
    $(copyBasketObj).find(".pdprice em").text(gfn_appendComma(prc));
    $(copyBasketObj).find("input[name=ordQty]").val(ordQty);

    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));

    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
}


/*
 * 속성 수량  빼기
 */
function minusOrdQty(obj, limitCnt) {
    var thisAreaIdx = $(obj).data("area-id");
    var thisCssHeader = ".product-option-wrap";
    var otherCssHeader = ".option-scroll";

    if($(obj).closest(".option-scroll").length > 0) {
        thisAreaIdx = "2";
        thisCssHeader = ".option-scroll";
        otherCssHeader = ".product-option-wrap";
    }

    var thisIdx = $(obj).parents(".pditem").index();
    var anotherObj = $(otherCssHeader+" .select-product-list .btn.btn-plus:eq("+thisIdx+")");
    
    var targetObj = $(obj).closest(".count");
    var ordQty = Number($(targetObj).find("input[name=ordQty]").val());
    var orgSlitmCd = "";
    var sellPrc = $("input[name='sellPrc']").val();

    if(isEmpty(limitCnt)) {
        limitCnt = 99;
    }
    
    var parentObj = "";
    if($(obj).closest(".product-option-wrap").length > 0) {
        parentObj = $(".product-option-wrap .select-product-list .pditem");
    } else if($(obj).closest(".right_group").length > 0) {
        parentObj = $("#layer_popup .right_group .selResultInfo .copyBasket");
    } else if($(obj).closest(".left_side").length > 0) {
        parentObj = $(".handiness .left_side .selResultInfo .copyBasket");
    }
        
    var totalQty = fn_calTotalQty(0, orgSlitmCd, parentObj);

    if(ordQty <= 1) {
        return false;
    }
    
    var prc = Number(sellPrc) * (ordQty - 1);

    changeQty(obj, prc, ordQty - 1);

    calcSellPrc();
}

/*
 * 추가 구성 선택한 속성 삭제
 */
$(document).on("click", ".btn-delete-sel-add-item", function() {
    var thisIdx = $(this).closest(".select-product-add-list").find(".pditem").index($(this).closest(".pditem"))
    $(".select-product-add-list").each(function() {
    	$(this).find(".pditem:eq("+thisIdx+")").remove();
    });
    calcSellPrc();
});


/*
 * 추가 구성 수량 input 변경
 */
function changeOrdQtyForAddCmpsItem(obj, limitCnt) {
    var selObj = $(obj).closest(".pditem");
    var plAddBuyNdmtYn = $(selObj).find("input[name=plAddBuyNdmtYn]").val();
    var input = $(selObj).find("input[name=ordQty]");
    var ordQty = Number($(input).val());

    var parentObj = $(obj).closest(".select-product-add-list").parent();
    
    var selIndex = Number($(parentObj).index($(obj).closest(".pditem")));
    
    //복수추가구매불가여부(plAddBuyNdmtYn)가 Y이면 수량제한을 본품과 같게 처리
    if(plAddBuyNdmtYn != 'Y') {
        limitCnt = '';
    }
    
    if(isEmpty(limitCnt)) {
        limitCnt = 99;
    }
    
    //ordQty:구성품 수량, originOrdQty:본품수량
    var originOrdQty = $(parentObj).find(".select-product-list .pditem input[name='ordQty']").val();
    if(plAddBuyNdmtYn == "Y" && ordQty+1 > originOrdQty) {
        $(input).val(originOrdQty);
        alert("본 구성품은 "+originOrdQty+"개만 선택하실 수 있습니다.");
        return;
    }
    
    if(ordQty >= limitCnt) {
        $(input).val(limitCnt);
        alert("본상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
        ordQty = limitCnt;
    }
    
    var sellPrc = $(selObj).find("input[name=addCmpsSellPrc]").val();
    var prc = Number(sellPrc) * (ordQty);
    
    $(".select-product-add-list").each(function() {
        var pdItemObj = $(this).find(".pditem:eq("+selIndex+")");
        $(pdItemObj).find(".pdprice em").text(gfn_appendComma(prc));
        $(pdItemObj).find("input[name=ordQty]").val(ordQty);
    });
    
    calcSellPrc();
}

/*
 * 추가 구성품 수량 더하기
 */
function plusOrdQtyForAddCmpsItem(obj, limitCnt) {
    var selObj = $(obj).closest(".pditem");
    var plAddBuyNdmtYn = $(selObj).find("input[name=plAddBuyNdmtYn]").val();
    var input = $(selObj).find("input[name=ordQty]");
    var ordQty = Number($(input).val());

    var parentObj = $(obj).closest(".select-product-add-list").parent();
    
    var selIndex = Number($(parentObj).index($(obj).closest(".pditem")));
    
    //복수추가구매불가여부(plAddBuyNdmtYn)가 Y이면 수량제한을 본품과 같게 처리
    if(plAddBuyNdmtYn != 'Y') {
        limitCnt = '';
    }
    
    if(isEmpty(limitCnt)) {
        limitCnt = 99;
    }
    
    //ordQty:구성품 수량, originOrdQty:본품수량
    var originOrdQty = $(parentObj).find(".select-product-list .pditem input[name='ordQty']").val();
    if(plAddBuyNdmtYn == "Y" && ordQty+1 > originOrdQty) {
        $(input).val(originOrdQty);
        alert("본 구성품은 "+originOrdQty+"개만 선택하실 수 있습니다.");
        return;
    }
    
    if(ordQty >= limitCnt) {
        $(input).val(limitCnt);
        alert("본상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
        calcSellPrc();
        return;
    }
    
    var sellPrc = $(selObj).find("input[name=addCmpsSellPrc]").val();
    var prc = Number(sellPrc) * (ordQty + 1);
    
    $(".select-product-add-list").each(function() {
        var pdItemObj = $(this).find(".pditem:eq("+selIndex+")");
    	$(pdItemObj).find(".pdprice em").text(gfn_appendComma(prc));
    	$(pdItemObj).find("input[name=ordQty]").val(ordQty + 1);
    });
    
    calcSellPrc();
}

/*
 * 추가 구성품 수량 빼기
 */
function minusOrdQtyForAddCmpsItem(obj) {
    var selObj = $(obj).closest(".pditem");
    var plAddBuyNdmtYn = $(selObj).find("input[name=plAddBuyNdmtYn]").val();
    var input = $(selObj).find("input[name=ordQty]");
    var ordQty = Number($(input).val());

    var parentObj = $(obj).closest(".select-product-add-list").parent();
    
    var selIndex = Number($(parentObj).index($(obj).closest(".pditem")));
    
    if(ordQty <= 1) {
        return;
    }
    
    var sellPrc = $(selObj).find("input[name=addCmpsSellPrc]").val();
    var prc = Number(sellPrc) * (ordQty - 1);
    
    $(".select-product-add-list").each(function() {
        var pdItemObj = $(this).find(".pditem:eq("+selIndex+")");
        $(pdItemObj).find(".pdprice em").text(gfn_appendComma(prc));
        $(pdItemObj).find("input[name=ordQty]").val(ordQty - 1);
    });
    
    calcSellPrc();    
}

/*
 * 추가 구성품 선택
 */
function addCmpsItem(obj, thisCssHeader) {
    var cmpsItemSeq = $(obj).find("input[name=cmpsItemSeq]").val();
    var cmpsItemNm = $(obj).find("input[name=cmpsItemNm]").val();
    var cmpsItemSellPrc = $(obj).find("input[name=cmpsItemSellPrc]").val();
    var selObjPre = $(obj).closest(".dropdown-menu").prev();
    var cmpsGbcd = $(selObjPre).find("input[name=cmpsGbcd]").val();
    var cmpsSeq = $(selObjPre).find("input[name=cmpsSeq]").val();
    var plAddBuyNdmtYn = $(selObjPre).find("input[name=plAddBuyNdmtYn]").val();
    var parentObj = $(thisCssHeader);

    if($(".ui-dropdown.sel-option").length > 0 && $(thisCssHeader+" .select-product-list .pditem").length <= 0) {
        alert("주문선택사항을 먼저 선택하시기 바랍니다.");
        setTimeout(function() {$(parentObj).find(".ui-dropdown.sel-option:first").addClass("ui-active");},300);
        return;
    }
    
    var flag = true;
    $(thisCssHeader+" .select-product-add-list .pditem").each(function() {
        var tmpCmpsSeq = $(this).find("input[name=cmpsSeq]").val();
        var tmpCmpsItemSeq = $(this).find("input[name=cmpsItemSeq]").val();
        if(tmpCmpsSeq == cmpsSeq && tmpCmpsItemSeq == cmpsItemSeq) {
            alert("동일상품이 선택되었습니다.\n아래에서 선택사항을 확인해주세요.");
            flag = false;
            return false;
        }
    });
    
    if(!flag) return;
    
    var quantityArea1 = $("<div class='pditem'></div>");
    var quantityArea2 = $("<div class='pditem'></div>");
    var quantityArea3 = $("<div class='pditem'></div>");

    var quantityAreaTemp1 = $(".product-option-wrap:first .select-product-add-list .temp-item").children().clone(true);
    var quantityAreaTemp2 = $(".right-option-area .select-product-add-list .temp-item").children().clone(true);
    var quantityAreaTemp3 = $(".option-deal-wrap .select-product-add-list .temp-item").children().clone(true);
    $(quantityArea1).append(quantityAreaTemp1);
    $(quantityArea2).append(quantityAreaTemp2);
    $(quantityArea3).append(quantityAreaTemp3);
    
    $(quantityArea1).find(".pdoption .option em").text(cmpsItemNm);
    $(quantityArea2).find(".pdoption .option em").text(cmpsItemNm);
    $(quantityArea3).find(".pdoption .option em").text(cmpsItemNm);

    $(quantityArea1).find(".pdprice em").text(gfn_appendComma(cmpsItemSellPrc));  // 가격 들어가는 자리
    $(quantityArea2).find(".pdprice em").text(gfn_appendComma(cmpsItemSellPrc));  // 가격 들어가는 자리
    $(quantityArea3).find(".pdprice em").text(gfn_appendComma(cmpsItemSellPrc));  // 가격 들어가는 자리

//     $(quantityArea1).find(".thumb").append('<img src="'+imgSrc+'" alt="'+selNm+'"/>'); // 이미지
//     $(quantityArea2).find(".thumb").append('<img src="'+imgSrc+'" alt="'+selNm+'"/>'); // 이미지
//     $(quantityArea3).find(".thumb").append('<img src="'+imgSrc+'" alt="'+selNm+'"/>'); // 이미지
//     $(quantityArea1).find(".pdname").text(setNm); // 상품명
//     $(quantityArea2).find(".pdname").text(setNm); // 상품명
//     $(quantityArea3).find(".pdname").text(setNm); // 상품명
    
    var input_p = "<input type='hidden' name='cmpsItemSeq' value='"+ cmpsItemSeq +"' />";
    input_p += "<input type='hidden' name='addCmpsSellPrc' value='"+ cmpsItemSellPrc +"' />";
    input_p += "<input type='hidden' name='cmpsGbcd' value='"+ cmpsGbcd +"' />";
    input_p += "<input type='hidden' name='cmpsSeq' value='"+ cmpsSeq +"' />";
    input_p += "<input type='hidden' name='plAddBuyNdmtYn' value='"+ plAddBuyNdmtYn +"' />";
    $(quantityArea1).append(input_p);
    $(quantityArea2).append(input_p);
    $(quantityArea3).append(input_p);

    $(".product-option-wrap:first .select-product-add-list").append($(quantityArea1));
    $(".right-option-area .select-product-add-list").append($(quantityArea2));
    $(".option-deal-wrap .select-product-add-list").append($(quantityArea3));

    $(".product-option-wrap:first .select-product-add-list").show();
    $(".right-option-area .select-product-add-list").show();
    $(".option-deal-wrap .select-product-add-list").show();
    
    if($(".handiness .left_side .selResultInfo.one").length > 0) {
        $(".handiness .left_side .selResultInfo.addCmpsItem").append($(".handiness .left_side .selResultInfo.one .one.copyBasket"));
        $(".handiness .left_side .selResultInfo.one").remove();
    }
    $(".handiness .left_side .selResultInfo.addCmpsItem").append($(quantityArea2));
    $(".handiness .left_side .selResultInfo.addCmpsItem").show();
    
    calcSellPrc();
}
// 일반 상품 옵션 선택 끝

// 딜 상품 옵션 선택
/*
 * 딜 상품 선택
 */
$(document).on('click', '.pdtSelectCont ul li', function(e) {
    if($(this).hasClass("bx-clone")) return;
    $(".pdtSelectCont ul li").removeClass("on");
    $(this).addClass("on");
    setBizSpring("itemSelPdt");
    
    if (dealYn == "Y") { //딜 상품에 적용 
    setDealUitm(this, 0);
    } 
    
});

/*
 * 딜상품 옵션 선택시 처리 
 */
function setDealUitm(obj, uitmAttrTypeIndex) {
//     if($(obj).closest(".left_group").length > 0) {
//         var selindex = Number($(obj).find("input[name=dealProdGroupSortOrdg]").val());
//         detailItemPreview(selindex);
//         return;
//     }
    
    if(uitmAttrTypeIndex == 0) {
        $("input[name=sellPrc]").val($(obj).find("input[name=good_prc]").val());
        $("input[name=selectedOptSlitmCd]").val($(obj).find("input[name=optSlitmCd]").val());
        $("input[name=selectedOptQty]").val($(obj).find("input[name=optQty]").val());
        $("input[name=selectedUitmCombYn]").val($(obj).find("input[name=uitmCombYn]").val());
        $("input[name=selectedUitmChocPossYn]").val($(obj).find("input[name=uitmChocPossYn]").val());
        $("input[name=selectedDluMaxBuyQty]").val($(obj).find("input[name=dluMaxBuyQty]").val());
        $("input[name=selectedordMakeYn]").val($(obj).find("input[name=ordMakeYn]").val());
        $("input[name=selectedpackOpenRtpNdmtYn]").val($(obj).find("input[name=packOpenRtpNdmtYn]").val());
        $("input[name=selectedStckGdYn]").val($(obj).find("input[name=stckGdYn]").val());
        $("input[name=selectedhmallRsvSellYn]").val($(obj).find("input[name=hmallRsvSellYn]").val());
        $("input[name=selectedHpntPrtyStlmYn]").val($(obj).find("input[name=hpntPrtyStlmYn]").val());
        gStockDispYn = $(obj).find("input[name=stckGdYn]").val();
        gCombYn = $(obj).find("input[name=uitmCombYn]").val();
        
        //새벽배송/신선식품 
        $("input[name=selecteddawnDlvYn]").val($(obj).find("input[name=dawnDlvYn]").val());
        $("input[name=selectedfreshFoodYn]").val($(obj).find("input[name=freshFoodYn]").val());

        if($(obj).find("input[name=mblOnlyItemYn]").val() == 'Y') {
            alert("모바일 전용 상품입니다.");
            return;
        }
        
        var dealSlitmCd = '2135294542';
        var soldoutYn = 'false';
        soldoutYn = (soldoutYn == "true") ? true : false;
        var selectedOptSlitmCd = $("input[name=selectedOptSlitmCd]").val();
        var itemType = "GENERAL";
        if(soldoutYn && dealSlitmCd == selectedOptSlitmCd) {
            alert('품절된 상품입니다.');
            return;
        }
        
        if(itemType == "RENTAL" || itemType == "RENTAL_PHONE") {
            if($(".product-option-wrap .select-product-list .pditem").length >= 1) {
                alert('렌탈상품 상담신청은 한가지 상품만 가능합니다.');
                return;
            }
        }
    }
    
    var select_optQty = $("input[name=selectedOptQty]").val();
    var selSlitmNm = $(obj).find("input[name=selectptSlitmNm]").val();
    var slitmCd = $("input[name=selectedOptSlitmCd]").val();
    var limitCnt = $("input[name=dluMaxBuyQty]").val();
    var uitmCd = $(obj).attr("uitmCd");
    var uitmCombYn = $("input[name=selectedUitmCombYn]").val(); // 선택된 상품의 조합속성 여부
    var uitmChocPossYn = $("input[name=selectedUitmChocPossYn]").val(); // 속성없음여부(N이면 없음)
    var uitmAttrTypeSeq = uitmAttrTypeIndex + 1;
    var stckGdYn = $("input[name=selectedStckGdYn]").val();
    var selectptSortOrdg = $(obj).find("input[name=selectptSortOrdg]").val();
    var sel_index = $(obj).attr("data");
    /*
    if($(obj).closest(".optSelect").length > 0) {
        if(uitmAttrTypeIndex == 0) {
            obj2 = $("#layer_popup .right_group .group_selbox .selbox").eq(uitmAttrTypeIndex);
            obj3 = $(".handiness .left_side .selbox").eq(uitmAttrTypeIndex);
        } else {
            $("#layer_popup .right_group .group_selbox .selbox").eq(uitmAttrTypeIndex).find(".iListCont li").each(function() {
                if(sel_index == $(this).attr("data")) {
                    obj2 = this;
                    return false;
                }
            });
            $(".handiness .left_side .selbox").eq(uitmAttrTypeIndex).find(".iListCont li").each(function() {
                if(sel_index == $(this).attr("data")) {
                    obj3 = this;
                    return false;
                }
            });
        }
    } else if($(obj).closest(".right_group").length > 0) {
        if(uitmAttrTypeIndex == 0) {
            obj2 = $(".optSelect .selbox").eq(uitmAttrTypeIndex);
            obj3 = $(".handiness .left_side .selbox").eq(uitmAttrTypeIndex);
        } else {
            var tmpUitmAttrTypeIndex = uitmAttrTypeIndex;
            if(optItemExpsGbcd == 2) {
                tmpUitmAttrTypeIndex = tmpUitmAttrTypeIndex - 1;
            }
            $(".optSelect .selbox").eq(tmpUitmAttrTypeIndex).find(".iListCont li").each(function() {
                if(sel_index == $(this).attr("data")) {
                    obj2 = this;
                    return false;
                }
            });
            $(".handiness .left_side .selbox").eq(uitmAttrTypeIndex).find(".iListCont li").each(function() {
                if(sel_index == $(this).attr("data")) {
                    obj3 = this;
                    return false;
                }
            });
        }
    } else if($(obj).closest(".left_side").length > 0) {
        if(uitmAttrTypeIndex == 0) {
            obj2 = $(".optSelect .selbox").eq(uitmAttrTypeIndex);
            obj3 = $("#layer_popup .right_group .group_selbox .selbox").eq(uitmAttrTypeIndex);
        } else {
            var tmpUitmAttrTypeIndex = uitmAttrTypeIndex;
            if(optItemExpsGbcd == 2) {
                tmpUitmAttrTypeIndex = tmpUitmAttrTypeIndex - 1;
            }
            $(".optSelect .selbox").eq(tmpUitmAttrTypeIndex).find(".iListCont li").each(function() {
                if(sel_index == $(this).attr("data")) {
                    obj2 = this;
                    return false;
                }
            });
            $("#layer_popup .right_group .group_selbox .selbox").eq(uitmAttrTypeIndex).find(".iListCont li").each(function() {
                if(sel_index == $(this).attr("data")) {
                    obj3 = this;
                    return false;
                }
            });
        }
    }
    */
    var selGroupIndex = $(obj).closest(".ui-dropdown").index();
    var selIndex = $(obj).closest(".item-box-list a").index();
    
    if(!isEmpty(sel_index)) {
        $(".product-option-wrap:first .ui-dropdown:eq("+selGroupIndex+")").find(".dropdown-menu").attr("data-myvalue", sel_index);
        $(".right-option-area .ui-dropdown:eq("+selGroupIndex+")").find(".dropdown-menu").attr("data-myvalue", sel_index);
        $(".option-deal-wrap .ui-dropdown:eq("+selGroupIndex+")").find(".dropdown-menu").attr("data-myvalue", sel_index);
    }
    if(uitmAttrTypeIndex == 0) {
        var optOcty = $(obj).find("input[name=optOcty]").val();
        if($(obj).closest(".ui-dropdown").hasClass("sel-prduct")) {
            if(!isEmpty(optOcty)) selSlitmNm += " / " + optOcty;

            $(".ui-dropdown.sel-prduct .dropdown-menu a").removeClass("on");
            $(".product-option-wrap:first .ui-dropdown.sel-prduct .dropdown-menu a,"+
                ".right-option-area .ui-dropdown.sel-prduct .dropdown-menu a,"+
                ".option-deal-wrap .ui-dropdown.sel-prduct .dropdown-menu a").each(function() {
                var tmp = $(this).find("input[name=selectptSortOrdg]").val();
                if(tmp == selectptSortOrdg) {
                    $(this).addClass("on");
                    var targetObj = $(this).closest(".ui-dropdown");
                    $(targetObj).closest(".ui-dropdown").find(".drop a,a.drop span").text("[선택" + selectptSortOrdg + "]" + selSlitmNm);
                    $(targetObj).find("input[name=selItemId]").remove();
                    $(targetObj).append("<input type='hidden' name='selItemId' value='"+ selectptSortOrdg +"' />");
                }
            });
        }
        $(".ui-dropdown.sel-option").remove();
    } else {
        var uitmNm = $(obj).find(".pdnum p").text();
        $(".product-option-wrap:first .ui-dropdown:eq("+selGroupIndex+")").find(".drop a,a.drop span").text(uitmNm);
        $(".right-option-area .ui-dropdown:eq("+selGroupIndex+")").find(".drop a,a.drop span").text(uitmNm);
        $(".option-deal-wrap .ui-dropdown:eq("+selGroupIndex+")").find(".drop a,a.drop span").text(uitmNm);
    }

    var uitmNmArr = new Array();
    if(uitmCombYn != 'Y') {
        if(uitmAttrTypeIndex == 0) {
            $.ajax({
                type: "post"
                , url: "/p/pda/selectBsicUitmMst.do?"
                , dataType: "json"
                , data : {slitmCd : slitmCd}
                ,success : function(data) {
                    if(data.uitmList) {
                        if( uitmChocPossYn =='N' || (data.uitmList.length == 1 && ( data.uitmList[0].uitmTotNm == null || data.uitmList[0].uitmTotNm == '없음' || data.uitmList[0].uitmTotNm == '' ))) {
                            if(optionDetailViewClk) {
                                optionDetailViewClk = false;
                                return;
                            }
                            
                        	$(".product-option-wrap:first .sel-option .drop a").each(function() {
                                uitmNmArr.push($(this).text());
                            });
                          
                            // 동일 속성 선택 존재여부 체크 후 존재하는 경우 리턴
                            var flag = true;
                            $(".stock-item.select-product-list .pditem").each(function() {
                                if(flag) {
                                    var exstUitmCd = $(this).find("input[name=uitmCd]").val();
                                    var exstslitmCd = $(this).find("input[name=slitmCd]").val();
                                    if(exstUitmCd == data.uitmList[0].uitmCd && slitmCd == exstslitmCd) {
                                        if(!dealDetailPrevFlag) {
                                        	alert("동일상품이 선택되었습니다.\n아래에서 선택사항을 확인해주세요.");
                                        }
                                        dealDetailPrevFlag = false;
                                        flag = false;
                                        return false;
                                    }
                                }
                            });
                            
                            if(!flag) {
                                return;
                            }
                            dealAddUitmHtml(data.uitmList[0].uitmCd, "", uitmNmArr, $("input[name=selectedDluMaxBuyQty]").val(), $("input[name=sellPrc]").val(), slitmCd,$("input[name=selectedordMakeYn]").val(),$("input[name=selectedpackOpenRtpNdmtYn]").val(),$("input[name=selectedHpntPrtyStlmYn]").val(),$("input[name=selectedhmallRsvSellYn]").val(),$("input[name=selecteddawnDlvYn]").val(),$("input[name=selectedfreshFoodYn]").val());
                            calcSellPrc();
                        } else if(data.uitmList.length > 0 && uitmChocPossYn =='Y') {
                            var objHtml = '<div class="ui-dropdown sel-option">'+
                            '<div class="drop" href="#" data-modules-dropdown="" aria-expanded="false">'+
                            '  <a href="javascript:;">옵션을 선택하세요.</a>'+
                            '</div>'+
                            '<div class="dropdown-menu" role="menu">'+
                            '  <div class="item-box-list"></div>'+
                            '</div>';
                            $(".product-option-wrap:first .ui-dropdown-group").append(objHtml);
                            $(".right-option-area .option-scroll .ui-dropdown-group").append(objHtml);
                            $(".option-deal-wrap .option-scroll .ui-dropdown-group").append(objHtml);
                           
                            var stockCnt ='';
                            for(var i in data.uitmList) {
                                if(stckGdYn == 'Y') {
                                    stockCnt = "<span class='restock-num'>남은수량 <em>" + data.uitmList[i].stockCount + "</em>";
                                } else {
                                    stockCnt = '';
                                }
                                var uitmCd = data.uitmList[i].uitmCd;
                                var uitmTotNm = data.uitmList[i].uitmTotNm;
                                var tmp = '<a href="javascript:;" data="' + i + '" uitmCd="' + data.uitmList[i].uitmCd + '">'+                                         
                                          '  <div class="figcaption">'+
                                          '    <div class="pdnum">'+
                                          '    <p class="num" aria-label="상품사이즈">'+data.uitmList[i].uitmTotNm+'</p>'+
                                          stockCnt +
                                          '    </div>'+
                                          '  </div>'+
                                          '</a>';
                               
                                $(".product-option-wrap:first .sel-option .item-box-list").append(tmp);
                                $(".right-option-area .option-scroll .sel-option .item-box-list").append(tmp);
                                $(".option-deal-wrap .option-scroll .sel-option .item-box-list").append(tmp);
                            }
                            extraInfo(slitmCd);
                            if(gStockDispYn == "Y") {
                                selectItemStockCount(1, slitmCd, uitmAttrTypeIndex);
                            }
                        }
                    }
                }
                , error: function(data) {
                }
            });
        } else {
        	$(".product-option-wrap:first .sel-option .drop a").each(function() {
                uitmNmArr.push($(this).text());
            });
        
            var flag = true;
            // 2018.08.17 김동민 수량체크 수정 
            var paramObj = $(".stock-item.select-product-list .pditem");            
            var totalCnt = fn_calTotalQty(0, slitmCd, paramObj);

            $(".stock-item.select-product-list .pditem").each(function() {
                if(flag) {
                    if(totalCnt >= limitCnt) {
                        alert("본상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
                        flag = false;
                    }
                    
                    var exstUitmCd = $(this).find("input[name=uitmCd]").val();
                    var exstslitmCd = $(this).find("input[name=slitmCd]").val();
                    if(exstUitmCd == uitmCd && slitmCd == exstslitmCd) {
                    	if(!dealDetailPrevFlag) {
                    	    alert("동일상품이 선택되었습니다.\n아래에서 선택사항을 확인해주세요.");
                    	}
                    	dealDetailPrevFlag = false;
                        flag = false;
                        return false;
                    }
                }
            });
            
            if(!flag) {
                return;
            }

            dealAddUitmHtml(uitmCd, "", uitmNmArr, $("input[name=selectedDluMaxBuyQty]").val(), $("input[name=sellPrc]").val(), slitmCd,$("input[name=selectedordMakeYn]").val(),$("input[name=selectedpackOpenRtpNdmtYn]").val(),$("input[name=selectedHpntPrtyStlmYn]").val(),$("input[name=selectedhmallRsvSellYn]").val(),$("input[name=selecteddawnDlvYn]").val(),$("input[name=selectedfreshFoodYn]").val());
            calcSellPrc();
        }
    } else {
        if(optionDetailViewClk && select_optQty == 1) {
            optionDetailViewClk = false;
            return;
        }
        optionDetailViewClk = false;
        
    	if(uitmAttrTypeIndex == select_optQty || select_optQty == 0) {
            var uitmSeqArr = new Array();
            
            $(".product-option-wrap:first .sel-option .dropdown-menu").each(function() {
                if(!isEmpty($(this).attr("data-myvalue"))) {
                    uitmSeqArr.push($(this).attr("data-myvalue"));
                    uitmNmArr.push($(this).prev().find("a").text());
                }
            });
        
            // 동일 속성 선택 존재여부 체크 후 존재하는 경우 리턴
            var flag = true;
            
             // 2018.08.17 김동민 수량체크 수정 
            var paramObj = $(".stock-item.select-product-list .pditem");            
            
            var totalCnt = fn_calTotalQty(0, slitmCd,paramObj);
            $(".stock-item.select-product-list .pditem").each(function() {
                if(flag) {
                    if(totalCnt >= limitCnt) {
                        alert("본상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
                        flag = false;
                    }
                    
                    var exstUitmCd = $(this).find("input[name=uitmCd]").val();
                    var exstslitmCd = $(this).find("input[name=slitmCd]").val();
                    if(exstUitmCd == uitmCd && slitmCd == exstslitmCd) {
                        alert("동일상품이 선택되었습니다.\n아래에서 선택사항을 확인해주세요.");
                        flag = false;
                        return false;
                    }
                }
            });
            
            if(!flag) {
                return;
            }
            
            dealAddUitmHtml($(obj).attr("uitmCd"),uitmSeqArr, uitmNmArr, $("input[name=selectedDluMaxBuyQty]").val(), $("input[name=sellPrc]").val(), slitmCd, $("input[name=selectedordMakeYn]").val(),$("input[name=selectedpackOpenRtpNdmtYn]").val(),$("input[name=selectedHpntPrtyStlmYn]").val(), $("input[name=selectedhmallRsvSellYn]").val(),$("input[name=selecteddawnDlvYn]").val(),$("input[name=selectedfreshFoodYn]").val());
            calcSellPrc();
            return;
        } else {
            if(uitmAttrTypeIndex != 0) {
                $(".product-option-wrap:first .ui-dropdown-group .ui-dropdown").each(function() {
                    var tmpIndex = $(this).index();
                    if(optItemExpsGbcd == 2) {
                        tmpIndex = tmpIndex - 1;
                    }
                    if(tmpIndex > uitmAttrTypeIndex) {
                        $(this).remove();
                        $(".right-option-area .ui-dropdown-group .ui-dropdown:eq("+tmpIndex+")").remove();
                        $(".option-deal-wrap .ui-dropdown-group .ui-dropdown:eq("+tmpIndex+")").remove();
                    }
                });
            }
            
            var objHtml = "";
            if(uitmAttrTypeIndex == 0) {
                //objHtml = '<div class="selbox optSelBox"><div class="myValue" ><a class="defaultVal" href="javascript:;"><span class="title" style="width: 130px;">옵션을 선택하세요.</span></a></div><div class="iList"><div class="extraInfo"><a href="javascript:;" class="selExtraInfo" onClick="extraInfo(' + slitmCd + ')">속성별 선호도</a><div class="tooltip favorite" style="display:none"><strong>고객님들의 속성별 선호도</strong><ul class="properts"></ul></div></div><div class="iListCont"><ul></ul></div></div></div>';
                objHtml = '<div class="ui-dropdown sel-option">'+
                '<div class="drop" href="#" data-modules-dropdown="" aria-expanded="false">'+
                '  <a href="javascript:;">옵션을 선택하세요.</a>'+
                '</div>'+
                '<div class="dropdown-menu" role="menu">'+
                '  <div class="item-box-list"></div>'+
                '  <div class="bottom-fixed">' +
                '    <div class="bottom-wrap"><button class="btn btn-linelgray sm" data-modules-modal="target:#modalCusMethPre;" onClick="extraInfo(' + slitmCd + ')"><span>속성별 선호도<i class="icon btn-arrow"></i></span></button></div>'+
                '  </div>'+
                '</div>';
            } else {
                //objHtml = '<div class="selbox optSelBox"><div class="myValue" ><a class="defaultVal" href="javascript:;"><span class="title" style="width: 130px;">옵션을 선택하세요.</span></a></div><div class="iList"><div class="iListCont"><ul></ul></div></div></div>';   
                objHtml = '<div class="ui-dropdown sel-option">'+
                '<div class="drop" href="#" data-modules-dropdown="" aria-expanded="false">'+
                '  <a href="javascript:;">옵션을 선택하세요.</a>'+
                '</div>'+
                '<div class="dropdown-menu" role="menu">'+
                '  <div class="item-box-list"></div>'+
                '</div>';

            }

            $('.product-option-wrap:first .ui-dropdown-group').append(objHtml);
            $('.right-option-area .ui-dropdown-group').append(objHtml);
            $('.option-deal-wrap .ui-dropdown-group').append(objHtml);
            /*
            $('.optSelect').append($(".selResultInfo.generalItem"));
            $('#layer_popup .right_group .group_selbox').append(objHtml);
            $('#layer_popup .right_group').append($("#layer_popup .right_group .bottom_action"));
            $('.handiness .left_side').append(objHtml);
            $('.handiness .left_side').append($(".selResultInfo.esOptArea"));
            
            // 2018.08.16 김동민 위치 변경
            $('.handiness .selResultInfo').before($('.handiness .left_side .bottom_action'));
            
            //$('#layer_popup .right_group .group_selbox .extraInfo').remove();
            $('.handiness .left_side .bottom-fixed.extraInfo').remove();
            */
            if(uitmAttrTypeIndex == 0) {
                extraInfo(slitmCd);
            }
        }
        
        var uitmSeqArrParam = new Array();
        if(uitmAttrTypeIndex != 0) {
            $(".product-option-wrap:first .ui-dropdown-group .ui-dropdown.sel-option .dropdown-menu").each(function() {
                if(!isEmpty($(this).attr("data-myvalue"))) {
                    uitmSeqArrParam.push($(this).attr("data-myvalue"));
                }
            });
        }
        
        $.ajax({
            type: "post"
            , url: "/p/pda/selectOptUitmAttr.do?uitmSeqArr=" + uitmSeqArrParam.join("&uitmSeqArr=")
            , dataType: "json"
            , data : {slitmCd : slitmCd, uitmAttrTypeSeq : uitmAttrTypeSeq, uitmSeqArrLength : select_optQty}
            ,success : function(data) {
                if(data.uitmList) {
                    for(var i in data.uitmList) {
                        // var tmp = "<li class='item size' data='"++"' uitmCd='" + data.uitmList[i].uitmCd + "'><a href='javascript:;'><span class='title'>" + data.uitmList[i].uitmAttrNm + "</span></a></li>";
                        var tmp = '<a href="javascript:;" data="' + data.uitmList[i].uitmSeq + '" uitmCd="' + data.uitmList[i].uitmCd + '">'+                                         
                        '  <div class="figcaption">'+
                        '    <div class="pdnum">'+
                        '    <p class="num" aria-label="옵션명">'+data.uitmList[i].uitmAttrNm+'</p>'+
                        '    </div>'+
                        '  </div>'+
                        '</a>';
                        $('.product-option-wrap:first .ui-dropdown-group .ui-dropdown:last .item-box-list').append(tmp);
                        $('.right-option-area .ui-dropdown-group .ui-dropdown:last .item-box-list').append(tmp);
                        $('.option-deal-wrap .ui-dropdown-group .ui-dropdown:last .item-box-list').append(tmp);
//                         $('.optSelect .selbox:last .iList .iListCont ul').append(tmp);
//                         $('#layer_popup .right_group .group_selbox .selbox:last .iList .iListCont ul').append(tmp);
//                         $('.handiness .left_side .selbox:last .iList .iListCont ul').append(tmp);
                    }
                    
                    // $('.handiness .left_side .selbox:last .iList .iListCont ul li').addClass("basic");
                    if(uitmAttrTypeIndex == 0) {
                        extraInfo(slitmCd);
                    }
                    if(gStockDispYn == "Y") {
                        selectItemStockCount(uitmAttrTypeSeq, slitmCd, uitmAttrTypeIndex);
                    }
                    
                    //버튼형 옵션상품의 하단 링크를 통해서 대표상품 상세 이동한 경우 처리 (2018.05)
                    
                }
            }
            , error: function(data) {
            }
        });
    }
}

/*
 * 딜 상품 상품영역 생성
 */
function dealAddUitmHtml(uitmCd, uitmSeqArr, uitmNmArr, dluMaxBuyQty, sellPrc, slitmCd, ordMakeYn, packOpenRtpNdmtYn, hpntPrtyStlmYn, hmallRsvSellYn, dawnDlvYn, freshFoodYn) {
    var uitmCombYn = $("input[name=selectedUitmCombYn]").val();
    var uitmChocPossYn = $("input[name=selectedUitmChocPossYn]").val();
    var selItemId = Number($(".product-option-wrap:first .ui-dropdown-group .ui-dropdown:first").find("input[name=selItemId]").val());
    var selObj = null;
    $(".product-option-wrap:first .ui-dropdown-group .ui-dropdown:first .item-box-list a").each(function(){
        var tmpIndex = Number($(this).find("input[name=selectptSortOrdg]").val());
        if(tmpIndex == selItemId) {
            selObj = $(this);
            return false;
        }
    });
    if($(".product-option-wrap").length > 0) selObj = $(".product-option-wrap .sel-prduct .dropdown-menu a.on");
    var selSortOrdg = $(selObj).find("input[name=selectptSortOrdg]").val();
    var selNm = $(selObj).find("input[name=selectptSlitmNm]").val();
    var setNm = "[선택" + selSortOrdg + "] " + selNm;
    var imgSrc = $(selObj).find("div img").attr("src");
    var optOcty = $(selObj).find("input[name=optOcty]").val();
    if(!isEmpty(optOcty)) selNm += optOcty;
    
    var quantityArea1 = $("<div class='pditem'></div>");
    var quantityArea2 = $("<div class='pditem'></div>");
    var quantityArea3 = $("<div class='pditem'></div>");

    var quantityAreaTemp1 = $(".product-option-wrap:first .select-product-list .temp-item").children().clone(true);
    var quantityAreaTemp2 = $(".right-option-area .select-product-list .temp-item").children().clone(true);
    var quantityAreaTemp3 = $(".option-deal-wrap .select-product-list .temp-item").children().clone(true);
    $(quantityArea1).append(quantityAreaTemp1);
    $(quantityArea2).append(quantityAreaTemp2);
    $(quantityArea3).append(quantityAreaTemp3);
    
    var q = uitmNmArr.join(" / ");
    // $(quantityArea1,quantityArea2,quantityArea3).find(".pdoption .color em").text(q.split('/',2)); // 옵션명 들어가는 자리
    // 옵션명 들어가는 자리
    
    if(uitmNmArr.length > 0 && uitmNmArr != "99") {
        $(quantityArea1).find(".pdoption .option em").text(uitmNmArr.join(" / "));
        $(quantityArea2).find(".pdoption .option em").text(uitmNmArr.join(" / "));
        $(quantityArea3).find(".pdoption .option em").text(uitmNmArr.join(" / "));
    } else {
        $(quantityArea1).find(".pdoption .option em").text("없음");
        $(quantityArea2).find(".pdoption .option em").text("없음");
        $(quantityArea3).find(".pdoption .option em").text("없음");
    }
    if(isEmpty($.trim($(quantityArea1).find(".pdoption .color em").text()))) {
	    $(quantityArea1).find(".pdoption .color").remove();
	    $(quantityArea2).find(".pdoption .color").remove();
	    $(quantityArea3).find(".pdoption .color").remove();
    }

    $(quantityArea1).find(".pdprice em").text(gfn_appendComma($("input[name='sellPrc']").val()));  // 가격 들어가는 자리
    $(quantityArea2).find(".pdprice em").text(gfn_appendComma($("input[name='sellPrc']").val()));  // 가격 들어가는 자리
    $(quantityArea3).find(".pdprice em").text(gfn_appendComma($("input[name='sellPrc']").val()));  // 가격 들어가는 자리

//  $(quantityArea).find(".objt_image > img").attr("src", imgSrc);
//  $(quantityArea).find(".objt_image > img").attr("alt", selNm);
    $(quantityArea1).find(".thumb").append('<img src="'+imgSrc+'" alt="'+selNm+'"/>'); // 이미지
    $(quantityArea2).find(".thumb").append('<img src="'+imgSrc+'" alt="'+selNm+'"/>'); // 이미지
    $(quantityArea3).find(".thumb").append('<img src="'+imgSrc+'" alt="'+selNm+'"/>'); // 이미지
    $(quantityArea1).find(".pdname").text(setNm); // 상품명
    $(quantityArea2).find(".pdname").text(setNm); // 상품명
    $(quantityArea3).find(".pdname").text(setNm); // 상품명
    
    var input_p = "<input type='hidden' name='uitmCd' value='"+ uitmCd +"' />";
    input_p += "<input type='hidden' name='slitmCd' value='"+ slitmCd +"' />";
    input_p += "<input type='hidden' name='slitmNm' value='"+ selNm +"' />";
    input_p += "<input type='hidden' name='uitmSellPrc' value='"+ sellPrc +"' />";
    input_p += "<input type='hidden' name='dluMaxBuyQty' value='"+ dluMaxBuyQty +"' />";
    input_p += "<input type='hidden' name='ordMakeYn' value='"+ ordMakeYn +"' />";
    input_p += "<input type='hidden' name='packOpenRtpNdmtYn' value='"+ packOpenRtpNdmtYn +"' />";
    input_p += "<input type='hidden' name='hpntPrtyStlmYn' value='"+ hpntPrtyStlmYn +"' />";
    input_p += "<input type='hidden' name='hmallRsvSellYn' value='"+ hmallRsvSellYn +"' />";
    input_p += "<input type='hidden' name='dawnDlvYn' value='"+ dawnDlvYn +"' />";
    input_p += "<input type='hidden' name='freshFoodYn' value='"+ freshFoodYn +"' />";
    input_p += "<input type='hidden' name='pupItemImg' value='"+ imgSrc +"' />";       //새벽배송 팝업을 위한 이미지 20180709 특화배송조유진
    $(quantityArea1).append(input_p);
    $(quantityArea2).append(input_p);
    $(quantityArea3).append(input_p);
    
    var quantityAreaTemp1 = $(".product-option-wrap:first .select-product-list .temp-item").children().clone(true);
    var quantityAreaTemp2 = $(".right-option-area .select-product-list .temp-item").children().clone(true);
    var quantityAreaTemp3 = $(".option-deal-wrap .select-product-list .temp-item").children().clone(true);

    $(".product-option-wrap:first .select-product-list").append($(quantityArea1));
    $(".right-option-area .select-product-list").append($(quantityArea2));
    $(".option-deal-wrap .select-product-list").append($(quantityArea3));

    $(".product-option-wrap:first .select-product-list").show();
    $(".right-option-area .select-product-list").show();
    $(".option-deal-wrap .select-product-list").show();

/*
    var quantityArea = $(".optSelect .selResultInfo.generalItem .originalElement").clone(true);
    var quantityArea2 = $("#layer_popup .selResultInfo.layerArea .originalElement").clone(true);
    var quantityArea3 = $(".handiness .left_side .selResultInfo.esOptArea .originalElement").clone(true);
    $(quantityArea).removeClass("originalElement");
    $(quantityArea).addClass("copyBasket");
    $(quantityArea2).removeClass("originalElement");
    $(quantityArea2).addClass("copyBasket");
    $(quantityArea3).removeClass("originalElement");
    $(quantityArea3).addClass("copyBasket");
    
    var uitmCombYn = $("input[name=selectedUitmCombYn]").val();
    var uitmChocPossYn = $("input[name=selectedUitmChocPossYn]").val();
    var selItemId = Number($(".selbox:first .myValue.select_prod").find("input[name=selItemId]").val());
    var selObj = null;
    $(".optSelect .selbox:first .iListCont li").each(function(){
        var tmpIndex = Number($(this).find("input[name=selectptSortOrdg]").val());
        if(tmpIndex == selItemId) {
            selObj = $(this);
            return false;
        }
    });
    if($(".pdtSelectCont").length > 0) selObj = $(".pdtSelectCont ul li.on");
    var selSortOrdg = $(selObj).find("input[name=selectptSortOrdg]").val();
    var selNm = $(selObj).find("input[name=selectptSlitmNm]").val();
    var setNm = "[선택" + selSortOrdg + "] " + selNm;
    var imgSrc = $(selObj).find("a img").attr("src");
    var closeObj = setNm + '<button class="btn_close"></button>';
    var closeObj2 = setNm + '<button class="button_close"></button>';
    var optOcty = $(selObj).find("input[name=optOcty]").val();
    if(!isEmpty(optOcty)) selNm += optOcty;
    $(quantityArea).find(".objt_image > img").attr("src", imgSrc);
    $(quantityArea).find(".objt_image > img").attr("alt", selNm);
    $(quantityArea2).find(".objt_image > img").attr("src", imgSrc);
    $(quantityArea2).find(".objt_image > img").attr("alt", selNm);
    $(quantityArea3).find(".objt_image > img").attr("src", imgSrc);
    $(quantityArea3).find(".objt_image > img").attr("alt", selNm);
    $(quantityArea).find(".objt_tit").html(closeObj);
    $(quantityArea2).find(".objt_tit").html(closeObj2);
    $(quantityArea3).find(".objt_tit").html(closeObj);
    
    // 옵션명 들어가는 자리
    if(uitmNmArr.length > 0 && uitmNmArr != "99") {
        $(quantityArea).find(".pdname").text("ㄴ " + uitmNmArr.join(" / "));
        $(quantityArea2).find(".pdname").text("ㄴ " + uitmNmArr.join(" / "));
        $(quantityArea3).find(".pdname").text("ㄴ " + uitmNmArr.join(" / "));
    } else {
        $(quantityArea).find(".pdname").text("ㄴ 없음");
        $(quantityArea2).find(".pdname").text("ㄴ 없음");
        $(quantityArea3).find(".pdname").text("ㄴ 없음");
    }
    $(quantityArea).find(".objt_price span").text(gfn_appendComma($("input[name='sellPrc']").val()));  // 가격 들어가는 자리
    $(quantityArea2).find(".objt_price span").text(gfn_appendComma($("input[name='sellPrc']").val()));
    $(quantityArea3).find(".objt_price span").text(gfn_appendComma($("input[name='sellPrc']").val()));

    var input_1 = "<input type='hidden' name='uitmCd' value='"+ uitmCd +"' />";
    var input_2 = "<input type='hidden' name='slitmCd' value='"+ slitmCd +"' />";
    input_2 += "<input type='hidden' name='slitmNm' value='"+ selNm +"' />";
    input_2 += "<input type='hidden' name='uitmSellPrc' value='"+ sellPrc +"' />";
    input_2 += "<input type='hidden' name='dluMaxBuyQty' value='"+ dluMaxBuyQty +"' />";
    input_2 += "<input type='hidden' name='ordMakeYn' value='"+ ordMakeYn +"' />";
    input_2 += "<input type='hidden' name='packOpenRtpNdmtYn' value='"+ packOpenRtpNdmtYn +"' />";
    input_2 += "<input type='hidden' name='hpntPrtyStlmYn' value='"+ hpntPrtyStlmYn +"' />";
    input_2 += "<input type='hidden' name='hmallRsvSellYn' value='"+ hmallRsvSellYn +"' />";
    input_2 += "<input type='hidden' name='dawnDlvYn' value='"+ dawnDlvYn +"' />";
    input_2 += "<input type='hidden' name='freshFoodYn' value='"+ freshFoodYn +"' />";
    input_2 += "<input type='hidden' name='pupItemImg' value='"+ imgSrc +"' />";       //새벽배송 팝업을 위한 이미지 20180709 특화배송조유진
    $(quantityArea).append($(input_1));
    $(quantityArea).append($(input_2));
    $(quantityArea2).append($(input_1));
    $(quantityArea2).append($(input_2));
    $(quantityArea3).append($(input_1));
    $(quantityArea3).append($(input_2));
    $(quantityArea).show();
    $(quantityArea2).show();
    $(quantityArea3).show();
    
    $(".optSelect .selResultInfo.generalItem").append($(quantityArea));
    $("#layer_popup .selResultInfo.layerArea").append($(quantityArea2));
    $(".handiness .left_side .selResultInfo.esOptArea").append($(quantityArea3));
    $(".optSelect .selResultInfo.generalItem").show();
    $("#layer_popup .selResultInfo.layerArea").show();
    $(".handiness .left_side .selResultInfo.esOptArea").show();
    */
}

function setDealItemSoldOut() {
    $('#soldOutSlitmList li').each(function(index) {
        var orgSort = $(this).attr('sortData');
        var isSoldOut = true;
        var sortordg = "";
        var index = $(this).index();
        
        if(optItemExpsGbcd == 2) {
            $('.optSelect .pdtSelectCont ul li').each(function(index) {
                sortordg =  $(this).find('input[name=selectptSortOrdg]').val();
                /*품절상품 순번 추출 */
                if(Number(orgSort) == Number(sortordg)) {
                    isSoldOut = false;
                    return false;
                }
            });
        } else {
            $('.optSelect .selbox:first .iListCont li').each(function(index) {
                sortordg =  $(this).find('input[name=selectptSortOrdg]').val();
                /*품절상품 순번 추출 */
                if(Number(orgSort) == Number(sortordg)) {
                    isSoldOut = false;
                    return false;
                }
            });
        }
        
        if(isSoldOut) {
            var slitmNm = $(this).attr('slitmnm');
            var sellPrc = $(this).attr('sellPrc');
            var imgNm = $(this).attr('imgNm')
            var innerTag = '';
            var innerTag2 = '';
            var innerTagMst = '';
            
            if(optItemExpsGbcd == 2) {
                innerTagMst += '<li class="optShow soldout">';
                innerTagMst += '<a href="javascript:;">';
                innerTagMst += '<em class="Number">' + Number(orgSort) + '</em>';
                innerTagMst += '<img src="' + imgNm + '" alt="' + slitmNm + '">';
                innerTagMst += '</a>';
                innerTagMst += '<input type="hidden" name="uitmImgNm" value="' + imgNm + '"/>';
                innerTagMst += '<input type="hidden" name="selectptSlitmNm" value="' + slitmNm + '"/>';
                innerTagMst += '<input type="hidden" name="selectptSoldOutYn" value="Y"/>';
                innerTagMst += '</li>';
                
                $(".optSelect .selbox:first .iListCont li:eq(" + index + ")").before(innerTagMst);
                
                try {
                    pdtSelectSlider();
                } catch (e) {}
            } else {
                innerTagMst += '<li class="item soldout">';
                innerTagMst += '<a href="javascript:;">';
                innerTagMst += '<dl>';
                innerTagMst += '<dt class="p_image">';
                innerTagMst += '<img src="' + imgNm + '" alt="' + slitmNm + '">';
                innerTagMst += '</dt>';
                innerTagMst += '<dd class="choose_prod">';
                innerTagMst += '<span class="red_txt">선택' + Number(orgSort) + ')</span>';
                innerTagMst += '</dd>';
                innerTagMst += '<dd class="name_prod">' + slitmNm + '</dd>';
                innerTagMst += '<dd class="price_prod"><span class="bold number">' + sellPrc + '</span>원</dd>';
                innerTagMst += '</dl>';
                innerTagMst += '</a>';
                innerTagMst += '<input type="hidden" name="selectptSoldOutYn" value="Y"/>';
                innerTagMst += '</li>';
                
                $(".optSelect .selbox:first .iListCont li:eq(" + index + ")").before(innerTagMst);
            }
            
            innerTag += '<li class="item soldout">';
            innerTag += '<a href="javascript:;">';
            innerTag += '<dl>';
            innerTag += '<dt class="p_image">';
            innerTag += '<img src="' + imgNm + '" alt="' + slitmNm + '">';
            innerTag += '</dt>';
            innerTag += '<dd class="choose_prod">';
            innerTag += '<span class="red_txt">선택' + Number(orgSort) + ')</span>';
            innerTag += '</dd>';
            innerTag += '<dd class="name_prod">' + slitmNm + '</dd>';
            innerTag += '<dd class="price_prod"><span class="bold number">' + sellPrc + '</span>원</dd>';
            innerTag += '</dl>';
            innerTag += '</a>';
            innerTag += '<input type="hidden" name="selectptSoldOutYn" value="Y"/>';
            innerTag += '</li>';
            
            innerTag2 += '<li class="item objct soldout">';
            innerTag2 += '<a href="javascript:;">';
            innerTag2 += '[선택' + Number(orgSort) + ']' + slitmNm + '';
            innerTag2 += '<span class="title bold">' + sellPrc + '</span>';
            innerTag2 += '<span></span>';
            innerTag2 += '</a>';
            innerTag2 += '<input type="hidden" name="selectptSoldOutYn" value="Y"/>';
            innerTag2 += '</li>';
            
            $("#layer_popup .right_group .group_selbox .selbox:first .iListCont li:eq(" + index + ")").before(innerTag);
            $(".handiness .left_side .selbox:first .iListCont li:eq(" + index + ")").before(innerTag2);
        }
    });
}

/*
 * 재고수량을 조회하여 화면에 추가
 */
function selectItemStockCount(uitmAttrTypeSeq, slitmCd, selectbox_index) {
    var befUitmSeq1 = -1;
    var befUitmSeq2 = -1;
    var befUitmSeq3 = -1;
    var uitmSeq = -1;
    
    if(selectbox_index > 0) {
        var kdx = 0;
        var tmpSelIndex = selectbox_index;
        if(dealYn == "Y") {
            tmpSelIndex = tmpSelIndex + 1
        } else {
            tmpSelIndex = tmpSelIndex - 1
        }
        $('.product-option-wrap:first .sel-option .dropdown-menu').each(function(i) {
            if(i < tmpSelIndex) {
                var tmpUitmSeq = "";
                if(dealYn == "Y") {
                    tmpUitmSeq = isEmpty($(this).attr("data-myvalue")) ? "" : Number($(this).attr("data-myvalue"));
                } else {
                    tmpUitmSeq = Number($(this).find("input[name=uitmSeq]").val());
                }
                if(!isEmpty(tmpUitmSeq)) {
                    if(kdx == 0) {
                        befUitmSeq1 = tmpUitmSeq
                    } else if (kdx == 1) {
                        befUitmSeq2 = tmpUitmSeq
                    } else if (kdx == 2) {
                        befUitmSeq3 = tmpUitmSeq
                    }
                    kdx++;
                }
            }
        });
    }
    
    var param = new Object();
    param["slitmCd"] = slitmCd;
    param["uitmAttrTypeSeq"] = uitmAttrTypeSeq;
    param["selectBoxIdx"] = selectbox_index;
    param["uitmCombYn"] = gCombYn;
    
    if (gCombYn == "Y") {
        if(selectbox_index > 0) {
            if(dealYn == "Y") {
                uitmSeq = Number($('.product-option-wrap:first .ui-dropdown .dropdown-menu:eq(' + (selectbox_index) + ')').attr("data-myvalue"));  
            } else {
                uitmSeq = Number($('.product-option-wrap:first .ui-dropdown:eq(' + (selectbox_index - 1) + ') .drop').find("input[name=uitmSeq]").val());
            }
            
            if(isEmpty(uitmSeq)) {
                console.log("selectItemStockCount uitmSeq is empty");
                return;
            }
            param["uitmSeq"] = uitmSeq;
        }
        if(befUitmSeq1 > -1) {
           param["befUitmSeq1"] = befUitmSeq1;
        }
        
        if(befUitmSeq2 > -1) {
           param["befUitmSeq2"] = befUitmSeq2;
        }
        
        if(befUitmSeq3 > -1) {
           param["befUitmSeq3"] = befUitmSeq3;
        }
    }
    
    if(selectbox_index == -1) return;
    
    $.ajax({
        type: "post"
        , url: "/p/pda/selectItemStockCount.do"
        , dataType: "json"
        , data : param
        ,success : function(data) {
            if(data.stockList) {
                if(dealYn == "Y") {
                    selectbox_index++;
                }
                for(var idx in data.stockList) {
                    $('.product-option-wrap:first .ui-dropdown:eq(' + selectbox_index + ') .item-box-list a').each(function() {
                        if($.trim($(this).find(".pdnum").text()) == data.stockList[idx].uitmAttrNm) {
                            var tmpUitmNm = $(this).find(".pdnum").html();
                            if(tmpUitmNm.indexOf("남은수량") == -1) {
                                $(this).find(".pdnum").html(tmpUitmNm + '<span class="restock-num">남은수량 <em>' + data.stockList[idx].sumUitmAttrNmStockCnt + '</em></span>');
                                return false;
                            }
                        }
                    });
                    $('.right-option-area .ui-dropdown:eq(' + selectbox_index + ') .item-box-list a').each(function() {
                        if($.trim($(this).find(".pdnum").text()) == data.stockList[idx].uitmAttrNm) {
                            var tmpUitmNm = $(this).find(".pdnum").html();
                            if(tmpUitmNm.indexOf("남은수량") == -1) {
                                $(this).find(".pdnum").html(tmpUitmNm + '<span class="restock-num">남은수량 <em>' + data.stockList[idx].sumUitmAttrNmStockCnt + '</em></span>');
                                return false;
                            }
                        }
                    });
                    $('.option-deal-wrap .ui-dropdown:eq(' + selectbox_index + ') .item-box-list a').each(function() {
                        if($.trim($(this).find(".pdnum").text()) == data.stockList[idx].uitmAttrNm) {
                            var tmpUitmNm = $(this).find(".pdnum").html();
                            if(tmpUitmNm.indexOf("남은수량") == -1) {
                                $(this).find(".pdnum").html(tmpUitmNm + '<span class="restock-num">남은수량 <em>' + data.stockList[idx].sumUitmAttrNmStockCnt + '</em></span>');
                                return false;
                            }
                        }
                    });
                }
            }
        }
        , error: function() {
            console.log("selectItemStockCount error");
        }
    });
}

/*
 * 속성/추가구성 추가에 따른 가격 계산
 */
function calcSellPrc() {
    
    var totSellPrc = 0;
    var isMultiUitm = false;
    var isMultiCmps = false;
    var targetCssHeader=".product-option-wrap:first"; 
    if(dealYn == "Y") {
        $(targetCssHeader+" .select-product-list .pditem").each(function() {
            var sellPrc = removeComma($(this).find(".pdprice em").text());
            if($.isNumeric(sellPrc)) {
                totSellPrc += Number(sellPrc);
            }
        });
    } else {
        
        
        
            if($(targetCssHeader+" .sel-option .item-box-list a").length > 1) isMultiUitm = true;
            if($(targetCssHeader+" .ui-dropdown-more-group .item-box-list a").length > 0) isMultiCmps = true;
        
        
        
        var itemtype = 'GENERAL';
        var isFreeIns = itemtype == 'FREEINSURANCE' ? true : false;
    	
        if(isMultiUitm) {
            $(targetCssHeader+" .select-product-list .pditem").each(function() {
                var sellPrc = removeComma($(this).find(".pdprice em").text());
                if($.isNumeric(sellPrc)) {
                    totSellPrc += Number(sellPrc);
                }
            });
        }else if(isFreeIns){
        	totSellPrc = 0;
        }else {  // 속성이 존재하지 않는 경우
            var sellPrc = $("input[name='sellPrc']").val();
            var ordQty = $(targetCssHeader+" .select-product-list .pditem input[name='ordQty']").val();
            if($.isNumeric(sellPrc) && $.isNumeric(ordQty)) {
                totSellPrc = Number(sellPrc * ordQty);
            }
        }
        
        // 추가구성품
        if (isMultiCmps) {
            $(targetCssHeader+" .select-product-add-list .pditem").each(function() {
                var sellPrc = removeComma($(this).find(".pdprice em").text());
                if($.isNumeric(sellPrc)) {
                    totSellPrc += Number(sellPrc);
                }
            });
        }
    }

    //$(".sumPrice .sum.total span").text(gfn_appendComma(totSellPrc));
    $(".sum-price .total-price strong").text(gfn_appendComma(totSellPrc));

    $(".total-wrap .total-price ins em").text(gfn_appendComma(totSellPrc));
    
    /* 무조건 총 상품금액 노출되도록 변경 */
    //$(".sumPrice.notLayer").show();
    //$(".sumPrice.notLayer .sumPrcArea").show();
    $(".sum-price").show();
    return totSellPrc;
}
/*
 * 함께 구매하면 좋은 상품 장바구니
 */
function asctAddCart() {
    $("#itemInfForm input[name='uitmInf'], #itemInfForm input[name='uitmCdInf'], #itemInfForm input[name='addCmpsInf'], #itemInfForm input[name='ordQty'], #itemInfForm input[name='uitmCd'], #itemInfForm input[name='baseCmpsInf'], #itemInfForm input[name='dlvHopeDt'], #itemInfForm input[name='asctSlitmUitmInf']").remove();
    
    if(isLogin() != 'true') {
        openLoginPopup(locationHref);
        return;
    }
    
    if((notBaskGim != null && notBaskGim == 'Y')) {
        alert("해당 상품은 장바구니 담기가 불가합니다");
        return;
    }
    
    var asctAddCnt = 0;
    var asctAddSize = $("#section_cont_6 .prod_plus_wrap ul li").length;
    var isSetFirst = false;
    $(".prod_plus_wrap li").each(function(index) {
        $(this).removeClass("isSetFirst");
        if(!$(this).hasClass("object_default") && $(this).find(".checkbox_plus").is(":checked")) {
            var asctUitmCd = $(this).find("input[name=asctUitmCd]").val();
            var asctSlitmCd = $(this).find("input[name=asctSlitmCd]").val();
            if(isEmpty(asctUitmCd)) asctUitmCd = "00001";
            
            if(!isSetFirst) {
                var input = $("<input type='hidden' name='uitmCdInf'/>");
                $(input).val(0 + "^" + asctUitmCd + "|" + 1);
                $("#itemInfForm input[name=slitmCd]").val(asctSlitmCd);
                isSetFirst = true;
                $(this).addClass("isSetFirst");
            } else {
                var input = $("<input type='hidden' name='asctSlitmUitmInf'/>");
                $(input).val(0 + "^" + asctSlitmCd + "|" + asctUitmCd + "|" + 1);
            }
            
            $("#itemInfForm").append(input);
        } else {
            asctAddCnt++;
        }
    });
    
    if(asctAddCnt == asctAddSize) {
        alert("선택 된 상품이 없습니다.");
        return false;
    }
    
    $("form[name='itemInfForm']").ajaxSubmit({
        url: "/p/odb/addBaskt.do"
        , dataType: "json"
        , success: function(data) {
            if (data.needLogin) {
                openLoginPopup("addToBasket");
            } else {
                if(!isEmpty(data.errorMessages)) {
                    alert(data.errorMessages);
                } else {
                    if(data.isAddOk) {
                        $("#basktMessage").text("장바구니에 상품을 담았습니다.");
                        setKoostInf("CART"); // 상품추천 서비스 수집 (장바구니)
                    } else {
                        $("#basktMessage").text("이미 장바구니에 담긴 상품입니다.");
                    }
                    var imSrc = $("#section_cont_6 .prod_plus_wrap ul li.isSetFirst dt label img").attr("src");
                    $(".basktImg img").attr("src", imSrc);

                    setBizSpring("asctAddCart");
                    zindexInit();
                    $('#modalShopBasket').modal().show();
                    <!-- 2019.03.15 Facebook Pixel Code 삽입 -->
                    fbq('track', 'AddToCart', {
                            content_ids: ['2135294542'],
                            content_type: 'product',
                            value: 151240,
                            currency: 'KRW'
                    });
                    
                    <!-- 2019.06.26 Naver Premium Log -->
                    var _nasa={};
                    _nasa["cnv"] = wcs.cnv("3", "151240");
                    wcs_do(_nasa);
                }
            }
        }
        , error: function(xhr, status, error) {

        }
    });
}

/*
 * 장바구니담기
 */
function addCart(obj, asctYn, esOptYn, layerYn) {
    
    //특정대상 전용상품
    if(!exclItemTrgtGbcdChk('cart')){
        return;
    }

    if(dealYn == "Y") {
        var result = checkItem();
        if(!result) {
            return;
        }
        
        if((notBaskGim != null && notBaskGim == 'Y')) {
            alert("해당 상품은 장바구니 담기가 불가합니다");
            return;
        }
        
        var sectId = "2731484";
        
        $('#cartForm').find("input[name='slitmInf']").each(function(index, obj) {
            $(obj).remove();
        });
        
        var slitmCdsData = []
        $(".product-option-wrap .select-product-list .pditem").each(function() {
            var slitmCd = $(this).find("input[name=slitmCd]").val();
            var uitmCd = $(this).find("input[name=uitmCd]").val();
            var uitmQty = $(this).find("input[name=ordQty]").val();
            
            var val = slitmCd +':'+ uitmCd +':'+ sectId+':'+ uitmQty;
            var val_input = '<input type="hidden" name="slitmInf" value="'+ val +'" />';
            
            $('#cartForm').append(val_input);
            
            //ga 데이터 수집을 위한 데이터 추출
            slitmCdsData.push(slitmCd);
        });
        
        
        if(isLogin() != 'true') {
            openLoginPopup("addToBasket");
            return;
        }

        $("form[name='cartForm']").ajaxSubmit({
            url: "/p/odb/addBaskt.do"
            , dataType: "json"
            , success: function(data) {
                if (data.needLogin) {
                    openLoginPopup("addToBasket");
                } else {
                    if(!isEmpty(data.errorMessages)) {
                        alert(data.errorMessages);
                    } else {
                        if(data.isAddOk) {
                            $("#basktMessage").text("장바구니에 상품을 담았습니다.");
                            setKoostInf("CART"); // 상품추천 서비스 수집 (장바구니)
                        } else {
                            $("#basktMessage").text("이미 장바구니에 담긴 상품입니다.");
                        }
                        if(asctYn == "Y") {
                            setBizSpring("asctAddCart");
                        } else if(esOptYn == "Y") {
                            setBizSpring("esOptAddCart");
                        } else if(layerYn == "Y") {
                            setBizSpring("layerAddCart");
                        } else {
                            setBizSpring("addCart");
                        }
                        
                        /* 2019.01.30 스토어픽팝업에서 장바구니 담기후 스토업픽 레이어 팝업 hide 처리 */
                        var stpicCartYn = $("#cartForm input[name=stpicCartYn]").val();
                        if(stpicCartYn == "Y"){ 
                            // guide_close('storepick-popup-content');
                            $("#modalStorePick").modal().hide();
                            $("#cartForm input[name=stpicCartYn]").val("N");
                        }
                        zindexInit();
                        $('#modalShopBasket').modal().show();
                        <!-- 2019.03.15 Facebook Pixel Code 삽입 -->
                        fbq('track', 'AddToCart', {
                                content_ids: ['2135294542'],
                                content_type: 'product',
                                value: 151240,
                                currency: 'KRW'
                        });
                        
                        <!-- 2019.06.26 Naver Premium Log -->
                        var _nasa={};
                        _nasa["cnv"] = wcs.cnv("3", "151240");
                        wcs_do(_nasa);
                        
                        <!-- GA -->
                        try {
                            var product_array = [];
                            
                            for(var i=0 ; i < slitmCdsData.length ; i++){
                                $(".product-option-wrap .sel-prduct .dropdown-menu .item-box-list ul li").each(function(){
                                    if(slitmCdsData[i] == $(this).find("input[name=optSlitmCd]").val()){
                                        product_array.push(
                                            {
                                                'id': $(this).find("input[name='optSlitmCd']").val(),
                                                'name': $(this).find("input[name='selectptSlitmNm']").val(),
                                                'brand': $(this).find("input[name='brndNm']").val(),
                                                'category' : $(this).find("input[name='gaCategory']").val()
                                            }
                                        );
                                        return false;
                                    }
                                });
                            }
                            
                            setGaDataSend_Event(GAEcommerceStepKey.Add,product_array);
                        } catch (e) {
                            console.log("google analytics 실패");
                        }
                    }
                }
            }
            , error: function(xhr, status, error) {

            }
        });
    } else {
        $("#itemInfForm input[name='uitmInf'], #itemInfForm input[name='uitmCdInf'], #itemInfForm input[name='addCmpsInf'], #itemInfForm input[name='ordQty'], #itemInfForm input[name='uitmCd'], #itemInfForm input[name='baseCmpsInf'], #itemInfForm input[name='dlvHopeDt'], #itemInfForm input[name='asctSlitmUitmInf']").remove();

        var result = checkItem();
        if(!result) {
            return;
        }
        
        setSelectItem();
        
        if(isLogin() != 'true') {
            openLoginPopup("addToBasket");
            return;
        }else{
           	var itemGbcd = "00";
           	var itemDScfCd = "S7050904";
           	var tmItemYn = "N";
           	
           	if(itemGbcd == "01" && itemDScfCd == "07020702" && tmItemYn =="Y"){
           		alert("현대렌탈케어 판매인을 통한 비회원 구매만 가능합니다.");
           		return false;
           	}
        }
        
        if((notBaskGim != null && notBaskGim == 'Y')) {
            alert("해당 상품은 장바구니 담기가 불가합니다");
            return;
        }

        $("form[name='itemInfForm']").ajaxSubmit({
            url: "/p/odb/addBaskt.do"
            , dataType: "json"
            , success: function(data) {
                if (data.needLogin) {
                    openLoginPopup("addToBasket");
                } else {
                    if(!isEmpty(data.errorMessages)) {
                        alert(data.errorMessages);
                    } else {
                        if(data.isAddOk) {
                            $("#basktMessage").text("장바구니에 상품을 담았습니다.");
                            setKoostInf("CART"); // 상품추천 서비스 수집 (장바구니)
                        } else {
                            $("#basktMessage").text("이미 장바구니에 담긴 상품입니다.");
                        }
                        if(asctYn == "Y") {
                            setBizSpring("asctAddCart");
                        } else if(esOptYn == "Y") {
                            setBizSpring("esOptAddCart");
                        } else if(layerYn == "Y") {
                            setBizSpring("layerAddCart");
                        } else {
                            setBizSpring("addCart");
                        }
                        
                        /* 2019.01.30 스토어픽팝업에서 장바구니 담기후 스토업픽 레이어 팝업 hide 처리 */
                        var stpicCartYn = $("#itemInfForm input[name=stpicCartYn]").val();
                        if(stpicCartYn == "Y"){  
                            // guide_close('storepick-popup-content');
                            $("#modalStorePick").modal().hide();
                            $("#itemInfForm input[name=stpicCartYn]").val("N");
                        }
                        
                        <!-- GA -->
                        try {
                            var product_array = [];
                            //옵션을 선택한 만큼 데이터 쌓는다.
                            $(".product-option-wrap .select-product-list .pditem").each(function(index) {
                                product_array.push(
                                        {
                                            'id': $("form[name='itemInfForm'] input[name='slitmCd']").val(),
                                            'name': "[나이키] W 에어맥스 97 DH8016-100",
                                            'brand': "나이키코리아",
                                            'category' : $("form[name='itemInfForm'] input[name='gaCategory']").val()
                                        }
                                    );
                            });
                            
                            setGaDataSend_Event(GAEcommerceStepKey.Add,product_array);
                        } catch (e) {
                            console.log("google analytics 실패");
                        }
                        
                        zindexInit();
                        $('#modalShopBasket').modal().show();   
                    }
                }
            }
            , error: function(xhr, status, error) {

            }
        });
    }
}

function storepick() {
	if(checkItem()) {
	    	$("#modalStorePick").modal().show();
	}
}

/*
 * 스토어픽 장바구니 담기
 */
function addStpicCart(obj) {
    var pickUpDt = $("#cartForm input[name=stpicPickUpDt]").val();      
    
    if(dealYn == "Y") {
        pickUpDt = $("#cartForm input[name=stpicPickUpDt]").val();      
    } else {
        pickUpDt = $("#itemInfForm input[name=stpicPickUpDt]").val();   
    }
    
    // 190513 안하영 - 스토어픽 태깅 추가
    try {
        _trk_flashEnvView('_TRK_PI=STRPBSKT');
    } catch(e) {}
    
    if(isEmpty(pickUpDt)) {
        alert("픽업날짜를 선택해주세요.");
        return false;
    }
    
    if(dealYn == "Y") {
        $("#cartForm input[name=stpicCartYn]").val("Y");        
    } else {
        $("#itemInfForm input[name=stpicCartYn]").val("Y");
    }
    
    addCart(obj);
}
/*
 * 상품 유효성체크
 */
function checkItem() {
    var result = true;
    var orderLi = $(".product-option-wrap .select-product-list .pditem");
    
    if(dealYn == "Y") {
        var checkItem = 0;
        $.each(orderLi, function() {
            checkItem++;
            var ordQty = $(this).find('input[name="ordQty"]').val();
            if(isEmpty(ordQty) || Number(ordQty) <= 0) {
                alert("구매수량을 입력해주세요.");
                result = false;
                return false;
            }
        });
        
        if(checkItem == 0) {
            alert("상품을 선택해주세요.");
            result = false;
            return;
        }
    } else {
        var uitmCombYn = $("input[name='uitmCombYn']").val();
        var uitmChocPossYn = $("input[name='uitmChocPossYn']").val();
        var uitmMacYn = $("input[name='uitmMacYn']").val();
        
        if($(orderLi).length == 0) {
            alert("구매상품의 속성을 선택해주세요.");
            return false;
        }
        
        $.each(orderLi, function() {
            var ordQty = $(this).find('input[name="ordQty"]').val();
            if(isEmpty(ordQty) || Number(ordQty) <= 0) {
                alert("구매수량을 입력해주세요.");
                result = false;
                return false;
            }
        });
    }
    return result;
}

/*
 * 선택상품 정보 셋팅
 */
function setSelectItem() {
    var tmpSlitmCd = $("#itemInfForm input[name=slitmCd]").val();
    if(tmpSlitmCd != slitmCd) {
        $("#itemInfForm input[name=slitmCd]").val(slitmCd);
    }
    
    if($(".product-option-wrap:first .select-product-list .pditem").length > 0) {
        $(".product-option-wrap:first .select-product-list .pditem").each(function(index) {
            var ordQty = 0;
            $("#itemInfForm").append(input);
            if($(this).find('input[name=uitmSeq]').length > 0 ) {
                var uitmSeqArr = new Array();
                ordQty = $(this).find("input[name=ordQty]").val();    // 속성 수량
                
                $(this).find("input[name='uitmSeq']").each(function() {
                    uitmSeqArr.push($(this).val());
                });
                
                var input = $("<input type='hidden' name='uitmInf'/>");
                $(input).val(index + "^" + uitmSeqArr.join("|") + "|" + ordQty);
                $("#itemInfForm").append(input);
                
                //새벽배송/신선식품 팝업 20180704 특화배송조유진
                if($("input[name='dawnDlvYn']").val() == "Y" || $("input[name='freshFoodYn']").val() == "Y"){
                    var itemAmt = "";
                    if($(this).hasClass("one")){
                        itemAmt = ($("input[name='sellPrc']").val())*ordQty;
                    }else{
                        itemAmt = ($(this).find(".pdprice .ins .em").text()).replaceall(",","");
                    }
                    var inputPup = $("<input type='hidden' name='uitmInfPup'/>");
                    var itemImg = "2135294542_0.jpg";
                    $(inputPup).val(slitmCd +"!"+ index + "^" + uitmSeqArr.join("|") + "|" + ordQty+"!"+ ordQty + "!" + itemAmt+"!"+itemImg);
                    $("#itemInfForm").append(inputPup);
                }
            } else if($(this).find('input[name=uitmCd]').length > 0) {
                ordQty = $(this).find("input[name=ordQty]").val();    // 속성 수량
                var uitmCd = $(this).find("input[name=uitmCd]").val();
                
                var input = $("<input type='hidden' name='uitmCdInf'/>");
                $(input).val(index + "^" + uitmCd + "|" + ordQty);

                $("#itemInfForm").append(input);
                
                //새벽배송/신선식품 팝업 20180704 특화배송조유진
                if($("input[name='dawnDlvYn']").val() == "Y" || $("input[name='freshFoodYn']").val() == "Y"){
                    var itemAmt = "";
                    if($(this).hasClass("one")){
                        itemAmt = ($("input[name='sellPrc']").val())*ordQty;
                    }else{
                        itemAmt = ($(this).find(".pdprice .ins .em").text()).replaceall(",","");
                    }
                    var inputPup = $("<input type='hidden' name='uitmCdInfPup'/>");
                    var itemImg = "2135294542_0.jpg";
                    $(inputPup).val(slitmCd +"!"+ index + "^" + uitmCd + "|" + ordQty +"!"+ ordQty + "!" + itemAmt+"!"+itemImg);
                    $("#itemInfForm").append(inputPup);
                }
            }
            
            // 추가구성품
            if($(".product-option-wrap:first .select-product-add-list .pditem").length > 0) {
                $(".product-option-wrap:first .select-product-add-list .pditem").each(function() {
                    var ordQty = $(this).find("input[name='ordQty']").val();
                    var cmpsSeq = $(this).find("input[name='cmpsSeq']").val();
                    var cmpsItemSeq = $(this).find("input[name='cmpsItemSeq']").val();
                    var input = $("<input type='hidden' name='addCmpsInf'/>");
                    $(input).val(index + "^" + cmpsSeq + "|" + cmpsItemSeq + "|" + ordQty);
                    $("#itemInfForm").append(input);
                });
            }
        });
    }
    
    var dlvHopeDt = $(".product-option-wrap input[name='dlvHopeDt']").val();
    if(!isEmpty(dlvHopeDt)) {
        $("form[name='itemInfForm']").append('<input type="hidden" name="dlvHopeDt" value="' + dlvHopeDt + '"/>');
    }
}

//선택한 상품 중 스토어픽이 아닌 상품이 포함된 경우 체크
function checkStpicOptItem(){
	
	var slitmCdArr = new Array();
	var checkBoolean = true;
	$(".product-info-wrap .right-info .product-option-wrap .select-product-list .pditem").each(function() {
        var slitmCd = $(this).find("input[name=slitmCd]").val();
        slitmCdArr.push(slitmCd);
    });
    
    if(slitmCdArr[0] == undefined || slitmCdArr.length == 0) { // 스토어픽/택배 라디오버튼 및 상품 삭제 했을 경우 length가 0인경우 발생
    	var slitmCdArr = new Array();
    	slitmCdArr.push("2135294542");
	}
	
	$.ajax({
		type: "post"
		, url: "/p/pda/getIsOkAllStpicBySlitmCd.do"
		, dataType: "json"
		, data :{slitmCdJoin : slitmCdArr.join(",")}
		, async : false
		, success : function(data) {
			if (data.slitmNm != ""){
				alert(data.slitmNm+"은 스토어픽 서비스를 이용할 수 없는 상품입니다.");	
				checkBoolean = false;
			}else{
				checkBoolean = true;
			}
			
		}
		, error: function(data){ //에러
			console.log("stpic Err");
			checkBoolean = true;
		}
	});
	
	return checkBoolean;
}

function stpicBuyDirect(obj) {
    var pickUpDt = $("#cartForm input[name=stpicPickUpDt]").val();      
    
    //if(dealYn == "Y") {
    //  pickUpDt = $("#cartForm input[name=stpicPickUpDt]").val();      
    //}else{
        pickUpDt = $("#itemInfForm input[name=stpicPickUpDt]").val();   
    //}
    
    // 190513 안하영 - 스토어픽 태깅 추가
    try {
        _trk_flashEnvView('_TRK_PI=STRPBUY');
    } catch(e) {}
    
    if(isEmpty(pickUpDt)) {
        alert("픽업날짜를 선택해주세요.");
        return false;
    }
    
    var checkStpicOk = checkStpicOptItem();
    if(!checkStpicOk) return;
    
    //if(dealYn == "Y") {
        //$("#cartForm input[name=stpicOrderYn]").val("Y");     
    //}else{
        $("#itemInfForm input[name=stpicOrderYn]").val("Y");
    //}
    
    buyDirect(obj);
}

function umgiBuyDirect(obj) {
    //190625 전세린 - 엄지펀딩 태깅 추가
    try {
        _trk_flashEnvView('_TRK_PI=UMBUY');
    } catch(e) {}
    
    buyDirect(obj);
}

function boxPackItemChkNew() {
    
    var slitmCdArr = new Array();
    
    $(".product-info-wrap .right-info .product-option-wrap .select-product-list .pditem").each(function() {
        var slitmCd = $(this).find("input[name=slitmCd]").val();
        slitmCdArr.push(slitmCd);
    });
    
    if(slitmCdArr[0] == undefined || slitmCdArr.length == 0) { // 스토어픽/택배 라디오버튼 및 상품 삭제 했을 경우 length가 0인경우 발생
    	var slitmCdArr = new Array();
    	slitmCdArr.push("2135294542");
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
                /* 0 : 선물포장, 쇼핑백 */
                
                $('#modalGiftNoti').modal().show();
            } else if (data.boxPrsnPackGbcdCnt == 1) {
                /* 1 : 선물포장 */
                var addHtml = '';
                addHtml += '<p class="ctypo17 bold" id="gift-popup-p">구매 하시는 상품은 선물포장이<br />가능한 상품입니다.</p>';
                addHtml += '<p class="ctypo14" id="gift-popup-p-two">선물 포장을 신청하시겠습니까?</p>';
                addHtml += '<div id="gift-popup-button" class="btngroup">';
	                addHtml += '<button class="btn btn-linegray" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'0\');setSpbgPrsnPackGbcd(\'0\');buyDirect();"><span>아니오</span></button>';
	                addHtml += '<button class="btn btn-default" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'1\');setSpbgPrsnPackGbcd(\'0\');buyDirect();"><span>예</span></button>';
	            addHtml += '</div>';
	                
                $('#modalGiftNoti .content-body').html(addHtml);
                $('#modalGiftNoti').modal().show();
            } else if (data.boxPrsnPackGbcdCnt == 2) {
                /* 2 : 쇼핑백 */
                var addHtml = '';
                addHtml += '<p class="ctypo17 bold" id="gift-popup-p">구매 하시는 상품은 쇼핑백 신청이<br />가능한 상품입니다.</p>';
                addHtml += '<p class="ctypo14" id="gift-popup-p-two">선물 포장을 신청하시겠습니까?</p>';
                addHtml += '<div id="gift-popup-button" class="btngroup">';
	                addHtml += '<button class="btn btn-linegray" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'0\');setSpbgPrsnPackGbcd(\'0\');buyDirect();"><span>아니오</span></button>';
	                addHtml += '<button class="btn btn-default" href="javascript:;" onclick="setBoxPrsnPackGbcd(\'0\');setSpbgPrsnPackGbcd(\'1\');buyDirect();"><span>예</span></button>';
	            addHtml += '</div>';
	                
                $('#modalGiftNoti .content-body').html(addHtml);
                $('#modalGiftNoti').modal().show();
            } else {
                /* 3: 팝업 없음 */
                buyDirect();
            }
        }
        , error: function(data) {
        	console.log("getBoxPrsnPack Err");
        	boxPackItemChkYn = "Y";
        	buyDirect();
        }
    });
}

function setGiftOrder(giftOrderYn) {
    $("#itemInfForm input[name='giftOrderYn']").val(giftOrderYn);
    $("#orderForm input[name='giftOrderYn']").val(giftOrderYn);
}

function setBoxPrsnPackGbcd(packFlag) {
    $("#itemInfForm input[name='boxPrsnPackGbcd']").val(packFlag);
    $("#orderForm input[name='boxPrsnPackGbcd']").val(packFlag);
    $('#modalGiftNoti').modal().hide();
}

function setSpbgPrsnPackGbcd(packFlag) {
    $("#itemInfForm input[name='spbgPrsnPackGbcd']").val(packFlag);
    $("#orderForm input[name='spbgPrsnPackGbcd']").val(packFlag);
    $('#modalGiftNoti').modal().hide();
}

/*
 * 바로구매
 */
var boxPackItemChkYn = "N";
var oeraItemYn = '8072' == '7004' && '180198' == '289838' ? true : false;

function buyDirect(esOptYn, layerYn, calcPupYn) {
    
	
	if(dealYn == "Y") {
        //상품 유효성 체크
        var result = checkItem();
        if(!result) {
            return;
        }
        
        if(isLogin() != 'true') {
        	
            
        	if(oeraItemYn){
        		var link = "/p/cob/orderLoginPup.do?redirectUrl=buyDirect&oeraItemYn=Y";
                openPopup(link, "loginPup", 425, 570, "yes", $(window).width(), $(window).height());
        	}else{
        		openLoginNonMemberPopup();	
        	}
        	
        	return;
        }

        //특정대상 전용상품
        if(!exclItemTrgtGbcdChk('buy')){
            return;
        }
        
        // 리뉴얼 >> 선물포장/쇼핑백신청 가능상품 체크 
    	var stpicOrderYn = $("#itemInfForm input[name=stpicOrderYn]").val();
    	if(boxPackItemChkYn == "N" && stpicOrderYn != "Y"){
    		boxPackItemChkNew();
    		return;
    	}
        
    	reservedPopup(esOptYn, layerYn, calcPupYn) 
    } else {
        $("#itemInfForm input[name='uitmInf'], #itemInfForm input[name='uitmCdInf'], #itemInfForm input[name='addCmpsInf'], #itemInfForm input[name='ordQty'], #itemInfForm input[name='uitmCd'], #itemInfForm input[name='baseCmpsInf'], #itemInfForm input[name='dlvHopeDt'], #itemInfForm input[name='asctSlitmUitmInf'], #itemInfForm input[name='uitmInfPup'], #itemInfForm input[name='uitmCdInfPup']").remove();
        
        var result = checkItem();
        if(!result) {
            return;
        }

        setSelectItem();
        
        if(isLogin() != 'true') {
            var itemGbcd = "00";
            var intgItemGbcd = "";
            var prchMdaGbcd = "40";
            var venCd = "015318";
            //보험 상품인 경우
            if(itemGbcd == "04" && prchMdaGbcd == "20" && (intgItemGbcd == "02" || intgItemGbcd == "08" || intgItemGbcd == "11" || intgItemGbcd == "12" || intgItemGbcd == "13" || intgItemGbcd == "14" || intgItemGbcd == "15") ){
                var link = "/p/cob/orderLoginPup.do?redirectUrl=buyDirect&insuranceYn=Y";
                openPopup(link, "loginPup", 425, 570, "yes", $(window).width(), $(window).height());
                return;
            }else if(venCd == "020301"){
                var link = "/p/cob/orderLoginPup.do?redirectUrl=buyDirect&dongwon=Y";
                openPopup(link, "loginPup", 425, 570, "yes", $(window).width(), $(window).height());
                return;
            }else if(oeraItemYn){
            	var link = "/p/cob/orderLoginPup.do?redirectUrl=buyDirect&oeraItemYn=Y";
                openPopup(link, "loginPup", 425, 570, "yes", $(window).width(), $(window).height());
                return;
            }else{
                openLoginNonMemberPopup();
                return;
            }
        }else{
        	var itemGbcd = "00";
        	var itemDScfCd = "S7050904";
        	var tmItemYn = "N";
        	
        	if(itemGbcd == "01" && itemDScfCd == "07020702" && tmItemYn =="Y"){
        		alert("현대렌탈케어 판매인을 통한 비회원 구매만 가능합니다.");
        		return false;
        	}
        }
   
        /* 예약구매 상품 체크 */
        var rsvItemCheck = 'N';       
        
        //특정대상 전용상품
        if(!exclItemTrgtGbcdChk('buy')){
            return;
        }

        // 2020.01 H포인트 최소결제금액 1000p->100p
        if(($("input[name='hpntPrtyStlmYn']").val()) == 'Y') {
            alert("H.Point 우선결제 상품입니다. 최소 100P가 필요합니다.");  // 2019.03.28 HPoint마케팅개선 - 적립금을 HPoint로 수정
        }
        
        if(!isEmpty($("input[name='sdlvcVenMinStlmAmt']").val()) && calcSellPrc() < Number($("input[name='sdlvcVenMinStlmAmt']").val())) {
        	if($("input[name='sdlvcVenBsicAmtBuyPossYn']").val() == "N") {
            	var venMinStlmAmt = "";
            	alert(venMinStlmAmt+"원 미만은 구매가 불가한 상품입니다.");
                return;
            }
        }
        
     	// 리뉴얼 >> 선물포장/쇼핑백신청 가능상품 체크 
    	var stpicOrderYn = $("#itemInfForm input[name=stpicOrderYn]").val();
    	if(boxPackItemChkYn == "N" && stpicOrderYn != "Y"){
    		boxPackItemChkNew();
    		return;
    	}

    	var dawnDlvStYn = ($("input[name='dawnDlvYn']").val() == 'Y' || $("input[name='freshFoodYn']").val() == 'Y') ? 'Y':'N';
    	var boxOpenStYn = $("input[name='packOpenRtpNdmtYn']").val();
    	
        if($("input[name='ordMakeYn']").val() == "Y" && $("input[name='ordMakeExcldMCsfYn']").val() == "N") {
            // 주문배송
        	ordMakeItemOrdInfPup(boxOpenStYn, dawnDlvStYn, rsvItemCheck);
        } else if($("input[name='packOpenRtpNdmtYn']").val() == "Y") {
            // 박스포장
            boxPackItemOrdInfPup(dawnDlvStYn, rsvItemCheck);
        } else if(dawnDlvStYn == "Y") {
            // 새벽배송/신선식품 안내팝업 
            dawnDlvfreshfoodItemOrdInfPup(rsvItemCheck);
        } else if(rsvItemCheck == "Y") {
        	reservedPopup(esOptYn, layerYn, calcPupYn)            
        } else {
            buyDirectFormSubmit(esOptYn, layerYn, calcPupYn);
        }
    }
}

/*
 * 예약구매 안내 팝업 
 */
function reservedPopup(esOptYn, layerYn, calcPupYn) {
    /* 예약구매 상품 체크 */
    var slitmNmArr = new Array();
    var slitmCdArr = new Array();
    var rsvItemCheck = "";
    if(dealYn == 'Y') {
	    $(".product-option-wrap .select-product-list .pditem").each(function() {
	        var slitmNm = $(this).find("input[name=slitmNm]").val();
	        var slitmCd= $(this).find("input[name=slitmCd]").val();
	        var select_hmallRsvSellYn = $(this).find("input[name=hmallRsvSellYn]").val();
	       
	        if(select_hmallRsvSellYn == 'Y') {
	            slitmNmArr.push(slitmNm);
	            slitmCdArr.push(slitmCd);
	            rsvItemCheck = "Y";
	        }
	    });
    } else {
    	rsvItemCheck = 'N'; 
    	var slitmCd = '2135294542';
        var slitmNm = '[나이키] W 에어맥스 97 DH8016-100';
        slitmCdArr.push(slitmCd);
        slitmNmArr.push(slitmNm);
    }
    if(rsvItemCheck == 'Y') {
	    $.ajax({
	        url: "/p/pda/selectRsvItemCheck.do?slitmCd="+ slitmCdArr.join("&slitmCd=") +"&slitmNm="+ slitmNmArr.join("&slitmNm=")
	        , type: "get"
	        , dataType: "json"
	        , success: function(data) {
	            if(data.isRsvItem) {
	                if(isEmpty(slitmNmArr) || isEmpty(slitmCdArr)) {
	                    if(dealYn == 'Y') {
	                        buyDirectSubmit(esOptYn, layerYn);
	                    } else {
	                        buyDirectFormSubmit(esOptYn, layerYn, calcPupYn);
	                    }
	                } else {
	                    // 예약 구매 팝업 
	                    $.ajax({
	                        url: "/p/pda/hmallRsvItemNoticePup.do?dealYn=Y&slitmCd="+ slitmCdArr.join("&slitmCd=") +"&slitmNm="+ slitmNmArr.join("&slitmNm=")
	                        , type: "get"
	                        , dataType: "html"
	                        , async: false
	                        , success: function(html) {
	                            var htmlContent = $(html).find("div");
	                            if(htmlContent != null && htmlContent != undefined) {
	                                var reservItem = '<div class="reserv-item"><div class="bgbox"><div class="pditem"><div class="product-info"><div class="thumb"></div><div class="figcaption"><div class="pdname" aria-label="제품명"></div><div class="pdoption" aria-label="옵션/수량"><span class="option">옵션 : <em></em></span><span class="count">수량 : <em></em></span></div></div></div></div></div><ul class="dotlist"><li>판매기간 : <em></em></li><li>배송기간 : <em></em></li><li>고객안내 : <em></em></li></ul></div>';
	                                $("#modalReserPurchase .reserv-itemlist").html("");
	
	                                var existMultiOption = $(".right-info input[name=existMultiOption]").val();
	                                if(dealYn == 'Y') {
	                                    existMultiOption = 1;
	                                }
	
	                                $(".product-option-wrap:first .stock-item.select-product-list .pditem").each(function() {
	                                    var curSlitmCd = "";
	                                    var saleFromTo = "";
	                                    var shipFromTo = "";
	                                    var custText = "";
	                                    if(existMultiOption == 0 || $(".product-option-wrap:first .ui-dropdown.sel-prduct").length == 0) {
	                                        curSlitmCd = $('#itemInfForm').find("input[name=slitmCd]").val();
	                                    } else {
	                                        curSlitmCd = $(this).find("input[name=slitmCd]").val();
	                                    }
	
	                                    $(htmlContent).find(".mb20").each(function() {
	                                        var slitmCd = $.trim($(this).find(".top .first input[name=slitmCd]").val());
	                                        if(curSlitmCd == slitmCd) {
	                                            saleFromTo = $.trim($(this).find("tr:eq(1) td").text());
	                                            shipFromTo = $.trim($(this).find("tr:eq(2) td").text());
	                                            custText = $.trim($(this).find("tr:eq(3) td").text());
	                                            return false;
	                                        }
	                                    });
	                                    var reservItemUi = $(reservItem);
	                                    
	                                    var pdItemInfo = getSelectProductItemInfo($(this));
	                                    
	                                    if(!isEmpty(pdItemInfo.pdtit)) {
	                                        $(reservItemUi).find(".pdname").text(pdItemInfo.pdtit);
	                                    } else if(existMultiOption == 0 || $(".product-option-wrap:first .ui-dropdown.sel-prduct").length == 0) {
	                                        $(reservItemUi).find(".pdname").text($('#itemInfForm').find("input[name=slitmNm]").val());
	                                    }
	                                    if(!isEmpty(pdItemInfo.option)) {
	                                        if(!isEmpty(pdItemInfo.color)) {
	                                            $(reservItemUi).find(".option em").text(pdItemInfo.option + " / " + pdItemInfo.color);
	                                        } else {
	                                            $(reservItemUi).find(".option em").text(pdItemInfo.option);
	                                        }
	                                    }
	                                    if(!isEmpty(pdItemInfo.qty)) {
	                                        $(reservItemUi).find(".count em").text(pdItemInfo.qty);
	                                    }
	                                    if(pdItemInfo.thumb.length > 0) {
	                                        $(reservItemUi).find(".thumb").append(pdItemInfo.thumb);
	                                        $(reservItemUi).find(".thumb").show();
	                                    } else {
	                                        $(reservItemUi).find(".thumb").hide();
	                                    }
	                                    $(reservItemUi).find(".dotlist li:eq(0)").text("판매기간: "+saleFromTo);
	                                    $(reservItemUi).find(".dotlist li:eq(1)").text("배송기간: "+shipFromTo);
	                                    $(reservItemUi).find(".dotlist li:eq(2)").text("고객안내: "+custText);
	                                    $("#modalReserPurchase .reserv-itemlist").append($(reservItemUi).clone());
	                                });
	                                $("#modalReserPurchase").modal().show();
	                            }
	                        }
	                    });
	                }
	            } else {
	                if(dealYn == 'Y') {
	                    buyDirectSubmit(esOptYn, layerYn);
	                } else {
	                    buyDirectFormSubmit(esOptYn, layerYn, calcPupYn);
	                }
	            }
	        }, error: function() {
	            console.log("buyDirect 예약상품 정보 체크 error");
	        }
	    });
    } else {
        if(dealYn == 'Y') {
            buyDirectSubmit(esOptYn, layerYn);
        } else {
            buyDirectFormSubmit(esOptYn, layerYn, calcPupYn);
        }
    }
}
 
/*
 * 딜상품 바로구매 상품정보 set form
 */
function buyDirectSubmit(esOptYn, layerYn) {
    $('#itemInfForm').find("input[name='basktInf']").each(function(index, obj) {
        $(obj).remove();
    });
    
    /*적립금 우선결제 로직*/ 
    var checkedLength =  $(".product-option-wrap .stock-item.select-product-list .pditem").length;
    var hpntPrtyStlmYn = false;
    var hpntPrtyStlmCount = 0;
        
    $(".product-option-wrap .stock-item.select-product-list .pditem").each(function() {
        var hpntPrtyStlmVal = $(this).find("input[name=hpntPrtyStlmYn]").val();
        if(!isEmpty(hpntPrtyStlmVal) && hpntPrtyStlmVal == 'Y') {
            hpntPrtyStlmCount++;
            if(checkedLength == hpntPrtyStlmCount) {
                hpntPrtyStlmYn = true;
            }
        }
    });
    
    if(hpntPrtyStlmYn) {
        // 2020.01 H포인트 최소결제금액 1000p->100p
        alert("H.Point 우선결제 상품입니다. 최소 100P가 필요합니다.");  // 2019.03.28 HPoint마케팅개선 - 적립금을 HPoint로 수정
    } else if(hpntPrtyStlmCount > 0) {
        if(!confirm("H.Point 우선결제 상품이 포함되어 있습니다. 제외하고 구매하시겠습니까?")) {  // 2019.03.28 HPoint마케팅개선 - 적립금을 HPoint로 수정
            return;
        } else {
            $(".product-option-wrap:first .stock-item.select-product-list .pditem").each(function() {
                var hpntPrtyStlmVal = $(this).find("input[name=hpntPrtyStlmYn]").val();
                if(!isEmpty(hpntPrtyStlmVal) && hpntPrtyStlmVal == 'Y') {
                    $(this).remove();
                }
            });
        }
    }
    
    $(".product-option-wrap:first .stock-item.select-product-list .pditem").each(function() {
        var slitmCd = $(this).find("input[name=slitmCd]").val();
        var uitmCd = $(this).find("input[name=uitmCd]").val();
        var uitmQty = $(this).find("input[name=ordQty]").val(); 
        var uitmPrc = $(this).find("input[name=uitmSellPrc]").val();
        var val = slitmCd +'|'+ uitmCd +'|0|'+ uitmQty +'|'+ uitmPrc;
        var val_input = '<input type="hidden" name="basktInf" value="'+ val +'" />';
        $('#itemInfForm').append(val_input);
    });

    var basktInfArr = new Array();
    $('#itemInfForm').find("input[name='basktInf']").each(function(index, obj) {
        basktInfArr.push($(obj).val());
    });
    
    $('#itemInfForm').find("input[name='ordAgreeInf']").each(function(index, obj) {
        $(obj).remove();
    });
    
    
    $('#itemInfForm').find("input[name='uitmCdInfPup']").each(function(index, obj) {
        $(obj).remove();
    });
        
    var dawnDlvYn ="";
    var freshFoodYn="";
    
    // 새벽배송,신선식품 팝업 추가 20180709 특화배송조유진
    $(".product-option-wrap:first .stock-item.select-product-list .pditem").each(function() {
        var slitmNm = $(this).find("input[name=slitmNm]").val();
        var ordMakeYn = $(this).find("input[name=ordMakeYn]").val();
        var packOpenRtpNdmtYn = $(this).find("input[name=packOpenRtpNdmtYn]").val();
        var hmallRsvSellYn = $(this).find("input[name=hmallRsvSellYn]").val();
        var uitmCd = $(this).find("input[name=uitmCd]").val();
        var uitmTotNm = ($(this).find(".pdname").text()).replaceall("ㄴ ","");
        
        dawnDlvYn = $(this).find("input[name=dawnDlvYn]").val();            //20180705 특화배송 조유진
        freshFoodYn = $(this).find("input[name=freshFoodYn]").val();
        
        var val = ordMakeYn +'|'+ packOpenRtpNdmtYn +'|'+dawnDlvYn+'|'+freshFoodYn+'|'+slitmNm + '|'+ uitmTotNm+'|'+uitmCd+ '';

        var val_input = '<input type="hidden" name="ordAgreeInf" value="'+ val +'" />';

        $('#itemInfForm').append(val_input);
        //새벽배송/신선식품 팝업 20180704 특화배송조유진
        if(dawnDlvYn == "Y" || freshFoodYn == "Y"){
            var slitmCd = $(this).find("input[name=slitmCd]").val();
            var itemAmt = "";
            if($(this).hasClass("one")){
                itemAmt = ($("input[name='sellPrc']").val())*ordQty;
            }else{
                itemAmt = ($(this).find(".objt_price .bold").text()).replaceall(",","");
            }
            
            var inputPup = $("<input type='hidden' name='uitmCdInfPup'/>");
            var itemImg = $(this).find("input[name=pupItemImg]").val();
            if(isEmpty(itemImg)){  //이미지가 없을경우 처리
                itemImg = " ";
            }
            var ordQty = $(this).find("input[name=ordQty]").val();    // 속성 수량
            $(inputPup).val(slitmNm +"$"+uitmTotNm+"$"+ ordQty + "$" + itemAmt+"$"+itemImg+"$"+slitmCd+"$itemptc");
            $("#itemInfForm").append(inputPup);
        }
    });
    
    var ordAgreeInfArr = new Array();
    
    $('#itemInfForm').find("input[name='ordAgreeInf']").each(function(index, obj) {  
        var ordAgreeInfTmp = $(obj).val().replace('&','');
        ordAgreeInfArr.push(ordAgreeInfTmp);
    });
    
    //새벽배송 조유진
    var uitmCdInfPupArr = new Array();
    $('#itemInfForm').find("input[name='uitmCdInfPup']").each(function(index, obj) {  
        var uitmCdInfPupTmp = $(obj).val().replace('&','');
        uitmCdInfPupArr.push(uitmCdInfPupTmp);
    });
    
    if(needAgreePopup(ordAgreeInfArr)) {
        // 주문제작/박스오픈 + 새벽배송/신선식품_20180713특화배송조유진
        if((productOrdYn == "Y" || boxOpenYn =="Y") && (dawnDlvPopYn == "Y" || freshFoodPopYn =="Y")){
            carefulPop("Y");
        }else{
            if(productOrdYn == "Y" || boxOpenYn =="Y"){//주문제작+박스오픈 인경우
                carefulPop("N");
            }else if(dawnDlvPopYn == "Y" || freshFoodPopYn =="Y"){//새벽배송+신선식품 인경우   
                carefulPop2();
            }
        }
        return;
    }else{
        order(basktInfArr, esOptYn, layerYn); 
    }
}

/*
 * 딜상품 주문제작&박스오픈 확인
 * 새벽배송+신선식품 주의사항 _ 20180712 특화배송조유진
 */
var carefulPopCnt = new Array();

var productOrdYn = "";
var boxOpenYn ="";
var dawnDlvPopYn = "";
var freshFoodPopYn = "";
function needAgreePopup(ordAgreeInfArr) {
    productOrdYn = "N";
    boxOpenYn ="N";
    dawnDlvPopYn = "N";
    freshFoodPopYn = "N";
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
      }
  }

  if(carefulPopCnt.length > 0) {
      return true;
  } else {
      return false;   
  }    
}

/*
 * 딜상품 바로구매 Submit 
 */
function order(basktInfArrParam, esOptYn, layerYn) {
    if(!isEmpty(basktInfArrParam)) {
        var basktInfArr = new Array();
        for (var i = 0; i < basktInfArrParam.length; i++) {
            basktInfArr.push(basktInfArrParam[i]);
        }
       
        // 스토어픽 파라메타
        var stpicPickUpDt = $("#itemInfForm input[name=stpicPickUpDt]").val();
        var stpicOrderYn  = $("#itemInfForm input[name=stpicOrderYn]").val();
        
     	// 기획전 > 주문으로 넘길경우 기획전 매장을 넘긴다. 아닐경우 기본매장.
        var sectId = "141253";
        if(sectId == undefined || sectId == ""){
        	sectId = "2731484";
        }
        
        $.ajax({
            type: "post"
            , url: "/p/oda/buyDirectForBaskt.do?optYn=Y&basktInf=" + basktInfArr.join("&basktInf=")+"&stpicOrderYn="+stpicOrderYn+"&stpicPickUpDt="+stpicPickUpDt
            , dataType: "json"
            , success : function(data) {
                if(!isEmpty(data.errorMessages)) {
                    if(data.errorMessages != 'noMessage') { 
                        alert(data.errorMessages.join("\n"));
                    }
                } else {
                    // $("#orderForm").html("");
                    $("#orderForm").append("<input type='hidden' name='sectId' value='" + sectId + "'/>");
                    for(var i = 0; i < basktInfArr.length; i++) {
                        $("#orderForm").append("<input type='hidden' name='basktInf' value='" + basktInfArr[i] + "'/>");
                    }
                    $("#orderForm").append("<input type='hidden' name='rcmmType' value='" +  + "'/>");
                    
                    $("#orderForm").append("<input type='hidden' name='stpicOrderYn'  value='" + stpicOrderYn + "'/>");
                    $("#orderForm").append("<input type='hidden' name='stpicPickUpDt' value='" + stpicPickUpDt + "'/>");
                    
                    if(esOptYn == "Y") {
                        setBizSpring("esOptBuyDirect");
                    } else if(layerYn == "Y") {
                        setBizSpring("layerBuyDirect");
                    } else {
                        setBizSpring("buyDirect");
                    }
                    
                   
                    <!-- GA -->
                    try {
                        var product_array = [];
                        var action_obj = new Object();
                        var ecommerce_hit = new Object();           
                        
                        for(var i=0 ; i < basktInfArr.length ; i++){
                            $(".optSelect .dealSexBox .sel_prod .iListCont ul li").each(function(){
                                if(basktInfArr[i].split("|")[0] == $(this).find("input[name=optSlitmCd]").val()){
                                    product_array.push(
                                        {
                                            'id': $(this).find("input[name='optSlitmCd']").val(),
                                            'name': $(this).find("input[name='selectptSlitmNm']").val(),
                                            'brand': $(this).find("input[name='brndNm']").val(),
                                            'category' : $(this).find("input[name='gaCategory']").val()
                                        }
                                    );
                                }
                            });
                        }
                        action_obj[GAActionFieldKey.CheckoutStep] = '1';
                        var giftOrderYn = $("#itemInfForm input[name='giftOrderYn']").val() == undefined ? "N" : $("#itemInfForm input[name='giftOrderYn']").val();
                        if(giftOrderYn == 'Y'){
                        	ecommerce_hit[GACustomKey.Dimension74] = '선물하기';
                        }else{
                        	ecommerce_hit[GACustomKey.Dimension74] = '일반구매';
                        }
                        GADataSend_Ecommerce(GAEcommerceStepKey.Checkout, action_obj, product_array, ecommerce_hit);
                    } catch (e) {
                        console.log("딜 O google analytics 실패");
                    }
                    
                    $("#orderForm").submit();
                }
            }
            , error: function(data) {
            }
        });
    }
}

/*
 * 일반상품 바로구매, 딜상품은 비회원 주문 form submit
 */
function buyDirectFormSubmit(esOptYn, layerYn, calcPupYn) {

    // 기획전 > 주문으로 넘길경우 기획전 매장을 넘긴다. 아닐경우 기본매장.
    var sectId = "141253";
    if(sectId != undefined && sectId != ""){
  	    $("form[name='itemInfForm'] input[name=sectId]").val(sectId);	  
    }
	
    //여행상품 체크
    var travelYn = "N";
    var checkedLength =  $(".product-option-wrap .stock-item.select-product-list .pditem").length;
    
    if(travelYn == "Y" && checkedLength != null && checkedLength > 1){
        alert("무형상품은 다른 상품과 함께 주문하실수 없습니다.");
        return;
    }

    if(dealYn == "Y") {
        $('#itemInfForm').find("input[name='basktInf']").each(function(index, obj) {
            $(obj).remove();
        });
        
        $(".product-option-wrap .stock-item.select-product-list .pditem").each(function() {
            var slitmCd = $(this).find("input[name=slitmCd]").val();
            var uitmCd = $(this).find("input[name=uitmCd]").val();
            var uitmQty = $(this).find("input[name=ordQty]").val(); 
            var uitmPrc = $(this).find("input[name=uitmSellPrc]").val();
            var val = slitmCd +'|'+ uitmCd +'|0|'+ uitmQty +'|'+ uitmPrc;
            var val_input = '<input type="hidden" name="basktInf" value="'+ val +'" />';
            $('#itemInfForm').append(val_input);
        });
    
        var basktInfArr = new Array();
        $('#itemInfForm').find("input[name='basktInf']").each(function(index, obj) {
            basktInfArr.push($(obj).val());
        });
        
        order(basktInfArr, esOptYn, layerYn);
    } else {
        $("#itemInfForm").ajaxSubmit({
            url: "/p/oda/buyDirect.do"
            , dataType: "json"
            , success: function(data) {
                if(!isEmpty(data.errorMessages)) {
                    var errorMessage = data.errorMessages;
                    if(errorMessage != 'noMessage') { 
                       alert(data.errorMessages.join("\n"));
                    }
                } else {
                    if(esOptYn == "Y") {
                        setBizSpring("esOptBuyDirect");
                    } else if(layerYn == "Y") {
                        setBizSpring("layerBuyDirect");
                    } else if(calcPupYn == "Y") {
                        setBizSpring("calcPupBuyDirect");
                    } else {
                        setBizSpring("buyDirect");
                    }
                    
                    
                    try {
                        var action_obj = new Object();
                        var ecommerce_hit = new Object();                       
                        var product_array = [];
                        
                        //옵션을 선택한 만큼 데이터 쌓는다.
                        $(".product-option-wrap .stock-item.select-product-list .pditem").each(function(index) {
                            product_array.push(
                                    {
                                        'id': $("form[name='itemInfForm'] input[name='slitmCd']").val(),
                                        'name': "[나이키] W 에어맥스 97 DH8016-100",
                                        'brand': "나이키코리아",
                                        'category' : $("form[name='itemInfForm'] input[name='gaCategory']").val()
                                    }
                                );
                        });
                        
                        action_obj[GAActionFieldKey.CheckoutStep] = '1';
                        
                        var giftOrderYn = $("#itemInfForm input[name='giftOrderYn']").val() == undefined ? "N" : $("#itemInfForm input[name='giftOrderYn']").val();
                        if(giftOrderYn == 'Y'){
                        	ecommerce_hit[GACustomKey.Dimension74] = '선물하기';
                        }else{
                        	ecommerce_hit[GACustomKey.Dimension74] = '일반구매';
                        }
                        GADataSend_Ecommerce(GAEcommerceStepKey.Checkout, action_obj, product_array, ecommerce_hit);
                        
                    } catch (e) {
                        // TODO: handle exception
                        console.log("딜 X google analytics 실패");
                    }
                    
                    
                    $("#itemInfForm").attr("action", "https://www.hmall.com/p/oda/order.do");
                    $("#itemInfForm").attr("target", "");
                    $("#itemInfForm").submit();
                }
            }
            , error: function(xhr, status, error) {

            }
        });
    }
}

function showDealIndex(index) {
    var $indexTab = $('.option-deal-thumbnaii .ui-tab').children().eq(index).find('a');
    $indexTab.tab('show');
}

function setDealOptionViewHtmlContent() {
	var dealHtmlContent = $('.tab-content .tab-pane.ui-active .option-view').data('content');
    $('.tab-content .tab-pane.ui-active .option-view').html(dealHtmlContent);
}

function dealDetailProductCheck(idx) {
	if(!$('.pdlist-wrap.col2 ul li:eq('+idx+')').hasClass('end')) {
		var sortOrdgVal = Number($('.pdlist-wrap.col2 ul li:eq('+idx+') .hoverdetail a input[name=dealProdGroupSortOrdg]').val());
		$(".product-option-wrap:first .ui-dropdown.sel-prduct .dropdown-menu a").each(function(index) {
		    if($(this).find("input[name=selectptSortOrdg]").val() == sortOrdgVal) {
		        optionDetailViewClk = true;
		    	$(this).click();
		        return false;
		    }
		});
	    setTimeout(function() { 
	        $(".ui-dropdown.sel-prduct").removeClass("ui-active");
	    }, 100);
	}
}

function dealOptionNavSelected(obj) {
	var index = $(obj).parent().index();
	dealDetailEventType = 2;
	dealDetailProductCheck(index);
}

function dealDetailPrevNext(tp) {
	var index = 0;
	if(tp == 'N') {
		index = $('.option-deal-thumbnaii .ui-tab .ui-active').next().index();
    } else {
    	index = $('.option-deal-thumbnaii .ui-tab .ui-active').prev().index();
    }
	dealDetailEventType = 3;
    dealDetailProductCheck(index);
}

/*
 * 딜상품 상품설명 레이어 관련사항
 */
//$(document).on("click", ".prod_detail_view .deal_prod_group .icons_over a", function() {
var dealDetailPrevFlag = false;
var dealDetailPopupOnceProc = false;
var dealDetailEventType = 0;
$(document).on("click", ".product-detail-view .hoverdetail > a", function() {   
    $('#modalOptionDeal').modal().show();
    if(!dealDetailPopupOnceProc) {
        dealDetailPopupOnceProc = true;
    	$('[data-modules-scrollTab]').scrollTab('isActive');
        $('.option-deal-thumbnaii .scroll-tab .scrolltab-btns .prev-tab').attr("onclick","dealDetailPrevNext('P');");
        $('.option-deal-thumbnaii .scroll-tab .scrolltab-btns .next-tab').attr("onclick","dealDetailPrevNext('N');");
    	$('.option-deal-thumbnaii .ui-tab').on("shown.hui.tab", function (e) {
            var index = $(e.target).parent().index();
            setDealOptionViewHtmlContent();
    	});
    }

    dealDetailEventType = 1;
    var thisIdx = $(this).closest(".pdthumb").index();
    dealDetailProductCheck(thisIdx);
    dealDetailPrevFlag = true;
    setTimeout(function() { 
        showDealIndex(thisIdx);
        setDealOptionViewHtmlContent();
    }, 100);

    //detailItemPreview(selindex);
});

var $dp_Idx = 1;
$(document).on("click", "#layer_popup .arrow_layer > button", function() {
    var unitLength = Number($("#section_cont_1 .prod_detail_view .view_cont .deal_prod_group.notLayer:last").find("input[name=dealProdGroupSortOrdg]").val());
    var selindex = Number($(this).closest(".arrow_layer").prev().find("input[name=dealProdGroupSortOrdg]").val());
    var detailViewIndex = 0;
    var prevNext = "";
    if($(this).hasClass("prev")) {
        prevNext = "prev";
    } else if($(this).hasClass("next")) {
        prevNext = "next";
    }
    
    $("#section_cont_1 .prod_detail_view .view_cont .deal_prod_group").each(function(){
        var tmpIndex = Number($(this).find("input[name=dealProdGroupSortOrdg]").val());
        if(tmpIndex == selindex) {
            if(prevNext == "prev") {
                detailViewIndex = Number($(this).prev().find("input[name=dealProdGroupSortOrdg]").val());
            } else if(prevNext == "next") {
                detailViewIndex = Number($(this).next().find("input[name=dealProdGroupSortOrdg]").val());
            }
            return false;
        }
    });
    
    if($(this).hasClass("prev")) {
        if(selindex == 1) {
            $dp_Idx = Number($("#section_cont_1 .prod_detail_view .view_cont .deal_prod_group.notLayer:last").find("input[name=dealProdGroupSortOrdg]").val());
            detailViewIndex = $dp_Idx;
        } else {
            $dp_Idx = detailViewIndex;
        }
        call_DetailView(detailViewIndex);
        autoSelbox($dp_Idx);
        //오른쪽 셀렉트박스 자동선택(2019.08.28)
        var iSelindex = parseInt(detailViewIndex)-1;
        
        var sIdx = -1;
        $('#layer_popup .right_group .group_selbox .selbox .iListCont ul li').each(function(index, item) {      
            if( detailViewIndex == $(item).find("input[name=selectptSortOrdg]").val() ){    
                sIdx = index;
            }       
        });
        
        
        $("#layer_popup .right_group .group_selbox .selbox .iListCont ul li:eq("+sIdx+")").click();
        $("#layer_popup .right_group .group_selbox .selbox:eq(0)").removeClass("open");
        
        return false;
    } else if($(this).hasClass("next")) {
        if(selindex == unitLength) {
            $dp_Idx = Number($("#section_cont_1 .prod_detail_view .view_cont .deal_prod_group:eq("+ 0 +")").find("input[name=dealProdGroupSortOrdg]").val());
            detailViewIndex = $dp_Idx;
        } else {
            $dp_Idx = detailViewIndex;
        }
        call_DetailView(detailViewIndex);
        autoSelbox($dp_Idx);
        
        //오른쪽 셀렉트박스 자동선택(2019.08.28)
        var iSelindex = parseInt(detailViewIndex)-1;
        
        var sIdx = -1;
        $('#layer_popup .right_group .group_selbox .selbox .iListCont ul li').each(function(index, item) {      
            if( detailViewIndex == $(item).find("input[name=selectptSortOrdg]").val() ){    
                sIdx = index;
            }       
        });
        
        
        $("#layer_popup .right_group .group_selbox .selbox .iListCont ul li:eq("+sIdx+")").click();
        $("#layer_popup .right_group .group_selbox .selbox:eq(0)").removeClass("open");
        
        return false;
    }
});

function detailItemPreview(selindex) {
    itemPreviewF = true;
        
    // 디테일 이미지
    // call_DetailView(selindex);
    
    //$("#layer_popup .right_group .group_selbox .selbox:eq(0) .myValue input[name=selItemId]").remove();
    //$("#layer_popup .right_group .group_selbox .selbox.optSelBox").remove();
    //$("#layer_popup .right_group .group_selbox .selbox:eq(0) .myValue a").text("상품을 선택하세요.");
    // 옵션 셀렉트박스 자동선택
    // autoSelbox(selindex);
    //오른쪽 셀렉트박스 자동선택(2019.08.28)
    //var iSelindex = parseInt(selindex)-1;   이거 오류..> iSelindex이 인덱스가 안될수가 있다.. 노출이 안되는 상품이 있기 때문.. 그래서 아래처럼 돌면서 값에 맞는걸 찾아서 그 인덱스를 넘긴다.
    
    var sIdx = -1;
//     $('#layer_popup .right_group .group_selbox .selbox .iListCont ul li').each(function(index, item) {      
//         if( selindex == $(item).find("input[name=selectptSortOrdg]").val() ){   
//             sIdx = index;
//         }       
//     });
    
//     $("#layer_popup .right_group .group_selbox .selbox .iListCont ul li:eq("+sIdx+")").click();
//     $("#layer_popup .right_group .group_selbox .selbox:eq(0)").removeClass("open");
    
    //layer_open('layer1');
    $("#modalOptionDeal").modal().show();
    $('[data-modules-scrollTab]').scrollTab('isActive');
}

function call_DetailView(eqNum) {
}

function autoSelbox(eqNum) {
    if($("#layer_popup .left_group .selbox").length > 0) {
        var quantityArea = "";
        var selIndex = 0;
        $("#layer_popup .left_group .selbox .iListCont li").each(function(){
            var tmpIndex = Number($(this).find("input[name=dealProdGroupSortOrdg]").val());
            if(tmpIndex == eqNum) {
                quantityArea = $(this);
                selIndex = $(this).index();
                return false;
            }
        });
        $("#layer_popup .left_group > .selbox:first .myValue a").text($(quantityArea).find("a").text());
        setTimeout(function() {
            $("#layer_popup .right_group .group_selbox .selbox:eq(0) .myValue a").text($(quantityArea).find("a").text());
            $("#layer_popup .right_group .group_selbox .selbox:eq(0)").addClass("open");
            $("#layer_popup .right_group .group_selbox .selbox:eq(0) .iListCont").scrollTop($("#layer_popup .right_group .group_selbox .selbox:eq(0) .iListCont li:eq("+ selIndex +")").position().top);
        }, 150);
    }
}

/*
 * 옵션 상세 이미지 비노출 반영
 */
var dealUnitInfo = "N";
function call_DetailUnitInfo() {
    if(dealUnitInfo == "Y") {
        return;
    }

    var slitmCd = '2135294542';
    var dealTmplGbcd = '2';
    var params = "?slitmCd=" + slitmCd + "&dealTmplGbcd="+dealTmplGbcd;  
    $.ajax({
        url: "/p/pda/itemOptDtlInfo.do" + params
        , type: "get"
        , dataType: "html"
        , async: false
        , success: function(html) {
//            $("#deal_unitDetail").html(html);
            dealUnitInfo = "Y";
//             $("#deal_unitDetail").find("style").each(function() {
//                 $(this).remove();
//             });
        }
    });
}

/* 
 * 상품 이미지 정보 조회
 */
function call_DetailUnitImgInfo(slitmCd) {
    var params = "?slitmCd=" + slitmCd;  
    $.ajax({
        url: "/p/pda/PDAItemImgDtlList.do" + params
        , type: "get"
        , dataType: "html"
        , async: false
        , success: function(html) {
            $(".detailGalleryWrap1").html(html);
        }
    });
}
/* 
 * 상품 기본정보 셀렉트 박스
 */
function setItemsInfo(obj, slitmCd, sitmCd, sellPrc) {
    $.ajax({
        type: "post"
        ,url: "/p/pda/itemOptBasicInfo.do"
        ,data: {
            'slitmCd':slitmCd , 'basicInfoPrc': sellPrc
        }
        ,dataType: "html"
        ,async: false
        ,success : function(html) {
            var selImg = $(obj).find(".p_thum_img").html();
            var selTxt = $(obj).find(".p_prod_name").html();
            var selObj = $("#viewPage02 .sel-prduct > div");
            $(selObj).find(".p_thum_img").html(selImg);
            $(selObj).find(".p_prod_name").html(selTxt);
                
            $("#PDAItemOptBasicInfoHtml").empty();
            $("#PDAItemOptBasicInfoHtml").append(html);
            setTimeout(function() { $('body').commonUi('initLibrary'); }, 100);
            // toolTipHover();
        }
    });
}


/* 
 * 상품평 셀렉트 박스
 */
 function setItemsComm(obj, slitmCd) {
        var objYn = 'N';
        var itemQnaExpsYn = "Y";
        var optSlitmCd = "2135294542";
        var optImgNm = "";
        var optHtml = "";
        
        page = 3;
        curPage = 2;
        
        if(slitmCd == '00') {
            objYn ='Y';
            slitmCd = "2135294542";
            optHtml = '전체 상품 상품평 보기';
            optSlitmCd ="";
            
        } else {
            optHtml = $(obj).html();
        }
        
        var starNum = "";
        var imgYn = 0;
        listCondition = $("#posRight").val();
        //console.log(" Sort  =>" + listCondition);
        
        /*orignal 영역  clone*/
        //var selectStarArea = $("#sortAppend .funcArea .star_select_wrap").clone(true);
        
        $.ajax({
            type: "post"
            ,url: "/p/pdc/selectOptItemEvalList.do"
            ,data: {
                'slitmCd':slitmCd,
                'optYn':objYn , 
                'optSlitmCd':optSlitmCd, 
                'optImgNm':optImgNm , 
                'optSlitmMstCd':optSlitmCd, 
                'dealYn':dealYn,
                'starNum':starNum,
                'listCondition':listCondition,
                'imgYn':imgYn
            }
            ,dataType: "html"
            ,async: false
            ,success : function(html) {
                $("#viewPage03 .sel-prduct #dropOption3 a").html(optHtml);
                
                if(objYn == 'Y') {
                	optionYn = "Y";
                	optYn = 'Y';
                	$("#modalPhotoReview .photo-review ul").html(photoReviewAll);
                } else {
                	optionYn = "N";
                    resetReviewPhoto();
                }

                itemsCommChk = false;
                
                $("#itemOptEvalInfo").empty();
                $("#itemOptEvalInfo").append(html);
                $('body').commonUi('initLibrary');
                // $(".scrollspy-tab.fixed ul li a").eq(2).click();
                // setItemsCommSort(listCondition);            
            }
        });
    }

//상품평 tab - sort 처리 
 function changeItemsCommSort(){
     if(itemsCommChk) {
         
         var tmpSlitmCd = slitmCd;
         var params = {};
         var starNum ="";
         var imgYn = 0;
         
         listCondition = $("#posRight").val();
         //console.log("listCondition:" + listCondition);
         
          var url = "/p/pdc/selectItemEvalList.do";
          if(dealYn == "Y") {
             url = "/p/pdc/selectOptItemEvalList.do";
             
             var optSlitmCd = $("#viewPage03 .sel-prduct #dropOption3 a input[name=optSlitmCd]").val();
             var optYn = 'N';
             var optImgNm = "";
             
             // 전체가 아닐 경우 옵션 상품 선택 으로 표시
             if($("#viewPage03 .sel-prduct").html() !=null && $("#viewPage03 .sel-prduct #dropOption3").html().indexOf("전체") > 0){
                 optSlitmCd="";
             }
             
             //console.log(" optSlitmCd  => "+ optSlitmCd);
             
             if(isEmpty(optSlitmCd)) {
                 optYn = 'Y';
                 params["slitmCd"] = tmpSlitmCd;
             } else {
                 optYn = 'N';
                 params["slitmCd"] = optSlitmCd;
                 params["optSlitmCd"] = tmpSlitmCd;
             }
             
              if($("#prodOptYn").val() == 'N') {
                  optYn = $("#prodOptYn").val();
              }
              params["optYn"] = optYn;
              params["optImgNm"] = optImgNm;
              params["optSlitmMstCd"] = tmpSlitmCd;
          } else {
              params["slitmCd"] = tmpSlitmCd;
          }
          
          params["dealYn"] = dealYn;
          params["listCondition"] = listCondition;
          params["starNum"] = starNum;
          params["imgYn"] = imgYn;
          params["refer"] = "itemPtc";
           
          //console.log("params", params);
          //return false;
          
           $.ajax({
               type: "post"
               , url: url
               , dataType: "html"
               , data : params
               ,success : function(data) {

                 itemsCommChk = false;  
                   
                 $("#itemOptEvalInfo").empty();
                 $("#itemOptEvalInfo").append(data);
                 $('body').commonUi('initLibrary');
                 // $(".scrollspy-tab.fixed ul li a").eq(2).click();
                 // setItemsCommSort(listCondition);
                 
               }
               , error: function(data) {
                 cosole.log("error  data =>"+ data);
               }
           });       
         
         
     } else {
         setTimeout(function() {
             itemsCommChk = true;
         }, 1500);                       
     }
     
 }
 
/*
 * Mac 관련 상품 계산
 */
function calcSellPrcMac() {
    var totSellPrc = 0;

    var isMultiUitm = true;
    var isMultiCmps = false;
    
    if(isMultiUitm) {
        $("#divOptionArea div.selectedUitm ul li.third b.verdana").each(function() {
            var sellPrc = removeComma($(this).text());
            if($.isNumeric(sellPrc)) {
                totSellPrc += Number(sellPrc);
            }
        });
    } else {  // 속성이 존재하지 않는 경우
        var sellPrc = $("input[name='sellPrc']").val();
        var ordQty = $("#ddOrdQtyArea input[name='ordQty']").val();
        if($.isNumeric(sellPrc) && $.isNumeric(ordQty)) {
            totSellPrc = Number(sellPrc * ordQty);
        }
    }

    if (isMultiCmps) {
        $("#divOptionArea div.divAddCmpsArea ul li.third strong.verdana").each(function() {
            var sellPrc = removeComma($(this).text());
            if($.isNumeric(sellPrc)) {
                totSellPrc += Number(sellPrc);
            }
        });
    }

    $("#totItemPrcSpan").text(gfn_appendComma(totSellPrc));

    // 속성이 존재하는 경우
    if(isMultiUitm) {
        if($("#divOptionArea div.selectedUitm").length > 0) {
            $("#divTotItemPrcArea").removeClass("hidden").attr("display", "");
        } else {
            $("#divTotItemPrcArea").addClass("hidden").attr("display", "none");

            $("#divOptionArea").addClass("hidden");
        }
    }

    return totSellPrc;
}

/*
 * 상품추천서비스 수집(장바구니, 찜)
 */
function setKoostInf(type) {
    try {
        if(type == "CART") {
            //rat_helper.send_event("CART", adlib_trk_data);
            tagging.collector("RC_CART",hbdaRc_trk_data); //lib호출.
        } else if(type == "ZZIM") {
            //rat_helper.send_event("ZZIM", adlib_trk_data);
            tagging.collector("RC_ZZIM",hbdaRc_trk_data); //lib호출.
        }
    } catch (e) {}
}

/*
 * 리얼타임메시지 callBack
 */
 function callbackAddToBasket() {
        if(dealYn == "Y") {
            $("form[name='cartForm']").ajaxSubmit({
                url: "/p/odb/addBaskt.do"
                , dataType: "json"
                , success: function(data) {
                    if (data.needLogin) {
                        openLoginPopup("addToBasket");
                    } else {
                        if(!isEmpty(data.errorMessages)) {
                            alert(data.errorMessages);
                        } else {
                            if(data.isAddOk) {
                                $("#basktMessage").text("장바구니에 상품을 담았습니다.");
                                setKoostInf("CART"); // 상품추천 서비스 수집 (장바구니)
                            } else {
                                $("#basktMessage").text("이미 장바구니에 담긴 상품입니다.");
                            }
                            zindexInit();
                            $('#modalShopBasket').modal().show();
                        }
                    }
                }
                , error: function(xhr, status, error) {

                }
            });
        }else{
            $("form[name='itemInfForm']").ajaxSubmit({
                url: "/p/odb/addBaskt.do"
                , dataType: "json"
                , success: function(data) {
                    if (data.needLogin) {
                        openLoginPopup("addToBasket");
                    } else {
                        if(!isEmpty(data.errorMessages)) {
                            alert(data.errorMessages);
                        } else {
                            if(data.isAddOk) {
                                $("#basktMessage").text("장바구니에 상품을 담았습니다.");
                                setKoostInf("CART"); // 상품추천 서비스 수집 (장바구니)
                            } else {
                                $("#basktMessage").text("이미 장바구니에 담긴 상품입니다.");
                            }
                            zindexInit();
                            $('#modalShopBasket').modal().show();
                        }
                    }
                }
                , error: function(xhr, status, error) {

                }
            });
        }
    }

/*
 * 공유 트위터
 */
function goTwitter() {
    
    var slitmNm = $("input[name='slitmNm']").val();
    shareTwitter(slitmNm);
}

/*
 * 공유 페이스북
 */
function goFacebook() {
    
    var slitmNm = $("input[name='slitmNm']").val();
    shareFacebook(slitmNm, 'http://image.hmall.com/static/2012img/common/gnb/hmall_logo.gif');
}

/*
 * 공유 Me2day
 */
function goMe2day() {
    var slitmNm = $("input[name='slitmNm']").val();
    postMe2day(slitmNm, '');
}

/*
 * 공유 싸이월드
 */
function goCyworld() {
    var slitmNm = $("input[name='slitmNm']").val();
    var sellPrc = $("input[name='sellPrc']").val();

    postCyworld(slitmNm, 'http://image.hmall.com/static/2012img/common/gnb/hmall_logo.gif', sellPrc);
}

/*
 * 주문제작상품 주의 사항 안내 팝업
 * 새벽배송+신선식품 팝업 추가로 인한 수정_20180713특화배송조유진
 */
function ordMakeItemOrdInfPup(boxOpenStYn, dawnFreshYn, rsvItemCheck) {
    __rsvItemCheck = rsvItemCheck;
    __dawnFreshYn = dawnFreshYn;
    if(boxOpenStYn == 'Y') {
        cautionUiPopup(4);
    } else {
        cautionUiPopup(1);
    }
    return;
}

function getSelectProductItemInfo(obj) {
    var pdItemInfo = {pdtit: "",option: "",color: "",qty: 0,thumb: "",price: 0};	

	pdItemInfo.pdtit = $(obj).find(".pdname").text();
    if($('.product-option-wrap:first .select-product-list').hasClass('item-normal-product')) {
    	pdItemInfo.pdtit = $(".right-info .prduct-title-info .prduct-name").text();
    }
    
    pdItemInfo.option = $.trim($(obj).find(".option em").text());
    pdItemInfo.color = $.trim($(obj).find(".color em").text());
    pdItemInfo.qty = $(obj).find("input[name=ordQty]").val();
    pdItemInfo.thumb = $(obj).find(".thumb").children().clone();
    pdItemInfo.price = $(obj).find(".pdprice em").text();
    return pdItemInfo;
}


function rcmmItem (trtyNo, paramObj, recmmName, rowCnt){ //jmk
	var gubun = "";             	
	if(recmmName == "rcmmKeywordSearch"){
		gubun = "text_itemPtc";
	}else if(recmmName == "rcmmSectShowTogetherArea"){
		gubun = "5xn_itemPtc";
	}else{
		gubun = "4xn_itemPtc";
	}                        	
	
    $.ajax({
        type: "get"
        ,url: "/p/coe/listRcmmSrvHtml.do?trtyNo="+trtyNo+"&rowCnt="+rowCnt+"&uiType="+gubun
        ,data: paramObj // input data 추천 영역확인
        ,dataType: "html"
        ,async: false
        ,success : function(data) {
        
        	if(gubun != "text_itemPtc"){
        		if ($(data).find("li.pdthumb").length >=5) {
                    $("#"+recmmName).append(data);    // 삽입할 div
                    $("#"+recmmName).show();
                } else {
                    $("#"+recmmName).hide();
                }
        	}else{
        		if ($(data).find("a").length > 0) {        
                    $("#"+recmmName).append(data);    // 삽입할 div
                    $("#"+recmmName).show();
                } else {
                    $("#"+recmmName).hide();
                }
        	}        	
        }
        ,error : function(){
        }
        
        ,complete : function() {
        	if(gubun != "text_itemPtc"){
        		$('body').commonUi('initLibrary'); //PC인경우	
        	}
        }
    });
}
    
window.onload = setRcmmData;

function setRcmmData(){

	var depth2SectId= "2731166"; //2뎁쓰 매장ID .. 모바일기준으로 동일하게..2021.04.30
	var sectId = "2731484";
    var itemLCsfCd = "S7";
    var itemMCsfCd = "S705";
    var bsitmCd = "2135294542";

    var paramObj		 = {sectId:sectId, bsitmCd:bsitmCd, itemLCsfCd:itemLCsfCd, itemMCsfCd:itemMCsfCd};
    var paramObjSectArea = {sectId:depth2SectId, bsitmCd:bsitmCd, itemLCsfCd:itemLCsfCd, itemMCsfCd:itemMCsfCd};
    
    //카운트 몇개 이상일때 노출인것도 확인필요!! 이거하고 모바일도 그쪽부분확인.
    
    rcmmItem (38, paramObj, "rcmmSectShowTogetherArea", 15); 	// 이 상품을 본 고객님들이 함께 본 다른 상품 엑셀:38 row:최대15 > 4개 이하시 영역 미노출 ok
    //rcmmItem (30, sectObj2, "rcmmSectRelateArea"); 			// 연관추천상품
    rcmmItem (39, paramObj, "rcmmSectShowBuyArea", 15); 		// 이상품을본고객이구매한다른상품 엑셀:39 row:최대15 > 4개 이하시 영역 미노출 ok
    rcmmItem (17, paramObj, "rcmmSectFashionArea", 15);  		// 상품대분류추천상품(ex 패션잡화) 엑셀:10, row:최대15 > 4개 이하시 영역 미노출 ok
    rcmmItem (57, paramObjSectArea, "rcmmSectArea", 15);        		// 매장추천상품 row:최대15 > 4개 이하시 영역 미노출 ok
    rcmmItem (16, paramObj, "rcmmKeywordSearch", 20);        	// 추천검색어 모두노출 > 0개이하시 해당영역 미노출
    
    
    /* 선물포장신청 레이어 이후 닫기 클릭시 */
    $('#modalGiftNoti .btn.btn-close').click(function(e){ //정의필요 
    	boxPackItemChkYn = "N";
    });
}


function cautionUiPopup(code) {
    var cautionTitle = ['신선식품 주의사항 안내',
        '주문상품 주의사항 안내',
        '포장개봉 주의사항 안내'];
    var cautionDesc = ['아래 신선식품(냉장, 냉동 포함) 상품은 상품가치 하락 사유로 <em>배송중에는 취소 불가</em>하며, 단순 변심으로 인한 <em>교환, 반품이 불가</em>합니다. <br/> (단, 상품 하자 제외)',
        '아래 상품은 고객님의 소중한 주문에 의해서만 제작되는 상품이므로 <em>취소, 교환, 반품</em>이 불가능 합니다. (상품 하자 제외)',
        '아래 상품은 특성상, <em>박스(BOX) 또는 밀봉포장 개봉으로 인한 상품 가치 하락시 교환/반품이 불가</em> 한 상품입니다. (단, 상품가치 하락없이 재화 등의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)'];
    var clickFunction = ['dawnDlvfreshfoodItemOrd()','agrOrdMakeItemOrd();','agrBoxPackItemOrd();']
    var button = '';
    
    switch(code) {
        case 0:
        case 1:
        case 2:
            if(__carefulPopDubYn == 'Y') {
                clickFunction[code] = 'carefulPop2();';
                __carefulPopDubYn = 'N';
            }
            if(__dawnFreshYn == 'Y') {
                clickFunction[code] = 'dawnDlvfreshfoodItemOrdInfPup(__rsvItemCheck);';
                __dawnFreshYn = 'N';
            }
        	break;
        case 3:
            code = 0;
            clickFunction[code] = 'order(__basktInfArr);';
        case 4: // 박스포장 주문제작
            code = 2;
            clickFunction[code] = 'cautionUiPopup(1);';
            break;
    }

    $("#cautionPopup .pop-title").html(cautionTitle[code]);
    $("#cautionPopup .pop-content .desc span").html(cautionDesc[code]);
    $("#cautionPopup .btngroup .btn.btn-default").remove();
        
    $("#cautionPopup .btngroup").append('<button class="btn btn-default" onClick="'+clickFunction[code]+'"><span>동의</span></button>');
    
    $('.product-option-wrap:first .select-product-list .pditem').each(function(index) {
        var pdItemInfo = getSelectProductItemInfo($(this));
        
        if(!isEmpty(pdItemInfo.pdtit)) {
            $("#cautionPopup .pdtit").text(pdItemInfo.pdtit);
        }
        if(!isEmpty(pdItemInfo.option)) {
            if(!isEmpty(pdItemInfo.color)) {
                $("#cautionPopup .option em").text(pdItemInfo.option + " / " + pdItemInfo.color);
            } else {
                $("#cautionPopup .option em").text(pdItemInfo.option);
            }
        }
        if(!isEmpty(pdItemInfo.qty)) {
            $("#cautionPopup .count em").text(pdItemInfo.qty);
        }
        
        if(pdItemInfo.thumb.length == 0) {
            var itemThumbSrc = $(".product-banner-wrap .slider-thumbnaii .ui-thumbnaii:first img").attr("src");
            var itemThumbUi = '<img src="'+itemThumbSrc+'" alt="">';
            pdItemInfo.thumb = $(itemThumbUi).clone();
        }

        if(pdItemInfo.thumb.length > 0) {
            $("#cautionPopup .thumb").append(pdItemInfo.thumb);
            $("#cautionPopup .thumb").show();
        } else {
            $("#cautionPopup .thumb").hide();
        }
        
        if(isEmpty(pdItemInfo.price)) {
            pdItemInfo.price = $('.basic-info .pdprice .discount em').text();
        }
            
        if(!isEmpty(pdItemInfo.price)) {
            $("#cautionPopup .pdprice em").text(pdItemInfo.price);
            $("#cautionPopup .pdprice").show();
        } else {
            $("#cautionPopup .pdprice").hide();
        }
    });
    $('#cautionPopup').modal().show();
}

/*
 * 박스포장 주의상품 안내 팝업
 * 새벽배송+신선식품 팝업 추가로 인한 수정_20180713특화배송조유진
 */
function boxPackItemOrdInfPup(dawnFreshYn, rsvItemCheck) {
    __rsvItemCheck = rsvItemCheck;
	__dawnFreshYn = dawnFreshYn;
	cautionUiPopup(2);
	return;
    /*
    $('#itemInfForm').find("input[name='dawnFreshYn']").remove();
    if(dawnFreshYn == "Y"){
        var val_input = '<input type="hidden" name="dawnFreshYn" value="'+ dawnFreshYn +'" />';
        $('#itemInfForm').append(val_input);
    }
    var screenHeight = $(window).height();
    var link = "/p/oda/boxPackItemOrdInfPup.do";
    var name = "boxPackItemOrdInfPup";
    var width = 488;
    var height = 361;
    var scroll = 'yes';

    $("#itemInfForm").attr("action", link);
    $("#itemInfForm").attr("target", name);

    openPopup('', name, width, height, scroll, screenWidth, screenHeight);

    $("#itemInfForm").submit();
    */
}

/*
 * 레이어 닫기
 */
function closeLayer(layerId) {
    $("#" + layerId).hide();
}

/*
 * 찜하기
 */
 var goActionCnt = 0; // 두번 클릭 방지
 function goChioceProcess(itemType, venCd, venItemCd, slitmCd, event) {
     goActionCnt++;
     
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
         openLoginPopup(location.href);
         return false;
     }
     
     if(goActionCnt > 1) return;
     
     var params = "chkedSlitmCdUitmCds=" + slitmCd;
               
     //파라미터 sectId 가 존재 할경우 sectId 전달
     var sectId = "2731484";
     
     // 2020.11.19 icj PDAItemPtcMst.jsp zzimDone 참조. 2020.12.03 삭제기능 포함
     $.ajax({
         url: "/p/mpc/insertGgim.do"
         ,dataType: "json"
         ,data: params
         ,success : function(data) {
              goActionCnt = 0;
              goActionCnt = 0;
              
              var thisHeartVal = Number($(event.target).parent().find(".count").text());
              
              if(data.insertResult != 'undefined' && data.insertResult == '0'){
                   alert("판매중인 단품이 없어 찜하지 못했습니다.");
                   return true;
              }else if(data.insertResult != 'undefined' && data.insertResult == '1'){
                  $(".btn-like").removeClass("on");
                  $(".btn-like .count").text(thisHeartVal - 1);
                   alert("찜목록에서 삭제 되었습니다.");
                   GA_Event('상품상세','찜 취소','');
                   return true;
              }else if(data.custGGimCnt >= 200){
                   alert("더 이상 찜 할 수 없습니다. 찜리스트에서 오래된 상품을 삭제 후 다시 이용해 주세요.");  
                   return true;
              }else {                 
                  if(data != null && data.needLogin){
                      // 세션 로그인이 풀려서 로그인이 안된 경우
                      openLoginPopup(location.href);
                      return false;
                  }
                  $(".btn-like").addClass("on");
                  $(".btn-like .count").text(thisHeartVal + 1);
                   alert("찜 목록에 추가 되었습니다.");
                   GA_Event('상품상세','찜','');
              }                   
         },
         error : function(){
              console.log("json error");
              goActionCnt = 0;
          }
     });               
 }
 /*
function beforeZzim(slitmCd, e, obj) {
    var uitmCombYn = $("input[name='uitmCombYn']").val();
    var uitmChocPossYn = $("input[name='uitmChocPossYn']").val();
    var chkedSlitmCdUitmCds = slitmCd;
    var sectId = $("input[name='sectId']").val();
    
    //특정대상 전용상품
    if(!exclItemTrgtGbcdChk('zzim')){

        return;
    }
    
    if((notBaskGim != null && notBaskGim == 'Y')) {
        alert("해당 상품은 찜이 불가합니다.");
        return;
    }

    zindexInit();

    if(uitmCombYn == "Y" && uitmChocPossYn == "Y") {
        var uitmSeqArr = new Array();
        $(".product-option-wrap .stock-item.select-product-list .pditem").find("input[name=uitmSeq]").each(function() {
            var tmpUitmSeq = $(this).val();
            if(!isEmpty(tmpUitmSeq)) {
                uitmSeqArr.push(tmpUitmSeq);
            }
        });

        $.ajax({
            type: "post"
            , url: "/p/pda/getUitmCdByUitmSeqArr.do?slitmCd=" + slitmCd + "&uitmSeqArr=" + uitmSeqArr.join("&uitmSeqArr=")
            , dataType: "json"
            , success : function(data) {
                if(data.uitmCd) {
                    chkedSlitmCdUitmCds += ":" + data.uitmCd;
                }
                zzim(chkedSlitmCdUitmCds, sectId, e, obj);
                setKoostInf("ZZIM"); // 상품추천 서비스 수집(찜)
                <!-- 2019.03.15 Facebook Pixel Code 삽입 -->
                fbq('track', 'AddToWishlist', {
                    content_ids: ['2135294542'],
                    content_type: 'product',
                    value: 151240,
                    currency: 'KRW'
                });
            }
            , error: function(data) {
            }
         });
    } else {
        $(".product-option-wrap .stock-item.select-product-list .pditem").find("input[name=uitmCd]").each(function() {
            var tmpUitmCd = $(this).val();
            if(!isEmpty(tmpUitmCd)) {
                chkedSlitmCdUitmCds += ":" + tmpUitmCd;
            }
        });
        zzim(chkedSlitmCdUitmCds, sectId, e, obj);
        setKoostInf("ZZIM"); // 상품추천 서비스 수집(찜)
        <!-- 2019.03.15 Facebook Pixel Code 삽입 -->
        fbq('track', 'AddToWishlist', {
            content_ids: ['2135294542'],
            content_type: 'product',
            value: 151240,
            currency: 'KRW'
        });
    }
}

function zzim(chkedSlitmCdUitmCds, sectId, e, obj) {
    if ( e.preventDefault ) {
        e.preventDefault();
    } else {
        e.returnValue = false;
    }

    if(isLogin() == 'false') {
        openLoginPopup(locationHref);
        return false;
    } else {
        var params = "chkedSlitmCdUitmCds=" + chkedSlitmCdUitmCds + "&sectId=" + sectId + "&reNew=Y";
        $.ajax({ url: "/p/mpc/editSltdItemLayerPup.do", data:params, type:"post",  success: function(data){
            $('#pop_likes').html(data);
            view_layer('pop_likes');
            setBizSpring("zzim");
            if ( e.preventDefault ) {
                e.preventDefault();
            } else {
                e.returnValue = false;
            }
        }, dataType: "html"});
    }
}
*/

function comma(num)
{
    var len,point,str;
    
    num = num + "";
    point = num.length %3;
    len  = num.length;
    
    str = num.substring(0, point);
    while(point < len)
    {
        if(str != "") str += ",";
        str += num.substring(point, point + 3);
        point += 3;
    }
    return str;
}


 
function zzimDone(openName, closeName, chkedSlitmCdUitmCds, sectId) {
    if(isLogin() == 'false') {
        openLoginPopup(locationHref);
        return false;
    } else {
        var sltdFldeSeq = $(".Popup_alarm.likes").find("input[name=sltdFldeSeq]").val();
        var params = "chkedSlitmCdUitmCds=" + chkedSlitmCdUitmCds + "&sectId=" + sectId + "&sltdFldeSeq=" + sltdFldeSeq + "&reNew=Y";
        $.ajax({ 
            url: "/p/mpc/insertSltdItemLayerAjax.do",
            data:params, 
            type:"post",
            dataType: "json",
            success: function(data) {
        
                    if(data.insertResult != 'undefined' && data.insertResult == '0'){
                            document.getElementById("pop_likes").style.display = 'none';
                            alert("판매중인 단품이 없어 찜하지 못했습니다.");
                            return true;
                        }
                        
                        else if(data.insertResult != 'undefined' && data.insertResult == '1'){
                            document.getElementById("pop_likes").style.display = 'none';
                            alert("이미 찜 목록에 담긴 상품입니다.");
                        return true;
                    }
                    else if(data.custGGimCnt >= 200){
                        document.getElementById("pop_likes").style.display = 'none';
                        //$('#pop_likes_keeping').html("더 이상 찜 할 수 없습니다. 찜리스트에서 오래된 상품을 삭제 후 다시 이용해 주세요.");
                        alert("더 이상 찜 할 수 없습니다. 찜리스트에서 오래된 상품을 삭제 후 다시 이용해 주세요.");  
                        return true;
                    }
                    
                    else
                    {
                        document.getElementById(openName).style.display = 'block'; 
                        document.getElementById(closeName).style.display = 'none';
                        //일반 상품
                        var zzimCnt = Number($(".pdtUserAction.pd_shipping_type_nomral .btnLike span").text().replace(",", ""));
                    
                        $(".pdtUserAction.pd_shipping_type_nomral .btnLike span").text(comma(zzimCnt + 1));
                        $(".pdtUserAction.pd_shipping_type_nomral .btnLike").addClass("on");
                        
                        //스토어픽
                        zzimCnt = Number($(".pdtUserAction.pd_shipping_type_storePick .btnLike span").text().replace(",", ""));
                    
                        $(".pdtUserAction.pd_shipping_type_storePick .btnLike span").text(comma(zzimCnt + 1));
                        $(".pdtUserAction.pd_shipping_type_storePick .btnLike").addClass("on");
                        document.getElementById("pop_likes_keeping").style.display = 'none';
                }
                 
                
            }
            , error: function(data) {
                console.log("zzimDone error");
            }
        });
    }
}


/*
 * 미리계산
 */
function openCalcPup() {
    setBizSpring("calc", "");
    chkLoginForCalcPup("");
}

function chkLoginForCalcPup(uitmCd) {
    if(isLogin() == 'true') {
        var screenWidth = $(window).width();
        var screenHeight = $(window).height();

        var link = "/p/pda/preCalcPup.do?slitmCd=2135294542&uitmCd=" + uitmCd + "&sectId=2731484";
        var name = "preCalcPup";
        var width = 500;
        var height = 700;
        var scroll = "yes";

        openPopup(link, name, width, height, scroll, screenWidth, screenHeight);
    } else {
        openLoginPopup("preCalcPop");
    }
}

/*
 * 재고수량
 */
function getStockCount(slitmCd, venCd, hdptYn, slitmCd2, dptsNum, obj) {
    if(isEmpty(dptsNum)) {
        dptsNum = $(obj).val();
        slitmCd2 = $("option:selected", obj).attr("slitmCd2");
    }
    //$("#stock_cnt").hide();
    
    $.ajax({
        type: "post"
        , url: "/p/pda/getStockCount.do"
        , dataType: "html"
        , data : {slitmCd : slitmCd, venCd : venCd, hdptYn : hdptYn, slitmCd2 : slitmCd2, dptsNum : dptsNum}
        , async : true
        , success : function(data) {
            $("#popup-modalDeoartmentStock").html(data);
            $("#popup-modalDeoartmentStock").css("display","block");
            $("#modalDeoartmentStock").modal().show();
            $('body').commonUi('initLibrary');
        }
        , error: function(data) {
        }
    });
    
    GA_Event("상품상세", "구매하기 레이어", "현대백화점 재고수량");
}

function clickhTimer() {
    var todayTimeStr = "2022,04,05,17,13,37";
    var todayTimeArray = todayTimeStr.split(",")
    var today = new Date(todayTimeArray[0], parseInt(todayTimeArray[1]) - 1, todayTimeArray[2], todayTimeArray[3], todayTimeArray[4], todayTimeArray[5]);
    var endTimeStr = "";
    var endTimeArray = endTimeStr.split(",")
    var endTime = new Date(endTimeArray[0], parseInt(endTimeArray[1]) - 1, endTimeArray[2], endTimeArray[3], endTimeArray[4], endTimeArray[5]);

    runTimer(today, endTime);
}

function runTimer(today, endTime) {
    setTimeout(function() {
        var clhSellCount = "0";
        var maxQty = "";
        var days = 60*60*24;
        var hours = 60*60;
        var mins = 60;
        var secs = 60;
        var left = parseInt((endTime - today)/1000); // sec

        var d = Math.floor(left/days);
        var d1 = getChar(d, 1);
        var d2 = getChar(d, 2);

        left = left - d * days;
        var h = Math.floor(left/hours);
        var h1 = getChar(h, 1);
        var h2 = getChar(h, 2);

        left = left - h * hours;
        var m = Math.floor(left/mins);
        var m1 = getChar(m, 1);
        var m2 = getChar(m, 2);

        //left = left - m * mins;
        //var s1 = getChar(left, 1);
        //var s2 = getChar(left, 2);

        var hitmlStr = ""
             + "<span>"
             + "<em class='time'>" + d1 + d2 + "</em>"
             + "일 "
             + "<em class='time'>" + h1 + h2 + "</em>"
             + "시간 "
             + "<em class='time'>" + m1 + m2 + "</em>"
             + "분"
             + " 동안 "
             + "<em class='buyer'>" + clhSellCount + "</em>"
             + "분깨서 구매</span> 하셨습니다.";

             if(!isEmpty(maxQty)) {
                 hitmlStr = hitmlStr + "/<span class='number bold'>" + maxQty + "</span>개";
             } else {
                 hitmlStr = hitmlStr + "";
             }
        $(".onairpd-alarm").html(hitmlStr);

        today.setTime(today.getTime() + 1000);
        return runTimer(today, endTime);
    }, 1000);
}

function getChar(num, pos) {
    var numStr = num + "";
    var rVal = "";

    if (pos == 1) {
        if (numStr.length > 1) {
            rVal = numStr.substring(0, 1);
        } else {
            rVal = "0";
        }
    } else {
        if (numStr.length > 1) {
            rVal = numStr.substring(1, 2);
        } else {
            rVal = numStr;
        }
    }

    return rVal;
}

/*
* 방송상품 재입고알림(단일속성)
*/
function restockAlarm(type) {
    var slitmCd = $("input[name='slitmCd']").val();
    if(isLogin() == 'false') {
        openLoginPopup("/p/pda/itemPtc.do?slitmCd=" + slitmCd);
        return false;
    }
    var uitmCd = "00001";
    var uitmTotNm ="없음";
    var bsicUitmListSize = new Number("fn:length(itemPtc.bsicUitmList)");
    if(bsicUitmListSize == 1) {
        uitmCd = "";
        var tmpUitmTotNm = "";
        if(!isEmpty(tmpUitmTotNm)) {
            uitmTotNm = tmpUitmTotNm;
        }
    }
    
    if(type == 'add') {
        $.ajax({
               type: "GET"
               ,url: "/p/pda/insertrestockAlarm.do"
               ,data: {"slitmCd" : slitmCd, "uitmCd" : uitmCd,"uitmTotNm" : uitmTotNm}
               ,async: false
               ,dataType: 'jsonp'
               ,crossDomain: true
               ,success : function(data) {
                   if(data.ActorError == "true"){
                       alert(data.ErrorMessage);
                   }
               }
               , error: function(data) {
                   console.log("restockAlarm error");
               }
       });   
    } else if(type == 'popup') {
        var screenWidth = $(window).width();
        var screenHeight = $(window).height();

        var link = "/p/pda/PDAItemRestockAlarm.do?slitmCd=2135294542&slitmNm=[나이키] W 에어맥스 97 DH8016-100&uitmTotNm=" + uitmTotNm;
        var name = "preCalcPup";
        var width = 450;
        var height = 400;
        var scroll = "no";
        
        openPopup(link, name, width, height, scroll, screenWidth, screenHeight);
    }
}

/*
 * 라이브쿠폰 다운로드
 */
function downloadLiveCoupon(obj) {
    if(isLogin() == 'false'){
        openLoginPopup("downloadLiveCoupon");
        return false;
    }

    $.ajax({
        type: "post"
        , url: "/p/pda/downloadLiveCoupon.do"
        , dataType: "json"
        ,success : function(data) {
            if(data.save == true) {
                var $live_coupon = $('#live_coupon');
                var w = $(obj).offset().left;
                var h = $(obj).offset().top;
                $live_coupon.css({'top':h + 10, 'left':w}).show();
            } else {
                alert(data.errorMsg);
            }
        }
        , error: function(data) {
            alert(data.errorMsg);
        }
    });
}

//방송톡 
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
                        openLoginPopup("/p/tvMainR.do"); return false;
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

/*
 * SMS 전송
 */
function sendSMS() {
    var todayTimeStr = "2022,04,05";
    var todayTimeArray = todayTimeStr.split(",")
    
    if(isLogin() == 'false') {
        alert("로그인후 이용하실 수 있습니다.");  
        openLoginPopup(locationHref);
    } else { 
        if(!confirm("SMS를 전송하시겠습니까?")) {
            return;
        }
        $("#itemSMSForm").ajaxSubmit({
            url: "/p/pda/sendSMS.do"
            , dataType: "json"
            , success: function(data) {
                if(!isEmpty(data.errorMessages)) {
                    alert(data.errorMessages.join("\n"));
                } else {
                    if(data.save) {
                        alert("현대Hmall의 상품URL 전송 신청이 " + todayTimeArray[0] +"년 " + todayTimeArray[1] + "월 " + todayTimeArray[2] + "일 처리 되었습니다.");               
                    }
                    setBizSpring("mobileSms");
                }
            }
            , error: function(xhr, status, error) {
    
            }
        });
    }
}

/*
 * 로그인 체크
 */
function loginChk() {
    if(isLogin() == 'false') {
        alert("로그인후 이용하실 수 있습니다.");  
        openLoginPopup(locationHref);
    }    
}

/*
 * QNA 페이징처리
 */ 
function searchQnaPaging(url) { 
    $.ajax({
        url: url
        , type: "get"
        , dataType: "html"
        , success: function(data) { 
           $("#itemOptQnAInfo").html(data);
           $('body').commonUi('initLibrary');
           if($("#viewPage04 .qnaPaging").length > 1) {
               $("#viewPage04 .qnaPaging:last").remove();
           }
        }
    }); 
 }

/*
 * 딜상품 질문하기
 */
function openOptItemQNAPopup(slitmCd) {
    setBizSpring("qaWrite");
    openPopup("/p/pdd/selectItemQNAQstnPupOption.do?slitmCd=" + slitmCd, "sstplQna", 550, 900, "yes");
}

/*
 * 일반상품 질문하기
 */
function openItemQNAPopupNew(slitmCd) {
    openPopup("/p/pdd/selectItemQNAQstnPup.do?slitmCd=" + slitmCd, "itemQna", 540, 820, "yes");
}

/*
 * Q&A 더보기 클릭 이벤트
 */
$(document).on('click', '.question, .no_answer', function(e) {
    var submenu = $(this).next("ul.qna_answer");
    var qnamenu = $(this).next().next("ul.qna_answer");
    
    if($(submenu).length > 0) {
        if( submenu.is(":visible") ) {
            // 2018.08.21 김동민 Q&A 답변 미노출 수정
            submenu.hide();
            qnamenu.hide();
            $(this).find(".btnMore").show();
            $(this).find(".brnMoreClose").hide().removeClass("nowBtnMore");
        } else {
            // 2018.08.21 김동민 Q&A 답변 미노출 수정
            submenu.show();
            qnamenu.show();
            $(this).find(".btnMore").hide();
            $(this).find(".brnMoreClose").show().addClass("nowBtnMore");
        }
    }
});

/*
 * QNA 수정 버튼 클릭
 */
function openItemQNAPopupReNew(itemQnaQstnNo, slitmCd) {
    openPopup("/p/pdd/selectItemQNAQstnPupReNew.do?new=Y&itemQnaQstnNo=" + itemQnaQstnNo +"&slitmCd="+slitmCd, "itemQna", 540, 820, "yes");
}

/* 
 * 상품 Q&A 셀렉트 박스
 */
function setItemsQnA(obj,slitmCd, itemQnaExpsYn) {
     var optHtml = "";
        if(itemQnaExpsYn == 'N') {
            alert("해당상품은 Q&A 문의가 불가능합니다.");
            return;
        }
        
        var objYn = 'N';
        if(slitmCd == '00') {
            objYn ='Y';
            slitmCd = '2135294542';
            optHtml = '전체 상품 Q&A 보기';
        } else {
            optHtml = $(obj).html();
        }
        
        $.ajax({
            type: "post"
            ,url: "/p/pdd/selectOptItemQNAListBySlitmCd.do"
            ,data: {
                'slitmCd':slitmCd,
                'optYn':objYn,
                'dealYn':dealYn,
                'reNew':'Y'
            }
            ,dataType: "html"
            ,async: false
            ,success : function(html) {
                $("#viewPage04 .sel-prduct #dropOption4 a").html(optHtml);
                
                $("#itemOptQnAInfo").empty();
                $("#itemOptQnAInfo").append(html);
                $('body').commonUi('initLibrary');
            }
            ,error : function() {
                console.log("setItemsQnA error");
            }
        });
}

/*
 * 묶음배송 관련함수
 */
function searchBndlDlvInf() {
    setBizSpring('itemDlvc');
    var itemDCsfNm = '런닝화/조깅화/워킹화';
    var url = "/p/pde/search.do?ven2Code="+'000000'+"&mdCode="+'8072'+"&mdFlag=AND"+"&slitmCd="+'2135294542' 
                 + "&bndlDlvYn=Y" +"&hdptYn=Y"+"&itemDCsfNm="+encodeURIComponent(itemDCsfNm);
    window.open(url);
}

/*
 * 상품추천서비스(view)
 */
function setRcmmItemViewList(slitmCd) {
    var hdptYn   = "N";
    $.ajax({
        type        : "get" 
        , url       : "/p/pda/getSrchAsct.do?type=detailView&bsitmCd=" + bsitmCd+"&hdptYn="+hdptYn
        , data      : ""
        , dataType  : "html"
        , success   : function(data, textStatus, jqXHR) {
            $("#pinside1").append(data);
        }
        , error: function(jqXHR, textStatus, errorThrown) {

        }
        , complete: function(jqXHR,textStatus ) {
             if($("#pinside1 .slide-contents").length > 0) {
                $("#pinside1 .slide-contents").spSlider({
                    fade: true,
                    showcount: 5,
                    arrow: true
                });
            }    
        }
    });
}

/*
 * 상품추천서비스(buy) detailBu : 이상품을 구매한, detailView 이상품을 본
 */
function setRcmmItemBuyList(slitmCd) {
    $.ajax({
        type        : "get"
        , url       : "/p/pda/getSrchAsct.do?type=detailBuy&slitmCd=" + slitmCd
        , data      : ""
        , dataType  : "html"
        , success   : function(data, textStatus, jqXHR) {
            $("#pinside2").append(data);
        }
        , error: function(jqXHR, textStatus, errorThrown) {

        }
        , complete: function(jqXHR,textStatus ) {
             if($("#pinside2 .slide-contents").length > 0) {
                 $("#pinside2 .slide-contents").spSlider({
                     fade: true,
                     showcount: 5,
                     arrow: true
                 });
            }
        }
    });
}

/*
 * 190725 - 추천상품
 */
function setRcmmItemRecommendList(bsitmCd) {
    $.ajax({
        type        : "get"
        , url       : "/p/dpl/getRcmmRecommendItemList.do?type=detailRecommend&bsitmCd=" + bsitmCd
        , data      : ""
        , dataType  : "html"
        , success   : function(data, textStatus, jqXHR) {
            $("#pinside3").append(data);
        }
        , error: function(jqXHR, textStatus, errorThrown) {

        }
        , complete: function(jqXHR,textStatus ) {
             if($("#pinside3 .slide-contents").length > 0) {
                 $("#pinside3 .slide-contents").spSlider({
                     fade: true,
                     showcount: 5,
                     arrow: true
                 });
            }
        }
    });
}


/*
 * 함께 구매하면 상품명 선택시
 */
$(document).on('click', '#section_cont_6 .prod_plus_wrap .object_name, #section_cont_6 .prod_plus_wrap .object_price', function() {
    var asctSlitmCd = $(this).closest(".plus_object").find("input[name=asctSlitmCd]").val();
    if(!isEmpty(asctSlitmCd)) {
        var url = "/p/pda/itemPtc.do?slitmCd=" + asctSlitmCd;
        setBizSpring("", url);
    }
});

/*
 * 함께 구매하면 좋은 상품 체크 이벤트
 */
$(document).on('change', '.checkbox_plus', function() {
    plusCheckBox(this);
});

function plusCheckBox(obj) {
    var totalPrc = 0
    $(".prod_plus_wrap li").each(function() {
        if(!$(this).hasClass("object_default") && $(this).find(".checkbox_plus").is(":checked")) {
            var asctSellPrc = $(this).find("input[name=asctSellPrc]").val();
            totalPrc += Number(asctSellPrc);
        }
    });
    
    $(".object_plus_info em.bold_price").text(gfn_appendComma(totalPrc));
    
    if(totalPrc > 0) {
        $(".object_plus_info").show();
    } else {
        $(".object_plus_info").hide();
    }
}

/*
 * 옵션선호도
 */
 function extraInfo(slitmCd) {
     $.ajax({
         type:"post"
         ,url:"/p/pda/selectUitmPrfr.do"
         ,data: {
             'slitmCd':slitmCd
         }
         ,async:false
         ,dataType:"html"
         ,success:function(data) {
             if(isEmpty($.trim(data))) {
                $('.ui-dropdown.sel-option .dropdown-menu').addClass("no-fixed");
             	$(".bottom-fixed").remove();
             	return;
             }
             $("#popup-modalCusMethPre").html("");
             $("#popup-modalCusMethPre").html(data);
             $("#popup-modalCusMethPre").css("display","block");
         }
         , error: function() {
             console.log("extraInfo error");
         }
     });
}

/*
 * toolTip 좌표
 */
function toolTipHover() {
    $('.renewToolTip').hover(function() {
        var index = $(this).attr("data-toolIndex");
        var top = $(this).position().top;
        var left = $(this).position().left;
        var width = "";
        var topGap = 20;
        var leftGap = 20;
        if(index == 1) {
            topGap = 30;
            leftGap = 50;
        }
        if(index == 2) {
            topGap = 45;
            leftGap = -60;
        }
        if(index == 5) {
            leftGap = -60;
        }
        if(index == 6 || index == 8) {
            topGap = 30;
            leftGap = 51;
        }
        if(index == 17) {
            topGap = 32;
            leftGap = 0;
        }
        if(index == 18 ) {
            leftGap = -150;
        }
        if(index == 20 ) {
            left = 0;
            leftGap = 0;
            index = "_" + $(this).attr("id");
        }
        //카드즉시할인KJH 추가 
        if(index == 21 ) {
            left = 0;
            leftGap = 0;
            index = "_" + $(this).attr("id");
        }
        if(index == 999 ) {
            leftGap = -150;
        }
        if(index == "goodLuckInfo") {
            leftGap = -200;
        }
        if(index == "dlvHopeDt") {
            width = 180;
        }
        
        if(index == "_interestfree") {
            leftGap = -250;
        }
        
        if(index == "_crowd-funding" ) {
            leftGap = -375;
        }
        
        if(index == "dlvHopeDt") {
            $(".renewToolTip" + index).css({
                top: top + topGap,
                left: left + leftGap,
                width : width
            }).show();
        } else {
            $(".renewToolTip" + index).css({
                top: top + topGap,
                left: left + leftGap,
            }).show();
        }
        
    }, function() {
        var index = $(this).attr("data-toolIndex");
        var indexId = "_" + $(this).attr("id");
        if(index != 4) {
            $(".renewToolTip" + index).hide();
        }
        $(".renewToolTip" + indexId).on('mouseleave',function(){
            if($(".renewToolTip" + indexId).css("display") != "none") {
                $(".renewToolTip" + indexId).hide();
            }
        });
    });
}

/*
 * 특정 toolTip 마우스 이벤트
 */
$(document).on("mouseleave", ".renewToolTip4", function(e) {
    if($(this).css("display") != "none") {
        $(this).hide();
    }
});

/*180907 - 청구할인 상세정보 추가 - sb - demoscript*/
$('.baroInfoText .getHelp').on('mouseover',function(){
    $('#tooltip20').show();
});

function isEmptyDetail(val){
    return (val == null || val == undefined || $.trim(val) == "" || $.trim(val) == 'undefined' || $.trim(val) == 'null');
}

function numberByStr(numStr) {
    var strLen = numStr.length;
    var str1 = '', str2 = '', str3 = '';

    var str2Len = 0;
    if(strLen >= 5){
        str1 = numStr.substring(0, numStr.length - 4);
        str2 = numStr.substring(numStr.length - 4, numStr.length);
    }else{
        str2 = numStr;
    }
    if(!isEmptyDetail(str1)){
        str1 += '만';
    }
    if(str2 == '0000'){
        str3 = '';
    }else{
        str2Len = str2.length;
        var ck = true;
        if(str2Len == 4 && str2.substring(0,1) != '0'){
            for(var i = 0; i < str2Len; i++ ){
                var st = str2.substring(i,i+1);
                if(i == 0){
                    str3 += st + '천';
                }else{
                    if(ck && st == '0'){
                        ck = true;
                    }else{
                        str3 += st;
                        ck = false;
                    }
                }
            }
        }else{
            for(var i = 0; i < str2Len; i++ ){
                var st = str2.substring(i,i+1);
                if(ck && st == '0'){
                    ck = true;
                }else{
                    str3 +=  st;
                    ck = false;
                }
            }
        }
    }

    return str1+ str3 + '원';
}

/*
 * 상품 이미지 선택 시 동영상 영역 숨김처리
 */
 function viewItemImg() {
    try {
        $("#movie").hide();
        $("#start-videoButn").hide();
        jwplayer("divMovie_1").stop();
    } catch (e) {}
}
/*
 * 방송알림시 비즈스프링 동작을 위해 펑션 추가
 */
function bitemAlrimPopupNew(slitmNm, slitmCd, bsitmCd) {
    if(isLogin() != 'true') {
        openLoginPopup(locationHref);
        return false;
    }
    
    GA_Event("상품상세", "방송알리미", "");
    
    if(isLogin() == 'false'){
        openLoginPopup('/p/bmc/brodPordPbdv.do?type=03&MainpageGroup=TopTvLiveSchedule');
        return false;
    } else {
        var link = "/p/bma/editBitmAlrimNewPup.do?slitmNm=" + encodeURIComponent(slitmNm) + "&slitmCd="+slitmCd + "&bsitmCd="+bsitmCd;
        var win = window.open(link, 'BitemAlrimCommonPop', "width=600, height=738, toolbar=no, location=no, status=no, menubar=no, directories=no, resizable=no, scrollbars=no");
        win.focus();
    }
}

/*
 * 상품평, 고객만족도 쓰기 버튼
 */
function evalWrite(qnaExpsYn, url) {
    if(qnaExpsYn == "N") {
        setBizSpring('evalWriteN');
     } else {
        setBizSpring('evalWriteY');
     }
    if(!isEmpty(url)) openLoginPopup(url);
}

/*
 * 고객만족도 팝업
 */
function openCustStsfEvalPopUp() {
    openCustStsfEvalPup("2135294542");
}

/*
 * 박스포장 주의사항 동의
 */
function agrBoxPackItemOrd() {
	if(__rsvItemCheck == 'Y') {
		reservedPopup();
	} else {
		buyDirectFormSubmit();
	}
}

/*
 * 예약구매상품 주의사항 동의
 */
function agrHmallRsvItem() {
    buyDirectSubmit();
}

/*
 * 상세설명의 갤러리 클릭
 */
function showGalleryImg(obj) {
    $(".bigPicWrap").find("img").attr("src", $(obj).find("img").next().attr("src"));
}

/*
 * 주문제작상품 주의사항 동의
 */
function agrOrdMakeItemOrd() {
    if(__rsvItemCheck == 'Y') {
    	reservedPopup();
    } else {
        buyDirectFormSubmit();
    }
}

/*
 * 좌우배너 헤더 영역 zindex 0
 */
function zindexInit() {
    $(".wingbanner").css("z-index", 0);
    $(".header .header-service-area").css("z-index", 0);
}

/*
 * 비즈스프링
 */
function setBizSpring(linkNm, url, blankYn, keyWord) {
    var bizSpringNm = "";
    if(isEmpty(blankYn)) blankYn = "N";
    
    if(linkNm == "brnd") {
        bizSpringNm = "상품상세_브랜드샵";
    } else if(linkNm == "calc") {
        bizSpringNm = "상품상세_미리계산기";
    } else if(linkNm == "copnDis") {
        bizSpringNm = "상품상세_쿠폰청구할인혜택더보기";
    } else if(linkNm == "itemDlvc") {
        bizSpringNm = "상품상세_묶음배송상품보기";
    } else if(linkNm == "itemSelPdt") {
        bizSpringNm = "상품상세_상품선택_섬네일버튼형";
    } else if(linkNm == "itemSelList") {
        bizSpringNm = "상품상세_상품선택_리스트형";
    } else if(linkNm == "extraInfo") {
        bizSpringNm = "상품상세_속성별선호도";
    } else if(linkNm == "ItemRishp") {
        bizSpringNm = "상품상세_재입고알림";
    } else if(linkNm == "zzim") {
        bizSpringNm = "상품상세_찜";
    } else if(linkNm == "bsitmAlrim") {
        bizSpringNm = "상품상세_방송알림";
    } else if(linkNm == "addCart") {
        bizSpringNm = "상품상세_장바구니";
    } else if(linkNm == "mobileBuy") {
        bizSpringNm = "상품상세_앱구매";
    } else if(linkNm == "buyDirect") {
        var txt = $.trim($(".pdtUserAction a.btn:last").text());
        if(isEmpty(txt)) txt = "바로구매"
        bizSpringNm = "상품상세_" + txt;
    } else if(linkNm == "marketBnnr") {
        bizSpringNm = "상품상세_상단마케팅배너";
    } else if(linkNm == "prmoBnnr") {
        bizSpringNm = "상품상세_적립금리워드배너";
    } else if(linkNm == "rcmmItemP") {
        bizSpringNm = "상품상세_상단마이템_다른고객함께본상품";
    } else if(linkNm == "rcmmItemBuy") {
        bizSpringNm = "상품상세_하단마이템_구매상품";
    } else if(linkNm == "#section_cont_1") {
        bizSpringNm = "상품상세_상단고정바_상세설명";
    } else if(linkNm == "#section_cont_2") {
        var itemQnaExpsYn = "Y";
        if(itemQnaExpsYn == "N") {
            bizSpringNm = "상품상세_상단고정바_고객만족도";
        } else {
            bizSpringNm = "상품상세_상단고정바_상품평"; 
        }
    } else if(linkNm == "#section_cont_3") {
        bizSpringNm = "상품상세_상단고정바_Q&A";
    } else if(linkNm == "#section_cont_4") {
        bizSpringNm = "상품상세_상단고정바_기본정보";
    } else if(linkNm == "dealLayer") {
        bizSpringNm = "상품상세_상세설명_옵션_자세히";
    } else if(linkNm == "detailMore") {
        bizSpringNm = "상품상세_상세설명_더보기";
    } else if(linkNm == "evalWriteN") {
        bizSpringNm = "상품상세_고객만족도_만족도평가";
    } else if(linkNm == "evalWriteY") {
        bizSpringNm = "상품상세_상품평_상품평쓰기";
    } else if(linkNm == "starSelect") {
        bizSpringNm = "상품상세_상품평_별점선택box";
    } else if(linkNm == "qaWrite") {
        bizSpringNm = "상품상세_Q&A_질문하기";
    } else if(linkNm == "keyWord") {
        bizSpringNm = "상품상세_연관키워드_" + keyWord;
    } else if(linkNm == "asctAddCart") {
        bizSpringNm = "상품상세_함께구매추천상품_장바구니담기";
    } else if(linkNm == "smStyleItem") {
        bizSpringNm = "상품상세_비슷한스타일상품";    
    } else if(linkNm == "spexSect") {
        bizSpringNm = "상품상세_추천기획전";
    } else if(linkNm == "esOptAddCart") {
        bizSpringNm = "상품상세_간편선택바_장바구니";
    } else if(linkNm == "esOptBuyDirect") {
        bizSpringNm = "상품상세_간편선택바_바로구매";
    } else if(linkNm == "mobileSms") {
        bizSpringNm = "상품상세_모바일구매_SMS전송";
    } else if(linkNm == "layerExtraInfo") {
        bizSpringNm = "상품옵션레이어_속성별선호도";
    } else if(linkNm == "layerAddCart") {
        bizSpringNm = "상품옵션레이어_장바구니";
    } else if(linkNm == "layerBuyDirect") {
        bizSpringNm = "상품옵션레이어_바로구매";
    } else if(linkNm == "bnnrInf02List") {
        bizSpringNm = "상품상세_상세설명_MD배너";
    } else if(linkNm == "calcPupBuyDirect") {
        bizSpringNm = "미리계산기_바로구매";
    } else if(linkNm == "helpSort"){ 
        bizSpringNm = "상품상세_상품평_도움순";
    } else if(linkNm == "recentSort"){
        bizSpringNm = "상품상세_상품평_최신순";
    } else if(linkNm == "review_morebtn"){
        bizSpringNm = "상품상세_상품평_자세히보기";
    } else if(linkNm == "review_play_btn"){
        bizSpringNm = "상품상세_상품평_영상재생";
    } else if(linkNm == "user_info_alram"){
        bizSpringNm = "상품상세_상품평_신고";
    } else if(linkNm == "recommend_btn_on"){
        bizSpringNm = "상품상세_상품평_도움";
    } else if(linkNm == "recommend_btn_off"){
        bizSpringNm = "상품상세_상품평_도움취소";
    } else if(linkNm == "review_banner"){
        bizSpringNm = "상품상세_상품평_배너_" + keyWord;
    } else if(linkNm == "rcmmItemRecommend"){ // 190725
        bizSpringNm = "상품상세_" + keyWord;
    }
    
    /*
    try {
        if(!isEmpty(bizSpringNm)) _trk_clickTrace('EVT', bizSpringNm);
    } catch (e) {}
    */
    
    if(!isEmpty(url)) {
        if(blankYn == "Y") {
            window.open(url, '_blank');
        } else {
            document.location.href = url;
        }
    }
}

 //특정대상 전용상품
 function exclItemTrgtGbcdChk(trgtTtype){
     //특정대상 전용상품 check type (cart : 장바구니, zzim : 찜하기, buy : 바로구매)

     var returnExclItemTrgtGbcdChkFalg = true;
     if(!isEmpty('')){
        
        if(trgtTtype != "buy"){
            returnExclItemTrgtGbcdChkFalg = false;
            alert("본 상품은 즉시 구매만 가능합니다.");
        }else{
             var totalQty = Number(0);     
             $(".product-option-wrap .stock-item.select-product-list .pditem .inplabel .controlAmount input[name=ordQty]").each(function() { 
                  totalQty = totalQty +  Number($(this).val());                                      
             });
             $.ajax({
               url: "/p/pda/exclItemTrgtChk.do?chkExclItemTrgtType="+ trgtTtype + "&slitmCd=2135294542" +"&exclItemTrgtGbcd="+"&totalQty="+totalQty
               , type: "get"
               , dataType: "json"
               , async:false
               , success: function(data) {
                if(!isEmpty(data.message)) {
                    returnExclItemTrgtGbcdChkFalg = false;
                    alert(data.message);
                    if(!isEmpty(data.redirectUrl)){
                        window.location.href = data.redirectUrl;
                    }
                }
                       
               }, error: function() {
                   console.log("특정대상 상품 정보 체크 error");
               }
           });
        }
     }
     
     return returnExclItemTrgtGbcdChkFalg;
     
}

function changeSiDoGuGunClk(obj) {
    var siNm = $(obj).attr("id") == "selectID" ? $(obj).val() : $("#selectID").val();
	var guNm = $(obj).attr("id") == "selectID2" ? $(obj).val() : "";
	if($(obj).val() == 0) {
		return;
	}
	dawnDlvFindAdrList(siNm,guNm);
}
/*
 * 새벽배송 가능지역 리스트 조회_20180628특화배송조유진
 */
var dawnAdrListyn = "Y";
var bfSiNm="";
var bfGuNm="";
function dawnDlvFindAdrList(siNm,guNm) {
    if(bfGuNm != guNm){
        dawnAdrListyn = "Y";
    }
    var htmlStr = "";
    var htmlStr2 = "";
    if(dawnAdrListyn == "Y"){
        $.ajax({
            type: "get"
            , url: "/p/pda/selectFindDawnDlvList.do?siNm="+encodeURI(siNm)+"&guNm="+encodeURI(guNm) 
            , dataType: "json"
            , async: false
            , success : function(data) {
               if(guNm == "" || (bfSiNm != siNm)){
                   htmlStr ='<option value="0">시/군/구 선택</option>';
                   for (var idx=0; idx < data.dawnDlvAdrGuNmList.length; idx++) {
                      htmlStr +="<option value='"+data.dawnDlvAdrGuNmList[idx].guNm+"'>"+data.dawnDlvAdrGuNmList[idx].guNm+"</option>";
                   }
                   $("#selectID2").html(htmlStr);
                   $("#selectID2").parent().selectbox('refresh');
                   $("#adrListTable").html("");
                   bfSiNm = siNm;
                   return;
               }
                
                var htmlStr2 = "<tbody>";
                for (var idx=0, len = data.dawnDlvAdrList.length; idx < len; idx++) {
                    htmlStr2 += "<tr>";
                    htmlStr2 +="<td style='vertical-align:top'>"+data.dawnDlvAdrList[idx].siNm+"</td>";
                    htmlStr2 +="<td style='vertical-align:top'>"+data.dawnDlvAdrList[idx].guNm+"</td>";
                    htmlStr2 +="<td>"+data.dawnDlvAdrList[idx].dongNm+"</td>";
                    htmlStr2 += "</tr>";
                }
                htmlStr2 += "</tbody>";
                $("#adrListTable").html(htmlStr2);
                $("#adrListTable").rowspan(0);
                $("#adrListTable").rowspan(1);
                
                dawnAdrListyn = "N";
                bfGuNm = guNm;
            }
        });
    }
}

/* 테이블 병합_20180628특화배송조유진 */
$.fn.rowspan = function(colIdx, isStats) {       
    return this.each(function(){      
        var that;     
        $('tr', this).each(function() { 
            var objRow = this;
            var preCol = colIdx - 1;
            $('td:eq('+colIdx+')', this).filter(':visible').each(function() {
                
                if ($(this).html() == $(that).html() && (!isStats || isStats && $(this).prev().html() == $(that).prev().html())) {            
                    
                    var isSpan = false;
                    if (preCol != -1) {
                        $('td:eq('+preCol+')', objRow).each(function() {
                            
                            if ($(this).css("display") == "none") {
                                isSpan = true;
                            }
                        });
                    }
                    else {
                        isSpan = true;
                    }
                    
                    if (isSpan) {
                        rowspan = $(that).attr("rowspan") || 1;
                        rowspan = Number(rowspan)+1;

                        $(that).attr("rowspan",rowspan);
              
                        $(this).hide();
                    }
                    else {            
                        that = this;         
                    }
                }
                else {            
                    that = this;         
                }
                
                that = (that == null) ? this : that;      
            });     
        });    
    });  
};

/*
 * 새벽배송/신선식품 주의상품 안내 팝업 20180704 특화배송조유진
 */
function dawnDlvfreshfoodItemOrdInfPup(rsvItemCheck) {
	__rsvItemCheck = rsvItemCheck;
	cautionUiPopup(0);
	return;
	/*
    var screenWidth = $(window).width();
    var screenHeight = $(window).height();
    var link = "/p/oda/dawnDlvFreshFoodItemOrdInfPup.do";
    var name = "dawnDlvfreshfoodItemOrdInfPup";
    var width = 680;
    var height = 414;
    var scroll = 'yes';

    $("#itemInfForm").attr("action", link);
    $("#itemInfForm").attr("target", name);

    openPopup('', name, width, height, scroll, screenWidth, screenHeight);

    $("#itemInfForm").submit();
    */
}

//쿠폰리스트 호출..
var viewYn = "N";
$(window).on("load",function() {
    getCopnList();
    var itemSellPrc = '189050';
    if(itemSellPrc >= 50000){ //>> 5만원이상일경우에만 조회를 한다.
    	getTmplGbcdO9Event();
    }	
    
    // 상품상세 동영상 클릭시 GA이벤트 전송
    if($(".product-mainbanner .vjs-big-play-button").length > 0){
    	 $(document).on("click", ".product-mainbanner .vjs-big-play-button", function(e) {
    		 GA_Event("상품상세", "상단_수동재생", '2135294542_[나이키] W 에어맥스 97 DH8016-100');
    	 });
    }
    
 	if(orgRefer != ""){
    	history.pushState(null, null, "");
	    customHistory.push('orgRefer');
    }
    
});

$(window).on('popstate', function(event){
    
    var h = customHistory.pop();
    
    if(h == 'orgRefer'){ // 성인인증후 뒤로가기..
    	window.location.href = orgRefer;
    }
    
});


function getTmplGbcdO9Event(){
    
	var itemSellPrc = '189050';
	var mainSlitmCd = '2135294542';
	
	$.ajax({
        type: "GET"
        ,url: "/p/pda/getTmplGbcdO9Event.do"
        ,data: {itemSellPrc:itemSellPrc, mainSlitmCd:mainSlitmCd}
        ,dataType: "html"
        ,async: true
        ,success : function(data) {
            //성공후 id : o9EvntTmpl	                
        	if(data.indexOf("no-data") != -1){
            	$("#o9EvntTmpl").css("display", "none");
            }else{
            	$("#o9EvntTmpl").html(data);
            	$("#o9EvntTmpl").css("display", "block");
            }
        }
        ,
        error : function(){
            
        	console.log("json error");
            $("#o9EvntTmpl").css("display", "none"); //에러날경우 display none..
        }
        
    });
    
}

    function getCopnList(msg){
        
        if(msg == "checkY"){
            if(isLogin() == 'false'){
                if(confirm("쿠폰 다운로드를 위해 로그인이 필요합니다.\n로그인 하시겠습니까?")) {
                    window.location.href = '/p/cob/loginForm.do?redirectUrl=' + '/p/pda/itemPtc.do?slitmCd='+'2135294542'+'&SectID='+'2731484';
                }
                return ;
            }else if(isLogin() == 'true'){
                 $('#modalCouponDownload').modal().show();
            }
        }
        
        if(viewYn == "Y"){ //한번 봤으면 봤던데이터로만 보여준다.
            return;
        }
        var slitmCd = $("input[name='slitmCd']").val();
        
        if(preview == "" || preview == null||preview!="true"){ 
            preview ="false";
        } 
        
        $.ajax({
            type: "post"
            , url: "/p/pda/selectItemPtcDownCopn.do"  
            , data: { "slitmCd" : slitmCd,"preview" : preview,"prmoDate" : prmoDate }
            , dataType : "html"
            , async: false
            , success : function(data) {
                
                //console.log("success", data.indexOf("발행가능한 쿠폰이 없습니다"));
                if(data.indexOf("발행가능한 쿠폰이 없습니다") == -1){
                    $("#popup-coupon").html("");
                    $("#popup-coupon").html(data);
                    $("#popup-coupon").css("display","block");
                    $(".download-coupon").css("display","block");
                }
            }
                
            , error : function(){
            }
            
            ,complete : function() {
                viewYn = "Y";
            }
        });    
        
        
    }

//상품상세 - 다운로드쿠폰 다운받기 !! 여기 더블클릭 불가 하게 해야함.
var roulette_flag = 0;
function goCopnDownload(copnNo){
    
    var totalYn = "N";
    if(isLogin() == 'false'){
        if(confirm("쿠폰 다운로드를 위해 로그인이 필요합니다.\n로그인 하시겠습니까?")) {
            window.location.href = '/p/cob/loginForm.do?redirectUrl=' + '/p/pda/itemPtc.do?slitmCd='+'2135294542'+'&SectID='+'2731484';
            
        }
        return false;
    }
    
    if(roulette_flag != 0){
        return false;
    }
    roulette_flag = 1;
    
    var copnArr = [];
    if(copnNo == 'ALL'){
        totalYn = "Y";
        var i = 0;      
                
        //copnArr배열에 다운로드할 쿠폰들을 넣어준다.
        $(".content-body #popup-coupon .coupon-list .coupon-box").each(function(index, item) {
            if(!$(item).hasClass("complete")){
                copnArr.push($(item).attr("id"));
            }
        });
    }
    
    $.ajaxSettings.traditional = true;
    $.ajax({
        type: "post"
        , url: "/p/pda/insertItemPtcDownCopn.do"  
        , data: { 
           "copnNo" : copnNo,
           "copnArr": copnArr,
           "totalYn": totalYn
        }
        , dataType: "json"
        , async: false
        , success : function(data) {
               if(data.actorError == 'true'){
                   roulette_flag = 0;
                   if( data.errorMessage == "UPNT_REGISTER" ){
                       if(confirm("H.Point 통합회원 가입 후 쿠폰 다운로드가 가능합니다.\nH.Point 전환가입 하시겠습니까?")) {
                            window.location.href = "/p/cua/registUpnt.do";
                       }
                    }else{                     
                        alert(data.errorMessage);                           
                    }
                   
               }else if(data.successMessage != null){
                   
                   roulette_flag = 0;
                   alert(data.successMessage);                 
                 
                   //CSS수정
                   var getCopnStr = ""+data.getCopn;
                   var getCopnArr = getCopnStr.split(",");
                                   
                   //CSS : 쿠폰받기완료로 수정
                   if(getCopnArr != null && getCopnArr.length > 0) {
                       
                       for(var i=0; i<getCopnArr.length; i++){
                           $(getCopnArr[i]).removeClass("complete");
                           $(getCopnArr[i]).addClass("incomplete");
                           $(getCopnArr[i]).find("a").text("다운 완료");
                           $(getCopnArr[i]).find("a").attr('onclick','').unbind('click');
                       }
                   }
                   
                   //CSS : 전체쿠폰받기 수정           
                   var tmpCheck = "true"; 
                   $(".content-body #popup-coupon .coupon-list .coupon-box").each(function(index, item) {
                        if($(item).hasClass("complete")){
                            tmpCheck = "false"; 
                        }
                   });
                   
                   if(tmpCheck == "true"){
                       $(".btn btn-lineblack medium coupon").remove();
                   }
               }
            }
        , error : function(){
            roulette_flag = 0;
        }
        
    });    
    
}

/*
 * 새벽배송 주의사항 동의
 */
function dawnDlvfreshfoodItemOrd() {
    if(__rsvItemCheck == 'Y') {
        reservedPopup();
    } else {
       	buyDirectFormSubmit();
    }
}

var __rsvItemCheck = 'N';
var __carefulPopDubYn = 'N';
var __dawnFreshYn = 'N';
//주문제작+박스오픈 주의사항 팝업 20180713특화배송조유진
function carefulPop(yn){
	__carefulPopDubYn = yn;
    if(boxOpenYn == "Y" && productOrdYn == "Y") {
        cautionUiPopup(4);
    } else if(boxOpenYn == "Y") {
        cautionUiPopup(2);
    } else if(productOrdYn == "Y") {
        cautionUiPopup(1);
    }
    return;
    // openPopup("/p/odb/selectOrdNoticeList.do?basktInf=" + basktInfArr.join("&basktInf=") + "&ordAgreeInf=" + ordAgreeInfArr.join("&ordAgreeInf=")+ "&uitmCdInfPup=" + uitmCdInfPupArr.join("&uitmCdInfPup=")+"&carefulPopDubYn="+yn, "ordAgreePup", 486, 355, "yes", 0, 0);
    // return;
}

//새벽배송+신선식품 주의사항 팝업 20180713특화배송조유진
function carefulPop2(){
    __basktInfArr = new Array();
    $('#itemInfForm').find("input[name='basktInf']").each(function(index, obj) {
    	__basktInfArr.push($(obj).val());
    });
    
	cautionUiPopup(3);
    // openPopup("/p/odb/selectDawnFreshOrdNoticeList.do?basktInf=" + basktInfArr.join("&basktInf=") + "&ordAgreeInf=" + ordAgreeInfArr.join("&ordAgreeInf=")+ "&uitmCdInfPup=" + uitmCdInfPupArr.join("&uitmCdInfPup="), "ordAgreePup2", 663, 560, "yes", 0, 0);
    return;
}

function openPhotoEvalInfo() {
    $("#modalPhotoReview").modal().show();
}


String.prototype.replaceall = function( searchStr, replaceStr ){
    var temp = this;    
    while( temp.indexOf( searchStr ) != -1 ){
      temp = temp.replace( searchStr, replaceStr );
    }
    return temp;
}


_TRK_PI="PDV";
_TRK_PNC="2135294542";
_TRK_PNC_NM='[나이키] W 에어맥스 97 DH8016-100';
_TRK_PNG="2731484";
</script>


</head>

<body>
	<div class="wrap product-detail">
		<!-- 페이지 header -->
		<%@ include file="../header.jsp"%>
		<main class="cmain main" role="main" id="mainContents">
			<!-- 메인페이지 'main' 클래스 추가 -->
			<div class="container">
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
				<!-- contents -->
				<div class="contents">
					<!-- 본문 컨텐츠 영역 -->
					<div class="product-detail-wrap">
						<!-- pdr_wrap -->
						<div class="pdr_wrap">
							<div class="product-info-wrap">
								<!-- 좌측메뉴 -->
								<div class="left-info">
									<!-- 상품 이미지 영역 -->
									<div class="product-banner-wrap">
										<div data-modules-imageviewer>
											<div
												class="product-mainbanner slick-initialized slick-slider isArrows"
												data-modules-slick="draggable:false; dots:false; infinite:true; 
						                 thumbnaiList:.slider-thumbnaii;thumbnailsToShow:5;">
												<button class="slick-prev slick-arrow" aria-label="Previous"
													type="button" style="">Previous</button>
												<div class="slick-list">
													<div class="slick-track"
														style="opacity: 1; width: 4160px; transform: translate(-520px, 0px);">
														<div class="slick-slide slick-cloned"
															data-slick-index="-1" aria-hidden="true"
															style="width: 520px;" tabindex="-1">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="http://image.hmall.com/static/3/7/31/37/2137317374_5.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')"
																		tabindex="-1"><img
																		src="http://image.hmall.com/static/3/7/31/37/2137317374_5.jpg?RS=520x520&amp;AR=0"
																		alt="2137317374_5.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')"></a>
																</div>
															</div>
														</div>
														<div class="slick-slide slick-current slick-active"
															data-slick-index="0" aria-hidden="false"
															style="width: 520px;">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="product_images/${ productVO.productImg }.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')" tabindex="0">
																		<img
																		src="product_images/${ productVO.productImg }.jpg"
																		alt="2137317374_0.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')">
																	</a>
																</div>
															</div>
														</div>
														<div class="slick-slide" data-slick-index="1"
															aria-hidden="true" style="width: 520px;" tabindex="-1">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="http://image.hmall.com/static/3/7/31/37/2137317374_1.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')"
																		tabindex="-1"><img
																		src="http://image.hmall.com/static/3/7/31/37/2137317374_1.jpg?RS=520x520&amp;AR=0"
																		alt="2137317374_1.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')"></a>
																</div>
															</div>
														</div>
														<div class="slick-slide" data-slick-index="2"
															aria-hidden="true" style="width: 520px;" tabindex="-1">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="http://image.hmall.com/static/3/7/31/37/2137317374_2.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')"
																		tabindex="-1"><img
																		src="http://image.hmall.com/static/3/7/31/37/2137317374_2.jpg?RS=520x520&amp;AR=0"
																		alt="2137317374_2.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')"></a>
																</div>
															</div>
														</div>
														<div class="slick-slide" data-slick-index="3"
															aria-hidden="true" style="width: 520px;" tabindex="-1">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="http://image.hmall.com/static/3/7/31/37/2137317374_3.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')"
																		tabindex="-1"><img
																		src="http://image.hmall.com/static/3/7/31/37/2137317374_3.jpg?RS=520x520&amp;AR=0"
																		alt="2137317374_3.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')"></a>
																</div>
															</div>
														</div>
														<div class="slick-slide" data-slick-index="4"
															aria-hidden="true" style="width: 520px;" tabindex="-1">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="http://image.hmall.com/static/3/7/31/37/2137317374_4.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')"
																		tabindex="-1"><img
																		src="http://image.hmall.com/static/3/7/31/37/2137317374_4.jpg?RS=520x520&amp;AR=0"
																		alt="2137317374_4.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')"></a>
																</div>
															</div>
														</div>
														<div class="slick-slide" data-slick-index="5"
															aria-hidden="true" style="width: 520px;" tabindex="-1">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="http://image.hmall.com/static/3/7/31/37/2137317374_5.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')"
																		tabindex="-1"><img
																		src="http://image.hmall.com/static/3/7/31/37/2137317374_5.jpg?RS=520x520&amp;AR=0"
																		alt="2137317374_5.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')"></a>
																</div>
															</div>
														</div>
														<div class="slick-slide slick-cloned" data-slick-index="6"
															aria-hidden="true" style="width: 520px;" tabindex="-1">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="http://image.hmall.com/static/3/7/31/37/2137317374_0.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')"
																		tabindex="-1"><img
																		src="http://image.hmall.com/static/3/7/31/37/2137317374_0.jpg?RS=520x520&amp;AR=0"
																		alt="2137317374_0.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')"></a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<button class="slick-next slick-arrow" aria-label="Next"
													type="button" style="">Next</button>
											</div>
											<div class="ui-angle"
												style="display: none; width: 260px; height: 260px; top: 0px; left: 260px;"></div>
										</div>
										<div class="slider-thumbnaii ">
											<ul>
												<li class="ui-thumbnaii ui-active"><a
													href="javascript:;"
													onclick="GA_Event('상품상세','상단_이미지확대','');" draggable="false">
														<img
														src="product_images/${ productVO.productImg }.jpg?RS=100x100&amp;AR=0"
														alt="2137317374_0.jpg"
														onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=100x100&amp;AR=0')">
												</a></li>
											</ul>
										</div>
									</div>
									<!-- // 상품 이미지 영역 -->
									<!-- 상품정보 -->
									<div class="customer-use-wrap">
										<div class="customer-use-info">
											<!-- 상품코드 -->
											<div class="product-code">
												<span class="code-number">상품코드 : ${ productVO.productCode }
												</span> <a href="javascript:;" class="code-copy"
													onclick="copySlitmCd('${ productVO.productCode }');">복사하기</a>
											</div>
											<!-- // 상품코드 -->
											<!-- SNS Link -->
											<div class="sns-link">
												<ul>
													<li><a href="javascript:;" class="url"
														onclick="copyShortenUrl('${ productVO.productCode }');"><i
															class="icon url-circle"></i></a></li>
													<li><a href="javascript:;" class="qrcode"
														onclick="qrCode()"><i class="icon qr-circle"></i></a></li>
													<li><a href="#tooltipInfo" class="tooltip"
														data-modules-tooltip=""><i class="icon que-mark"></i></a></li>
													<div class="qrCodeWrap" id="qrCodeWrap"
														style="position: absolute; right: 0px; top: -123px; display: none; border: 1px solid #fd5a3b; z-index: 110;"></div>
												</ul>
												<div class="tooltip-box" id="tooltipInfo">
													<dl>
														<dt>단축URL이란?</dt>
														<dd>기존의 긴 URL 대신 20 ~ 30자(byte)의 짧은 주소로 표현된 URL입니다.
															좌측의 단축URL버튼을 클릭하시면, 해당 단축URL이 클립보드에 복사되오니, 다른 사이트 게시판이나
															트위터 등에서 붙여넣기 하시면 됩니다.</dd>
														<dt>QR코드란?</dt>
														<dd>좌측의 QR코드를 클릭하면, 정사각형 모양의 QR코드가 나타납니다. 이를 스마트폰의
															QR코드스캔용 프로그램(ex. Hsearch)으로 인식하시면, 손쉽게 문자나 이메일을 통해 지인에게
															추천하거나, 모바일 현대Hmall을 통해서도 쇼핑하실 수 있습니다.</dd>
													</dl>
													<button class="btn-close">
														<i class="icon"></i> <span class="hiding">닫기</span>
													</button>
												</div>
												<!--//tooltip-box-->
												<iframe id="logchk_frame" title="웹로그체크용빈프레임" src=""
													style="position: absolute; top: -9999px; left: -9999px"></iframe>
											</div>
											<!-- // SNS Link -->
										</div>
									</div>
									<!-- // 상품정보 -->
								</div>
								<!-- // 좌측메뉴 -->

								<!-- 우측메뉴 -->
								<div class="right-info">
									<div data-viewercontent>
										<p class="guide-txt">마우스 휠을 움직이면 상품 이미지를 더욱 상세히 보실 수 있습니다.</p>
									</div>
									<form id="itemInfForm" name="itemInfForm" action="#"
										method="post">
										<input type="hidden" name="slitmCd"
											value="${ productVO.productCode }" /> <input type="hidden"
											name="packOpenRtpNdmtYn" value="N" /> <input type="hidden"
											name="ordMakeYn" value="N" /> <input type="hidden"
											name="ordMakeExcldMCsfYn" value="N" /> <input type="hidden"
											name="bsitmCd" value="${ productVO.productCode }" /> <input
											type="hidden" name="sellPrc"
											value=${ productVO.discountPrice } />
									</form>
									<!-- 상품 기본 정보 -->
									<div class="basic-info">
										<div class="prduct-title-info">
											<p class="prd-promotion">${ productVO.brand }</p>
											<strong class="prduct-name"> ${ productVO.productName }
											</strong>
										</div>
										<div class="pdprice">
											<span class="rateprice" aria-label="할인율이 적용된 가격"> <em
												class="rate" aria-label="할인율"> ${ Math.round((productVO.price - productVO.discountPrice) / productVO.price * 100) }%
											</em>
												<p class="discount" aria-label="할인가">
													<em> <fmt:formatNumber
															value="${ productVO.discountPrice }" pattern="#,###" />
													</em><b>원</b>
												</p> <del class="normal">
													<fmt:formatNumber value="${ productVO.price }"
														pattern="#,###" />
												</del> 원
											</span>
										</div>
									</div>
									<!-- // 상품 기본 정보 -->
									<!-- 구매 혜택 -->
									<div class="pdprice-info">
										<dl class="baroOnOff" id="crdImdDlTagTmp">
											<dt>즉시할인가</dt>
											<dd>
												<p>
													<strong>[모바일 구매혜택]</strong>
												</p>
												<p>
													<fmt:formatNumber
														value="${ productVO.discountPrice * 0.95 }"
														pattern="#,###" />
													원 5% 삼성카드 (10,000원↑)
												</p>
											</dd>
										</dl>
										<dl>
											<dt>무이자할부</dt>
											<dd>
												<p>카드 무이자 특별행사 안내</p>
											</dd>
										</dl>
										<dl>
											<dt>카드추가 혜택</dt>
											<dd>
												<p>
													<strong>현대홈쇼핑 현대카드</strong>
												</p>
											</dd>
										</dl>
									</div>
									<!-- // 구매 혜택 -->
									<!-- 배송 정보 -->
									<div class="delivery-info">
										<dl>
											<dt>배송정보</dt>
											<dd class="deliver-save">
												<p>
													<strong>무료배송</strong>
												</p>
											</dd>
											<dd>
												<strong>${ productVO.deliveryCompany }</strong>
											</dd>
										</dl>
									</div>
									<!-- // 배송 정보 -->
									<!-- 수량 선택 -->
									<div class="product-option-wrap">
										<div class="stock-item select-product-list" style>
											<div class="pditem">
												<div class="product-info">
													<div class="thumb">
														<img
															src="product_images/${ productVO.productImg }.jpg?RS=1400x1400&amp;AR=0" />
													</div>
													<div class="figcaption">
														<div class="pdname" aria-label="제품명">${ productVO.productName }</div>
														<div class="quantity">
															<div class="count">
																<button class="btn btn-minus" data-area-id="1"
																	aria-label="수량 감소" onclick="minusOrdQty(this);">
																	<i class="icon"></i> <span class="hiding">감소</span>
																</button>
																<div class="inputbox">
																	<label class="inplabel"> <input type="text"
																		data-area-id="1" name="ordQty" class="amount"
																		onkeyup="changeOrdQty(this,'')" value="1"
																		maxlength="3">
																	</label>
																</div>
																<button class="btn btn-plus" data-area-id="1"
																	aria-label="수량 증가" onclick="plusOrdQty(this);">
																	<i class="icon"></i> <span class="hiding">증가</span>
																</button>
															</div>
															<div class="pdprice">
																<ins aria-label="가격">
																	<em><fmt:formatNumber
																			value="${ productVO.discountPrice }" pattern="#,###" /></em>
																	<b>원</b>
																</ins>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- // 수량 선택 -->
									<!-- 총 상품 금액 -->
									<div class="sum-price" style>
										<div class="sum-title">
											<strong> 총 상품 금액 <a href="#tooltipCont3"
												data-modules-tooltip="" class=""> <i
													class="icon que-mark"></i>
											</a>
											</strong>
											<div class="tooltip-box" id="tooltipCont3">
												<p class="txt">
													선택하실 수 있는 할인혜택이 모두 적용된 금액입니다.<br>배송비가 포함이 되어 있지 않은
													금액으로, 결제시 배송비가 추가될 수 있습니다.
												</p>
												<button class="btn-close">
													<i class="icon"></i> <span class="hiding">닫기</span>
												</button>
											</div>
										</div>
										<div class="price-wrap">
											<p class="total-price">
												<strong> ${ productVO.discountPrice }</strong> 원
											</p>
										</div>
									</div>
									<div class="btngroup prdBtnBoxGroup type00"></div>
									<!-- // 총 상품 금액 -->
									<!-- 버튼 그룹 -->
									<div
										class="btngroup prdBtnBoxGroup pd_shipping_type_nomral type04">
										<button class="btn btn-linelgray large btn-like"
											onclick="location.href='do_not.html';">
											<!-- <button class="btn btn-linelgray large btn-like"
											onclick="goChioceProcess('','015318','DH8016-100','2135294542', event);"> -->
											<i class="icon"></i> <span class="count">0</span>
										</button>
										<button class="btn btn-linelgray large btn-cart"
											onclick="location.href='do_not.html';">
											<!-- <button class="btn btn-linelgray large btn-cart"
											onclick="addCart(this);"> -->
											<span>장바구니</span>
										</button>
										<button class="btn btn-linelgray large btn-gift"
											onclick="location.href='do_not.html';">
											<!-- <button class="btn btn-linelgray large btn-gift"
											onclick="setGiftOrder('Y');buyDirect();"> -->
											<span>선물하기</span>
										</button>
										<button class="btn btn-default large btn-buy"
											onclick="location.href='do_not.html';">
											<!-- <button class="btn btn-default large btn-buy"
											onclick="buyDirect();"> -->
											<span>바로구매</span>
										</button>
									</div>
									<!-- // 버튼 그룹 -->
								</div>
								<!-- // 우측메뉴 -->
							</div>
						</div>
						<!-- // pdr_wrap -->
						<!-- product-detail-content -->
						<div class="product-detail-content">
							<!-- scrollspy-wrap -->
							<div class="scrollspy-wrap">
								<!-- scrollspy-tab -->
								<div class="scroll-observer"></div>
								<!-- TODO: 스크롤이 넘어가면 class에 fixed가 추가됨 -->
								<div class="scrollspy-tab" data-modules-scrollspy="padding:103"
									style="height: 64px;">
									<div class="inner">
										<ul class="nav-tabs ui-spynav" role="tablist"
											style="margin-top: -1px;">
											<li role="presentation" class="ui-active"><a
												href="#viewPage01" class="gp_className" ga-category="상품상세"
												ga-action="탭" ga-label="상세설명"><span>상세설명</span></a></li>
											<!-- class="ui-actiove"시 현재페이지 보여줌 -->
											<li role="presentation" class=""><a href="#viewPage02"
												class="gp_className" ga-category="상품상세" ga-action="탭"
												ga-label="기본정보"><span>기본정보</span></a></li>
											<li role="presentation" class=""><a href="#viewPage03"
												class="gp_className" ga-category="상품상세" ga-action="탭"
												ga-label="상품평"><span>상품평<em>0</em></span></a></li>
											<li role="presentation" class=""><a href="#viewPage04"
												class="gp_className" ga-category="상품상세" ga-action="탭"
												ga-label="Q&amp;A"><span>Q&amp;A<em>0</em></span></a></li>
										</ul>
									</div>
								</div>
								<!-- // scrollspy-tab -->
								<!-- 상세설명 탭 -->
								<div class="pages page1" id="viewPage01">
									<!-- content-area -->
									<div class="content-area"></div>
									<div class="content-area product-detail-view open">
										<div class="view-cont">
											<!-- 상품 상세설명 -->
											<div class="mt25" style="overflow: hidden" id="guidance">
												<table width="100%" summary="제품설명입니다">
													<caption>제품설명</caption>
													<colgroup>
														<col width="">
													</colgroup>
													<thead>
														<tr>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><c:forEach var="img"
																	items="${ productImageVO.imgs }">
																	<img src="product_images/${ img }.jpg" />
																</c:forEach></td>
															<!-- <img
																src="https://wwsports.hgodo.com/NIKE/notice/auth.jpg"><br>
															<img src="https://wwsports.hgodo.com/NIKE/size/shoes.jpg"><img
																src="https://wwsports.hgodo.com/NIKE/product/CZ1645-100/default_0.jpg"><img
																src="https://wwsports.hgodo.com/NIKE/product/CZ1645-100/default_1.jpg"><img
																src="https://wwsports.hgodo.com/NIKE/product/CZ1645-100/default_2.jpg"><img
																src="https://wwsports.hgodo.com/NIKE/product/CZ1645-100/default_3.jpg"><img
																src="https://wwsports.hgodo.com/NIKE/product/CZ1645-100/default_4.jpg"><img
																src="https://wwsports.hgodo.com/NIKE/product/CZ1645-100/default_5.jpg"><img
																src="http://wwsports.hgodo.com/NIKE/notice/packing.jpg">
															</td> -->
														</tr>
													</tbody>
												</table>
											</div>
											<!-- 결제정보 -->
											<div class="content-area">
												<div class="cnt-txt">
													<h3>결제 정보</h3>
													<p>주문 후 확인과정에서 카드 도난, 카드 도용, 상업적 재판매 등 비정상적인 주문의 우려가
														있다고 판단되는 경우에는 임의로 배송이 보류되거나, 주문이 취소될 수 있습니다.</p>
												</div>
											</div>
											<!-- 반품 배송비 안내 -->
											<div class="content-area">
												<div class="cnt-txt">
													<h3>반품/배송비 안내</h3>
													<p>이 상품의 반품/교환 시 배송비는 고객님께서 부담하셔야 하며 (단, 상품 하자로 인한
														반품/교환 시 제외) 상품이 발송된 이후 주문취소를 요청하실 경우 고객님께 반품 배송비가 부과될 수
														있습니다.</p>
												</div>
											</div>
										</div>
									</div>
									<!-- // content-area -->
								</div>
								<!-- // 상세설명 탭 -->
								<!-- 기본정보 탭 -->
								<div class="pages page2" id="viewPage02">
									<!-- content-area // 상품정보 -->
									<div class="content-area">
										<div class="tblwrap">
											<table>
												<caption>상품필수정보및인증정보</caption>
												<colgroup>
													<col style="width: 220px">
													<col style="width: auto">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row" class="txt-left">상품코드</th>
														<td>${ productVO.productCode }</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">상품명</th>
														<td>${ productVO.productName }</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">가격</th>
														<td><fmt:formatNumber
																value="${ productVO.discountPrice }" pattern="#,###" />원</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">배송비</th>
														<td>무료</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">택배사</th>
														<td>${ productVO.deliveryCompany }</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">반품/교환</th>
														<td>상품확인 후 환불 / 반품관련배송비 : 5,000원 / 교환관련배송비 : 5,000원</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!-- // content-area // 상품정보 -->
									<!-- content-area / 유의사항 -->
									<div class="content-area">
										<div class="accparent">
											<h3 class="selected">
												<button onclick="GA_Event('상품상세','기본정보','배송/교환/환불/AS/유의사항')"
													data-modules-collapse="parent:.accparent;"
													class="accordion-trigger" aria-expanded="false">
													<i class="icon question"></i> <span>배송/교환/환불/AS/유의사항</span>
													<i class="icon acc-arrow"></i>
												</button>
											</h3>
											<div class="accordion-panel basic basic-txt02 selected"
												role="basic-txt02" aria-label="배송/교환/환불/AS/유의사항">
												<div class="txt-info">
													<p>
														<strong>전자상거래 소비자보호에 관한 법률에 의한 반품/교환 규정이 상품공급업체가
															지정한 반품/교환 조건보다 우선합니다.</strong>
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙배송소요일</strong><br>&nbsp; · 결제 완료일
														다음날로부터&nbsp; 2 ~ 7일(토요일/공휴일 제외, 도서지역 4~8일)<br>&nbsp;
														· 설치 및 주문제작상품 : 5일~15일(엄지펀딩 상품의 경우 최장 90일, 토요일/공휴일 제외)
													</p>
													<p>
														&nbsp; · 본 상품은 협력사 사정에 따라 주문 후 "품절"이 발생 될 수 있으며, 이 경우 즉시
														연락을 드려 환불해<br>&nbsp;&nbsp;&nbsp; 드리겠으니, 이 점 양해
														바랍니다.&nbsp;
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙교환/반품/취소</strong><br>&nbsp; · 상품을 인도 받은 날로부터
														7일 이내에 당해 계약에 관한 청약철회(반품) 가능합니다.<br>&nbsp;&nbsp;&nbsp;
														상품명 주변에 [TV쇼핑]이 표시된 상품은 상품 인도일 이후 30일 <br>&nbsp;&nbsp;&nbsp;
														(의류,보석,핸드백,슈즈,선글라스는 15일,농산물 수산물 축산물 등 신선식품:7일) 이내 청약 철회 가능
													</p>
													<p>
														<span style="FONT-SIZE: 10pt" ar-sa?=""
															mso-bidi-language:="" ko;="" mso-fareast-language:=""
															en-us;="" mso-ansi-language:="" minor-bidi;=""
															mso-bidi-theme-font:="" roman\?;="" new="" \?times=""
															mso-bidi-font-family:="" minor-latin;=""
															mso-hansi-theme-font:="" minor-fareast;=""
															mso-fareast-theme-font:="" mso-ascii-theme-font:=""
															11.0pt;="" mso-bidi-font-size:=""
															115%;="" line-height:="" red;="" color:="" 고딕\?;="" 맑은=""><span
															style="COLOR: #123456">&nbsp;&nbsp;&nbsp; ※ <span
																style="FONT-SIZE: 10pt; FONT-FAMILY: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; COLOR: red; LINE-HEIGHT: 115%; mso-bidi-font-size: 11.0pt; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; Times New Roman&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: KO; mso-bidi-language: AR-SA"><span
																	style="COLOR: #123456">단</span><span lang="EN-US"
																	style="COLOR: #123456">, </span><span
																	style="COLOR: #123456">식품의 경우</span><span lang="EN-US"
																	style="COLOR: #123456">, </span><span
																	style="COLOR: #123456">상품 출고 이후 상품의 변질 및 유통기간 단축
																		등으로 인해 재판매가 어려운 경우는 교환</span><span lang="EN-US"
																	style="COLOR: #123456">/</span><span
																	style="COLOR: #123456">반품이 불가할 수 있습니다</span><span
																	lang="EN-US" style="COLOR: #123456">.</span></span></span></span>&nbsp;<br>&nbsp;
														· 교환시, 교환 상품이 도착 한 후에 상품을 배송해드립니다. <br>&nbsp; · 반품시,
														반품 상품이 도착 한 후에 결제가 취소됩니다.<br>&nbsp; · 일부상품은 고객변심에 의한
														반품/교환시 배송비 고객부담(상품설명에 명시된 상품)<br>&nbsp; · 교환/반품/취소신청
														방법:인터넷 주문/배송조회
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙교환/반품 불가사유(상품하자시 제외)</strong><br>&nbsp;·
														반품/교환 가능기간을 초과하였을 경우<br>&nbsp;· 상품 및 구성품을 사용하였거나 부주의로
														인하여 상품이 훼손(파손/고장/오염 등)된 경우<br>&nbsp;· 상품 사용시 상품설명에
														기재된 주의사항을 지키지 않은 경우<br>&nbsp;· 상품택을 파손하였거나 분실했을 경우<br>&nbsp;·
														런닝머신/자동차용품 등 설치상품으로 배달 후 설치 완료된 경우<br>&nbsp;· 기타,
														'전자상거래 등에서의 소비자보호에 관한 법률'이 정하는 청약철회 제한사유에 해당되는 경우
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙교환/반품 참고사항</strong><br>&nbsp; · 교환/반품은 청약철회
														기간내에만 가능하며, 청약철회 기간 이후에는 상품의 하자시에만 가능합니다.<br>&nbsp; ·
														반품/교환시 고객님 귀책사유로 인해 수거가 지연될 경우에는 반품이 제한될 수 있습니다.<br>&nbsp;
														· 일부 상품은 트러블 발생시 소견서, 진료확인서 중 1가지를 첨부하셔야 반품이 가능합니다.<br>&nbsp;
														· 가격변동으로 인한 반품 및 가격보상은 불가합니다.<br>&nbsp; · 판매하는 협력사별로
														동일 상품이어도 가격에 차이가 있을 수 있으며, 이로인한 반품이나 교환은 불가합니다.
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙A/S 안내</strong><br>&nbsp; · 상품불량에 의한 반품, 교환,
														A/S, 환불, 품질보증 및 피해보상 등에 관한 사항은 소비자분쟁해결기준<br>&nbsp;&nbsp;
														(공정거래위원회 고시)에 따라 받으실 수 있습니다.&nbsp;
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙ 미성년자 권리보호 안내<br></strong><u>&nbsp; ·
															구매자가 미성년자일 경우, 법정대리인이 그 계약에 동의하지 아니하면 미성년자 본인 또는 법정 대리인이
															그 계약을 취소할 수 있습니다.&nbsp;</u>
													</p>
												</div>
											</div>
										</div>
									</div>
									<!-- // content-area / 유의사항 -->
								</div>
								<!-- // 기본정보 탭 -->
								<!-- 상품평 탭 -->
								<div class="pages page3" id="viewPage03">
									<div class="content-area">
										<div class="tit-wrap review satisfaction">
											<h3>
												상품평 작성하고 H.Point 최대 <em>250P</em> 혜택 받으세요!<a
													href="#tooltipReviewCont" data-modules-tooltip="" class=""><i
													class="icon que-mark"></i></a>
											</h3>
											<div class="tooltip-box" id="tooltipReviewCont">
												<div class="thead">
													<p class="tit">상품평 작성 혜택</p>
												</div>
												<div class="tblwrap">
													<table>
														<caption>상품평작성혜택</caption>
														<colgroup>
															<col style="width: 115px">
															<col style="width: 95px">
															<col style="width: 97px">
															<col style="width: 66px">
															<col style="width: 76px">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" rowspan="2">등급구분</th>
																<th scope="col" colspan="2">텍스트</th>
																<th scope="col" rowspan="2">포토</th>
																<th scope="col" rowspan="2">동영상</th>
															</tr>
															<tr>
																<th>50자 이하</th>
																<th>50자 초과</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td><span class="sliver-lvtxt">SILVER</span>, <span
																	class="gold-lvtxt">GOLD</span>, <span
																	class="platinum-lvtxt">PLATINUM</span></td>
																<td rowspan="2">10P</td>
																<td>100P</td>
																<td rowspan="2">+50P</td>
																<td rowspan="2">+100P</td>
															</tr>
															<tr>
																<td><span class="topclass-lvtxt">TOP CLASS</span>,
																	<span class="diamond-lvtxt">DIAMOND</span></td>
																<td>200P</td>
															</tr>
														</tbody>
													</table>
												</div>
												<button class="btn-close">
													<i class="icon"></i><span class="hiding">닫기</span>
												</button>
												<button class="btn-close">
													<i class="icon"></i><span class="hiding">닫기</span>
												</button>
											</div>
											<button ga-category="상품상세" ga-action="상품평" ga-label="상품평 쓰기"
												class="btn btn-lineblack small itemEvalRegBtn gp_className"
												onclick="evalWrite('Y', '/p/pda/itemPtc.do?slitmCd=2137317374');">
												<span><i class="icon review"></i>상품평 쓰기</span>
											</button>
										</div>
										<!-- 상품평 딜/옵션 combobox -->
									</div>
									<div class="content-area review-point">
										<h3>구매고객 총 평점</h3>
										<!--review-star -->
										<div class="review-star">
											<div class="starbg type-big pt10">
												<p class="score">
													<span class="hiding">0점</span>
												</p>
											</div>
											<span class="like-point" aria-label="포인트"><em>0.0</em></span>
										</div>
										<!-- //.review-star -->
										<!--review-rate -->
										<div class="review-rate ui-active">
											<strong class="hiding">평가 비율</strong>
											<div class="rate-list">
												<div class="rate-item" id="rateItem0">
													<p class="rate-tit">사이즈</p>
													<div class="part">
														<p class="data">
															<span>조금 작아요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>정사이즈에요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>조금 커요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
												</div>
												<div class="rate-item" id="rateItem1">
													<p class="rate-tit">색상</p>
													<div class="part">
														<p class="data">
															<span>조금 밝아요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>동일해요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>조금 어두워요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
												</div>
												<div class="rate-item" id="rateItem2">
													<p class="rate-tit">착화감</p>
													<div class="part">
														<p class="data">
															<span>편해요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>보통이에요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>불편해요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
												</div>

											</div>
											<div class="more-btn">
												<a href="#"
													data-modules-customtoggle="openText:자세히보기;parent:.review-rate;"><span
													data-text="">닫기</span><i class="icon arrow"></i></a>
											</div>
										</div>
										<!-- //.review-rate -->
									</div>
									<div id="itemOptEvalInfo">
										<!-- 리스트 -->
										<div class="content-area txt-review" id="reviewContentArea">
											<h3>
												상품평 <em class="total-num">0</em>건
											</h3>
											<div class="selectwrap">
												<div class="custom-selectbox sm"
													onchange="searchEvalSort('/p/pdc/selectItemEvalList.do?dealYn=N')"
													id="posRightDiv" data-modules-selectbox="">
													<select id="posRight">
														<option value="01">최신순</option>
														<option value="14">도움순</option>
														<option value="16">별점 높은순</option>
														<option value="17">별점 낮은순</option>
													</select>
													<div class="ui-label">
														<a href="#1">최신순</a>
													</div>
													<div class="ui-selectbox">
														<div class="selectbox_area">
															<ul>
																<li><a href="#1">최신순</a></li>
																<li><a href="#2">도움순</a></li>
																<li><a href="#3">별점 높은순</a></li>
																<li><a href="#4">별점 낮은순</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="nodata">
												<span class="bgcircle"><i class="icon nodata-type12"></i></span>
												<p>등록된 상품평이 없습니다.</p>
											</div>
										</div>
									</div>
								</div>
								<!-- // 상품평 탭 -->
								<!-- Q&A 탭 -->
								<div class="pages page4" id="viewPage04">
									<!--content-area // 문의버튼-->
									<div class="content-area btngroup">
										<a href="/p/ccd/selectCnslOrdReqDtl.do"
											onclick="GA_Event('상품상세','Q&amp;A','배송/회수문의');"
											target="_blank" class="btn btn-lineblack small"><span>배송/회수
												문의</span></a> <a href="javascript://" ga-category="상품상세"
											ga-action="Q&amp;A" ga-label="상품문의"
											onclick="openLoginPopup('https://www.hmall.com/p/pda/itemPtc.do?slitmCd=2139296966')"
											class="btn btn-lineblack small gp_className"><span>질문하기</span></a>
									</div>
									<!--//content-area // 문의버튼-->
									<div id="itemOptQnAInfo">
										<div class="content-area inquiry-wrap">
											<div class="nodata">
												<span class="bgcircle"><i class="icon nodata-type12"></i></span>
												<p>상품 Q&amp;A가 없습니다.</p>
											</div>
											<!--//inquiry-list-->
											<div class="paging qnaPaging"></div>
										</div>
									</div>
								</div>
								<!-- // Q&A 탭 -->
							</div>
							<!-- // scrollspy-wrap -->
							<!-- option -->
							<div class="sticky-ui-wrapper product-option-sticky">
								<div class="sticky-placeholder" style></div>
								<div class="util-option sticky right-option-area"
									data-modules-sticky="padding:-20;breakPoint:.product-detail-content;className:product-option-sticky;"
									style>
									<div class="sticky-inner">
										<div class="util-inner">
											<div class="option-scroll">
												<strong class="prduct-name">[${ productVO.brand }]
													${ productVO.productName }</strong>
												<div class="selprduct-list select-product-list" style>
												</div>
											</div>
											<!-- total -->
											<div class="total-wrap">
												<div class="total-price sum-price" style="">
													<p class="btn-total">
														<span>총 상품금액</span> <a href="#tooltipCont4"
															data-modules-tooltip=""> <i class="icon que-mark"></i>
														</a>
													</p>
													<ins>
														<em>${ productVO.discountPrice }</em> <b>원</b>
													</ins>
													<div class="tooltip-box" id="tooltipCont4">
														<div class="thead btn-only"></div>
														<p class="txt">
															선택하실 수 있는 할인혜택이 모두 적용된 금액입니다.<br>배송비가 포함이 되어 있지 않은
															금액으로, 결제시 배송비가 추가 될 수 있습니다.
														</p>
														<button class="btn-close">
															<i class="icon"></i> <span class="hiding">닫기</span>
														</button>
													</div>
												</div>
												<div class="pick-method"></div>
												<div class="button-wrap pd_shipping_type_nomral">
													<div class="btngroup"></div>
												</div>
											</div>
											<!-- // total -->
										</div>
									</div>
								</div>
							</div>
							<!-- // option -->
						</div>
						<!-- // product-detail-content -->
					</div>
				</div>
				<!-- //.container -->
			</div>
		</main>

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









					<a class="recent-view-title">ON AIR</a>
					<ul id="banner-onair">


						<li><a href="javascript:;" class="tv-shopping"
							onclick="gaTagging(this, &quot;/p/pda/itemPtc.do?sectId=1003&amp;slitmCd=2139269103&amp;bfmtNo=202204083003&amp;brodDt=20220408&amp;brodStrtDtm=08:15&amp;brodType=P&quot;, &quot;etvhm_etv&quot;, &quot;eTV온에어^영상상품^뉴케어 당플랜 프로 144팩(230ml*24팩*6박스) + 당플랜 볶음밥 세트(렌틸콩소고기2ea+ 퀴노아닭가슴살 2ea)&quot;)"
							ga-custom-title="메인>홈쇼핑" ga-custom-name="메인_홈쇼핑탭"
							ga-custom-position="TV쇼핑" ga-custom-creative="방송상품"
							ga-custom-id="2139269103_뉴케어 당플랜 프로 144팩(230ml*24팩*6박스) + 당플랜 볶음밥 세트(렌틸콩소고기2ea+ 퀴노아닭가슴살 2ea)"
							ga-custom-etc="home"> <img
								src="https://image.hmall.com/static/1/9/26/39/2139269103_0.jpg?RS=140x140&amp;AR=0"
								alt="뉴케어 당플랜 프로 144팩(230ml*24팩*6박스) + 당플랜 볶음밥 세트(렌틸콩소고기2ea+ 퀴노아닭가슴살 2ea)"
								onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=140x140&amp;AR=0')">
								<span class="over-box"> <strong
									class="onair-kind shopping">TV쇼핑</strong> <em
									class="onair-time" id="onAirHtime"
									data-brodenddtm="20220408092500">00:00:00</em>
							</span>
						</a></li>



						<li><a href="javascript:;" class="tv-shopping"
							onclick="gaTagging(this, &quot;/p/pda/itemPtc.do?sectId=1003&amp;slitmCd=2129353515&amp;bfmtNo=202204085004&amp;brodDt=20220408&amp;brodStrtDtm=08:40&amp;brodType=P&quot;, &quot;etvhm_etv&quot;, &quot;eTV온에어^영상상품^오토모 무선 물걸레 청소기&quot;)"
							ga-custom-title="메인>홈쇼핑" ga-custom-name="메인_홈쇼핑탭"
							ga-custom-position="TV쇼핑" ga-custom-creative="방송상품"
							ga-custom-id="2129353515_오토모 무선 물걸레 청소기" ga-custom-etc="home">
								<img
								src="https://image.hmall.com/static/5/3/35/29/2129353515_0.jpg?RS=140x140&amp;AR=0"
								alt="오토모 무선 물걸레 청소기"
								onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=140x140&amp;AR=0')">
								<span class="over-box"> <strong class="onair-kind shop">TV+샵</strong>
									<em class="onair-time" id="onAirHdtime"
									data-brodenddtm="20220408093959">00:07:33</em>
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
	</div>
</body>
</html>