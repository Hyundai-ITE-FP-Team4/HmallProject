<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
						href="javascript:bizSpringTag('https://www.hmall.com/p/odb/basktList.do','^헤더^장바구니');">
							<span>장바구니</span> <em class="badge">{수량}</em>



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
				<!-- 카테고리 메뉴 -->
				<div class="category-area" id="categoryArea">
					<a href="javascript:;" class="btn-category">카테고리</a>
					<!-- 카테고리 메뉴 시작 -->

					<div class="category-menu-wrap">
						<!-- 카테고리 메뉴 depth1-->
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
								<li data-catecode="10"><a
									href="/p/dsMainR.do?GnbGroup=DeptHome">현대백화점</a></li>
								<li data-catecode="20"><a
									href="/p/dpa/searchSectItem.do?sectId=2679838">해외직구</a></li>
								<li data-catecode="09"><a
									href="/p/tvMainR.do?GnbGroup=TVHome">TV쇼핑</a></li>
							</ul>
							<div class="search-brand">
								<a
									href="javascript:$('.category-menu-wrap').css('display','none');brndOpenPopup();"
									class="lyopen" data-target="brand">브랜드검색</a>
							</div>
						</div>
						<div class="category-list-contents on" data-catecode="01">
							<div class="center-area">
								<strong class="depth1-title">패션의류</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731203&amp;GnbGroup=AllCategory&amp;Code=01">여성의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731204&amp;GnbGroup=AllCategory&amp;Code=01">남성의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731205&amp;GnbGroup=AllCategory&amp;Code=01">캐주얼의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731206&amp;GnbGroup=AllCategory&amp;Code=01">언더웨어</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2724600&amp;GnbGroup=AllCategory&amp;Code=01">POLO
													RALPH LAUREN</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679833&amp;GnbGroup=AllCategory&amp;Code=01">BEANPOLE
											</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679811&amp;GnbGroup=AllCategory&amp;Code=01">라코스테</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1886163&amp;GnbGroup=AllCategory&amp;Code=01">TOMMY
													HILFIGER</a></li>
											<li><a
												href="http://www.hmall.com/p/dpa/cosHome.do?GnbGroup=AllCategory&amp;Code=01">COS</a></li>
											<li><a
												href="http://www.hmall.com/p/dpa/aosMain.do?GnbGroup=AllCategory&amp;Code=01">＆Other
													Stories</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2699933&amp;GnbGroup=AllCategory&amp;Code=01">수입/컨템포러리</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2731137&amp;GnbGroup=AllCategory&amp;Code=02">가방/지갑</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731138&amp;GnbGroup=AllCategory&amp;Code=02">신발</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731139&amp;GnbGroup=AllCategory&amp;Code=02">패션소품/ACC</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731140&amp;GnbGroup=AllCategory&amp;Code=02">명품</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679834&amp;GnbGroup=AllCategory&amp;Code=02">루즈앤라운지</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679864&amp;GnbGroup=AllCategory&amp;Code=02">덱케</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679844&amp;GnbGroup=AllCategory&amp;Code=02">LF
													ACC</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2474498&amp;GnbGroup=AllCategory&amp;Code=02">호재
													HOZE</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2057137&amp;GnbGroup=AllCategory&amp;Code=02">마이클코어스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1670469&amp;GnbGroup=AllCategory&amp;Code=02">엘칸토</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2625458&amp;GnbGroup=AllCategory&amp;Code=02">메트로시티
													스페셜샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2626364&amp;GnbGroup=AllCategory&amp;Code=02">루이까또즈
													스페셜샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2686372&amp;GnbGroup=AllCategory&amp;Code=02">K-헤리티지(전통관)</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2731159&amp;GnbGroup=AllCategory&amp;Code=03">스킨케어</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731160&amp;GnbGroup=AllCategory&amp;Code=03">헤어케어</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731161&amp;GnbGroup=AllCategory&amp;Code=03">바디케어</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731162&amp;GnbGroup=AllCategory&amp;Code=03">메이크업</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731163&amp;GnbGroup=AllCategory&amp;Code=03">향수</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731164&amp;GnbGroup=AllCategory&amp;Code=03">기기/소품</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2642664&amp;GnbGroup=AllCategory&amp;Code=03">설화수</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2731184&amp;GnbGroup=AllCategory&amp;Code=14">보석</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731185&amp;GnbGroup=AllCategory&amp;Code=14">반지</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731186&amp;GnbGroup=AllCategory&amp;Code=14">목걸이/귀걸이</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731187&amp;GnbGroup=AllCategory&amp;Code=14">팔찌/발찌</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731188&amp;GnbGroup=AllCategory&amp;Code=14">시계</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731189&amp;GnbGroup=AllCategory&amp;Code=14">기타
													ACC</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2731165&amp;GnbGroup=AllCategory&amp;Code=05">스포츠
													의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731166&amp;GnbGroup=AllCategory&amp;Code=05">스포츠신발</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731167&amp;GnbGroup=AllCategory&amp;Code=05">스포츠잡화</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731168&amp;GnbGroup=AllCategory&amp;Code=05">골프용품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731169&amp;GnbGroup=AllCategory&amp;Code=05">골프의류</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731170&amp;GnbGroup=AllCategory&amp;Code=05">구기/라켓/격투</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731171&amp;GnbGroup=AllCategory&amp;Code=05">등산/
													아웃도어</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731172&amp;GnbGroup=AllCategory&amp;Code=05">캠핑</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731173&amp;GnbGroup=AllCategory&amp;Code=05">낚시</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731174&amp;GnbGroup=AllCategory&amp;Code=05">헬스/요가</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731175&amp;GnbGroup=AllCategory&amp;Code=05">수영/물놀이</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731176&amp;GnbGroup=AllCategory&amp;Code=05">스키/스노보드</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731177&amp;GnbGroup=AllCategory&amp;Code=05">자전거/인라인/퀵보드</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731178&amp;GnbGroup=AllCategory&amp;Code=05">자동차</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2052165&amp;GnbGroup=AllCategory&amp;Code=05">나이키코리아공식</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679870&amp;GnbGroup=AllCategory&amp;Code=05">슈마커</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679865&amp;GnbGroup=AllCategory&amp;Code=05">ABC마트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2762627&amp;GnbGroup=AllCategory&amp;Code=05">JD스포츠</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2759440&amp;GnbGroup=AllCategory&amp;Code=05">인수스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2386151&amp;GnbGroup=AllCategory&amp;Code=05">내셔널지오그래픽</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2620264&amp;GnbGroup=AllCategory&amp;Code=05">다이나핏</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2694686&amp;GnbGroup=AllCategory&amp;Code=05">가네샤요가프랍스</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2731207&amp;GnbGroup=AllCategory&amp;Code=04">임신/출산</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731208&amp;GnbGroup=AllCategory&amp;Code=04">기저귀/물티슈</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731209&amp;GnbGroup=AllCategory&amp;Code=04">스킨케어/위생/소독</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731210&amp;GnbGroup=AllCategory&amp;Code=04">유아
													침구/가구/매트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731211&amp;GnbGroup=AllCategory&amp;Code=04">유모차/카시트/외출용품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731212&amp;GnbGroup=AllCategory&amp;Code=04">유아
													의류/잡화</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731213&amp;GnbGroup=AllCategory&amp;Code=04">완구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2732613&amp;GnbGroup=AllCategory&amp;Code=04">유아동
													도서</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2482468&amp;GnbGroup=AllCategory&amp;Code=04">내
													아이가 좋아하는 IT템</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1961307&amp;GnbGroup=AllCategory&amp;Code=04">[BEANPOLE
													KIDS] 2022 S/S NEW </a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2699113&amp;GnbGroup=AllCategory&amp;Code=04">토이트론
													- LIKE A CHILD</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2726029&amp;GnbGroup=AllCategory&amp;Code=06">조리용기
													/ 도구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726030&amp;GnbGroup=AllCategory&amp;Code=06">식기/접시/홈세트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726032&amp;GnbGroup=AllCategory&amp;Code=06">수납정리/소품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726031&amp;GnbGroup=AllCategory&amp;Code=06">보관용기</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726033&amp;GnbGroup=AllCategory&amp;Code=06">와인/커피용품</a></li>
											<li><a
												href="http://www.hmall.com/p/dpa/searchSectItem.do?sectId=2731130&amp;GnbGroup=AllCategory&amp;Code=06">주방가전</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=427611&amp;GnbGroup=AllCategory&amp;Code=06">수입주방용품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2761833&amp;GnbGroup=AllCategory&amp;Code=06">알레보
													스페셜샵</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2726024&amp;GnbGroup=AllCategory&amp;Code=18">세제/세정/탈취제</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726025&amp;GnbGroup=AllCategory&amp;Code=18">바디/헤어/구강</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726026&amp;GnbGroup=AllCategory&amp;Code=18">휴지/생리대/마스크</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726027&amp;GnbGroup=AllCategory&amp;Code=18">수납/청소/생활잡화</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2726028&amp;GnbGroup=AllCategory&amp;Code=18">건강관리/안마/실버</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2731190&amp;GnbGroup=AllCategory&amp;Code=15">농산</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731191&amp;GnbGroup=AllCategory&amp;Code=15">축산</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731192&amp;GnbGroup=AllCategory&amp;Code=15">수산</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731193&amp;GnbGroup=AllCategory&amp;Code=15">간편식/반찬</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731194&amp;GnbGroup=AllCategory&amp;Code=15">면/캔/오일/소스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731195&amp;GnbGroup=AllCategory&amp;Code=15">떡/베이커리/과자</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731196&amp;GnbGroup=AllCategory&amp;Code=15">유제품/유아식</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731199&amp;GnbGroup=AllCategory&amp;Code=15">홍삼/전통건강식품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731198&amp;GnbGroup=AllCategory&amp;Code=15">커피/차</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731201&amp;GnbGroup=AllCategory&amp;Code=15">유산균/이너뷰티/다이어트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731197&amp;GnbGroup=AllCategory&amp;Code=15">생수/음료</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731200&amp;GnbGroup=AllCategory&amp;Code=15">비타민/영양제</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731202&amp;GnbGroup=AllCategory&amp;Code=15">팔도식도락</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2731141&amp;GnbGroup=AllCategory&amp;Code=07">거실가구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731142&amp;GnbGroup=AllCategory&amp;Code=07">침실가구/드레스룸</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731143&amp;GnbGroup=AllCategory&amp;Code=07">주방가구/테이블</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731144&amp;GnbGroup=AllCategory&amp;Code=07">학생/서재가구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731145&amp;GnbGroup=AllCategory&amp;Code=07">리모델링
													시공/DIY</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731146&amp;GnbGroup=AllCategory&amp;Code=07">침구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731147&amp;GnbGroup=AllCategory&amp;Code=07">커튼/카페트</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731148&amp;GnbGroup=AllCategory&amp;Code=07">인테리어소품</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679832&amp;GnbGroup=AllCategory&amp;Code=07">리바트(LIVART)</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679845&amp;GnbGroup=AllCategory&amp;Code=07">포터리반</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679846&amp;GnbGroup=AllCategory&amp;Code=07">포터리반
													키즈</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679847&amp;GnbGroup=AllCategory&amp;Code=07">웨스트엘름</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2731129&amp;GnbGroup=AllCategory&amp;Code=08">생활/미용가전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731130&amp;GnbGroup=AllCategory&amp;Code=08">주방가전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731131&amp;GnbGroup=AllCategory&amp;Code=08">계절가전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731132&amp;GnbGroup=AllCategory&amp;Code=08">영상/음향
													가전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731133&amp;GnbGroup=AllCategory&amp;Code=08">카메라/렌즈/캠코더</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731134&amp;GnbGroup=AllCategory&amp;Code=08">노트북/PC/게임</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731135&amp;GnbGroup=AllCategory&amp;Code=08">스마트기기/OA</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731136&amp;GnbGroup=AllCategory&amp;Code=08">리퍼
													가전</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679843&amp;GnbGroup=AllCategory&amp;Code=08">삼성전자
													브랜드샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2692354&amp;GnbGroup=AllCategory&amp;Code=08">다이슨
													브랜드샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1424358&amp;GnbGroup=AllCategory&amp;Code=08">하이마트
													브랜드샵</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2222295&amp;GnbGroup=AllCategory&amp;Code=13">반려동물(H펫샵)</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2764739&amp;GnbGroup=AllCategory&amp;Code=13">이츠독</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2764995&amp;GnbGroup=AllCategory&amp;Code=13">펫노리터</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2722164&amp;GnbGroup=AllCategory&amp;Code=13">장보는
													강아지와 고양이</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
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
												href="/p/dpa/searchSectItem.do?sectId=2731216&amp;GnbGroup=AllCategory&amp;Code=16">여행/숙박</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731217&amp;GnbGroup=AllCategory&amp;Code=16">서비스/e쿠폰/상품권</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731128&amp;GnbGroup=AllCategory&amp;Code=16">도서/음반</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731183&amp;GnbGroup=AllCategory&amp;Code=16">원예/꽃배달</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<!--HMALL 스페셜 END-->
								</div>
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
												href="/p/dpa/searchSectItem.do?sectId=2731214&amp;GnbGroup=AllCategory&amp;Code=19">렌탈</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2731215&amp;GnbGroup=AllCategory&amp;Code=19">보험/상조</a></li>
										</ul>
									</div>
									<!--HMALL 일반 END-->
									<!--HMALL 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679817&amp;GnbGroup=AllCategory&amp;Code=19">H렌탈샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1173378&amp;GnbGroup=AllCategory&amp;Code=19">바보사랑</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1148690&amp;GnbGroup=AllCategory&amp;Code=19">아트박스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1198000&amp;GnbGroup=AllCategory&amp;Code=19">1300K</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2215152&amp;GnbGroup=AllCategory&amp;Code=19">텐바이텐</a></li>
										</ul>
									</div>
									<!--HMALL 스페셜 END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" style="display: block"
							data-catecode="10">
							<div class="center-area">
								<strong class="depth1-title">현대백화점</strong>
								<!--백화점-->
								<div class="sub-category-area">
									<!--백화점 일반 START-->
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=325053&amp;GnbGroup=AllCategory&amp;Code=10">영캐주얼</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=325052&amp;GnbGroup=AllCategory&amp;Code=10">커리어/언더</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=325345&amp;GnbGroup=AllCategory&amp;Code=10">진/유니섹스</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=326244&amp;GnbGroup=AllCategory&amp;Code=10">남성정장</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=327187&amp;GnbGroup=AllCategory&amp;Code=10">남성캐주얼</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=146634&amp;GnbGroup=AllCategory&amp;Code=10">화장품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=327293&amp;GnbGroup=AllCategory&amp;Code=10">핸드백/지갑</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=327302&amp;GnbGroup=AllCategory&amp;Code=10">구두/잡화</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=326243&amp;GnbGroup=AllCategory&amp;Code=10">아동/유아</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=325425&amp;GnbGroup=AllCategory&amp;Code=10">레져/스포츠</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=146639&amp;GnbGroup=AllCategory&amp;Code=10">생활/가구</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=146638&amp;GnbGroup=AllCategory&amp;Code=10">식품</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2186849&amp;GnbGroup=AllCategory&amp;Code=10">현대아울렛</a></li>
										</ul>
									</div>
									<!--백화점 일반 END-->
									<!--백화점 스페셜 START-->
									<div class="brand-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1861421&amp;GnbGroup=AllCategory&amp;Code=10">RALPH
													LAUREN</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679839&amp;GnbGroup=AllCategory&amp;Code=10">House
													Of Samsonite</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679840&amp;GnbGroup=AllCategory&amp;Code=10">스와로브스키</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=580827&amp;GnbGroup=AllCategory&amp;Code=10">CHANEL</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1196082&amp;GnbGroup=AllCategory&amp;Code=10">MAC</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1476179&amp;GnbGroup=AllCategory&amp;Code=10">URBAN
													DECAY</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1614556&amp;GnbGroup=AllCategory&amp;Code=10">TOM
													FORD BEAUTY</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1614598&amp;GnbGroup=AllCategory&amp;Code=10">Jo
													Malone London</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679875&amp;GnbGroup=AllCategory&amp;Code=10">휠라스포츠</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1379588&amp;GnbGroup=AllCategory&amp;Code=10">아디다스
													브랜드전</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=778977&amp;GnbGroup=AllCategory&amp;Code=10">명인명촌</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=411045&amp;GnbGroup=AllCategory&amp;Code=10">정관장</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2220667&amp;GnbGroup=AllCategory&amp;Code=10">BASH(명품편집샵)</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2679871&amp;GnbGroup=AllCategory&amp;Code=10">부가부
													스페셜샵</a></li>
										</ul>
									</div>
									<div class="brand-category">
										<ul>
											<li><a
												href="http://www.hmall.com/p/dpa/cosHome.do?GnbGroup=AllCategory&amp;Code=10">COS</a></li>
											<li><a
												href="http://www.hmall.com/p/dpa/aosMain.do?GnbGroup=AllCategory&amp;Code=10">＆Other
													Stories</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2625458&amp;GnbGroup=AllCategory&amp;Code=10">메트로시티
													스페셜샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2626364&amp;GnbGroup=AllCategory&amp;Code=10">루이까또즈
													스페셜샵</a></li>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2713968&amp;GnbGroup=AllCategory&amp;Code=10">BOSE</a></li>
										</ul>
										<!--백화점 스페셜 END-->
									</div>
									<!--백화점END-->
								</div>
							</div>
						</div>
						<div class="category-list-contents" data-catecode="09">
							<div class="center-area wide">
								<strong class="depth1-title">TV쇼핑</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=502950&amp;GnbGroup=AllCategory&amp;Code=09">패션의류</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=150549&amp;GnbGroup=AllCategory&amp;Code=09">언더웨어</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=69628&amp;GnbGroup=AllCategory&amp;Code=09">뷰티</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=216428&amp;GnbGroup=AllCategory&amp;Code=09">명품잡화</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=221473&amp;GnbGroup=AllCategory&amp;Code=09">유아동/도서</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=807410&amp;GnbGroup=AllCategory&amp;Code=09">레포츠</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=792090&amp;GnbGroup=AllCategory&amp;Code=09">홈쇼핑
													식품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="http://www.hmall.com/p/dpa/searchSectItem.do?sectId=58867&amp;GnbGroup=AllCategory&amp;Code=09">인테리어</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=147267&amp;GnbGroup=AllCategory&amp;Code=09">생활/건강</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=108163&amp;GnbGroup=AllCategory&amp;Code=09">주방용품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=1824370&amp;GnbGroup=AllCategory&amp;Code=09">방송가전</a></li>
											<!--HMALL 일반 END-->
										</ul>
									</div>
								</div>
								<span class="tv-info"><a
									href="/p/bmc/brodPordPbdv.do?type=03&amp;GnbGroup=HmallCategory&amp;Code=09">생방송</a><a
									href="/p/bmc/brodPordPbdv.do">편성표</a></span>
							</div>
							<div class="center-area wide">
								<strong class="depth1-title">TV+샵</strong>
								<!--HMALL 일반 START-->
								<div class="sub-category-area">
									<div class="sub-category">
										<ul>
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264005&amp;GnbGroup=AllCategory&amp;Code=09">인테리어/침구/가구</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264006&amp;GnbGroup=AllCategory&amp;Code=09">생활/건강/욕실</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264007&amp;GnbGroup=AllCategory&amp;Code=09">주방용품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2263921&amp;GnbGroup=AllCategory&amp;Code=09">언더웨어</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264003&amp;GnbGroup=AllCategory&amp;Code=09">레포츠의류/용품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2264004&amp;GnbGroup=AllCategory&amp;Code=09">농수축/신선/건강식품</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="/p/dpa/searchSectItem.do?sectId=2379016&amp;GnbGroup=AllCategory&amp;Code=09">대형/생활가전</a></li>
											<!--HMALL 일반 END-->
											<!--HMALL 일반 START-->
											<li><a
												href="http://www.hmall.com/p/dpa/searchSpexSectItem.do?sectId=2686295&amp;GnbGroup=AllCategory&amp;Code=09">플러스샵
													[현대아울렛]</a></li>
											<!--HMALL 일반 END-->
										</ul>
									</div>
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
				<!-- // 퀵메뉴-->
				<script>
					/*function setTitle() {
					    if($('.quick-menu-list .current a').length < 1) {
					        return;
					    }
					    var tabname = $('.quick-menu-list .current a').first().text();
					    document.title = tabname + " - 현대Hmall";
					    
					    if(tabname == '홈' || tabname == 'HMALL') {
					        document.title = '당신의 모든 취향을 읽다 - 현대Hmall';
					    }
					}
					setTitle();*/
				</script>
				<!-- 유틸메뉴 -->
				<div class="header-util">
					<h2 class="hiding">유틸메뉴</h2>
					<!-- 로그인 전 -->
					<ul>
						<li><a ga-category="헤더" ga-action="로그아웃"
							href="HmallServlet?command=select">{로그인상태}</a></li>
						<li><a
							href="HmallServlet?command=join_menu">회원가입</a></li>

						<li><a ga-category="헤더" ga-action="고객센터"
							href="javascript:bizSpringTag('/p/cca/main.do','^헤더^고객센터');">고객센터</a></li>
					</ul>
				</div>

			</div>

		</div>
	</header>