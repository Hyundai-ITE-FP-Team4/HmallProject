<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.hmall.dto.QnaVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.hmall.dao.QnaDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--------------------------------------------------------------
파일명: qnaboard.jsp
기능: 1:1상담 페이지
작성자: 황명하

코멘트: 작성한 상담이 없으면 '상담내역이 없습니다.' 라고 출력, 있으면 게시글에 대한 시간과
카테고리, 내용을 보여주는 리스트 생성
 -------------------------------------------------------------->

<!DOCTYPE html>
<html>
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
<title>1:1 상담 - 현대Hmall</title>


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

<!-- includeScript -->
<link rel="stylesheet" type="text/css"
	href="//image.hmall.com/p/css/mp/mypage.css">
</head>
<body>
	<div class="wrap consult-main">
		<!-- wing banner 미노출 시 : wing-none 클래스 추가 -->
		<div class="nav-skip">
			<a href="#mainContents">본문 콘텐츠로 건너뛰기</a>
		</div>


		<!-- TODO 곽희섭 20170517 통합포인트 추가 -->
		<form id="loginForm" name="loginForm" method="post"
			action="https://www.h-point.co.kr/cu/login.nhd" target="sendLogin">
			<input type="hidden" name="retUrl"
				value="https://www.hmall.com/p/cob/upntGatePage.do"> <input
				type="hidden" name="retPage" value=""> <input type="hidden"
				name="prtnrId" value="D020" readonly> <input type="hidden"
				name="chnnlId" value="1102"> <input type="hidden"
				name="htmlYn" value="Y"> <input type="hidden" name="ci"
				value="">
		</form>
		<form id="myPntForm" name="myPntForm" method="post" action=""
			target="myPntForm">
			<input type="hidden" name="mcustNo" value="">
		</form>

		<!-- skip navigation -->
		<div class="nav-skip">
			<a href="#mainContents" id="accessibility">본문 콘텐츠로 건너뛰기</a>
		</div>

		<%@ include file="../../header.jsp"%>

		<main class="cmain mypage" role="main" id="mainContents">
			<!-- 마이페이지 'mypage' 클래스 추가 -->
			<div class="container">
				<div class="gird-l2x">
					<!--20170816 박승택 추가 -->
					<form name="upntLeftForm" method="post" target="uPnt">
						<input type="hidden" name="mcustNo"
							value="aG9yU0VSSFRXUnVWbkpVVjNCQ1pWVXhjVkZVUWs1U1IxSldWbXhhUzFFeGNFVlJWRlpUVm01Qk1sVXljelZpUjBwSVl6Tm9WMUp0YUhGVU1WcERWakZTYzFWc1ZtdGxha0Ux">
					</form>
					
					<%@ include file="../sidebar.jsp"%>

					<div class="contents">
						<div class="mypage-consult-wrap">
							<h3 class="title22">1:1 상담</h3>
							<div class="border-gray-box">
								<p class="ctypo15">고객님의 궁금한 사항을 친절히 해결해 드립니다.</p>
								<div class="btngroup inline-block">
									<!-- 게시판 상담하기 버튼 (황명하) -->
									<button class="btn btn-linelgray small34" type="button"
										onclick="window.open('HmallServlet?command=qna_popup','1:1 상담하기','width=430,height=500,location=no,status=no,scrollbars=yes');">
										<i class="icon write"></i><span>게시판 상담하기</span>
									</button>
								</div>
							</div>

							<ul class="ui-tab type-line" role="tablist">
								<li role="presentation" class="ui-active"><a href="#board"
									onclick="javascript:location.replace('/p/ccd/selectCnslOrdReqDtl.do')"
									aria-controls="board" role="tab" data-modules-tab="">게시판 상담</a></li>
								<li role="presentation"><a href="#chat"
									onclick="javascript:location.replace('/p/ccd/selectCnslChatReqDtl.do')"
									aria-controls="chat" role="tab" data-modules-tab="">채팅상담</a></li>
							</ul>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane ui-active" id="board">
									<div class="consult-list">
										<div class="filter-box bg-none">
											<form action="/p/ccd/selectCnslOrdReqDtl.do" method="post"
												name="myOrdReqSearchForm">
												<input type="hidden" id="condPeriod" name="condPeriod"
													value="2"> <input type="hidden" name="strtDt"
													id="strtDt" maxlength="8" value=""> <input
													type="hidden" name="endDt" id="endDt" maxlength="8"
													value=""> <input type="hidden" name="kwd" id="kwd"
													value="">
											</form>
											<div class="search-filter">
												<ul class="radiolist">
													<li><input type="radio" name="order" id="order01"
														aria-checked="&quot;true&quot;" checked="&quot;&quot;">
														<label for="order01" onclick="setWeekPeriod(0);">최근
															14일</label></li>
													<li><input type="radio" name="order" id="order02"
														aria-checked="&quot;false&quot;"> <label
														for="order02" onclick="setMonthPeriod(0,3);">최근
															3개월</label></li>
													<li><input type="radio" name="order" id="order03"
														aria-checked="&quot;false&quot;"> <label
														for="order03" onclick="setMonthPeriod(0,6);">최근
															6개월</label></li>
													<li><input type="radio" name="order" id="order04"
														aria-checked="&quot;false&quot;" value="2022"> <label
														for="order04" onclick="setYearPeriod(0,0);">2022년</label>
													</li>
													<li><input type="radio" name="order" id="order05"
														aria-checked="&quot;false&quot;" value="2021"> <label
														for="order05" onclick="setYearPeriod(0,-1);">2021년</label>
													</li>
													<li><input type="radio" name="order" id="order06"
														aria-checked="&quot;false&quot;" value="2020"> <label
														for="order06" onclick="setYearPeriod(0,-2);">2020년</label>
													</li>
													<li><input type="radio" name="order" id="order07"
														aria-checked="&quot;false&quot;"> <label
														for="order07" onclick="setAllPeriod(0);">전체</label></li>
												</ul>
												<div class="inputbox">
													<label class="inplabel icon-find"><input
														type="text" onkeyup="srchKwdEventKey();" id="srchKwd"
														value="" placeholder="상품명 검색"></label>
													<button class="btn btn-find" onclick="srchKwd();">
														<i class="icon find"></i><span class="hiding">검색</span>
													</button>
													<button class="btn ico-clearabled">
														<i class="icon"></i><span class="hiding">지우기</span>
													</button>
												</div>
												
											</div>
										</div>
										<!-- /주문기간 필터 -->
										
										<!-- 게시판 목록 -->
										<%
										//세션에 저장된 유저 정보를 가져오기(황명하)
										HttpSession user_session = request.getSession();
									    UserVO user_vo = (UserVO) user_session.getAttribute("user_vo");
									    
										QnaDAO qnaDAO = QnaDAO.getInstance();
										//해당유저의 게시판 글 목록을 가져오는 로직 수행 시작(황명하)
										ArrayList<QnaVO> data1 = qnaDAO.listAllQna(user_vo.getUser_id());
										request.setAttribute("data",data1);
										%>
										
										<c:choose>
												<c:when test= "${data.size() == 0}">
													<!-- 작성한 게시글이 없는 경우 - 상담 내역이 없다고 출력(황명하)-->
													<div>
														<div class="nodata">
															<span class="bgcircle"><i class="icon nodata-type12"></i></span>
															<p>상담 내역이 없습니다.</p>
														</div>
													</div>
												</c:when>
												
												<c:otherwise>
													<!-- 작성한 게시글이 있는 경우 - 게시글 리스트를 생성(황명하) -->
													<ul class="list">
														<c:forEach var="Qna" items="${data}">
														<c:set var="date" value = "${Qna.boardDate}"> </c:set>
														<li>
														<!-- 상품 카테로기1 출력(황명하) -->
														<span class="case" style= "width:150px" > ${Qna.category1} </span>
														
														<div class="txt">
															<!-- 게시글에 대한 상세 정보를 보여주는 페이지로 이동(황명하) -->
															<p class="name" onclick="window.open('HmallServlet?command=view_qna&board_num=${Qna.boardNo}',
															'1:1 상담하기','width=520, height=670, location=no,status=no,scrollbars=yes');"> ${Qna.question } </p>
															<!-- 게시글 작성 시간 출력(황명하) -->
															<span class="date"> 
															<%
															Timestamp date_t = (Timestamp) pageContext.getAttribute("date");
															SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
															//System.out.println(sdf.format(date_t));
															%>
															
															<%= sdf.format(date_t) %> </span>
														</div>
														
														<div class="state">
															<!-- 게시글에 대한 상세 정보를 보여주는 페이지로 이동(황명하) -->
															<button class="btn btn-linelgray sm" type="button" onclick="window.open('HmallServlet?command=view_qna&board_num=${Qna.boardNo}','1:1 상담하기','width=520, height=670, location=no,status=no,scrollbars=yes');">
																<span>답변보기</span>
															</button>
														</div>
														</li>
														</c:forEach>
													</ul>
												</c:otherwise>
											
											</c:choose>
										<!-- /게시판 목록 -->
										
										
										
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- // .contents -->
				</div>
			</div>
		</main>

		<%@ include file="../../footer.jsp"%>

<script type="text/javascript" async="" src="//image.hmall.com/p/js/co/901_Insight_WebAnalytics.js"></script>
<script type="text/javascript" async="" src="//image.hmall.com/p/js/co/tagging.collector-1.3.min.js"></script>
<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>
		
</body>
</html>