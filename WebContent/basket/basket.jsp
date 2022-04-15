<%-- 
	파일명: basket.jsp
	기능: 장바구니 페이지
	작성자: 박주영
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="com.hmall.dao.ProductDAO"%>
<%@ page import="com.hmall.dto.ProductVO"%>
<%@ page import="com.hmall.dao.BasketDAO"%>
<%@ page import="com.hmall.dto.BasketVO"%>

<html lang="ko" class="desktop winos chrome x64 web">
<head>
	<!-- includeScript -->
	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/plugins/ua/ec.js"></script>
	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/analytics.js"></script>
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script async=""
		src="https://www.googletagmanager.com/gtm.js?id=GTM-MZFFDJ8"></script>
	<script type="text/javascript" async=""
		src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
	<script
		src="https://connect.facebook.net/signals/config/307742333494098?v=2.9.57&amp;r=stable"
		async=""></script>
	<script
		src="https://connect.facebook.net/en_US/sdk.js?hash=025e779ceabfa349d228d02859906d5c"
		async="" crossorigin="anonymous"></script>
	<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
	<script type="text/javascript" async=""
		src="https://www.googletagmanager.com/gtag/js?id=AW-937000404&amp;l=dataLayer&amp;cx=c"></script>
	<script type="text/javascript" async=""
		src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
	<script id="facebook-jssdk" src="//connect.facebook.net/en_US/sdk.js"></script>
	<script src="https://www.googleoptimize.com/optimize.js?id=OPT-NBGRL7P"></script>
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
	<script src="//image.hmall.com/p/js/co/jquery-3.4.1.min.js"></script>
	<!-- jQuery Plugin -->
	<script src="//image.hmall.com/p/js/co/jquery.easing.min.js"></script>
	<!-- jQuery UI Effect -->
	<script src="//image.hmall.com/p/js/co/jquery-ui.1.12.1.min.js"></script>
	<!-- jQuery UI js -->
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
	
	<!-- Google analytics -->
	<script type="text/javascript"
		src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=041116"></script>
	<script type="text/javascript"
		src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=041116"></script>
	
	<!-- Main Contents css = Contents css부분은 각페이지마다 다르게 해당되는 css가 호출 됨(폴더 구조별)  -->
	<link rel="stylesheet" type="text/css"
		href="//image.hmall.com/p/css/od/cart.css">
	<script src="//image.hmall.com/p/js/od/cart.js"></script>
	
	<script type="text/javascript">
	
	function uitmPlus(obj, limitCnt) {
	    var input = $(obj).siblings("div.inputbox").find("input[name='ordQty']");
	    var ordQty = Number($(input).val());
	
	    //var sellPrc = $(obj).parents("div.pdlist-wrap").find("input[name='uitmSellPrc']").val();
	    var sellPrc = $(obj).parents("div.quantity").find("input[name='sellPrc']").val();
	    
	    var prc = Number(sellPrc) * (ordQty + 1);
	    $(obj).parent().parent().find("div.pdprice").find("em").text(gfn_appendComma(prc));
	    $(input).val(ordQty + 1);
	
	    //calcSellPrc();
	}
	
	function uitmMinus(obj,minCnt) {
	    var input = $(obj).siblings("div.inputbox").find("input[name='ordQty']");
	    var ordQty = Number($(input).val());
	
	    if(isEmpty(minCnt)) {
	        minCnt = 0;
	    }
	    
	    // 수량이 0보다 작으면 리턴 (박주영)
	    if((ordQty - 1) < 1) {
	    	return;
	    }
	   
	    var sellPrc = $(obj).parents("div.quantity").find("input[name='sellPrc']").val();
	    
	    var prc = Number(sellPrc) * (ordQty - 1);
	    $(obj).parent().parent().find("div.pdprice").find("em").text(gfn_appendComma(prc));
	    $(input).val(ordQty - 1);
	
	    //calcSellPrc();
	}
	
	function removeUitmRow(obj) {
		$(obj).parent().parent().prev("strong").remove();
		$(obj).parent().parent().remove();
	}
	
	function orderSelect(obj) {
	    var basktInfArr = new Array();
	    var ordAgreeInfArr = new Array();    
	    var hpntPrtyTempInfArr = new Array(); //적립금 우선결제 상품 임시 저장  
	    var uitmCdInfPupArr = new Array();   //새벽배송,신선식품 추가 20180705 특화배송조유진
	    var allInfArray = new Array();
	    
	    var exstHoldTimeItemYn = false;
	    var stpicDlvHopeOverYn = false;
	    var hpntPrtyStlmYn = false;        
	    var hpntPrtyStlmCount = 0;
	    var cnt = $("input[name=basktInf]:checked").length;
	    
	    var exstcjDawndlvCtn = 0;
	    var exstCardEventPdCnt = 0;
	    var exstDongwonDawndlvCtn = 0;
	    var chkSlitmCds = "";
	    var searchExclItemTrgtGbcd = false;
	
	    var stpicItemCnt    = 0;
	    var gnlItemCnt      = 0;
	    
	    //품절상품 포함여부 체크
	    var soldOutCnt = $("input[name=soldOutSlitm]:checked").length;
	    if(soldOutCnt > 0){
	        alert("선택하신 상품에는 품절/판매 종료 상품이 포함되어있습니다.");
	        return false;
	    }
	    
	    $("input[name=basktInf]:checked").each(function() {
	        var basktInf = $(this);  
	        var ordAgreeInfTemp = "";
	        var uitmCdInfPupTmp = "";
	        
	        var exclItemTrgtGbcd = $(this).parents("div.pdwrap").find("input[name='exclItemTrgtGbcd']").val();
	        var chkSlitmCd = $(this).parents("div.pdwrap").find("input[name='slitmCd']").val();
	        if(!isEmpty(exclItemTrgtGbcd)){
	            searchExclItemTrgtGbcd = true;
	        }
	        if(!isEmpty(chkSlitmCd)){
	            if(!isEmpty(chkSlitmCds)){
	                chkSlitmCds += ","
	            }
	            chkSlitmCds += chkSlitmCd;
	        }
	
	    });
	}
	
	function isEmpty(value) {
	    return (value == null || value == undefined || value == "");
	}
	
	/**
	 * Input will add commas to numbers.
	 * @type void
	 * @param nNumber   Input value
	 * @param nDetail   Decimal places.(rounding)
	 * @return          Number contained a comma.
	 */
	function gfn_appendComma(nNumber,nDetail) {
	    if (nNumber == null)    return "";
	    if (nDetail == null)    nDetail = 0;
	
	    nNumber             = parseFloat(nNumber);
	    nNumber             = Math.round(nNumber, nDetail);
	
	    var strNumber       = new String(nNumber);
	    var arrNumber       = strNumber.split(".");
	    var strFormatNum    = "";
	    var j = 0;
	
	    for (var i = arrNumber[0].length - 1; i >= 0; i--) {
	        if (i != strNumber.length && j == 3) {
	            strFormatNum = arrNumber[0].charAt(i) + "," + strFormatNum;
	            j = 0;
	        } else {
	            strFormatNum = arrNumber[0].charAt(i) + strFormatNum;
	        }
	        j++;
	    }
	
	    if (arrNumber.length > 1)   strFormatNum = strFormatNum + "." + arrNumber[1];
	
	    return strFormatNum;
	}
	
	// obj, gen or basktgbcd, all or slitmCd, uitmCd 
	function check(obj, gbcd, slitmCd, uitmCd) {
		var checkFlag = $(obj).prop("checked");
		var checkCount = 0;
	    
		// 품절은 구매가능한 상품과는 별도로 처리.
		if ( gbcd == "soldout" ) {
			if ( slitmCd == "all" ) {
				$("input[name=soldOutSlitm]").each(function() {
					$(this).prop("checked", checkFlag);
					if ( $(this).prop("checked") ) {
						checkCount++;
					}
				});
			} else {
				var allFlag = true;
				$("input[name=soldOutSlitm]").each(function() {
	                if ( !$(this).prop("checked") ){
	                	allFlag = false;
	                } else {
	                	checkCount++;
	                }
	            });
				$("input[name=soldout_all]").prop("checked", allFlag);
			}
			$("#soldoutSelectCount").html(checkCount);
			
		} else if ( slitmCd == "all" ) { // 전체선택!
			// 현재 all을 제외한 all을 해제한다.
			$("input[name=all]").not($(obj)).each(function() {
				$(this).prop("checked", false);
				$(this).parents("div.cart-check").find("span.cart-count strong").html("0");
			});
		
			// basktInf전체 선택 해제.
			$("input[name=basktInf]").each(function() {
				$(this).prop("checked", false);
			});
			// 선택된거면... 그 아래를 선택한다. 
			if ( checkFlag ) {
				$("div#"+gbcd+" input[name=basktInf]").each(function() {
					if ( $(this).parent().parent().parent().css("display") == "block" ) {
					    $(this).prop("checked", true);
					    checkCount++;
		            }
		        });
			}
			$(obj).parents("div.shipping-listwrap").find("span.cart-count strong").html(checkCount);
		} else {
			// * 상품이 선택된경우 all에 체크된것을 해제/선택 한다.
			
			// 모든 all을 체크 해제. 
			// - 선택된 상품 그룹과 다른 all 아래 상품의 체크를 해제한다.
			var selGrpId = $(obj).parents("div.shipping-list").prop("id");
			$(".shipping-listwrap").not("#soldout").each(function() {
				
	            $(this).find("input[name=all]").prop("checked", false);
	            if ( selGrpId != $(this).find("div.shipping-list").prop("id") ) {
	            	$(this).find("input[name=basktInf]").prop("checked", false);
	            }
	            $(this).find("span.cart-count strong").html("0");
	        });
			
			// 해당 상품과 같이 묶인 상품의 갯수와 체크된 갯수 확인.
			// 두개가 같으면 all 체크.
			var allFlag = true;
			if ( $(obj).parents("div.shipping-list").prop("id") == "gen" ) {
				$(obj).parents("div.shipping-listwrap").find("input[name=basktInf]").each(function() {
					if ( $(this).parents(".pdwrap").attr("style").indexOf("none") < 0 ) {
		                if ( !$(this).prop("checked") ) {
		                    allFlag = false;
		                } else {
		                	checkCount++;
		                }
					}
	            });
				$(obj).parents("div.shipping-listwrap").find("input[name=all]").prop("checked", allFlag);
			} else {
				$(obj).parents("div.shipping-list").find("input[name=basktInf]").each(function() {
					if ( $(this).parents(".pdwrap").attr("style").indexOf("none") < 0 ) {
						if ( !$(this).prop("checked") ) {
							allFlag = false;
						} else {
							checkCount++;
						}
					}
				});
				$(obj).parents("div.shipping-list").prev().find("input[name=all]").prop("checked", allFlag);
			}
			$(obj).parents("div.shipping-listwrap").find("span.cart-count strong").html(checkCount);
		}
		
		
		var CombinegiftOrderYn = "N";
		var checkedCnt = 0;
		var notDlvCostFreeCnt = 0;
		var giftCnt = 0;
		$("input[name=basktTotalGiftOrderYn]").each(function() {
	        console.log("each " + giftCnt);
			var checked = $(this).siblings(".checkbox").find("input[name=basktInf]").prop("checked");
	        if(checked){
	        	if(checked){
	                if(checked){
	                    checkedCnt++;
	                    if($(this).siblings("input[name='basktGiftOrderYn']").val()=="Y"){
	                        giftCnt++
	                    }
	                    if($(this).val() == "N"){
	                        notDlvCostFreeCnt++
	                    }
	                }
	            }
	        }
	    });
		
	    if(giftCnt != 0 && checkedCnt == giftCnt){
	    	CombinegiftOrderYn = "Y";
	        if(notDlvCostFreeCnt > 0){
	        	CombinegiftOrderYn = "N";
	            
	            if(giftCnt == 1 && notDlvCostFreeCnt == 1){
	            	CombinegiftOrderYn = "Y";
	            }
	        }
	    }
		
		if ( CombinegiftOrderYn == "Y") {
	        $("div#uobtnprsnbox").show();
	        $("div#uobtnbox").hide();
	    }
	    else{
	        $("div#uobtnprsnbox").hide();
	        $("div#uobtnbox").show();
	    }
		
		// 선택된 것의 금액계산.
		calculateSelect();
	}
	
	function calculateSelect() {
		// 초기값.
	    var selCnt = 0;
	    var selSlitmAmt = 0;
	    var selDlvAmt = 0;
	    var selOrdAmt = 0;
	    var basktVenCdGatherVal = "";
	    
	    // ||||
	    $("input[name=basktInf]").each(function() {
	    	if ( $(this).prop("checked") ) {
	    		var basktInfArr = $(this).val().split("|");
	    	    
	    	    selCnt++;
	    	    selSlitmAmt += (basktInfArr[3]*basktInfArr[4]);
	    	}
	    });
	    
	    selDlvAmt = 0;
	    
	    // 우측 윙 set
	    $("#selCnt").html(gfn_appendComma(selCnt));
	    $("#selSlitmAmt").html(gfn_appendComma(selSlitmAmt));
	    $("#selDlvAmt").html(gfn_appendComma(selDlvAmt));
	    $("#selOrdAmt").html(gfn_appendComma(selSlitmAmt + selDlvAmt));
	    $("#selCnt_btn").html(gfn_appendComma(selCnt));
	}
	
	
	$(window).on("load", function() {
		initSelect();
		
	    // 장바구니 구분 타이틀 숨김.
	    $("div.shipping-listwrap").each(function (){
	        var itemCnt = $(this).find("div.pdwrap").length;
	        var noneCnt = $(this).find("div.pdwrap[style='display:none;']").length;
	        if (itemCnt == noneCnt) {
	            $(this).hide();
	        }
	    });
	});
	
	// load시 select 초기값 설정.
	function initSelect() {
		// 품절상품을 제외하고 첫번째 장바구니 타이블에서 전체선택을 가지고 와서 있으면 전체선택 없으면 첫번째 상품선택.
		var allObj = $("div.cart-check").not($("#soldout_check")).eq(0).find("input[name=all]");
		if ( $(allObj).prop("id") !== undefined ) {
			$(allObj).click();
		} else {
			$("input[name=basktInf]").eq(0).click();
		}
	}
	
	// 장바구니 삭제 (박주영)
	function deleteBasket(obj) {
		if(confirm('장바구니에서 삭제하시겠습니까?')) {
			var no = $(obj).siblings('input[name=sbNo]').val();
			document.totBasktForm.action = "HmallServlet?command=basket_delete&allYn=n&no=" + no;
			document.totBasktForm.submit();
		}
	}
	
	// 장바구니 모두 삭제 (박주영)
	function deleteAllBasket() {
		if(confirm('장바구니를 비우시겠습니까?')) {
			document.totBasktForm.action = "HmallServlet?command=basket_delete&allYn=y";
			document.totBasktForm.submit();
		}
	}
	
	// 장바구니 수정 (박주영)
	function updateBasket(obj) {
		var qtyInput = $(obj).parent().siblings("div.optgroup").find("input[name='ordQty']");
		var qty = Number(qtyInput.val());
		var noInput = $(obj).parents("div.pdwrap").find("input[name='sbNo']");
		var no = Number(noInput.val());
		
		document.totBasktForm.action = "HmallServlet?command=basket_update&no=" + no + "&amount=" + qty;
		document.totBasktForm.submit();
	}
	
	</script>
	
	<!-- 페이지 title (박주영) -->
	<title>장바구니 - 현대Hmall</title>
</head>
<body>
	<div class="wrap cartwrap">
	
		<!-- 페이지 header (박주영) ㄴ-->
		<%@ include file="../header.jsp"%>
		
		<!-- full 배경이 들어간 구조 bgcmain -->
		<main class="cmain bgcmain" role="main" id="mainContents">
			<div class="container">
				<input type="hidden" name="giftOrderYn">

				<div class="cbody">
					<div class="contents">
						<div class="csection">
							<div class="cart-area">
								<div class="cart-head">
									<div class="cart-top">
										<div class="cart-all">
											<!-- DB에서 총 장바구니 수 가져와 출력 (박주영) -->
											<strong>장바구니</strong> <span>(<em class="cart-count">${ basketList.size() }</em>)
											</span>
										</div>
										<ol class="cart-list-num">
											<li class="active">
												<!-- active일 경우 style 변경 --> <strong>01</strong> <span>장바구니</span>
											</li>
											<li><strong>02</strong> <span>주문서작성</span></li>
											<li><strong>03</strong> <span>주문완료</span></li>
										</ol>
										<!-- 가격이 내려간 상품이 있을 경우 노출 -->
										<div class="toast arrtl bgc" style="display: none;">
											<p>가격이 내려간 상품이 있습니다</p>
											<button type="button" class="btn-close">
												<i class="icon"></i><span class="hiding">닫기</span>
											</button>
										</div>
									</div>
									<div class="cart-bottom">
										<div class="btngroup">
											<button type="button" class="btn btn-cart-del"
												onclick="deleteAllBasket();">
												<i class="icon cart-del"></i><span>장바구니 비우기</span>
											</button>
											<button type="button" class="btn btn-cart-set lyopen"
												data-modules-modal="target:#cartAlarm;">
												<i class="icon cart-set"></i><span>알림설정</span>
											</button>
										</div>
									</div>
								</div>
								<!-- //.cart-head -->

								<div class="cart-body">

									<!-- 품절체크 -->

									<!-- 장바구니에 담긴 상품이 있을 경우에 띄우기 (박주영)-->
									<c:if test="${ basketList.size() > 0 }">

										<form action="#" name="totBasktForm" method="post"
											onsubmit="return false;">

											<!-- 일반상품 -->
											<div class="shipping-listwrap" aria-label="일반상품">
												<div class="cart-check">
													<div class="checkbox">
														<label class="chklabel"><input type="checkbox"
															name="all" id="gen"
															onclick="check(this, 'gen', 'all', '');"><i
															class="icon"></i><span>일반상품</span></label> <span
															class="cart-count">(<strong>${ basketList.size() }</strong>/<em>${ basketList.size() }</em>)
														</span>
													</div>
													<!-- <button type="button" class="btn btn-linelgray sm"
														onclick="deleteBasktItem(this)">
														<span>선택삭제</span>
													</button> -->
												</div>
												<!-- //.cart-check -->

												<%
													ProductDAO productDAO = ProductDAO.getInstance();
													ProductVO product = null;
												%>
												<!-- 초기화 -->
												<!-- 장바구니 리스트 요소만큼 반복 -->
												<c:forEach var="basket" items="${ basketList }">
													<!-- 장바구니의 product_code 변수 저장 -->
													<c:set var="pCode" value="${ basket.productCode }"></c:set>
													<!-- pCode로 product 정보 받아오기 -->
													<%
														int pCode = (int) pageContext.getAttribute("pCode");
														product = productDAO.getProduct(pCode);
													%>
													<div class="shipping-list" id="gen">
														
														<!-- .pdwrap -->
														<div class="pdwrap pdlist ml" style="display:;"
															id="004438_000000_13">
																														
															<input type="hidden" id="exclItemTrgtGbcd_2076649377"
																name="exclItemTrgtGbcd" value=""> <input
																type="hidden" id="slitmNm_2076649377" name="slitmNm"
																value="<%=product.getProductName()%>"> <input
																type="hidden" name="slitmCd"
																value="<%=product.getProductCode()%>">

															<div class="checkbox">
																<label class="chklabel"><input type="checkbox"
																	name="basktInf" value="2076649377|00001|0|${ basket.amount }|<%=product.getDiscountPrice()%>"
																	onclick="check(this, 'gen', '2076649377', '00001');"><i
																	class="icon"></i><span><%=product.getProductName()%></span></label>
															</div>
															<!-- 장바구니 삭제 (박주영) -->
																<input type="hidden" name="sbNo" value="${ basket.sbNo }">
																<button class="btn btn-cart-del" onclick="deleteBasket(this);">
																	<i class="icon cart-del"></i>
																	<span class="hiding">삭제</span>
																</button>
															
															
															<div class="pdlist-wrap">
																<div class="pditem">
																	<figure class="pdthumb">
																		<!-- 상품 누르면 상품 상세 페이지로 이동 (박주영) -->
																		<a href="HmallServlet?command=productDetail&pCode=<%=product.getProductCode()%>">
																			<div class="thumb">
																			<!-- 상품 이미지 넣기 (박주영) -->
																				<img
																					src="product_images/<%=product.getProductImg()%>.jpg?RS=120x120&amp;AR=0"
																					onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=120x120&amp;AR=0')">
																			</div>
																		</a>
																		<figcaption>
																			<a href="HmallServlet?command=product_detail&pCode=<%=product.getProductCode()%>">
																				<div class="pdprice">
																					<!-- 할인가, 정가 JSTL로 formatting하여 출력 -->
																					<input type="hidden" name="sellPrc"
																						value="<%=product.getPrice()%>"> <input
																						type="hidden" name="bbprc"
																						value="<%=product.getDiscountPrice()%>">


																					<ins class="normal" aria-label="정상가">
																						<em> <fmt:formatNumber
																								value="<%=product.getDiscountPrice()%>"
																								pattern="#,###" />
																						</em><b>원</b>
																					</ins>

																				</div>
																				<div class="benefits">
																					<span>무료배송</span>

																				</div>


																				<!-- 수량 출력 (박주영) -->
																				<div class="pdoption" aria-label="옵션/수량">
																					<span class="count">수량: <em>${ basket.amount }개</em></span>
																				</div>
																			</a>
																		</figcaption>
																		<div class="pdlike">
																			<a href="#"
																				class="btn btn-like" id="zzim_2076649377:00001"><i
																				class="icon"></i><span class="hiding">찜</span></a>
																		</div>
																	</figure>
																</div>
																<!-- //.pditem -->


																<!-- btngroup: 수량 변경  / 바로구매 -->
																<div class="btngroup">
																	<div class="pdfunc">
																		<button type="button"
																			class="btn btn-linelgray sm btn-prop"
																			id="optBtn_2045598435_00001"
																			onclick="showChgUitmPup(this, '2045598435', '00001', 0, 18900, '');">
																			<span>수량변경</span><i class="icon"></i>
																		</button>
																	</div>

																	<button type="button" class="btn btn-default"
																		onclick="setGiftOrder('N');buyDirect(this);"
																		id="buyDirectBtn_2076649377">
																		<span>바로구매</span>
																	</button>

																</div>
																<!-- // btngroup: 수량,속성변경 / 선물하기 / 스토어픽 구매 / 바로구매 -->

																<!-- 속성변경 옵션 class=selected 추가하면 활성화 됨 -->
																<div class="prop-change selected"
																	id="chgUitmLayer_2045598435_00001">
																	<!-- 필요한 정보들 넣어주기 -->
																	<input type="hidden" name="slitmCd" value="<%=product.getProductCode()%>">
																	<input type="hidden" name="uitmCd" value="00001">
																	<input type="hidden" name="uitmCombYn" value="">

																	<input type="hidden" name="uitmSellPrc" value="<%=product.getDiscountPrice()%>">


																	<input type="hidden" name="dluMaxBuyQtyCnt" value="999">
																	<input type="hidden" name="lwstBuyQtyCnt" value="0">
																	<div class="optgroup">

																		<strong><%=product.getProductName()%></strong>

																		<div class="quantity" id="uitm">
																			<input type="hidden" name="uitmCd" value="00001">
																			<div class="count">
																				<button type="button" class="btn btn-minus"
																					aria-label="수량 감소" onclick="uitmMinus(this, '0')">
																					<i class="icon"></i><span class="hiding">감소</span>
																				</button>
																				<div class="inputbox">
																					<label class="inplabel"><input
																						type="number" name="ordQty" maxlength="2"
																						value="${ basket.amount }" onkeyup="uCheckOrdQty(this,'999', '0')"
																						title="입력하세요"></label>
																				</div>
																				<button type="button" class="btn btn-plus"
																					aria-label="수량 증가" onclick="uitmPlus(this, '999')">
																					<i class="icon"></i><span class="hiding">증가</span>
																				</button>
																			</div>
																			<div class="pdprice">
																				<input type="hidden" name="sellPrc" value="<%=product.getDiscountPrice()%>">
																				<ins aria-label="가격">
																					<em>
																					<!-- 총 가격 계산을 위해 가격 변수로 선언 (박주영) -->
																					<c:set var="price" value="<%=product.getDiscountPrice()%>"></c:set>
																					<fmt:formatNumber
																								value="${ price * basket.amount }"
																								pattern="#,###" /></em><b>원</b>
																				</ins>
																				<button type="button" class="btn-delete"
																					onclick="removeUitmRow(this);">
																					<i class="icon"></i><span class="hiding">삭제</span>
																				</button>
																			</div>
																		</div>



																	</div>
																	<div class="btngroup">
																		<button type="button"
																			class="btn btn-linelgray small30"
																			onclick="$('#optBtn_2045598435_00001').toggleClass('selected');$('#chgUitmLayer_2045598435_00001').toggleClass('selected');">
																			<span>취소</span>
																		</button>
																		<!-- 변경적용 클릭 시 DB amount update -->
																		<button type="button"
																			class="btn btn-linelgray small30"
																			onclick="updateBasket(this);">
																			<%-- onclick="changeBasktItemUitmInf(${ basket.productCode }, '00001');"> --%>
																			<span>변경적용</span>
																		</button>
																	</div>
																</div>
																<!-- //.prop-change -->


															</div>
															<!-- //.pdlist-wrap -->
														</div>

														<!-- //.pdwrap -->
													</div>
												</c:forEach>
												<!-- //.shipping-list -->
											</div>

											<!-- //.shipping-listwrap  일반상품 -->
										</form>

									</c:if>


								</div>
								<!-- //.cart-body -->

								<c:if test="${ basketList.size() == 0 }">
									<!-- 장바구니에 담긴 상품이 없을 경우 -->
									<div class="nodata">
										<span class="bgcircle"><i class="icon nodata-type7"></i></span>
										<p>
											<span>장바구니에 담긴 상품이 없습니다.</span>
										</p>
									</div>
								</c:if>

								<!-- //.no-data -->

							</div>
							<!-- //.cart-area -->
						</div>
						<!-- //.csection -->

						<!-- 상품리스트에 하나라도 체크되면 활성화됨 -->
						<div class="sticky-ui-wrapper util-option-sticky">
							<div class="sticky-placeholder" style=""></div>
							<div class="util-option sticky"
								data-modules-sticky="padding:-40;breakPoint:.container;className:util-option-sticky;"
								style="">
								<div class="sticky-inner">
									<div class="result">
										<p class="sel-tit">
											선택한 상품<span>(<em id="selCnt">0</em>)
											</span>
										</p>
										<p>
											<strong>상품금액</strong>
											<ins>
												<em id="selSlitmAmt">0</em><b>원</b>
											</ins>
										</p>
										<!-- <p class="sale"><strong>할인</strong><ins><em class="off">0</em><b>원</b></ins></p>-->
										<p class="ship-fee">
											<strong>배송비</strong>
											<ins>
												<em id="selDlvAmt">0</em><b>원</b>
											</ins>
										</p>
										<!-- 선택한 상품이 없을 경우 em에 class="off" 붙여주세요.  -->
									</div>
									<div class="total-price">
										<a href="javascript:;" class="btn-total"><span>총 주문
												금액</span></a>
										<ins>
											<em id="selOrdAmt">0</em><b>원</b>
										</ins>
									</div>
									<div id="uobtnprsnbox" class="btngroup _gift"
										style="display: none;">
										<button class="btn btn-linelgray"
											onclick="setGiftOrder('Y');orderSelect();">
											<span>선물하기</span>
										</button>
										<button class="btn btn-purchase"
											onclick="setGiftOrder('N');orderSelect();">
											<span>바로구매</span>
										</button>
									</div>
									<div id="uobtnbox" class="btngroup">
										<button type="button" class="btn btn-purchase"
											onclick="setGiftOrder('N');orderSelect();">
											<span>선택상품 구매하기</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<!-- //.util-option -->

					</div>
					<!-- //.contents -->

					<!--product-content-->
					<div class="product-content">
						<div class="product-area">

							<div class="article produt-slide">
								<h3 class="major-headings">이 상품 지금 딱!</h3>
								<div class="pdwrap xllist">
									<div class="pdlist-wrap">


										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2076649377&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2076649377_[10%쿠폰] 씨스팡 관절팔팔 12주분 (6박스) + 혈관팔팔 1박스(15일분) 증정"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/3/9/64/76/2076649377_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[10%쿠폰] 씨스팡 관절팔팔
														12주분 (6박스) + 혈관팔팔 1박스(15일분) 증정</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>152,910</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2086121835&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2086121835_[렌탈] LG전자 정수기 外 (상품권 최대 30만원)"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/8/1/12/86/2086121835_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[렌탈] LG전자 정수기 外
														(상품권 최대 30만원)</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>1,254,000</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2137805052&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2137805052_[H몰 한정]해피바스 퍼퓸 바디워시 900G 4입+500G 순한바디워시 증정"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/0/5/80/37/2137805052_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[H몰 한정]해피바스 퍼퓸
														바디워시 900G 4입+500G 순한바디워시 증정</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>17,800</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>


										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2130344685&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2130344685_[안신애패치]아웃도어 비타토닝 패치/대형12회분+일반형12회분"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/6/4/34/30/2130344685_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[안신애패치]아웃도어 비타토닝
														패치/대형12회분+일반형12회분</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>35,520</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2139428977&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2139428977_[SHOW] 셀티바 엘라스틴 데스모신 6박스+엘라스틴 1박스+어린콜라겐 2박스"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/9/8/42/39/2139428977_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[SHOW] 셀티바 엘라스틴
														데스모신 6박스+엘라스틴 1박스+어린콜라겐 2박스</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>198,000</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2079392415&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2079392415_[까사미아] 이사/혼수에 딱~ 소파/거실장 모음전"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/4/2/39/79/2079392415_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[까사미아] 이사/혼수에 딱~
														소파/거실장 모음전</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>1,332,380</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2108547422&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2108547422_[뉴트리원] 윤아 비비랩 저분자피쉬콜라겐 파우더 6통(6개월분) /잠들기전한포"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/4/7/54/08/2108547422_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[뉴트리원] 윤아 비비랩
														저분자피쉬콜라겐 파우더 6통(6개월분) /잠들기전한포</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>79,900</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2104040174&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="이 상품 지금 딱"
												ga-custom-creative="2104040174_[트렌드라인 for casamiashop] 레슬리 원목침대(매트제외 SS)"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/1/0/04/04/2104040174_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[트렌드라인 for
														casamiashop] 레슬리 원목침대(매트제외 SS)</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>236,550</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>


									</div>
									<!-- //.pdlist-wrap -->
								</div>
								<!-- //.pdwrap -->
							</div>


							<!-- 오늘의 추천상품 : 메인 내 오늘추천 탭의 전체 카테고리 상품  -->

							<div class="article produt-slide">
								<h3 class="major-headings">오늘의 추천 상품</h3>
								<div class="pdwrap xllist">
									<div class="pdlist-wrap">


										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2045598435&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="오늘의 추천 상품"
												ga-custom-creative="2045598435_(다운쿠폰)[웅진]빅토리아 탄산수 500mlx40펫 택2"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/4/8/59/45/2045598435_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">(다운쿠폰)[웅진]빅토리아
														탄산수 500mlx40펫 택2</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>18,900</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2013924818&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="오늘의 추천 상품"
												ga-custom-creative="2013924818_(MD추천)[정식품]그린비아 식사대용/환자식 모음전"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/8/4/92/13/2013924818_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">(MD추천)[정식품]그린비아
														식사대용/환자식 모음전</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>34,900</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2097543347&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="오늘의 추천 상품"
												ga-custom-creative="2097543347_[산과들에]인기 하루한줌견과 100봉/ 신상품 코코너츠화이트 100봉 / 요거트 건포도"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/3/3/54/97/2097543347_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">[산과들에]인기 하루한줌견과
														100봉/ 신상품 코코너츠화이트 100봉 / 요거트 건포도</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>28,900</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>



										<figure class="pdthumb">
											<a
												href="http://www.hmall.com/p/pda/itemPtc.do?slitmCd=2123049756&amp;SectID="
												onclick="gaTagging(this, '', '', '');" ga-custom-name="장바구니"
												ga-custom-position="오늘의 추천 상품"
												ga-custom-creative="2123049756_(MD추천)롯데칠성 아이시스 ECO 무라벨 2.0L x 6개"
												ga-custom-title="주문/장바구니>장바구니>리스트" ga-custom-etc=""> <!-- [12/04]_수정(이미지 크기 및 border-radius , bg opacity 추가) -->
												<div class="thumb">
													<img
														src="https://image.hmall.com/static/7/9/04/23/2123049756_0.jpg?RS=185x185&amp;AR=0"
														onerror="noImage(this, 'https://image.hmall.com/p/img/co/noimg-thumb.png?RS=185x185&amp;AR=0')">
												</div>
												<figcaption>
													<div class="pdname" aria-label="제품명">(MD추천)롯데칠성 아이시스
														ECO 무라벨 2.0L x 6개</div>

													<div class="pdprice">
														<span aria-label="판매가"><em>7,000</em><b>원</b></span>
													</div>

												</figcaption>
											</a>
										</figure>


									</div>
									<!-- //.pdlist-wrap -->
								</div>
								<!-- //.pdwrap -->
							</div>

							<!-- //오늘의 추천상품 : 메인 내 오늘추천 탭의 전체 카테고리 상품  -->

							<!-- .produt-slide : 내 장바구니와 유사한 장바구니에 담긴 다른 상품 -->
							<div class="article produt-slide hidden" id="rcmm1">
								<h3 class="major-headings">내 장바구니와 유사한 장바구니에 담긴 다른 상품</h3>
								<!-- 장바구니에 담긴 상품이 없을 시 텍스트 변경 : 이 상품 지금 딱!-->
								<div class="pdwrap xllist"></div>
								<!-- //.pdwrap -->
							</div>
							<!-- //.produt-slide : 내 장바구니와 유사한 장바구니에 담긴 다른 상품 -->

							<!-- .produt-slide :  장바구니 상품과 동일한 카테고리 베스트 셀러 -->
							<div class="article produt-slide hidden" id="rcmm2">
								<h3 class="major-headings">함께 구매하면 좋은 상품</h3>
								<!-- 장바구니에 담긴 상품이 없을 시 텍스트 변경 : 지금 인기 많은 상품 -->
								<div class="pdwrap xllist"></div>
								<!-- //.pdwrap -->
							</div>
							<!-- //.produt-slide : 장바구니 상품과 동일한 카테고리 베스트 셀러 -->
						</div>
					</div>
					<!--product-cotent-->
				</div>
				<!-- //.cbody -->

				<!-- cfoot -->
				<div class="cfoot">
					<div class="contents">
						<div class="cart-info">
							<h3 class="major-headings">장바구니 이용안내</h3>
							<div class="cart-infocnt" role="region" aria-label="장바구니 이용안내">
								<h4 class="subheadings">장바구니 보관 안내</h4>
								<ul class="dotlist">
									<li>장바구니에 담긴 상품은 1달 동안 보관됩니다. 더 오래 보관 하시려면 "찜"에 저장해 주시기
										바랍니다.</li>
									<li>장바구니에 보관 된 상품이라 해도, 가격이나 혜택이 변동 될 수 있으니 주문하시기 전에 다시 한번
										확인하시기 바랍니다.</li>
									<li>상품에 따라 반품이나 교환 시 별도로 배송비가 청구되는 경우가 있습니다.</li>
								</ul>
								<h4 class="subheadings">무이자 할부 이용 안내</h4>
								<ul class="dotlist">
									<li>상품상세 페이지나 장바구니에 기재된 무이자할부 개월수는 해당상품을 단독 구매할 경우 적용되는
										조건입니다.</li>
									<li>여러종류의 상품을 함께 구매 할 경우, 보다 낮은 개월 수 의 무이자 할부가 적용됩니다.</li>
									<li>무이자할부 대상이 아닌 상품을 함께 구매 할 경우, 무이자 할부가 적용되지 않습니다.</li>
									<li>일부 특가상품은 무이자 할부 대상에서 제외되며 또한 각 상품별로 무이자 할부 개월수가 상이하오니,
										최종 결제 페이지에서 무이자 할부 개월수를 다시 한번 확인하시기 바랍니다.</li>
									<li>상품별로 무이자할부 혜택을 받고 싶으시다면, 개별 주문 부탁드립니다.</li>
								</ul>
							</div>
							<!-- //.cart-infocnt -->

						</div>
						<!-- //.cart-info -->
					</div>
				</div>
				<!-- //.cfoot -->

			</div>
			<!-- //.container -->
		</main>
		<!-- //.cmain -->

		<form id="productModifyForm" action="#" method="post"></form>
		<form id="goBasktList"
			action="https://www.hmall.com/p/odb/basktList.do" method="post"></form>
		<form id="orderForm"
			action="https://www.hmall.com/p/oda/orderRedirect.do" method="post"></form>
		<form id="deleteForm" method="post"></form>



		<script type="text/javascript">
</script>

	<!-- 페이지 footer (박주영) -->
	<%@ include file="../footer.jsp"%>

		
	<!-- 스카이스크래퍼 -->
	<script type="text/javascript">

	var skySclbrodEndTime = "";
	var skyScldtvEndTime = "";
	
	function setOnAirSkySc(){
		try {
			$.ajax({
		        type: "get"
		        ,url: "https://wwwca.hmall.com/p/coe/onAirList.do?time=040809"
		        ,dataType: "html"
		        ,async: true
		        ,success : function(data) {
		           $('#skyScOnAirArea').append(data);
		           
		           if ($('#onAirHtime').length > 0) {
		        	   skySclbrodEndTime = "" + $('#onAirHtime').data("brodenddtm");
		        	   onAirTimerSkySc();
		           }
		
		           if ($('#onAirHdtime').length > 0) {
		        	   skyScldtvEndTime = "" + $('#onAirHdtime').data("brodenddtm");
		        	   
		        	   // TV+샵은 마직막이 '00' 으로 끝남
		        	   if (skyScldtvEndTime != "" && skyScldtvEndTime.length > 12) 
		        		   skyScldtvEndTime = skyScldtvEndTime.substring(0,12) + "00";
		        	   
		        	   onAirTimer2SkySc();
		           } 
		           
		           // 카드 프로모션 
		           setCardPromotion();
		           
		      }
		      ,error : function(e) {
		    	  
		    	  if ("https://wwwca.hmall.com" == "")  
		    		  return;
		    	  
		    	  $.ajax({
		              type: "get"
		              ,url: "/p/coe/onAirList.do?time=040809"
		              ,dataType: "html"
		              ,async: true
		              ,success : function(data) {
		                 $('#skyScOnAirArea').append(data);
		                 
		                 if ($('#onAirHtime').length > 0) {
		                     skySclbrodEndTime = "" + $('#onAirHtime').data("brodenddtm");
		                     onAirTimerSkySc();
		                 }
		      
		                 if ($('#onAirHdtime').length > 0) {
		                     skyScldtvEndTime = "" + $('#onAirHdtime').data("brodenddtm");
		                     
		                     // TV+샵은 마직막이 '00' 으로 끝남
		                     if (skyScldtvEndTime != "" && skyScldtvEndTime.length > 12) 
		                         skyScldtvEndTime = skyScldtvEndTime.substring(0,12) + "00";
		                     
		                     onAirTimer2SkySc();
		                 } 
		                 
		                 // 카드 프로모션 
		                 setCardPromotion();
		                 
		            }
		            ,error : function(e) {
		            }
		         });
		      }
		   });
	    } catch (err){}
	}
	
	function setCardPromotion() {
	    try {
	        $.ajax({
	            type: "get"
	            ,url: "https://wwwca.hmall.com/p/coe/onAirCardPrmoList.do?time=040809"
	            ,dataType: "html"
	            ,async: true
	            ,success : function(data) {
	               $('#skyScCardArea').append(data);
	               $('body').commonUi('initLibrary'); //PC인경우
	             }
	            ,error : function(e) {
	
	                if ("https://wwwca.hmall.com" == "")  
	                    return;
	                
	            	$.ajax({
	                    type: "get"
	                    ,url: "/p/coe/onAirCardPrmoList.do?time=040809"
	                    ,dataType: "html"
	                    ,async: true
	                    ,success : function(data) {
	                       $('#skyScCardArea').append(data);
	                       $('body').commonUi('initLibrary'); //PC인경우
	                     }
	                    ,error : function(e) {
	                        
	                    } 
	               });
	            } 
	       });
	    } catch (err){}
	}
	
	function onAirTimerSkySc(){
	    var now = new Date();
	    var lbrdEndTime = new Date();
	    lbrdEndTime.setHours(skySclbrodEndTime.substring(8,10));
	    lbrdEndTime.setMinutes(skySclbrodEndTime.substring(10,12));
	    lbrdEndTime.setSeconds(skySclbrodEndTime.substring(12,14));
	
	    var gap = (lbrdEndTime.getTime() - now.getTime())/1000;
	    var leftTime = "";
	
	    if(gap <= 0){
	        leftTime = "00:00:00";
	        $("#onAirHtime").text(leftTime);
	        return;
	    }
	
	    var hour = parseInt(gap/3600);
	    var min = parseInt((gap%3600)/60);
	    var sec = parseInt(gap%60);
	
	    leftTime += ((hour < 10) ? "0":"") + hour;
	    leftTime += ((min < 10) ? ":0":":") + min;
	    leftTime += ((sec < 10) ? ":0":":") + sec;
	
	    $("#onAirHtime").text(leftTime);
	    setTimeout("onAirTimerSkySc()", 1000);
	    
	}
	
	function onAirTimer2SkySc(){
	    var now = new Date();
	    var lbrdEndTime = new Date();
	    lbrdEndTime.setHours(skyScldtvEndTime.substring(8,10));
	    lbrdEndTime.setMinutes(skyScldtvEndTime.substring(10,12));
	    lbrdEndTime.setSeconds(skyScldtvEndTime.substring(12,14));
	
	    var gap = (lbrdEndTime.getTime() - now.getTime())/1000;
	    var leftTime = "";
	
	    if(gap <= 0){
	        leftTime = "00:00:00";
	        $("#onAirHdtime").text(leftTime);
	        return;
	    }
	
	    var hour = parseInt(gap/3600);
	    var min = parseInt((gap%3600)/60);
	    var sec = parseInt(gap%60);
	
	    leftTime += ((hour < 10) ? "0":"") + hour;
	    leftTime += ((min < 10) ? ":0":":") + min;
	    leftTime += ((sec < 10) ? ":0":":") + sec;
	
	    $("#onAirHdtime").text(leftTime);
	    setTimeout("onAirTimer2SkySc()", 1000);
	}

</script>

	<!-- 스카이 스크래퍼 -->
	<div class="sticky-ui-wrapper wing-banner-sticky">
		<div class="sticky-placeholder" style=""></div>
		<div class="wing-banner banner-right ui-break"
			data-modules-sticky="padding:0;breakPoint:.header-menu-wrap;className:wing-banner-sticky"
			style="top: 123px;">
			<!-- fixed 클래스 추가 시 고정 -->
			<a href="/pevent/eva/evntTmplDivideView.do?prmoNo=00049341">
				<div class="visit-indicator">
					바로접속 <span class="visit-staus on" style="margin-left: 0px">ON</span>
				</div>
			</a>
			<div class="recent-view-area" id="skyScOnAirArea">
			</div>
			<div class="qr_view_area">
				<span class="qr_txt">쇼핑라이브</span> <span class="img_qr"><img
					src="https://image.hmall.com/p/img/co/img-qr.jpg" alt="쇼핑라이브 qr이미지"></span>
			</div>
			<div class="wing-slide exhibition01" id="skyScCardArea">
				<ul>
					<li style=""><a
						href="https://www.hmall.com/p/dpa/crdDmndDcPrmo.do?prmoNo=P202203299704">
							<span class="img"><img
								src="//image.hmall.com/p/img/ev/icon/ico-card-nh.png"
								alt="NH농협카드"></span> <span class="card-txt"> <strong
								class="card-name">NH농협카드</strong> <span class="benefit-txt">
									<em class="point-red"> 7% </em> 즉시 할인
							</span>
						</span>
					</a></li>
					<li style="display: none;"><a
						href="https://www.hmall.com/p/dpa/crdDmndDcPrmo.do?prmoNo=P202203299554">
							<span class="img"><img
								src="//image.hmall.com/p/img/ev/icon/ico-card-lotte.png"
								alt="롯데카드"></span> <span class="card-txt"> <strong
								class="card-name">롯데카드</strong> <span class="benefit-txt">
									<em class="point-red"> 5% </em> 즉시 할인
							</span>
						</span>
					</a></li>
				</ul>
			</div>
			<!-- // .wing-slide -->

			<div class="btn-top">
				<a href="javascript:;">TOP</a>
			</div>
		</div>
	</div>
	<!-- // 스카이 스크래퍼 -->
	<script type="text/javascript">
    
    setTimeout(function() { 
    	setOnAirSkySc();
    }, 100);
    
	</script>
	<!-- 스카이스크래퍼 -->
</body>
</html>