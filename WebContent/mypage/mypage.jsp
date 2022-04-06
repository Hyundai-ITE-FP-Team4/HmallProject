<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../header.jsp"%>

	<main class="cmain mypage" role="main" id="mainContents">
		<!-- 마이페이지 'mypage' 클래스 추가 -->
		<div class="container">
			<div class="gird-l2x">
				<script type="text/javascript">
    var upntCustYn = "N";
	$(document).ready(function() {
	    $.ajax({
	        type: "get"
	        ,url: "/p/mpf/chkUpntCustYn.do"
	        ,dataType: "json"
	        ,async: false
	        ,success : function(data) {
	            upntCustYn = data.upntCustYn;
	        }
	        , error: function (data) {
	            console.log("chkUpntCustYn_error", data);
	        }
	    });
	});
				<!--HPAY임대진 추가 -->
					function openHPayTag(pathVal) {
						var url = "http://" + location.host
								+ "/p/mpf/hpayManage.do";
						try {
							_trk_flashEnvView('_TRK_CP=' + pathVal);
						} catch (e) {
						}

						openPopup(url, "loginPup", 640, 600, "no", $(window)
								.width(), $(window).height());
					}

					//H.Point Pay 관리 통합회원 확인 후 후 화면 분기
					function fn_HppManage() {
						if (upntCustYn == "Y") {
							location.href = "https://www.hmall.com/p/mpd/hhpPmntManage.do";
						} else {
							$("#pec001-01").modal().show();
						}
					}

					function fn_upntPopupOpen() {
						location.href = '/p/cua/registUpnt.do';
					}

					function fn_upntPopupClose() {
						$("#pec001-01").modal().hide();
					}
				</script>
				<!--20170816 박승택 추가 -->
				<form name="upntLeftForm" method="post" target="uPnt">
					<input type="hidden" name="mcustNo"
						value="bm5pU0VSSFRXVnRiRE5VVjNCQ1pWVXhjVkZVUWs1U1JscFdWbXhhUzFFeGNFVlJWRlpUVm01Qk1sVXljelZpUjBwSVl6Tm9WMUp0YUhGVU1WcERWakZTYzFWc1ZtdGxha0Ux">
				</form>
				<div class="side-content">
					<h3 class="side-menu-title">
						<a href="javascript:;">마이페이지</a>
					</h3>
					<div class="side-menu-list">
						<ul>
							<li><a href="javascript:;">주문현황</a>
								<ul class="sub-list">
									<li><a href="do_not.html">주문/배송현황</a></li>
									<li><a href="do_not.html">취소/반품/교환/AS현황</a></li>
									<li><a href="do_not.html">영수증/세금계산서</a></li>
								</ul></li>
								
								
							<li><a href="javascript:;">쇼핑통장</a>
								<ul class="sub-list">
									<li><a href="do_not.html">쿠폰</a></li>
									<li><a href="do_not.html">포인트</a></li>
								</ul></li>
								
								
							<li><a href="javascript:;">나의 활동</a>
								<ul class="sub-list">
									<li><a href="do_not.html">찜</a></li>
									<li><a href="do_not.html">방송알리미</a></li>
									<li><a href="do_not.html">참여이벤트</a></li>
									<li><a href="do_not.html">나의 상품평</a></li>
								</ul></li>
								
								
							<li><a href="javascript:;">회원정보</a>
								<ul class="sub-list">
									<li><a href="do_not.html">회원정보관리</a></li>
									<li></li>
									<li><a href="do_not.html">배송지관리</a></li>
									<li><a href="javascript:;" onclick="fn_HppManage();">H.Point
											Pay 관리</a></li>
									<li><a href="do_not.html">개인정보
											이용현황</a></li>
									<li><a href="do_not.html">회원탈퇴</a></li>
								</ul></li>
								
								
							<li><a href="javascript:;">고객센터</a>
								<ul class="sub-list">
									<li><a href="do_not.html">1:1
											상담</a></li>
									<li><a href="do_not.html">상품
											Q&amp;A</a></li>
								</ul></li>
						</ul>
					</div>
				</div>

				<div class="contents">
					<div class="mypage-order-wrap zzim">
						<!-- 
                    * 회원등급 지정 클래스
                        - TOP CLASS 등급 : topclass-lv
                        - DIAMOND 등급 : diamond-lv
                        - PLATINUM 등급 : platinum-lv
                        - GOLD 등급 : gold-lv
                        - SILVER 등급 : silver-lv
                    -->

						<!-- (수정필요)회원 등급별 배경색 변경 -->
						<div
							class="myinfo-area  
		                                gold-lv
                    ">
							<div>
								<p class="myname">
									<a href="/p/mpd/changeMemberInfoForm.do" class="btn-link"><em>{고객명}님</em></a>
								</p>
								<div class="rating">
									<span class="silver-lv"><i class="icon"></i><em>{등급}</em></span>
									<div class="btngroup">
										<a href="https://www.hmall.com/pevent/eva/evntFamilyZoneMain.do"
											class="btn btn-benefit sm"><span>혜택보기</span></a>
									</div>
								</div>
								<!-- //.rating -->
							</div>
							<ul class="infowrap">
								<li><a href="do_not.html"> <span
										class="link"><b>{수량}</b>장</span> <span class="txt">보유 쿠폰</span>
								</a></li>
								<li><a href="javascript://" onclick="doSearchUPntMainPop()">
										<span class="link"> <b>{포인트}</b>P
									</span> <span class="txt">포인트</span>
								</a></li>
								<li><a
									href="do_not.html">
										<span class="link"><b>{수량}</b>건</span> <span class="txt">작성 가능한 상품평</span>
								</a></li>
								<li><a href="do_not.html">
										<span class="link"><b>{수량}</b>건</span> <span class="txt">참여한 이벤트</span>
								</a></li>
							</ul>
							<!-- //.infowrap -->

						</div>
						<!-- //.myinfo-area -->

						<div id="bannerWrap" class="banner-template">
							<!--배너의 경우 관리자에서 등록 // bg칼러와 이미지가 들어간 배너만 등록-->
							<a href="javascript:;"
								data-background="#F2EDF8|#EFF6FC|#F8F8EA|#F9F2ED|#FFF2F4|#F3EBEA|#F0F6EA"
								style="background: rgb(243, 235, 234);" id="mktgBanner"
								onclick="bannerClick()">
								<div class="banner" id="bannerImg">
									<img
										src="https://image.hmall.com/HM/HM026/20220330/155223/welcome.jpg">
								</div>
								<div class="banner-txt">
									<p class="tit" id="sogu1">환영합니다! 첫 구매 고객님♡</p>
									<p class="txt" id="sogu2">첫 구매 고객 전용 3만원 쿠폰팩~!</p>
								</div>
							</a>
						</div>

						<h3 class="title22">
							최근 주문/배송 현황
							<!-- 주문/배송현황 페이지로 이동 -->
							<div class="btngroup abs">
								<a href="/p/mpa/selectOrdDlvCrst.do" class="btn atext"><span>전체보기</span><i
									class="arrow right"></i></a>
							</div>
						</h3>
						<!-- 추후 상품전시 레이아웃 마크업으로 변경 필요 -->

						<div class="order-list">

							<div class="nodata">
								<span class="bgcircle"><i class="icon nodata-type7"></i></span>
								<p>최근 14일간의 주문한 상품이 없습니다.</p>
							</div>
						</div>

						<h3 class="title22">
							찜
							<div class="btngroup abs">
								<a href="/p/mpc/sltdItemList.do" class="btn atext"
									onclick="gaTagging(this, '', '', '');" ga-custom-name="마이페이지"
									ga-custom-position="찜한 상품" ga-custom-creative="전체보기"
									ga-custom-title="마이페이지>메인" ga-custom-etc="urlAction"><span>전체보기</span><i
									class="arrow right"></i></a>
							</div>
						</h3>
						<div class="pdlist-wrap col4">
							<!--// 4xn class="col4" 추가 -->
							<!-- [12/08]_수정(위키 342 관련 내용 수정 - 찜한 상품이 없을 경우 추가) -->
							<div class="nodata">
								<p>찜한 상품이 없습니다.</p>
							</div>
						</div>
						<!-- 
					<div id="divRcmmItem" class="product-wrap pdslide">
					</div>
					                     -->
						<div class="list-head" id="divRcmmItem" style="display: none;">
							<h3 class="title22">Hmall 추천상품</h3>
						</div>
						<div id="rcmmSectArea" class="pdlist-wrap col4"></div>
					</div>
				</div>
				<!-- // .contents -->
			</div>
		</div>
	</main>
	
<%@ include file="../footer.jsp"%>