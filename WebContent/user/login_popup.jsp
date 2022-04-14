<%@page import="com.hmall.dto.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*************************************************************
	파일명: login_popup.jsp
	기능: 로그인 요청 및 수행, 쿠키 활용 아이디 저장, 로그인 팝업창 화면 
	작성자: 김승환
	
	[코멘트: 구현한 기능 외 기본 디자인은 실제 사이트 참조]
	*************************************************************/
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>로그인 - 현대Hmall</title>
	<link rel="shortcut icon" href="https://www.hmall.com/favicon.ico" />
	<%@include file = "/component/script.jsp" %>
	<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/login.css">
</head>
<body>
<!-- 윈도우 팝업 클래스 popup-win : width:540px , height:650px -->

<script type="text/javascript">
	//쿠키 set
	function setCookie(cookie_name, value, days) {
	  var exdate = new Date();
	  exdate.setDate(exdate.getDate() + days); // 설정 일수만큼 현재시간에 만료값으로 지정
	  var cookie_value = escape(value) + ((days == null) ? '' : '; expires=' 
	  + exdate.toUTCString());
	  document.cookie = cookie_name + '=' + cookie_value;
	}
	
	// 쿠키 값 가져오기
	function getCookie(cookie_name) {
		  var x, y;
		  var val = document.cookie.split(';');

		  for (var i = 0; i < val.length; i++) {
		    x = val[i].substr(0, val[i].indexOf('='));
		    y = val[i].substr(val[i].indexOf('=') + 1);
		    x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기
		    if (x == cookie_name) {
		      return unescape(y); // unescape로 디코딩 후 값 리턴
		    }
		  }
		}
	
	// 쿠키에 user 아이디 값이 있으면 
	$(function(){
		var data = getCookie("user_id");
		if (data == null){
			$('#user_id').val("");
			$('#checkbox').prop('checked', false);
		}else{
			$('#user_id').val(data);
			$('#checkbox').prop('checked', true);
		}
	});
	
	// 로그인 요청 함수
	function go_login(){
		var formData = $("#memberLoginForm").serialize();
			$.ajax({ // 로그인 요청
				url : '/HmallProject/HmallServlet?command=login_action',
				type : 'post',
				dataType : 'json',
				data : formData,
				async: false,
				success:function(res){
					if(res.user_id!= null) {
						if(res.user_id == 'admin'){
							window.opener.document.location.href = '/HmallProject/admin_manage.jsp';
							self.close();
						}
						else{
							if($("#checkbox").is(":checked")){ // 아이디 저장을 체크했을 경우
								check = true
								setCookie("user_id", res.user_id, 1); // 쿠키 user 아이디, 1일 유지 set
							}else{ // 아이디 저장 체크를 풀었을 때
								setCookie("user_id", "", 0); // 쿠키 값 초기화
							}
							opener.location.reload(); //팝업창을 불러낸 부모창 새로고침
							self.close(); // 팝업창 닫기
						}
						
					}else {
						alert("로그인 실패");
					}
				},
				error : function(data, textStatus){ // 응답 실패
					console.log('error');
					console.log(data);
				}
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

                            
                            <div role="tabpanel" class="tab-pane ui-active" id="hmall">
                                <div class="login-form">
                                    <div class="inputbox xl">
                                        <label class="inplabel">
                                                <input type="text" maxlength='30' tabindex="1" name="user_id" id = "user_id" value = "" placeholder="아이디 또는 이메일 주소 입력" title="아이디 또는 이메일 주소 입력">
                                        </label>
                                        <i class="icon person"></i>
                                    </div>
                                    <div class="inputbox xl">
                                        <label class="inplabel">
                                            <input type="password" tabindex="2" size='30' maxlength='30' name="user_pw" placeholder="비밀번호" title="비밀번호 입력"
                                                  >
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
 
                                </div>
                                <!-- //.login-form -->

                                <div class="login-relate">
                                    <div class="checkbox-wrap">
                                        <div class="checkbox">
                                            <label class="chklabel">
                                                <input type="checkbox" id = "checkbox" name="idSaveYn" >
                                                <i class="icon"></i>
                                                <span>아이디 저장</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- //.login-relate -->
                                <!-- <div class="btngroup btnlen1"> -->
                                <button id="loginCheck" class="btn btn-login btn-default" onclick="go_login()" ><span>로그인</span></button>
                                <!-- </div> -->
								<div></div>
                                <ul class="login-find">
                                    <li><a href="javascript:;" onclick="">아이디 찾기</a></li>
                                    <li><a href="javascript:;" onclick="">비밀번호 찾기</a></li>
                                    <li><a href="../HmallServlet?command=join_form">회원가입</a></li>
                                </ul>

                            </div>
                         </form>
                     </div>
                    </div>
                </div>
                <!-- //.tabgroup -->
            </div>
        </div>

    </div>
</div>

</body>

</html>