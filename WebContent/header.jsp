<%@page import="com.hmall.dto.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<body>
	<script>
	
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
	
		// 로그인 팝업창 띄우기	
		$(function(){
			$("#go_login_popup").on('click', function(){
				window.open("/HmallProject/user/login_popup.jsp", "PopupWin", "width=540,height=650");		
			});
		});
		
		// 로그아웃 , 세션 지우기
		$(function(){
			$("#go_logout_popup").click(function(){
				
				$.ajax({
					url : 'http://localhost:8090/HmallProject/HmallServlet?command=logout',
					type : 'post',
					dataType : 'json',
					data : {check : '1'},
					success:function(res){
						console.log('success');
						console.log(res);
						if(res.session_check == 'delete') {
							alert("로그아웃 되었습니다.");
							location.href = "";
						}else {
							
						}
					},
					error : function(data, textStatus){
						console.log('error');
						console.log(data);
					}
				});
			});
		});
	</script>
	
	<header class="header">

		<div class="header-top">
			<h1 class="logo">
				<a href="HmallServlet?command=index" title="현대Hmall">Hmall</a>
			</h1>

			<div class="search" role="search">
				<div class="field">
					<form name="gnbPdeSearchForm" method="get" accept-charset="UTF-8"
						class="main-search" onsubmit="event.preventDefault();">
						<div class="inputbox">
							<label class="inplabel"> <input type="text"
								id="gnbSearchKeyword" name="searchTerm" value=""
								autocomplete="off" title="검색어" size="88">
							</label>
							<button class="btn ico-clearabled" type="button"
								onclick="javascript:clearWord();">
								<i id="searchDeleteX" class="icon"></i><span class="hiding">지우기</span>
							</button>
							<button class="btn btn-search"
								onclick="javascript:doSearchGnb();">
								<span>검색</span>
							</button>
							<input type="hidden" name="gnbSearchYn" value="Y">
						</div>
					</form>
					<!-- S : 검색 레이어 -->
					<div class="search-autowrap" id="search-autowrap">

						<!-- 검색어 입력시 자동완성 -->
						<div class="keyword-area" id="search-recommend"
							aria-label="검색어 자동완성" style="display: none"></div>
						<!-- //.keyword-area -->

						<!-- 검색창에 포커스 일 때 -->
						<div class="autowrap" id="search-popup" style="display: none">
							<!-- 추천할 수 없는 검색어 인 경우 -->


							<!-- input focus시 기본 나오는 UI -->
							<div class="autoarticle leftarea" id="search-history">
								<div class="recent-area" aria-label="최근검색어">
									<p class="stitle">최근 검색어</p>

									<!-- 최신검색어가 없을 경우 -->
									<p class="nodata" id="nodata" style="">최근 검색어가 없습니다.</p>
									<button class="btn btn-delall" id="del-all-history"
										style="display: none;">
										<span>전체삭제</span>
									</button>
								</div>
								<!-- //.recent-area -->
							</div>
							<!-- //.autoarticle -->
							<div class="autoarticle rightarea">
								<div class="popular-area" id="popular-list" aria-label="인기검색어">
									<p class="stitle">인기 검색어</p>
									<ol class="num-list">
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('써스데이아일랜드');">써스데이아일랜드<em><i
													class="icon keep"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('여성트렌치코트');">여성트렌치코트<em><i
													class="icon keep"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('여성자켓');">여성자켓<em><i
													class="icon up"></i><span class="hiding">상승</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('USPA폴로니트3종');">USPA폴로니트3종<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('폴로');">폴로<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('원피스');">원피스<em><i
													class="icon keep"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('기프티콘');">기프티콘<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('라코스테여성');">라코스테여성<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('여성원피스');">여성원피스<em><i
													class="icon new"></i><span class="hiding">유지</span></em></a></li>
										<li><a href="javascript:void(0);"
											onclick="javascript:clickPopSrch('버버리퀼팅자켓');">버버리퀼팅자켓<em><i
													class="icon down"></i><span class="hiding">하락</span></em></a></li>
									</ol>
								</div>
								<!-- //.popular-area -->

								<div class="focusclick-area" id="fcsClick" aria-label="포커스클릭"
									style="display: none">
									<p class="stitle">포커스 클릭</p>
									<span class="flag-da">AD</span>
									<!-- 한 개 이상일 경우 class="horizon" 추가 -->
									<!-- 상품종료 및 품절일 경우 li thumb class end 추가 예)li class="thumb end" -->
								</div>
								<!-- //.focusclick-area -->
							</div>
							<!-- //.autoarticle -->

							<button class="btn searchclose" id="close-btn">
								<i class="hiding">검색 레이어</i><span>닫기</span>
							</button>
						</div>
						<!-- //.autowrap -->

					</div>
					<!-- //.search-autowrap -->
					<!-- //E : 검색레이어 -->
				</div>
				<!-- //.field -->
			</div>
			<!-- // 검색 영역 -->

			<script>
				// 2020.12.24 검색 DOM 로드후 javascript 실행을 위해 옮김
				// 2020.12.17 icj : 텍스트 광고 입력이 없을시 재노출 (하선윤)
				mySearchList();
				$("#gnbSearchKeyword").focus(function() {
					$(".header .search").addClass("selected");
					if ($("#gnbSearchKeyword").val() == gv_gnbHomeBnnrTitl) {
						$("#gnbSearchKeyword").val('');
					}
					$("#search-popup").css({
						display : ""
					}); // 최근검색어 탭 노출
					if ($("#keyword-list li").length == 0) {
						$("#nodata").css({
							display : ""
						});
						$("#keyword-list").css({
							display : "none"
						});
					}
					//검색창 입력전 광고
					fn_searchAdKeywordDefault();
					$("#search-recommend").css({
						display : "none"
					});
					$("#search-autowrap").show();
					//퀵 메뉴 숨김 처리
					$('.quick-menu-more').removeClass('on');
					// 2020.12.17 icj : 텍스트 광고 입력이 없을시 재노출 (하선윤)
				}).focusout(function() {
					var $keyword = $("#gnbSearchKeyword");
					if ($keyword.val() == '') {
						$keyword.val(gv_gnbHomeBnnrTitl);
					}
				});
				
				
			</script>

			<!-- 개인화 메뉴 -->
			<div class="personal-menu">
				<ul>
					<li><a class="cart" ga-category="헤더" ga-action="장바구니"
						href="HmallServlet?command=basket">
							<span>장바구니</span> <!-- <em class="badge">{수량}</em> -->



					</a></li>
					<!-- 마이페이지 헤더 버튼 링크 수정 (황명하) -->
					<li><a class="mypage"
						href="HmallServlet?command=mypage"><span>마이페이지</span></a></li>
					<li><a href="javascript:;" class="recently" id="recentlyImg"
						onclick="openRecentShopping(); return false;"> <span>최근본쇼핑</span>
							<!-- 최근 본 상품 썸네일 이미지 --> <em class="thumb-recent"></em>
					</a></li>
				</ul>
			</div>
			<!-- // 개인화 메뉴 -->
		</div>

		<div class="header-menu-wrap">
			<div class="header-menu-in">
				<!-- 카테고리 메뉴 (박주영) -->
				<div class="category-area" id="categoryArea">
					<a href="javascript:;" class="btn-category">카테고리</a>
					<!-- 카테고리 메뉴 시작 -->

					<div class="category-menu-wrap">
						<!-- 카테고리 메뉴 depth1 -->
						<div class="category-list" style="height: auto;">
							<ul>
								<li data-catecode="01" class="on"><a href="#">패션의류</a></li>
								<li data-catecode="02"><a href="#">패션잡화/명품</a></li>
								<li data-catecode="03"><a href="#">뷰티</a></li>
								<li data-catecode="14"><a href="#">순금/주얼리/시계</a></li>
								<li data-catecode="05"><a href="#">스포츠/레저</a></li>
								<li data-catecode="04"><a href="#">출산/유아동</a></li>
								<li data-catecode="06"><a href="#">주방용품</a></li>
								<li data-catecode="18"><a href="#">생활/건강</a></li>
								<li data-catecode="15"><a href="#">식품</a></li>
								<li data-catecode="07"><a href="#">가구/침구</a></li>
								<li data-catecode="08"><a href="#">가전/디지털</a></li>
								<li data-catecode="13"><a href="#">반려동물</a></li>
								<li data-catecode="16"><a href="#">여행/티켓/도서</a></li>
								<li data-catecode="19"><a href="#">문화/렌탈/보험</a></li>
							</ul>
						</div>
						<div class="category-list-contents on" data-catecode="01">
							<div class="center-area">
								<strong class="depth1-title">패션의류</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A01B01">여성의류</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A01B02">남성의류</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A01B03">캐주얼의류</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A01B04">언더웨어</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="02">
							<div class="center-area">
								<strong class="depth1-title">패션잡화/명품</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A02B01">가방/지갑</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A02B02">신발</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A02B03">패션소품/ACC</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A02B04">명품</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="03">
							<div class="center-area">
								<strong class="depth1-title">뷰티</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
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
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="14">
							<div class="center-area">
								<strong class="depth1-title">순금/주얼리/시계</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
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
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A04B06">기타
													ACC</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="05">
							<div class="center-area">
								<strong class="depth1-title">스포츠/레저</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
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
										</ul>
									</div>
									<!--HMALL 일반 END-->

								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="04">
							<div class="center-area">
								<strong class="depth1-title">출산/유아동</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A06B01">임신/출산</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A06B02">기저귀/물티슈</a></li>
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
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="06">
							<div class="center-area">
								<strong class="depth1-title">주방용품</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
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
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="18">
							<div class="center-area">
								<strong class="depth1-title">생활/건강</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A08B01">세제/세정/탈취제</a></li>
											<li><a
												href=HmallServlet?command=categoryTop&cCode=A08B02>바디/헤어/구강</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A08B03">휴지/생리대/마스크</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A08B04">수납/청소/생활잡화</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A08B05">건강관리/안마/실버</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="15">
							<div class="center-area">
								<strong class="depth1-title">식품</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
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
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="07">
							<div class="center-area">
								<strong class="depth1-title">가구/침구</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
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
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A10B06">침구</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A10B07">커튼/카페트</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A10B08">인테리어소품</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="08">
							<div class="center-area">
								<strong class="depth1-title">가전/디지털</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
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
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="13">
							<div class="center-area">
								<strong class="depth1-title">반려동물</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A12B01">반려동물(H펫샵)</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="16">
							<div class="center-area">
								<strong class="depth1-title">여행/티켓/도서</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A13B01">여행/숙박</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A13B02">서비스/e쿠폰/상품권</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A13B03">도서/음반</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A13B04">원예/꽃배달</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="19">
							<div class="center-area">
								<strong class="depth1-title">문화/렌탈/보험</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A14B01">렌탈</a></li>
											<li><a
												href="HmallServlet?command=categoryTop&cCode=A14B02">보험/상조</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- // 카테고리 메뉴 -->
				<!-- 퀵메뉴 -->
				<div class="quick-menu-wrap">
					<div class="quick-menu-list">
						<ul class="quicklink ql-left222" id="main_tab">

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="편성표">편성표</a></li>

							<li class=" "><a href="do_not.html" class="gp_className" >오늘추천</a></li>

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="홈">홈</a></li>
							<!--
                                <li class=" ">
                                <a href="/p/mktgMain.do?_IC_=tab4&amp;mainDispSeq=65&amp;" class="gp_className" ga-category="메인 홈" ga-action="상단탭" ga-label="랄프로렌">랄프로렌</a></li>
                              -->
							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="스토어">스토어</a></li>

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="이달의픽">이달의픽</a></li>

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="백화점">백화점</a></li>

							<li class=" "><a href="do_not.html" class="gp_className"
								ga-category="메인 홈" ga-action="상단탭" ga-label="선물하기">선물하기</a></li>

						</ul>
					</div>

					<div class="quick-menu-more">
						<a href="javascript:;" class="btn-quick-more">퀵메뉴 더보기</a>
						<div class="quick-menu-add">

							<a href="do_not.html" class="gp_className" ga-category="메인 홈"
								ga-action="상단탭" ga-label="이벤트"> 이벤트 </a> <a href="do_not.html"
								class="gp_className" ga-category="메인 홈" ga-action="상단탭"
								ga-label="주간베스트"> 주간베스트 </a>

						</div>
					</div>

				</div>
				
				<!-- 유틸메뉴 -->
				<div class="header-util">
					<h2 class="hiding">유틸메뉴</h2>
					<!-- 로그인 전 -->
					<ul>
						<%
							if(session.getAttribute("user_vo") != null ){
								
						%>
								<li><a ga-category="헤더" ga-action="로그아웃" href="javascript:void(0);" id = "go_logout_popup">로그아웃</a></li>
						<%
							} else{
						%>
								<li><a ga-category="헤더" ga-action="로그인" href="javascript:void(0);" id = "go_login_popup">로그인</a></li>
						<%
							}
						%>
						
						<li><a href="HmallServlet?command=join_form">회원가입</a></li>
						<li><a ga-category="헤더" ga-action="고객센터" href="javascript:bizSpringTag('/p/cca/main.do','^헤더^고객센터');">고객센터</a></li>
					</ul>
				</div>

			</div>

		</div>
	</header>
</body>