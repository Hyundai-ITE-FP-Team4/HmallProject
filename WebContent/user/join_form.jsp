<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	/*************************************************************
	파일명: join_form.jsp
	기능: 회원가입 폼에서 정보를 입력하고 회원가입을 요청 / 회원가입 폼 화면 디자인
	작성자: 김승환
	
	[코멘트: 구현한 기능 외 기본 디자인은 실제 사이트 참조]
	*************************************************************/
%>
<!DOCTYPE html>
<html>
	<head>
		<title> 회원가입 - 현대Hmall</title>
		<%@include file = "/component/script.jsp" %>
	</head>
	<body class = "cbody">
	<script>
			var check_dup = false;
			
			function go_submit(){ 
				if( $('#birthday').val().length == 0){ //생년월일 선택사항, 비어있으면 0 기본값으로 회원가입
					$('#birthday').attr("value", 0);
				}
				var formData = $("#registMemberFormNew").serialize();
				
				$.ajax({
					url : 'http://localhost:8090/HmallProject/HmallServlet?command=join_action',
					type : 'post',
					dataType : 'json',
					data : formData,
					async: false,
					success:function(){
						location.href = "/HmallProject/index.html";
					},
					error : function(data, textStatus){
						console.log('error');
						console.log(data);
					}
				});
			}
			
			
			//회원가입 함수
			function go_join(){
				
				if(!check_input()){
					alert("비어있는칸 확인!");
					return
				}
				else if(!check_dup){
					alert("아이디 중복 확인하세요.");
					return
				}
				
								
				//체크박스 체크 되어 있는지 확인
				if (checkBox()){ // 체크된 상태
					go_submit();
				}
				else{ // 체크 안 된 상태
					if(confirm("이용약관 및 개인정보 수집 동의하셔야" + "\n" + "회원가입이 완료됩니다." + "\n" + "동의하시겠습니까?") == true){
						go_submit();
					}
				} // end if-else
			}
			
			function check_input(){
				theForm = document.registMemberFormNew;
				if($("#user_id").val().length==0 || $("#user_pw").val().length==0 || $("#user_pw_check").val().length==0 || $("#user_pw_check").val().length==0){
					return false;
				}
				return true;
			}
			
			// 입력 칸이 비어있으면 경고문 띄어주기
			$(function(){ //document ready
				$('#user_name').on('blur', function(){
					if(!this.value){
						$('#alertName').css('display', 'block');
					}
					else{
						$('#alertName').css('display', 'none');
					}
				});
				
				$('#user_id').on('blur', function(){
					if(!this.value){
						$('#alertId').css('display', 'block');
					}
					else{
						$('#alertId').css('display', 'none');
					}
				});
				
				$('#user_pw').on('blur', function(){
					if(!this.value){
						$('#alertPw').css('display', 'block');
					}
					else{
						$('#alertPw').css('display', 'none');
					}
				});
				
				$('#user_pw_check').on('blur', function(){
					if(!this.value){
						$('#alertPwCheck').css('display', 'block');
					}
					else{
						$('#alertPwCheck').css('display', 'none');
					}
				});
				
				$('#phone_number').on('blur', function(){
					if(!this.value){
						$('#alertMobile').css('display', 'block');
					}
					else{
						$('#alertMobile').css('display', 'none');
					}
				});
				
				//아이디 중복 확인하기
				$('#id_check').on('click', function(){
					var param = {
						user_id : $('#user_id').val()
					}
					console.log(param);
					
					$.ajax({
						url : 'http://localhost:8090/HmallProject/HmallServlet?command=id_check',
						type : 'post',
						dataType : 'json',
						data : param,
						success:function(res){
							console.log('success');
							console.log(res);
							if(res.cnt > 0) {
								alert("아이디가 중복 입니다.")
							}else {
								check_dup = true;
								alert("아이디 중복 아닙니다.")
							}
						},
						error : function(data, textStatus){
							console.log('error');
							console.log(data);
						}
					});
				});
				
				//비밀번호 입력칸, 비밀번호 확인 입력칸 동일한지 확인
				$('#user_pw_check').blur(function(){
					if($('#user_pw').val() != $('#user_pw_check').val()){
						alert("no 일치");
					}
				});
				
			});
			
			
			// 필수 동의 했는지 여부 체크
			function checkBox(){
				var check = false;
				if($("#chocAgrYn").is(":checked")){
					check = true
				}
				return check;
			}
			
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
                            <label class="inplabel"><input type="text" id="user_name" name="user_name" value="" placeholder="이름"></label>
                        </div>
                       	<p class="failed-msg" id="alertName" style="display: none">
                            <i class="icon error"></i>
                            <span>이름을 입력해 주세요.</span>
                        </p>
                        
                        <!-- 이메일 (아이디) -->
						<div class="inputbox _active" id="divId">
                            <label class="inplabel"><input type="text" id="user_id" name="user_id" placeholder="아이디 또는 이메일 (영문,숫자 4~30자리)" class="ui-autocomplete-input" autocomplete="off"></label>
                        	<button class="btn btn-linered small" type = "button" id = "id_check" name = "id_check">중복 확인</button>
                        </div>
                        <p class="failed-msg" id="alertId" style="display: none">
                        	<i class="icon error"></i>
                        	<span> 아이디를 입력해 주세요. </span>
                        </p>
                        
                        
                        <!-- 비밀번호 -->
						<div class="inputbox _active" id="divId">
                            <label class="inplabel"><input type="password" id="user_pw" name="user_pw"  placeholder="비밀번호" class="ui-autocomplete-input" autocomplete="off"></label>
                        </div>
                        <p class="failed-msg" id="alertPw" style="display: none">
                        	<i class="icon error"></i>
                        	<span> 비밀번호 입력해 주세요. </span>
                        </p>
                        
                        <!-- 비밀번호 확인 -->
						<div class="inputbox _active" id="divId">
                            <label class="inplabel"><input type="password" id="user_pw_check" name="user_pw_check"  placeholder="비밀번호 확인" class="ui-autocomplete-input" autocomplete="off"></label>
                        </div>
                        <p class="failed-msg" id="alertPwCheck" style="display: none">
                        	<i class="icon error"></i>
                        	<span> 비밀번호 확인 입력해 주세요. </span>
                        </p>
                        
                        <!-- 휴대폰 번호 -->
						<div class="inputbox" id="divMobile">
                            <label class="inplabel"><input type="text" id="phone_number" name="phone_number" value="" placeholder="휴대폰 번호 (예 : 01012345678)"></label>
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
                        <input type="hidden" name = "address" value = "test">
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