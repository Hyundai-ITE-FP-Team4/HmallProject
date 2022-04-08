<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>


<script src="https://www.googleoptimize.com/optimize.js?id=OPT-NBGRL7P"></script>

<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, height=device-height">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no, email=no, address=no"> 
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
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-1066206974"></script>
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

  <title>회원가입 완료</title>
	<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/cu/member.css">

	<script type="text/javascript">
	jQuery(function($) {
		GA_Event('회원가입' , 'Step3. 가입완료' , 'Hmall 간편회원가입');

		var hpointAgrYn = 'undefined';
		if (hpointAgrYn == 'Y'){
			doSearchUPntRegPop();
		}

		console.log('serverhost 가입완료 : ' + serverHost + ", hpointAgrYn: " + hpointAgrYn);
	});
	function  updateCustVlidTerm(){

		var vlidTerm = $("#vlidTerm").val();
		$.ajax({
			type: "post"
			, url: "/p/cua/updateCustVlidTerm.do"
			, dataType: "json"
			, data: {vlidTerm: vlidTerm}
			, success: function(data) {
				alert("개인정보 유효기간이 적용되었습니다.")
				$("#vlidTerm").val(data.vlidTerm).attr("selected", "selected");

				//window.location.href = serverHost + "/p/index.do";
			}
			, error: function(e) {
				alert("서비스 호출 에러. 고객센터에 문의 바랍니다.");
			}
		});

	}

	function  goHome(){
		var validName="Y";
		if(validName == "N"){ // 카카오 프로필 이름 유효한 고객이 아닐경우
			$("#changeNamePup").modal().show();
		}else{
			window.location.href = serverHost + "/p/index.do";
		}

	}

	function btnChangeName(){
		var custNm = $("#newName").val();
        var pattern1 = /\s/g;
        
        var divChangeName = $("div#divChangeName");
        var alterSpan = $("span#alertName");
        var alterIcon = $("i#alertNameIcon");
        
        divChangeName.removeClass("failed");
        alterIcon.removeClass("error");
        alterSpan.text("");
        

        if(isNullChk(custNm)){
        	divChangeName.addClass("failed");
        	alterIcon.addClass("error");
        	alterSpan.text("이름을 입력하세요.");
            return;
        }
        // 공백만 체크
        if (pattern1.test(custNm)){
        	divChangeName.addClass("failed");
        	alterIcon.addClass("error");
        	alterSpan.text("이름에 공백은 지원하지 않습니다. 다시 입력해주세요.");
            return;
        }

        // 숫자 체크
        if(isNumChk2(custNm)) {
        	divChangeName.addClass("failed");
        	alterIcon.addClass("error");
        	alterSpan.text("이름에 숫자는 지원하지 않습니다. 다시 입력해주세요.");
            return;
        }

        // 특수문자 & (영어한글만입력됐는지 한번더체크)
        if(!isSpecialStr(custNm) || /[^(가-힣a-zA-Z)]/.test(custNm)) {
        	divChangeName.addClass("failed");
        	alterIcon.addClass("error");
        	alterSpan.text("이름에 특수문자는 지원하지 않습니다. 다시 입력해주세요.");
            return;
        }

        $.ajax({
            type: "post"
            ,url: "/p/mpd/changeNameFormInsert.do?custNm="+custNm
            ,dataType: "json"
            ,async: false
            ,success : function(data) {
                if(data.ErrorMessage != null){
                    alert(data.ErrorMessage);
                } else {
                    alert("이름이 등록되었습니다.");
                    window.location.href = "/p/index.do";
                }
            },
            error : function() {
                alert("시스템 오류입니다. 다시 시도해주세요.");
            }
        });
       
	}
	
	/**
	 * 공백 체크
	 */
	function isNullChk(str) {
	    return ((str == null || str == "" || str == "<undefined>" || str == "undefined") ? true : false);
	}
	
	/**
	 * 특수문자 체크
	 */
	function isSpecialStr(chkString)
	{
	    esc = new Array("~","`","!","#","$","%","^","&","*","(",")","/","\,","\\","?","<",">","+","=","|",":",";","'","}","{","[","]","\"","-","_", " ");
	    if(chkString != null){
	        for (i = 0; i < chkString.length ; i++){
	            for ( j = 0 ; j < esc.length; j++){
	                if( esc[j] == chkString.charAt(i)){
	                    return false;
	                }
	            }
	        }
	    }
	    return true;
	}
	/**
     * 이름 Numberic 체크
     */
    function isNumChk2(str) {
        var flag=false;

        if (str.length > 0) {
            for (i = 0; i < str.length; i++) {
                if ('0' <= str.charAt(i) && str.charAt(i) <= '9') {
                    flag=true;
                    break;
                }else{
                    flag=false;
                }
            }
        }
        return flag;
    }

	//20170410 박승택 추가
	function doSearchUPntRegPop() {
		var hpointAgrYn = 'undefined';
		var form = $("form[name='upntForm']")[0];
		form.target = "_blank";
		form.setAttribute("action", "https://www.h-point.co.kr/cu/join/start.nhd");

		if (hpointAgrYn != 'Y'){
			//BizSpring
			try {
				_trk_clickTrace('EVT','회원가입완료(3단계)_통합회원가입진행btn');
			} catch (e) {}
			//BizSpring
		}

		form.submit();

	}

	//2018.12.28 회원가입개선prj-뒤로가기 막기
	history.pushState(null, null, null);

	window.onpopstate = function(event) {
		 history.go(1);
	};

	_TRK_G1="1";
	_TRK_PI="RGR";
	_TRK_AG="Z";
	_TRK_UVP1="D";
	
		_TRK_UVP2="hmall";
	
	</script>
</head>

<body class="cbody">
<div class="wrap join-success">
	<div class="nav-skip"><a href="#mainContents">본문 콘텐츠로 건너뛰기</a></div>

	<!-- GNB 메인 -->
	<main class="cmain main" role="main" id="mainContents"><!-- 메인페이지 'main' 클래스 추가 -->
		<div class="container">
			<div class="contents w600 hpoint">
				<div class="inner-box">
					<div class="title-area">
						<h1 class="logo">
							<a href="javascript://" onclick="goHome();">
								<span class="img"><img src="//image.hmall.com/p/img/cu/logo-hmall-88.png" alt="현대Hmall"></span>
								<span>회원가입</span>
							</a>
						</h1>
					</div>
                  
                  	<p class="character">
                        <img src="https://image.hmall.com/coimg/co/img-character-1x.png" alt="캐릭터">
                        <sub><em>현대Hmall</em> 회원이 되신것을 환영합니다.</sub>
                    </p>
                    
					
					<div class="content">
                        <div class="cross-logo"><img src="https://image.hmall.com/coimg/co/img-hpoint-hmall.svg" alt=""></div>

                        <p><strong>카카오 계정</strong>으로 <strong>쉽고 빠르게</strong></p>
                        <p>통합회원이 되어보세요!</p>
                        <p class="underborder"><span>지금 바로 받을 수 있는 혜택!</span></p>
	
	                    <div class="banner">
	                        
								
									<img src="//image.hmall.com/m/img/cu/202203_banner2.png" alt="회원가입완료 이미지">
								
							
						</div>
					</div>
	                  
	                   <div class="btngroup">
	                        <button class="btn btn-default medium" onclick="doSearchUPntRegPop();return false;"><span>통합 회원으로 간편 전환하기</span></button>
	                    </div>
					
					<div class="sec-area">
						<strong class="tit">개인정보 유효기간</strong>
						<p>3년 이상으로 설정 시, 장기 미접속시에도 휴면계정으로 전환 및 <br/>자동탈퇴를 방지할 수 있습니다.</p>
						<div class="field">
							<div class="custom-selectbox" data-modules-selectbox="">
								<select id="vlidTerm" name="vlidTerm">
									<option selected="" value="1">1년(기본값)</option>
									<option value="2">2년</option>
									<option value="3">3년</option>
									<option value="4">4년</option>
									<option value="5">5년</option>
									<option value="99">회원탈퇴시까지</option>
								</select>
							</div>

							<div class="btngroup">
								<button class="btn btn-linered small" onclick="updateCustVlidTerm();"><span>적용</span></button>
							</div>
						</div>
					</div>

					<div class="sec-area">
						<strong class="tit">마케팅 정보 수신동의 여부 <span>(2022년 04월 08일)</span></strong>
						<div class="marketing-agreebox">
							<div>
								<span>이메일 : 미동의</span>
								<span>문자 : 미동의</span>
								<span>전화 : 미동의</span>
							</div>
						</div>
					</div>

					<div class="btngroup">
						<button class="btn btn-default medium" onclick="goHome();"><span>쇼핑 계속하기</span></button>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- //.cmain -->

</div>
<form name="upntForm" method="post">
    <input type="hidden" name="prtnrReqGb" value="03"/>
    <input type="hidden" name="prtnrId" value="D020"/>
    <input type="hidden" name="chnnlId" value="1102"/>
    <input type="hidden" name="custNm" value="김승환"/>
    <input type="hidden" name="birthDt" value=""/>
    <input type="hidden" name="mophNo" value="01056883237"/>
    <input type="hidden" name="chId" value="cazne7@naver.com"/>
    <input type="hidden" name="custUniqKey" value="202204282833"/>
    <input type="hidden" name="email" value="cazne7@naver.com"/>
	<input type="hidden" name="ci" value=""/>
	<input type="hidden" name="sexGbCd" value=""/>
	<input type="hidden" name="frnrGb" value=""/>
	<input type="hidden" name="kakaoSync" value="N"/>	<!-- 카카오싱크회원여부 -->
	<input type="hidden" name="rcmNo" value="D02010003">	<!-- UX-2868 -->
	<input type="hidden" name="naverMember"   value="Y">	<!-- 네이버가입회원여부 -->
</form>

<!-- 이름 변경 팝업 -->
<div class="ui-modal nickname-change" id="changeNamePup" tabindex="-1" role="dialog" aria-label="이름 변경">
    <div class="ui-modal-dialog" role="document">
        <div class="content">
	   	<p class="ui-title">이름 입력</p>
            <div class="content-body">
           		<p>카카오톡 프로필명이 본인 이름이 아닌 경우 서비스 이용에 불편이 있을 수 있습니다.<br>이름을 입력해 주세요.</p>
                <div class="form-wrap">
                    <div class="inputbox" id="divChangeName">
	                    <label class="inplabel"><input type="text" id="newName" value="" placeholder="이름을 입력해 주세요" title="이름을 입력해 주세요" maxlength="8"></label>
	                    <button class="btn ico-clearabled"><i class="icon"></i><span class="hiding">지우기</span></button>
                    </div>
                    <p class="failed-msg">
                        <i class="icon" id="alertNameIcon"></i>
                        <span id="alertName"></span>
                    </p>
                </div>
                <div class="btngroup">
                    <button class="btn btn-default medium" onclick="btnChangeName();"><span>확인</span></button>
                </div>
            </div> <!-- //.content-body -->
            <button class="btn btn-close" data-dismiss="modal"><i class="icon xico"></i><span class="hiding">레이어 닫기</span></button>
        </div> <!-- //.content -->
    </div>
</div> <!-- //.ui-modal name-change -->

    <script type="text/javascript" defer='defer'>
        (function() {
            function injectScript() {
                var _TRK_InSc = document.createElement('script');
                _TRK_InSc.type = 'text/javascript';
                _TRK_InSc.async = true;
                _TRK_InSc.src = '//image.hmall.com/p/js/co/901_Insight_WebAnalytics.js';
                document.body.appendChild(_TRK_InSc);
            }
            if (window.attachEvent) {
                window.attachEvent('onload', injectScript);
            } else {
                window.addEventListener('load', injectScript, false);
            }
        })();
    </script>

    <!-- Google Code for &#54924;&#50896;&#44032;&#51077;&#50756;&#47308; Conversion Page -->
    <script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 1066206974;
    var google_conversion_language = "en";
    var google_conversion_format = "3";
    var google_conversion_color = "ffffff";
    var google_conversion_label = "eweVCIruwAoQ_o20_AM";
    var google_remarketing_only = false;
    /* ]]> */
    </script>
    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
    </script>
    <noscript>
    <div style="display:inline;">
    <img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/1066206974/?label=eweVCIruwAoQ_o20_AM&amp;guid=ON&amp;script=0"/>
    </div>
    </noscript>

</body>
</html>
