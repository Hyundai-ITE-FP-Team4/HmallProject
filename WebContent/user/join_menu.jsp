<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	<title>회원가입 - 현대Hmall</title>
	<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/common.css">
	<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/layout.css">
	<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/co/popup.css">
	<link rel="stylesheet" type="text/css" href="//image.hmall.com/p/css/cu/member.css">
	</head>
	
	<body>
	
	<div class="wrap join-main wing-none">

	<main class="cmain main" role="main" id="mainContents"><!-- 메인페이지 'main' 클래스 추가 -->
		<div class="container">
			<div class="cbody">
				<div class="contents w600">
					<div class="inner-box bdtop">
						<div class="title-area">
							<h1 class="logo">
								<a href="javascript://" onclick="goHome();">
									<span class="img"><img src="//image.hmall.com/p/img/cu/logo-large.png" alt="현대Hmall"></span>
									<span>회원가입</span>
								</a>
							</h1>
						</div>
						
							<div class="join-hpoint">
	                            <p><img src="https://image.hmall.com/CO/EDITOR/20210716/115110876/n4bzw.jpg" alt=""></p>
	                            <div class="btngroup">
	                            <!--20201007 수요일 hpoint 추가-->
									<!-- 20210804 일시적 Hmall 간편회원가입 제거에 따른 style 추가-->	
                                	<button onclick="doSearchUPntRegPop(); return false;" class="btn btn-default medium" style="height:60px;"><span style="font-size:18px;">H.Point 통합 회원가입</span></button>
	                            </div>
	                        </div>
                                                
						<div class="link-list">
							<a href="HmallServlet?command=join_form" class="alink"><i class="icon naver-icon"></i><span>네이버 아이디로 회원가입</span></a>
							<a href="#" onclick="goKakaoRegist(); return false;" class="alink"><i class="icon kakao-icon"></i><span>카카오 아이디로 회원가입</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //.container -->
	</main>
	<!-- //.cmain -->

</div>
	</body>
</html>