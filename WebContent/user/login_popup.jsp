<%@page import="com.hmall.dto.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, height=device-height">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no, email=no, address=no">
<meta name="apple-mobile-web-app-capable" content=" yes">
<meta name="robots" content="index,follow">
<meta name="title" content="https://hmall.com">
<meta name="author" content="@Hmall">
<meta name="description" content="백화점, 브랜드, 홈쇼핑까지- 당신의 모든 취향을 읽다. Korean Online Shopping Mall, Worldwide Shipping available, Hyundai Department Store Group in Korea. 韩国现代百货店的线上购物网站正品保障, 海外配送.">
<meta name="keywords" content="">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>로그인 - 현대Hmall</title>
    <!-- includeScript -->
    





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

    function getClickUrl(url){
        if(url == ''){
            return false;       
        }else{
            document.location.href = url;   
        }
    }

</script>
    <link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/login.css">
    <script type="text/javascript">
        document.domain = "hmall.com";
        jQuery(function($) {
            if(upntCustUseYn== "N"){
                //통멤 장애중
                $("#hpointLogin").removeClass("selected");
                $("#hpointLogin").hide();
                $("#hpointTab").hide();
              	//UX-2020 통멤점검시 상단탭바 미노출
                $("#orginLogin").addClass("selected");
                $("#originTab").hide();
                //$(".tabcnt").removeClass("selected").eq(0).addClass("selected");
            }

            //var winW = 425;
            //var winH = 500;
            var winW = 562;
            var winH = 920;

            winH = winH - 120;

            window.resizeTo(winW, winH);

        });
            centerLoading(true,30);
        }
    </script>
</head>
<body>
<!-- 윈도우 팝업 클래스 popup-win : width:540px , height:702px -->

<script type="text/javascript">
	function go_login(){
// 		$("#memberLoginForm").attr("action", "/HmallProject/HmallServlet?command=login_action"); // action 속성 control //attr : element 속성들 control 가능
// 		$("#memberLoginForm").submit(); // 해당 form이 submit 했을 때

		var formData = $("#memberLoginForm").serialize();
		
		$("#memberLoginForm").submit(function(){
			$.ajax({
				url : 'http://localhost:8090/HmallProject/HmallServlet?command=login_action',
				type : 'post',
				dataType : 'json',
				data : formData,
				success:function(res){
					console.log('success');
					console.log(res);
					if(res.login_check == 'success') {
						console.log('성공');
						console.log(res);
						self.close();
					}else {
						console.log('실패');
						console.log(res);
						alert("로그인 실패");
						
					}
				},
				error : function(data, textStatus){
					console.log('error');
					console.log(data);
				}
			});
		});
		
	}
</script>

<div class="popup-win wp-log-hmall">
    <div class="pop-wrap" tabindex="0">
        <div class="pop-content-wrap">
            <strong class="pop-title">Hmall 로그인</strong>
            <div class="pop-content">
                <div class="tabgroup bdline">
                    <!-- Tab panes -->
                    <div class="tab tab-default">
                            <ul class="tabmenu ui-tab" role="tablist">
                                <li role="presentation" id="originTab"class="ui-active" onclick = "orginLogin();"><a href="#hmall" aria-controls="#hmall" role="hmall" data-modules-tab="" aria-expanded="true">Hmall 간편회원</a></li>
                                <li role="presentation" id="hpointTab" class="" onclick = "hpointLogin();"><a href="#hpoint" aria-controls="hpoint" data-modules-tab="" aria-expanded="false">H.Point 통합회원</a></li>
                            </ul>
                    </div>
                    <div class="tab-content">
                    <div role="tabpanel" class="tab-pane ui-active" id="hmallLogin">
                        <form id = "memberLoginForm" name="memberLoginForm" method="post">
                           <!--  <input type="hidden" name="popupYn" value="Y"/>
                            <input type="hidden" name="redirectUrl" value="https://www.hmall.com/p/index.do"/>
                            <input type="hidden" name="errorMessage" value=""/>
                            <input type="hidden" name="loginPupYn" value ="Y"/>
                            <input type="hidden" name="autoCheck" value ="F8494C61A45003157469541D54745563"/>
                            <input type="hidden" name="august" value ="A891FAC63306538A727CC3D25EBDD87B"/> -->

                            
                            <div role="tabpanel" class="tab-pane ui-active" id="hmall">
                                <div class="login-form">
                                    <!--
                                        input focus/선택 시  inputbox class= selected 추가 예) <div class="inputbox selected">
                                        input disabled 시  inputbox class= disabled 추가 예) <div class="inputbox disabled">
                                        input readonly 시  inputbox class= readonly 추가 예) <div class="inputbox readonly">
                                        input 입력 실패 시  inputbox class= failed 추가 예) <div class="inputbox failed">
                                        input 입력 성공 시  inputbox class= success 추가 예) <div class="inputbox success">
                                        -->
                                    <div class="inputbox xl">
                                        <label class="inplabel">
                                                <input type="text" maxlength='30' tabindex="1" name="user_id" placeholder="아이디 또는 이메일 주소 입력" title="아이디 또는 이메일 주소 입력">
                                        </label>
                                        <i class="icon person"></i>
                                    </div>
                                    <div class="inputbox xl">
                                        <label class="inplabel">
                                            <input type="text" tabindex="2" size='30' maxlength='30' name="user_pw"  onkeypress="javascript:capslock(event);" placeholder="비밀번호" title="비밀번호 입력"
                                                   onkeydown="javascript:if(event.keyCode==13){$('#loginCheck').click(); return false;}">
                                        </label>
                                        <i class="icon lock"></i>
                                    </div>
                                    
                                    
                                    <div class="toast arrtl" style="display: none;" id ="alertCapsLock">
                                        <p><i class="icon"></i> <strong>&lt;Caps Lock&gt;</strong>이 켜져 있습니다.</p>
                                    </div>
                                                                       
                                    <!-- 입력 실패 메세지 -->
                                    <p class="failed-msg" style="display: none;" id="alertMember">
                                        <i class="icon error"></i>
                                        <span>아이디를 입력해 주세요.</span>
                                    </p>
                                    <p class="failed-msg" style="display: none;" id="alertHpoint">
                                        <i class="icon error"></i>
                                        <span>H.Point 통합회원이시면 상단의 'H.Point 통합회원'을 선택해 주세요.</span>
                                    </p>
                                    <!-- <p class="failed-msg">아이디를 입력해 주세요.</p> -->
                                    <!-- <p class="failed-msg">비밀번호를 입력해 주세요.</p> -->
                                    <!-- <p class="failed-msg">아이디 또는 비밀번호를 다시 확인해 주세요<br>H.Point 회원이시면 상단의 'H.Point 아이디'를 선택하세요.</p> -->
                                </div>
                                <!-- //.login-form -->

                                <div class="login-relate">
                                    <div class="checkbox-wrap">
                                        <div class="checkbox">
                                            <label class="chklabel">
                                                <input type="checkbox" name="idSaveYn" >
                                                <i class="icon"></i>
                                                <span>아이디 저장</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- //.login-relate -->
                                <!-- <div class="btngroup btnlen1"> -->
                                <button id="loginCheck" class="btn btn-login btn-default" onclick="go_login()" tabindex="3"><span>로그인</span></button>
                                <!-- </div> -->

                                <ul class="login-find">
                                    <li><a href="javascript:;" onclick="findId(); return false;">아이디 찾기</a></li>
                                    <li><a href="javascript:;" onclick="findPwd(); return false;">비밀번호 찾기</a></li>
                                    <li><a href="../HmallServlet?command=join_menu">회원가입</a></li>
                                </ul>

                                <!-- Hmall 아이디 로그인에서만 노출 -->

                                <div class="btngroup btnlen2">
                                    <button type="button" type="button" class="btn btn-naver" onclick="naverLogin();"><i class="icon"></i><span>네이버 로그인</span></button>
                                    <button type="button" type="button" class="btn btn-kakao" onclick="kakaoLogin();"><i class="icon"></i><span>카카오톡 로그인</span></button>
                                </div>


                                <div class="login-ad">
                                    <a href="#" onclick="GA_Event('로그인' , '휴대폰 번호로 로그인' , '');loginPlus();">
                                        <img src="//image.hmall.com/p/img/co/sample/img-login-ad-2x.png" alt="휴대폰 번호로 로그인">
                                    </a>
                                </div>

                                <div class="btngroup btnlen1">
                                    <button class="btn btn-linelgray" onclick="GA_Event('로그인' , '비회원 주문조회' , '');nonMemberOrderLookup(); return false;"><span>비회원 주문조회</span></button>
                                </div>
                                <div class="login-help-wrap">
                                    <span class="txt">회원가입이 어려우시다면?</span>
                                    <div class="btn btn-round xs">
                                    	<span class="bold">080-077-0000</span>
                                    </div>
                                </div>

                                <!-- //Hmall 아이디 로그인에서만 노출 -->

                            </div>
                         </form>
                     </div>
                     <div role="tabpanel" class="tab-pane" id="hpointLogin">
                          <div class="login-form">

                              <div class="inputbox xl">
                                  <label class="inplabel">
                                      
                                          <input type="text" name="hpointId" id="hpointId" placeholder="H.Point 통합회원 아이디" title="H.Point 통합회원 아이디">
                                  </label>
                                  <button class="btn ico-clearabled"><i class="icon"></i><span class="hiding">지우기</span></button>
                                  <i class="icon person"></i>
                              </div>

                              <div class="inputbox xl">
                                  <label class="inplabel">
                                        <input type="password"  name="hpointPwd"  onkeypress="javascript:capslockByhpoint(event);" id="hpointPwd" placeholder="비밀번호" title="비밀번호 입력"
                                            onkeydown="javascript:if(event.keyCode==13){$('#hpointLoginCheck').click(); return false;}"
                                  ></label>
                                  <button class="btn ico-clearabled"><i class="icon"></i><span class="hiding">지우기</span></button>
                                  <i class="icon lock"></i>
                              </div>

                              <div class="toast arrtl" style="display: none;" id ="alertCapsLockByHpoint">
                                  <p><i class="icon"></i> <strong>&lt;Caps Lock&gt;</strong>이 켜져 있습니다.</p>
                              </div>

                              <!-- 입력 실패 메세지 -->
                              <p class="failed-msg" style="display:none;" id = "alertByHpointLogin">
                                  <i class="icon error"></i>
                                  <span>아이디를 입력해 주세요.</span>
                                  <!--<span>비밀번호를 입력해 주세요.</span>-->
                                  <!--<span>아이디 또는 비밀번호를 다시 확인해 주세요<br>Hmall 간편회원이시면 상단의 'Hmall 간편회원'을 선택해 주세요.</span>-->
                              </p>
                          </div>

                          <div class="login-relate">
                              <div class="checkbox-wrap">
                                  <div class="checkbox">
                                      <label class="chklabel">
                                        <input type="checkbox" name="save_id_hp" id ="idSaveYn1" >
                                            <i class="icon"></i><span>아이디 저장</span>
                                      </label>
                                  </div>
                              </div>
                          </div>

                          <button id="hpointLoginCheck" class="btn btn-login btn-default" onclick="memberLoginByHpoint('ajax');return false;"><span>로그인</span></button>

                          <ul class="login-find">
		                     <li><a href="https://www.h-point.co.kr/cu/config/findCustId.nhd">아이디 찾기</a></li>
		                     <li><a href="https://www.h-point.co.kr/cu/config/findCustPwd.nhd">비밀번호 찾기</a></li>
		                     <li><a href="javascript:;" class="btn alink" onclick ="doSearchUPntRegPop();">회원가입</a></li>
                          </ul>

                          <div class="login-btn">
                              <a href="javascript:;" class="btn alink" onclick ="otpLogin();"><span>OTP 인증번호 로그인</span></a>
                          </div>
                      </div>
                      <div role="tabpanel" class="tab-pane" id="hpoint-otp">
                          <div class="login-form">

                              <div class="inputbox xl">
                                  <label class="inplabel"><input type="text" maxlength='8' id= "otpNum" name="otpNum" placeholder="OTP 인증번호 입력" title="OTP 인증번호 입력"></label>
                                  <button class="btn ico-clearabled"><i class="icon"></i><span class="hiding">지우기</span></button>
                                  <i class="icon person"></i>
                              </div>

                              <p class="otp-txt">H.Point 앱을 실행하여, 설정 메뉴의 로그인/회원 설정 항목에서 ‘OTP 인증번호 발급’을 누른 후 발급되는 일회용 인증번호를 입력해 주세요.</p>

                              <!-- 입력 실패 메세지 -->
                              <p class="failed-msg" style="display: none;" id= "alertByOtp"> 
                                  <i class="icon error"></i>
                                  <span>OTP 인증번호를 입력해 주세요.</span>
                                  <!--<span>OTP 인증번호를 다시 확인해 주세요.</span>-->
                              </p>
                          </div>

                          <button class="btn btn-login btn-default" onclick="memberLoginByOtp('ajax');return false;"><span>로그인</span></button>

                          <div class="login-btn">
                              <a href="javascript:;" class="btn alink" onclick ="hpointLogin()"><span>아이디/비밀번호 로그인</span></a>
                          </div>
                      </div>
                    </div>
                </div>
                <!-- //.tabgroup -->
            </div>
        </div>

    </div>
</div>


<form name="registMemberForm" method="post">
    <input type="hidden" name="email"/>
    <input type="hidden" name="emailCertNo"/>
    <input type="hidden" name="langType" value="korean"/>
    <input type="hidden" name="autoCheck" value ="F8494C61A45003157469541D54745563"/>
    <input type="hidden" name="august" value ="A891FAC63306538A727CC3D25EBDD87B"/>

    <!-- 전자상거래 규제 개선 -->
    <input type="hidden" name="isOverseasSectPup" value="N" />
    <input type="hidden" name="popupYn" value="Y" />
    <input type="hidden" name="redirectUrl" value="https://www.hmall.com/p/index.do" />
    <input type="hidden" name="errorMessage" value="" />
    <input type="hidden" name="token" />
    <input type="hidden" name="snsType"/>
</form>

<script type="text/javascript">
    (function(d, s, id){
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



</script>




<script type="text/javascript">
    //카카오로그인 추가(2018.12.07 회원가입개선-prj)
    function kakaoLogin(){

        var returnURL = "https://www.hmall.com/p/index.do";
        var redirect_uri ='https://www.hmall.com';

        redirect_uri += '/p/kakaoLoginChk.do';

        var url = "/p/cob/kakaoLogin.do?redirect_uri=" + encodeURIComponent(redirect_uri)+ "&return_url="+encodeURIComponent(returnURL);
        var popName = "kakaoLogin";
        var popOption = "height=660, width=795, fullscreen=no, location=no, scrollbars=no, menubar=no, toolbar=no, titlebar=no, directories=no, resizable=no, top=0, left=0, status=no";
        window.open(url, popName, popOption);

    }

</script>
</body>

</body>
</html>
