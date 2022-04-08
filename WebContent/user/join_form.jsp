<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
	<head>
		<title> 회원가입 - 현대Hmall</title>
		<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/common.css">
		<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/layout.css">
		<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/popup.css">
		<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/cu/member.css">
		<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/jquery-ui.css">
		<!-- favicon -->
   		<link rel="shortcut icon" type="image/x-icon" href="//image.hmall.com/p/img/co/favicon/favicon.ico">
<!--    		http://localhost:8090/HmallProject/resource/js/jquery-3.4.1.min.js -->
   		
   		<script type="text/javascript" src="/HmallProject/resource/js/jquery-3.4.1.min.js"></script>
   		<script type="text/javascript" src="/HmallProject/resource/js/co.js"></script>
   		<script type="text/javascript" src="/HmallProject/resource/js/common.js"></script>
   		<script type="text/javascript" src="/HmallProject/resource/js/commonFuction.js"></script>
   		<script type="text/javascript" src="/HmallProject/resource/js/jquery.cookie.js"></script>
   		<script type="text/javascript" src="/HmallProject/resource/js/jquery.easing.min.js"></script>
   		<script type="text/javascript" src="/HmallProject/resource/js/jquery-ui.1.12.1.min.js"></script>
   		<script type="text/javascript" src="/HmallProject/resource/js/reDirectExceptUrlList.js"></script>
   		<script type="text/javascript" src="/HmallProject/resource/js/slick.min.js"></script>
   		<script type="text/javascript" src="/HmallProject/resource/js/ukDetect.min.js"></script>
   		
   		<!-- <script type="text/css" src = "/HmallProject/resource/css/common.css"></script>
   		<script type="text/css" src = "/HmallProject/resource/css/jquery-ui.css"></script>
   		<script type="text/css" src = "/HmallProject/resource/css/layout.css"></script>
   		<script type="text/css" src = "/HmallProject/resource/css/popup.css"></script> -->
   		<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/cu/member.css">
   		
   		
   		<script>
   		var 
   		alert("sdalfknsafknsaflsa");
   		</script>
	</head>
	<body class = "cbody">
	
	<script>
			function go_join(){
				$("#registMemberFormNew").attr("action", "/HmallProject/HmallServlet?command=join_action"); // attr : element 속성들 control 가능
				$("#registMemberFormNew").submit();
			}
			$('#uName').blur(function(){
				if(!this.value){
					alert("test");
				}
			});
	</script>
		
	 <div class="wrap join-naver">
		<main class = "cmain main" role = "main" id = "mainContents">
		 <div class = "container">
			<div class = "contents w600">
				<div class = "inner-box article">
					<div class="title-area">
                        <h1 class="logo">            
                            <a href="header.jsp">
                                <span class="img"><img src="//image.hmall.com/p/img/cu/logo-hmall-88.png" alt="현대Hmall"></span>
                                <span>회원가입</span>
                            </a>
                        </h1>
                    </div>
					<form id = "registMemberFormNew" name = "registMemberFormNew" method ="post">
						<div class = "join-notibox naver">
							<i class = "icon"></i>
							<p>네이버로 회원가입 시 이메일 주소가 아이디로 사용됩니다.</p>
						</div>
						<p class = "form-tit"> 필수 항목 </p>
						
						<!-- 이름 -->
						<div class="inputbox">
                            <label class="inplabel"><input type="text" id="uName" name="user_name" value="" placeholder="이름"></label>
                        </div>
                       	<p class="failed-msg" id="alertName" style="display: none">
                            <i class="icon error"></i>
                            <span>이름을 입력해 주세요.</span>
                        </p>
                        
                        <!-- 이메일 -->
						<div class="inputbox _active" id="divId">
                            <label class="inplabel"><input type="text" id="uIdName" name="email" value="test@naver.com" placeholder="아이디 또는 이메일 (영문,숫자 4~30자리)" class="ui-autocomplete-input" autocomplete="off"></label>
                        </div>
                        <p class="failed-msg" id="alertId" style="display: none">
                        	<i class="icon error"></i>
                        	<span> 아이디를 입력해 주세요. </span>
                        </p>
                        
                        <!-- 휴대폰 번호 -->
						<div class="inputbox" id="divMobile">
                            <label class="inplabel"><input type="text" id="mobile" name="phone_number" value="" placeholder="휴대폰 번호 (예 : 01012345678)"></label>
                        </div>
                        <p class="failed-msg" id="alertMobile" style="display: none;">
                            <i class="icon error"></i>
                            <span>휴대폰 번호를 입력해주세요.</span>
                        </p>
                        
                        <!-- 생년월일 -->
                        <p class="form-tit">선택항목</p>
                        <div class="inputbox" id="divBirth">
                            <label class="inplabel">
                            	<input type="text" id="birthday" name="birth" value="" placeholder="생년월일 (예 : 19900822)">
                            </label>
                        </div>
                        <p class="failed-msg" id="alertBirthday" style="display: none;">
                            <i class="icon error"></i>
                            <span>생년월일 형식이 틀렸습니다. 다시 확인하고 입력해주세요.</span>
                        </p>
                        
                        <!-- 히든 입력 -->
                        <input type="hidden" name = "user_id" value = "test 아이디">
                        <input type="hidden" name = "user_pw" value = "testpw">
                        <input type="hidden" name = "address" value = "test">
                        <input type="hidden" name = "user_point" value = "500">
                        <input type="hidden" name = "grade" value = "test">
					</form>

				</div>
				<div class="inner-box article-border">
                    <ul class="chk-list">
                        <li>
                            <div class="checkbox-wrap">
                                <div class="checkbox">
                                    <label class="chklabel">
                                        <input type="checkbox" name="chocAgrYn" id="chocAgrYn" aria-checked="false"><i class="icon"></i>
                                        <span><em class="color-ff5340">[필수]</em> 이용약관 및 개인정보 수집/이용에 동의합니다.</span>
                                    </label>
                                </div>
                            </div>

                            <div class="lr-align">
                                <span class="left-align">현대 Hmall 이용약관</span>
                                <a href="//www.hmall.com/p/cod/shmlTcnd.do" class="btn atext right-align" target="_blank"><span>내용보기</span><i class="arrow right"></i></a>
                            </div>
                            <div class="lr-align">
                                <span class="left-align">개인정보 수집 및 이용</span>
                                <a href="javascript:;" class="btn atext right-align" data-modules-modal="target:.join-info-personal;"><span>내용보기</span><i class="arrow right"></i></a>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox-wrap">
                                <div class="checkbox">
                                    <label class="chklabel"><input type="checkbox" name="marketingAgree" id="marketingAgree" aria-checked="false"><i class="icon"></i><span>[선택] 맞춤형 마케팅 동의</span></label>
                                </div>
                            </div>
                            <div class="checkbox-wrap choice-agree">
                                <div class="checkbox">
                                    <label class="chklabel sm"><input type="checkbox" name="marketing" id="marketing" aria-checked="false"><i class="icon"></i><span>이메일</span></label>
                                </div>
                                <div class="checkbox">
                                    <label class="chklabel sm"><input type="checkbox" name="smsMarketing" id="smsMarketing" aria-checked="false"><i class="icon"></i><span>문자</span></label>
                                </div>
                                <div class="checkbox">
                                    <label class="chklabel sm"><input type="checkbox" name="telMarketing" id="telMarketing" aria-checked="false"><i class="icon"></i><span>전화 (보험상담 등)</span></label>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
				<div class="inner-box">
                    <p class="infotxt">이용약관과 개인정보 수집 및 이용을 확인하였으며,<br>만 14세 이상임을 동의하십니까?</p>
                    <div class="btngroup">
                        <button class="btn btn-default medium" onclick="go_join()"><span>가입하기</span></button>
                    </div>
                </div>
			</div>
		 </div>
		</main>
	 </div>
	</body>
</html>