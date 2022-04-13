<%-- 
	파일명: productDetail.jsp
	기능: 상품 상세 페이지
	작성자: 박주영
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="com.hmall.dao.BasketDAO"%>
<%@ page import="com.hmall.dto.BasketVO"%>

<!DOCTYPE html>
<html>
<head>
	
	
	<!-- favicon -->
	<link rel="shortcut icon" type="image/x-icon"
		href="//image.hmall.com/p/img/co/favicon/favicon.ico">
	<script src="https://www.googleoptimize.com/optimize.js?id=OPT-NBGRL7P"></script>
	
	<link rel="shortcut icon" href="https://www.hmall.com/favicon.ico" />
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
		src="//image.hmall.com/p/js/co/GoogleAnalyticsBuilder.js?ver=040517"></script>
	<script type="text/javascript"
		src="//image.hmall.com/p/js/co/ScreenNameObj.js?ver=040517"></script>
	
	<!-- Main Contents css = Contents css부분은 각페이지마다 다르게 해당되는 css가 호출 됨(폴더 구조별)  -->
	<link rel="stylesheet" type="text/css"
		href="//image.hmall.com/p/css/pd/product.css">
	<script type="text/javascript"
		src="//image.hmall.com/p/js/co/jquery.form.js"></script>
	<script type="text/javascript"
		src="//image.hmall.com/p/js/pd/product.js"></script>
	
	
	<link href="//image.hmall.com/p/css/co/video-js.css?ver=040517"
		rel="stylesheet">
	<script src="//image.hmall.com/p/js/co/video.js?ver=040517"></script>
	<script
		src="//image.hmall.com/p/js/co/videojs-http-streaming.js?ver=040517"></script>
	
	<!-- 2019.02.07 스포어픽 버튼 호출 함수 수정  prd-detail.js -->
	
	<!-- GENERAL -->
	<script type="text/javascript">
		var preview = "";
		var onAir = false;
		var pdaItemPtcCnt = 0;
		var dealYn = "Y";
		var new_now = '20220405171337';
		var now;
		var endTime = '';
		var slitmCd = '2135294542';
		var isMoreDetailBtn = false;
		var optItemExpsGbcd = "1";
		var btnOptCd = ""; 
		var btnOptCnt = 0;
		var bsitmCd = '2135294542';
		var listCondition  ="" ;
		var itemsCommChk = true ;
		var optionDetailViewClk = false;
		
		var photoReviewAll = "";
		//판매예정상품
		var sellPlanYn = "";
		
		// 페이지 로딩 시 수행
		$(document).ready(function() {
			initOptionUi()
		    calcSellPrc()
		});
		
		// 초기화 함수
		function initOptionUi() {
		    initSetOptionUi("ui-dropdown-group");
		
		    if($(".product-option-wrap:first .ui-dropdown-more-group").length > 0) {
		        var dropDownMoreGroupUi = '<div class="ui-dropdown-more-group"></div>';
		        $(".right-option-area .util-inner .option-scroll").append(dropDownMoreGroupUi);
		        $(".option-deal-wrap .util-inner .option-scroll").append(dropDownMoreGroupUi);
		        initSetOptionUi("ui-dropdown-more-group");
		    }
		    // 옵션 세팅 끝
		   
		}
		
		function initSetOptionUi(groupCssNm) {
			
			if($(".product-option-wrap:first").css("display") == 'none') {
				return;
			}
			
			var itemtype = 'GENERAL';
		    var prdSelectListCss = "select-product-list";
		    var prdSelectDelCss = "btn-delete-sel-item";
		    if(groupCssNm == "ui-dropdown-more-group") {
		        prdSelectListCss = "select-product-add-list";
		        prdSelectDelCss = "btn-delete-sel-add-item";
		    }
		    
		    var dropDownUi = '<div class="ui-dropdown sel-prduct"><a class="drop" href="javascript://" data-modules-dropdown="" aria-expanded="false"><span>상품을 선택하세요.</span></a></div>';
		    $(".product-option-wrap:first ."+groupCssNm+" .ui-dropdown.sel-prduct").each(function( index ) {
		        $(".right-option-area .util-inner .option-scroll ."+groupCssNm).append(dropDownUi);
		        var prdList = $(this).find(".dropdown-menu").clone(true);
		        var input = $(this).find(".drop input").clone(true);
		        var inputText = $(this).find(".drop input[name=defaultNm]").val();
		        
		        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+")").append(prdList);
		        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+") a.drop span").text(inputText);
		        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+") a.drop").append($(input).clone());
		        if(dealYn == 'Y') {
		            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm).append(dropDownUi);
		            var dealPrdList = $(this).find(".dropdown-menu").clone(true);
		            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+")").append(dealPrdList);
		            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+") a.drop span").text(inputText);
		            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-prduct:eq("+index+") a.drop").append($(input).clone());
		
		            if($(".option-deal-thumbnaii ul").length > 0) {
		                $(".option-deal-thumbnaii ul li:first").addClass("ui-active");
		                $(".modal-optiondeal .content-body .tab-content .tab-pane:first").addClass("ui-active");
		            }
		        }
		    });
		    
		    var dropDownUi = '<div class="ui-dropdown sel-option"><a class="drop" href="javascript://" data-modules-dropdown="" aria-expanded="false"><span>상품을 선택하세요.<span></a></div>';
		    $(".product-option-wrap:first ."+groupCssNm+" .ui-dropdown.sel-option").each(function( index ) {
		        var input = $(this).find(".drop input").clone(true);
		        var inputText = $(this).find(".drop input[name=defaultNm]").val();
		        $(".right-option-area .util-inner .option-scroll ."+groupCssNm).append(dropDownUi);
		        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+") a.drop span").text(inputText);
		        if($(this).find(".drop").hasClass("disabled")) {
		            $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+") a.drop").addClass("disabled");
		        }
		        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+") a.drop").append($(input).clone());
		        var prdList = $(this).find(".dropdown-menu").clone(true);
		        $(".right-option-area .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+")").append(prdList);
		        if(dealYn == 'Y') {
		            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm).append(dropDownUi);
		            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown:eq("+index+") a.drop span").text(inputText);
		            if($(this).find(".drop").hasClass("disabled")) {
		                $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+") a.drop").addClass("disabled");
		            }
		            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown:eq("+index+") a.drop").append($(input).clone());
		            var dealPrdList = $(this).find(".dropdown-menu").clone(true);
		            $(".option-deal-wrap .util-inner .option-scroll ."+groupCssNm+" .ui-dropdown.sel-option:eq("+index+")").append(dealPrdList);
		        }
		    });
		    
		    $(".product-option-wrap:first .stock-item."+prdSelectListCss+" .pditem,.product-option-wrap:first .stock-item."+prdSelectListCss+" .temp-item").each(function( index ) {
		        var thumb = $(this).find(".product-info div.thumb").clone();
		        var pdname = null;
		        var pdoption = null;
		        var quantity = null;
		        var parentClass = "";
		        $(this).find(".product-info div.figcaption div").each(function( index ) {
		            if($(this).hasClass("pdname")) {
		                pdname = $(this).clone(true); 
		            }
		            if($(this).hasClass("pdoption")) {
		                pdoption = $(this).clone(true); 
		            }
		            if($(this).hasClass("quantity")) {
		                quantity = $(this).clone(true); 
		            }
		        });
		        
		        if($(".right-option-area .util-inner .option-scroll").find("."+prdSelectListCss).length <= 0) {
		            if($(this).hasClass("temp-item")) {
		                $(".right-option-area .util-inner .option-scroll").append('<div class="selprduct-list '+prdSelectListCss+'" style="display:none">');
		            } else {
		                $(".right-option-area .util-inner .option-scroll").append('<div class="selprduct-list '+prdSelectListCss+'">');
		            }
		        }
		        
		        var prdInfoUi = "";
		        if($(this).hasClass("temp-item")) {
		            parentClass = ".temp-item";
		            prdInfoUi = '<div class="temp-item" style="display:none"><div class="product-info"></div></div>';
		        } else {
		            parentClass = ".pditem";
		            prdInfoUi = '<div class="pditem"><div class="product-info"></div></div>';
		        }
		        $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss).append(prdInfoUi);
		
		        if(thumb.length > 0) {
		            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append(thumb);
		        }
		        if(pdname != null) {
		            if($(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").find(".figcaption").length == 0) {
		                $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append('<div class="figcaption"></div>');
		            }
		            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info .figcaption").append(pdname);
		        }
		        if(pdoption != null) {
		            if($(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").find(".figcaption").length == 0) {
		                $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append('<div class="figcaption"></div>');
		            }
		            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" .product-info .figcaption").append(pdoption);
		        }
		        if(quantity != null) {
		            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" "+parentClass).append(quantity);
		        }
		 
		        var deleteButtonUi = '<button class="btn btn-close '+prdSelectDelCss+'"><i class="icon xico"></i><span class="hiding">삭제</span></button>';
		        if(parentClass == ".temp-item") {
		            $(".right-option-area .util-inner .option-scroll ."+prdSelectListCss+" "+parentClass).append(deleteButtonUi)
		        }
		        
		        if(dealYn == 'Y') {
		            if($(".option-deal-wrap .util-inner .option-scroll").find("."+prdSelectListCss).length <= 0) {
		                if($(this).hasClass("temp-item")) {
		                    $(".option-deal-wrap .util-inner .option-scroll").append('<div class="selprduct-list '+prdSelectListCss+'" style="display:none">');
		                } else {
		                    $(".option-deal-wrap .util-inner .option-scroll").append('<div class="selprduct-list '+prdSelectListCss+'">');
		                }
		            }
		            
		            $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss).append(prdInfoUi);
		            if(thumb.length > 0) {
		                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append(thumb.clone());
		            }
		            if(pdname != null) {
		                if($(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").find(".figcaption").length == 0) {
		                    $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append('<div class="figcaption"></div>');
		                }
		                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info .figcaption").append(pdname.clone());
		            }
		            if(pdoption != null) {
		                if($(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").find(".figcaption").length == 0) {
		                    $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info").append('<div class="figcaption"></div>');
		                }
		                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" .product-info .figcaption").append(pdoption.clone());
		            }
		            if(quantity != null) {
		                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" "+parentClass).append(quantity.clone());
		            }
		            if(parentClass == ".temp-item") {
		                $(".option-deal-wrap .util-inner .option-scroll ."+prdSelectListCss+" "+parentClass).append(deleteButtonUi)
		            }
		        }
		    }); 
		}
		
		/*
		 * 탭메뉴 상단 고정
		 */
		$(window).scroll(function(e) {
		    if($(".section_tab_new").length > 0 && !isMoreDetailBtn) {
		        var tabId = $(".section_tab_new");
		        var tabTop = tabId.offset().top;
		        var tabH = tabId.height();
		        
		        if ($(window).scrollTop() >= tabTop && $(window).scrollTop() >= $("#section_cont_1").offset().top) { 
		            tabId.addClass("fixed");
		        } else {
		            tabId.removeClass("fixed");
		        }
		        
		        $(".section_tab_new li").each(function() {
		            var liThis = $(this);
		            var contId = liThis.find("a").attr("href");
		            var contTop = $(contId).offset().top - (tabH + 20);
		            
		            if ($(window).scrollTop() >= contTop) {
		                liThis.addClass("on").siblings().removeClass("on");
		            }
		        });
		    } else {
		        if(isMoreDetailBtn) {
		            setTimeout(function() {
		                isMoreDetailBtn = false;
		            }, 500);
		        }
		    }
		});
		
		/*
		 * 탭메뉴 선택시
		 */
		$(document).on('click', '.section_tab_new li', function(e) {
		    var tabId = $(".section_tab_new");
		    var tabTop = tabId.offset().top;
		    var tabH = tabId.height();
		    var liThis = $(this);
		    var contId = liThis.find("a").attr("href");
		    var contTop = $(contId).offset().top - (tabH + 10);
		    
		    e.preventDefault();
		    $("body, html").animate({scrollTop: contTop}, 300);
		    $(".setion_cont_new").css("padding-top", "30px");
		    $(liThis).addClass("on").siblings().removeClass("on");
		    isMoreDetailBtn = true;
		    $(".section_tab_new").addClass("fixed");
		    setBizSpring(contId);
		});
		
		/*
		 * 상품상세 더보기 버튼
		 */
		$(document).on('click', '.more_detail_view', function(e) {
		    var viewH = $(".prod_detail_view").height();
		    var conH = $(".view_cont").height();
		    var wrapH = $("#section_cont_1").height();
		    var totalH = wrapH + conH - 595;
		
		    $(this).toggleClass("open");
		    $(".prod_detail_view").toggleClass("open");
		
		    if($(this).hasClass("open")){
		        $(this).find("span").text("상품상세 접기")
		        $(".prod_detail_view").addClass("open");
		        $(".prod_detail_view").css("height","");
		        $("#section_cont_1").css("height","");
		    }else{
		        $(this).find("span").text("상품상세 더보기")
		        $(".prod_detail_view").removeClass("open");
		        $(".prod_detail_view").css("height","650");
		        $("#section_cont_1").css("height","");
		        $("body,html").animate({scrollTop: ($(".more_detail_view").offset().top - 300)}, 0);
		    }
		    setBizSpring("detailMore");
		    isMoreDetailBtn = true;
		});
		
		
		
		$(document).on('click', '.detail-box .atext', function(){
			goDecl(this)
		    .then((res) => {
		    	const [declCnt, slitmCd, itemEvalComtNo] = res;
		    	return noShowEval(declCnt, slitmCd, itemEvalComtNo );
		    }).then((res) => {
		    	//console.log("res", res);
		    }).catch((e) => {
		    	//console.log("e", e);
		    })
		});
		 
		 
		/*
		 * 상품 코드 복사
		 */
		function copySlitmCd(slitmCd) {
		    
		    if(document.all) {
		        window.clipboardData.setData("Text", slitmCd);
		        alert('해당 상품 코드가 클립보드에\n복사되었습니다.\n\Ctrl + V 또는 붙여넣기를 통해\n사용하실 수 있습니다.');
		    } else {
		        temp = prompt("Ctrl + C를 눌러 클립보드로 복사하세요", slitmCd);
		    }
		}
		
		/*
		 * 단축URL
		 */
		function copyShortenUrl(slitmCd) {
		    
			GA_Event("상품상세", "공유하기_URL 복사", "");
			
		    var shortenUrl = "http://hmall.com/?i" + slitmCd;
		     
		    if(document.all) {
		        window.clipboardData.setData("Text", shortenUrl);
		        alert('해당 상품 단축URL이 클립보드에\n복사되었습니다.\n\Ctrl + V 또는 붙여넣기를 통해\n사용하실 수 있습니다.');
		    } else {
		        temp = prompt("Ctrl + C를 눌러 클립보드로 복사하세요", shortenUrl);
		    }
		}
		
		/*
		 * qrcode
		 */
		function qrCode() {
		    
		    $("#qrCodeWrap").html('');
		    $("#qrCodeWrap").append('<img name="imgQR" src="/p/pda/qrCode.do?width=111&height=111&detailUrl=http%3A%2F%2Fhmall.kr%2F%3Fi2135294542" alt="QR코드"/>');
		    $("#qrCodeWrap").toggle();
		}
		
		/*
		 * 상품평 기본정보 qna 셀박 선택시
		 */
		$(document).on("click", ".prod_select_wrap .prod_select_value a", function(e) {
		    var select_option = $(this);
		    var select_list = $(this).next();
		
		    if($(select_list).is(':visible') == false ) {
		        $(this).find(".opt").addClass("choice");
		        $(select_list).show();
		        try {
		            selectScrollNameWidth();
		        } catch (e) {}
		    } else {
		        $(this).find(".opt").removeClass("choice");
		        $(select_list).hide();
		    }
		});
		
		/*
		 * 상품평 기본정보 qna 셀박 리스트 선택시
		 */
		$(document).on("click", ".select_scroll li", function(e) {
		    var select_list = $(this).closest(".select_scroll");
		
		    if($(select_list).is(':visible') == false ) {
		        $(this).find(".opt").addClass("choice");
		        $(select_list).show();
		    } else {
		        $(this).find(".opt").removeClass("choice");
		        $(select_list).hide();
		    }
		});
		
		/*
		 * 상세설명,상품평,Q&A,기본정보 셀박 마우스 벗어날때
		 */
		$(document).on("mouseleave", ".prod_select_wrap", function(e) {
		    if($(this).find(".select_scroll").css("display") != "none") {
		        $(this).find(".select_scroll").hide();
		        $(this).find(".opt ").removeClass("choice");
		    }
		});
		
		/*
		 * 총 수량을 반환한다 
		 */
		function fn_calTotalQty(pTotalQty, orgSlitmCd, obj) {
		    var totalQty = pTotalQty;
		    $(obj).each(function() {
		    	totalQty = totalQty +  Number($(this).find("input[name=ordQty]").val());
		    });
		    
		    return totalQty;
		}
		
		/*
		 * 수량 input 변경
		 */
		function changeOrdQty(obj, limitCnt) {
		    var targetObj = $(obj).closest(".inplabel");
		    var ordQty = $(obj).val();
		    var orgSlitmCd = "";
		    var sellPrc = $("input[name='sellPrc']").val();
		    var obj2 = "";
		    var obj3 = "";
		    var parentObj = "";
		    var parentObj = "";
		    if($(obj).closest(".product-option-wrap").length > 0) {
		        parentObj = $(".product-option-wrap .select-product-list .pditem");
		    } else if($(obj).closest(".right-option-area").length > 0) {
		        parentObj = $(".right-option-area .select-product-list .pditem");
		    } else if($(obj).closest(".option-deal-wrap").length > 0) {
		        parentObj = $(".option-deal-wrap .select-product-list .pditem");
		    }
		    var selIndex = Number($(parentObj).index($(obj).closest(".pditem")));
		    
		    if(isEmpty(limitCnt)) {
		        limitCnt = 99;
		    }
		
		    var totalQty = fn_calTotalQty(0, orgSlitmCd, parentObj);
		
		
		    var prc = Number(sellPrc) * (ordQty);
		    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
		    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
		    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
		    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
		    if(dealYn == 'Y') {
		        $(".option-deal-wrap .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
		        $(".option-deal-wrap .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
		    }
		
		    calcSellPrc();
		}
		
		/*
		 * 속성 수량 더하기
		 */
		function plusOrdQty(obj, limitCnt) {
		    var thisIdx = $(obj).parents(".pditem").index();
		    var targetObj = $(obj).closest(".count");
		    var ordQty = Number($(targetObj).find("input[name=ordQty]").val());
		    var orgSlitmCd = "";
		    var sellPrc = $("input[name='sellPrc']").val();
		    
		    if(isEmpty(limitCnt)) {
		        limitCnt = 99;
		    }
		    
		    var parentObj = "";
		    if($(obj).closest(".product-option-wrap").length > 0) {
		        parentObj = $(".product-option-wrap .select-product-list .pditem");
		    } else if($(obj).closest(".right-option-area").length > 0) {
		        parentObj = $(".right-option-area .select-product-list .pditem");
		    } else if($(obj).closest(".option-deal-wrap").length > 0) {
		        parentObj = $(".option-deal-wrap .select-product-list .pditem");
		    }
		        
		    var totalQty = fn_calTotalQty(0, orgSlitmCd, parentObj);
		    if(totalQty >= limitCnt) {
		        alert("본상품은 " + limitCnt + "개 이상 주문할 수 없습니다.");
		        return false;
		    }
		
		    var prc = Number(sellPrc) * (ordQty + 1);
		
		    changeQty(obj, prc, ordQty + 1);
		    
		    calcSellPrc();
		}
		
		/*
		 * 수량 변경 공통
		 */
		function changeQty(obj, prc, ordQty) {
		    var parentObj = "";
		    if($(obj).closest(".product-option-wrap").length > 0) {
		        parentObj = $(".product-option-wrap .select-product-list .pditem");
		    } else if($(obj).closest(".right-option-area").length > 0) {
		        parentObj = $(".right-option-area .select-product-list .pditem");
		    } else if($(obj).closest(".option-deal-wrap").length > 0) {
		        parentObj = $(".option-deal-wrap .select-product-list .pditem");
		    }
		    
		    var selIndex = Number($(parentObj).index($(obj).closest(".pditem")));
		    
		    var targetObj = $(obj).closest(".count");
		    var copyBasketObj = $(targetObj).closest(".pditem");
		    $(copyBasketObj).find(".pdprice em").text(gfn_appendComma(prc));
		    $(copyBasketObj).find("input[name=ordQty]").val(ordQty);
		
		    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
		    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find(".pdprice em").text(gfn_appendComma(prc));
		
		    $(".product-option-wrap .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
		    $(".right-option-area .select-product-list .pditem:eq("+selIndex+")").find("input[name=ordQty]").val(ordQty);
		}
		
		
		/*
		 * 속성 수량  빼기
		 */
		function minusOrdQty(obj, limitCnt) {
		    var thisAreaIdx = $(obj).data("area-id");
		    var thisCssHeader = ".product-option-wrap";
		    var otherCssHeader = ".option-scroll";
		
		    if($(obj).closest(".option-scroll").length > 0) {
		        thisAreaIdx = "2";
		        thisCssHeader = ".option-scroll";
		        otherCssHeader = ".product-option-wrap";
		    }
		
		    var thisIdx = $(obj).parents(".pditem").index();
		    var anotherObj = $(otherCssHeader+" .select-product-list .btn.btn-plus:eq("+thisIdx+")");
		    
		    var targetObj = $(obj).closest(".count");
		    var ordQty = Number($(targetObj).find("input[name=ordQty]").val());
		    var orgSlitmCd = "";
		    var sellPrc = $("input[name='sellPrc']").val();
		
		    if(isEmpty(limitCnt)) {
		        limitCnt = 99;
		    }
		    
		    var parentObj = "";
		    if($(obj).closest(".product-option-wrap").length > 0) {
		        parentObj = $(".product-option-wrap .select-product-list .pditem");
		    } else if($(obj).closest(".right_group").length > 0) {
		        parentObj = $("#layer_popup .right_group .selResultInfo .copyBasket");
		    } else if($(obj).closest(".left_side").length > 0) {
		        parentObj = $(".handiness .left_side .selResultInfo .copyBasket");
		    }
		        
		    var totalQty = fn_calTotalQty(0, orgSlitmCd, parentObj);
		
		    if(ordQty <= 1) {
		        return false;
		    }
		    
		    var prc = Number(sellPrc) * (ordQty - 1);
		
		    changeQty(obj, prc, ordQty - 1);
		
		    calcSellPrc();
		}
		
		/*
		 * 속성/추가구성 추가에 따른 가격 계산
		 */
		function calcSellPrc() {
		    
		    var totSellPrc = 0;
		    var isMultiUitm = false;
		    var isMultiCmps = false;
		    var targetCssHeader=".product-option-wrap:first"; 
		    if(dealYn == "Y") {
		        $(targetCssHeader+" .select-product-list .pditem").each(function() {
		            var sellPrc = removeComma($(this).find(".pdprice em").text());
		            if($.isNumeric(sellPrc)) {
		                totSellPrc += Number(sellPrc);
		            }
		        });
		    } else {
		            if($(targetCssHeader+" .sel-option .item-box-list a").length > 1) isMultiUitm = true;
		            if($(targetCssHeader+" .ui-dropdown-more-group .item-box-list a").length > 0) isMultiCmps = true;
		        
		        var itemtype = 'GENERAL';
		        var isFreeIns = itemtype == 'FREEINSURANCE' ? true : false;
		    	
		        if(isMultiUitm) {
		            $(targetCssHeader+" .select-product-list .pditem").each(function() {
		                var sellPrc = removeComma($(this).find(".pdprice em").text());
		                if($.isNumeric(sellPrc)) {
		                    totSellPrc += Number(sellPrc);
		                }
		            });
		        }else if(isFreeIns){
		        	totSellPrc = 0;
		        }else {  // 속성이 존재하지 않는 경우
		            var sellPrc = $("input[name='sellPrc']").val();
		            var ordQty = $(targetCssHeader+" .select-product-list .pditem input[name='ordQty']").val();
		            if($.isNumeric(sellPrc) && $.isNumeric(ordQty)) {
		                totSellPrc = Number(sellPrc * ordQty);
		            }
		        }
		        // 추가구성품
		        if (isMultiCmps) {
		            $(targetCssHeader+" .select-product-add-list .pditem").each(function() {
		                var sellPrc = removeComma($(this).find(".pdprice em").text());
		                if($.isNumeric(sellPrc)) {
		                    totSellPrc += Number(sellPrc);
		                }
		            });
		        }
		    }
		
		    //$(".sumPrice .sum.total span").text(gfn_appendComma(totSellPrc));
		    $(".sum-price .total-price strong").text(gfn_appendComma(totSellPrc));
		
		    $(".total-wrap .total-price ins em").text(gfn_appendComma(totSellPrc));
		    
		    /* 무조건 총 상품금액 노출되도록 변경 */
		    //$(".sumPrice.notLayer").show();
		    //$(".sumPrice.notLayer .sumPrcArea").show();
		    $(".sum-price").show();
		    return totSellPrc;
		}
		
		function comma(num)
		{
		    var len,point,str;
		    
		    num = num + "";
		    point = num.length %3;
		    len  = num.length;
		    
		    str = num.substring(0, point);
		    while(point < len)
		    {
		        if(str != "") str += ",";
		        str += num.substring(point, point + 3);
		        point += 3;
		    }
		    return str;
		}
		
		function getChar(num, pos) {
		    var numStr = num + "";
		    var rVal = "";
		
		    if (pos == 1) {
		        if (numStr.length > 1) {
		            rVal = numStr.substring(0, 1);
		        } else {
		            rVal = "0";
		        }
		    } else {
		        if (numStr.length > 1) {
		            rVal = numStr.substring(1, 2);
		        } else {
		            rVal = numStr;
		        }
		    }
		
		    return rVal;
		}
		
		
		// 장바구니 추가 함수(박주영)
		function addBasket() {
			var ordQty = $('input[name=ordQty]').val();
			$('input[name=amount]').attr('value', ordQty);
			
			document.basketForm.action = "HmallServlet?command=basket_insert";
			document.basketForm.submit();
		}
	</script>
	
</head>

<body>
	<div class="wrap product-detail">
		<!-- 페이지 header (박주영) -->
		<%@ include file="../header.jsp"%>
		
		
		<main class="cmain main" role="main" id="mainContents">
			<!-- 메인페이지 'main' 클래스 추가 -->
			<div class="container">
				<!-- 로케이션 메뉴 시작 -->
				<!-- .location -->
				<div class="location">
					<!-- .location-menu -->
					<ul class="location-menu" data-modules-menus="">

						<li data-menu="" class="home"><a href="https://www.hmall.com">홈</a></li>

						<!-- 로케이션정보 -->
						<li data-menu="" class=""><a
							href="HmallServlet?command=categoryTop&cCode=${ parentCategoryVO.categoryCode }"
							class="cate">${ parentCategoryVO.categoryName }</a>

							<div class="category-wrap" data-submenu="">
								<ul class="category-list">
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A01B01">여성의류</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A01B02">남성의류</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A01B03">캐주얼의류</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A01B04">언더웨어</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A02B01">가방/지갑</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A02B02">신발</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A02B03">패션소품/ACC</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A02B04">명품</a></li>
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

								</ul>
								<ul class="category-list">
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A04B06">기타
											ACC</a></li>
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
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A06B01">임신/출산</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A06B02">기저귀/물티슈</a></li>
								</ul>

								<ul class="category-list">


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
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A08B01">세제/세정/탈취제</a></li>
									<li><a href=HmallServlet?command=categoryTop&cCode=A08B02>바디/헤어/구강</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A08B03">휴지/생리대/마스크</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A08B04">수납/청소/생활잡화</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A08B05">건강관리/안마/실버</a></li>

								</ul>
								<ul class="category-list">
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

								</ul>
								<ul class="category-list">

									<li><a
										href="HmallServlet?command=categoryTop&cCode=A10B06">침구</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A10B07">커튼/카페트</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A10B08">인테리어소품</a></li>
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
										href="HmallServlet?command=categoryTop&cCode=A11B08">리퍼 가전</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A12B01">반려동물(H펫샵)</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A13B01">여행/숙박</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A13B02">서비스/e쿠폰/상품권</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A13B03">도서/음반</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A13B04">원예/꽃배달</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A14B01">렌탈</a></li>
									<li><a
										href="HmallServlet?command=categoryTop&cCode=A14B02">보험/상조</a></li>
								</ul>


							</div></li>


						<!-- 로케이션 소분류 (박주영)-->
						<!-- DB에서 중분류 카테고리의 하위 카테고리 리스트를 가져와서 띄움 -->
						<li data-menu="" class=""><a
							href="HmallServlet?command=category&cCode=${ categoryVO.categoryCode }"
							class="cate"> ${ categoryVO.categoryName }</a>
							<div class="category-wrap" data-submenu="" style="">
								<ul class="category-list">
									<!-- 카테고리 리스트마다 url 넣어줌 -->
									<c:forEach var="category" items="${ categoryList }">
										<li><a
											href="HmallServlet?command=category&cCode=${ category.categoryCode }">${ category.categoryName }</a></li>
									</c:forEach>
								</ul>
							</div></li>
							<!-- //로케이션 소분류 -->	
						<!-- //로케이션정보 -->

					</ul>
					<!-- // .location-menu -->
				</div>
				<!-- //.location -->
				<!-- //로케이션 메뉴 끝 -->
				
				<!-- contents -->
				<div class="contents">
					<!-- 본문 컨텐츠 영역 -->
					<div class="product-detail-wrap">
						<!-- pdr_wrap -->
						<div class="pdr_wrap">
							<div class="product-info-wrap">
								<!-- 좌측메뉴 -->
								<div class="left-info">
									<!-- 상품 이미지 영역 -->
									<div class="product-banner-wrap">
										<div data-modules-imageviewer>
											<div
												class="product-mainbanner slick-initialized slick-slider isArrows"
												data-modules-slick="draggable:false; dots:false; infinite:true; 
						                 thumbnaiList:.slider-thumbnaii;thumbnailsToShow:5;">
												<button class="slick-prev slick-arrow" aria-label="Previous"
													type="button" style="">Previous</button>
												<div class="slick-list">
													<div class="slick-track"
														style="opacity: 1; width: 4160px; transform: translate(-520px, 0px);">
														<div class="slick-slide slick-cloned"
															data-slick-index="-1" aria-hidden="true"
															style="width: 520px;" tabindex="-1">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="product_images/${ productVO.productImg }.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')"
																		tabindex="-1"><img
																		src="http://image.hmall.com/static/3/7/31/37/2137317374_5.jpg?RS=520x520&amp;AR=0"
																		alt="2137317374_5.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')"></a>
																</div>
															</div>
														</div>
														<div class="slick-slide slick-current slick-active"
															data-slick-index="0" aria-hidden="false"
															style="width: 520px;">
															<div>
																<div class="item" data-item=""
																	data-outputsrc="product_images/${ productVO.productImg }.jpg?RS=1400x1400&amp;AR=0"
																	onerror="this.src='https://image.hmall.com/hmall/pd/no_image_600x600.jpg'"
																	style="width: 100%; display: inline-block; vertical-align: top;">
																	<a href="javascript:;"
																		onclick="goGaEvent('상품상세','상단_이미지확대','')" tabindex="0">
																		<img
																		src="product_images/${ productVO.productImg }.jpg"
																		alt="2137317374_0.jpg"
																		onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=520x520&amp;AR=0')">
																	</a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<button class="slick-next slick-arrow" aria-label="Next"
													type="button" style="">Next</button>
											</div>
											<div class="ui-angle"
												style="display: none; width: 260px; height: 260px; top: 0px; left: 260px;"></div>
										</div>
										<div class="slider-thumbnaii ">
											<ul>
												<li class="ui-thumbnaii ui-active"><a
													href="javascript:;"
													onclick="GA_Event('상품상세','상단_이미지확대','');" draggable="false">
														<img
														src="product_images/${ productVO.productImg }.jpg?RS=100x100&amp;AR=0"
														alt="2137317374_0.jpg"
														onerror="noImage(this, 'http://image.hmall.com/p/img/co/noimg-thumb.png?RS=100x100&amp;AR=0')">
												</a></li>
											</ul>
										</div>
									</div>
									<!-- // 상품 이미지 영역 -->
									<!-- 상품정보 (박주영)-->
									<div class="customer-use-wrap">
										<div class="customer-use-info">
											<!-- 상품코드 DB에서 가져오기 (박주영)-->
											<div class="product-code">
												<span class="code-number">상품코드 : ${ productVO.productCode }
												</span> <a href="javascript:;" class="code-copy"
													onclick="copySlitmCd('${ productVO.productCode }');">복사하기</a>
											</div>
											<!-- // 상품코드 -->
											<!-- SNS Link -->
											<div class="sns-link">
												<ul>
													<li><a href="javascript:;" class="url"
														onclick="copyShortenUrl('${ productVO.productCode }');"><i
															class="icon url-circle"></i></a></li>
													<li><a href="javascript:;" class="qrcode"
														onclick="qrCode()"><i class="icon qr-circle"></i></a></li>
													<li><a href="#tooltipInfo" class="tooltip"
														data-modules-tooltip=""><i class="icon que-mark"></i></a></li>
													<div class="qrCodeWrap" id="qrCodeWrap"
														style="position: absolute; right: 0px; top: -123px; display: none; border: 1px solid #fd5a3b; z-index: 110;"></div>
												</ul>
												<div class="tooltip-box" id="tooltipInfo">
													<dl>
														<dt>단축URL이란?</dt>
														<dd>기존의 긴 URL 대신 20 ~ 30자(byte)의 짧은 주소로 표현된 URL입니다.
															좌측의 단축URL버튼을 클릭하시면, 해당 단축URL이 클립보드에 복사되오니, 다른 사이트 게시판이나
															트위터 등에서 붙여넣기 하시면 됩니다.</dd>
														<dt>QR코드란?</dt>
														<dd>좌측의 QR코드를 클릭하면, 정사각형 모양의 QR코드가 나타납니다. 이를 스마트폰의
															QR코드스캔용 프로그램(ex. Hsearch)으로 인식하시면, 손쉽게 문자나 이메일을 통해 지인에게
															추천하거나, 모바일 현대Hmall을 통해서도 쇼핑하실 수 있습니다.</dd>
													</dl>
													<button class="btn-close">
														<i class="icon"></i> <span class="hiding">닫기</span>
													</button>
												</div>
												<!--//tooltip-box-->
												<iframe id="logchk_frame" title="웹로그체크용빈프레임" src=""
													style="position: absolute; top: -9999px; left: -9999px"></iframe>
											</div>
											<!-- // SNS Link -->
										</div>
									</div>
									<!-- // 상품정보 -->
								</div>
								<!-- // 좌측메뉴 -->

								<!-- 우측메뉴 -->
								<div class="right-info">
									<div data-viewercontent>
										<p class="guide-txt">마우스 휠을 움직이면 상품 이미지를 더욱 상세히 보실 수 있습니다.</p>
									</div>
									<!-- input type="hidden"으로 필요한 정보 setting (박주영) -->
									<form id="itemInfForm" name="itemInfForm" action="#"
										method="post">
										<input type="hidden" name="slitmCd"
											value="${ productVO.productCode }" /> <input type="hidden"
											name="packOpenRtpNdmtYn" value="N" /> <input type="hidden"
											name="ordMakeYn" value="N" /> <input type="hidden"
											name="ordMakeExcldMCsfYn" value="N" /> <input type="hidden"
											name="bsitmCd" value="${ productVO.productCode }" /> <input
											type="hidden" name="sellPrc"
											value=${ productVO.discountPrice } />
									</form>
									<!-- 상품 기본 정보 (박주영) -->
									<div class="basic-info">
										<div class="prduct-title-info">
											<p class="prd-promotion">${ productVO.brand }</p>
											<strong class="prduct-name"> ${ productVO.productName }
											</strong>
										</div>
										<div class="pdprice">
											<span class="rateprice" aria-label="할인율이 적용된 가격"> <em
												class="rate" aria-label="할인율">
												<!-- 정가와 할인가격으로 할인율을 구한 뒤 반올림하여 표기 (박주영)  --> 
												${ Math.round((productVO.price - productVO.discountPrice) / productVO.price * 100) }%
											</em>
												<!-- 정가와 할인가 JSTL format을 이용하여 1000단위로 콤마(,)찍어 표기 (박주영) -->
												<p class="discount" aria-label="할인가">
													<em> <fmt:formatNumber
															value="${ productVO.discountPrice }" pattern="#,###" />
													</em><b>원</b>
												</p> <del class="normal">
													<fmt:formatNumber value="${ productVO.price }"
														pattern="#,###" />
												</del> 원
											</span>
										</div>
									</div>
									<!-- // 상품 기본 정보 -->
									<!-- 구매 혜택 -->
									<div class="pdprice-info">
										<dl class="baroOnOff" id="crdImdDlTagTmp">
											<dt>즉시할인가</dt>
											<dd>
												<p>
													<strong>[모바일 구매혜택]</strong>
												</p>
												<p>
													<fmt:formatNumber
														value="${ productVO.discountPrice * 0.95 }"
														pattern="#,###" />
													원 5% 삼성카드 (10,000원↑)
												</p>
											</dd>
										</dl>
										<dl>
											<dt>무이자할부</dt>
											<dd>
												<p>카드 무이자 특별행사 안내</p>
											</dd>
										</dl>
										<dl>
											<dt>카드추가 혜택</dt>
											<dd>
												<p>
													<strong>현대홈쇼핑 현대카드</strong>
												</p>
											</dd>
										</dl>
									</div>
									<!-- // 구매 혜택 -->
									<!-- 배송 정보 -->
									<div class="delivery-info">
										<dl>
											<dt>배송정보</dt>
											<dd class="deliver-save">
												<p>
													<strong>무료배송</strong>
												</p>
											</dd>
											<dd>	
												<!-- 택배사 DB에서 불러와 표기 (박주영) -->
												<strong>${ productVO.deliveryCompany }</strong>
											</dd>
										</dl>
									</div>
									<!-- // 배송 정보 -->
									<!-- 수량 선택 -->
									<div class="product-option-wrap">
										<div class="stock-item select-product-list" style>
											<div class="pditem">
												<div class="product-info">
													<div class="thumb">
														<!-- DB에서 상품 이미지 불러와 로컬 폴더에서 찾아서 띄움 (박주영) -->
														<img
															src="product_images/${ productVO.productImg }.jpg?RS=1400x1400&amp;AR=0" />
													</div>
													<div class="figcaption">
														<div class="pdname" aria-label="제품명">${ productVO.productName }</div>
														<div class="quantity">
															<div class="count">
																<!-- 마이너스 누르면 수량 감소 (박주영) -->
																<button class="btn btn-minus" data-area-id="1"
																	aria-label="수량 감소" onclick="minusOrdQty(this);">
																	<i class="icon"></i> <span class="hiding">감소</span>
																</button>
																<div class="inputbox">
																	<label class="inplabel"> <input type="text"
																		data-area-id="1" name="ordQty" class="amount"
																		onkeyup="changeOrdQty(this,'')" value="1"
																		maxlength="3">
																	</label>
																</div>
																<!-- 플러스 누르면 수량 감소 (박주영) -->
																<button class="btn btn-plus" data-area-id="1"
																	aria-label="수량 증가" onclick="plusOrdQty(this);">
																	<i class="icon"></i> <span class="hiding">증가</span>
																</button>
															</div>
															<div class="pdprice">
																<ins aria-label="가격">
																	<em><fmt:formatNumber
																			value="${ productVO.discountPrice }" pattern="#,###" /></em>
																	<b>원</b>
																</ins>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- // 수량 선택 -->
									<!-- 총 상품 금액 -->
									<div class="sum-price" style>
										<div class="sum-title">
											<strong> 총 상품 금액 <a href="#tooltipCont3"
												data-modules-tooltip="" class=""> <i
													class="icon que-mark"></i>
											</a>
											</strong>
											<div class="tooltip-box" id="tooltipCont3">
												<p class="txt">
													선택하실 수 있는 할인혜택이 모두 적용된 금액입니다.<br>배송비가 포함이 되어 있지 않은
													금액으로, 결제시 배송비가 추가될 수 있습니다.
												</p>
												<button class="btn-close">
													<i class="icon"></i> <span class="hiding">닫기</span>
												</button>
											</div>
										</div>
										<div class="price-wrap">
											<p class="total-price">
												<strong> ${ productVO.discountPrice }</strong> 원
											</p>
										</div>
									</div>
									<div class="btngroup prdBtnBoxGroup type00"></div>
									<!-- // 총 상품 금액 -->
									<!-- 버튼 그룹 -->
									<form method="post" name="basketForm">
									<div
										class="btngroup prdBtnBoxGroup pd_shipping_type_nomral type04">
										<button class="btn btn-linelgray large btn-like"
											onclick="location.href='do_not.html';">
											<i class="icon"></i> <span class="count">0</span>
										</button>
										
										<!-- 장바구니 추가 구현 (박주영) -->
										<!-- 장바구니 버튼 누르면 basket에 insert되는 action으로 이동하는 함수 호출 -->
										<input type="hidden" name="pCode" value="${productVO.productCode}">
										<input type="hidden" name="amount" value="1">
										<button class="btn btn-linelgray large btn-cart" 
										onclick="addBasket();"><span>장바구니</span></button>
											
										
										<button class="btn btn-linelgray large btn-gift"
											onclick="location.href='do_not.html';">
											<span>선물하기</span>
										</button>
										<button class="btn btn-default large btn-buy"
											onclick="location.href='do_not.html';">
											<span>바로구매</span>
										</button>
									</div>
									</form>
									<!-- // 버튼 그룹 -->
								</div>
								<!-- // 우측메뉴 -->
							</div>
						</div>
						<!-- // pdr_wrap -->
						
						<!-- product-detail-content -->
						<div class="product-detail-content">
							<!-- scrollspy-wrap -->
							<div class="scrollspy-wrap">
								<!-- scrollspy-tab -->
								<div class="scroll-observer"></div>
								<!-- TODO: 스크롤이 넘어가면 class에 fixed가 추가됨 -->
								<div class="scrollspy-tab" data-modules-scrollspy="padding:103"
									style="height: 64px;">
									<div class="inner">
										<ul class="nav-tabs ui-spynav" role="tablist"
											style="margin-top: -1px;">
											<li role="presentation" class="ui-active"><a
												href="#viewPage01" class="gp_className" ga-category="상품상세"
												ga-action="탭" ga-label="상세설명"><span>상세설명</span></a></li>
											<!-- class="ui-actiove"시 현재페이지 보여줌 -->
											<li role="presentation" class=""><a href="#viewPage02"
												class="gp_className" ga-category="상품상세" ga-action="탭"
												ga-label="기본정보"><span>기본정보</span></a></li>
											<li role="presentation" class=""><a href="#viewPage03"
												class="gp_className" ga-category="상품상세" ga-action="탭"
												ga-label="상품평"><span>상품평<em>0</em></span></a></li>
											<li role="presentation" class=""><a href="#viewPage04"
												class="gp_className" ga-category="상품상세" ga-action="탭"
												ga-label="Q&amp;A"><span>Q&amp;A<em>0</em></span></a></li>
										</ul>
									</div>
								</div>
								<!-- // scrollspy-tab -->
								<!-- 상세설명 탭 -->
								<div class="pages page1" id="viewPage01">
									<!-- content-area -->
									<div class="content-area"></div>
									<div class="content-area product-detail-view open">
										<div class="view-cont">
											<!-- 상품 상세설명 -->
											<div class="mt25" style="overflow: hidden" id="guidance">
												<table width="100%" summary="제품설명입니다">
													<caption>제품설명</caption>
													<colgroup>
														<col width="">
													</colgroup>
													<thead>
														<tr>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>
																<!-- 상품 상세 이미지 출력 (박주영) -->
																<!-- product_code로 product_image 테이블에서 이미지들을 가져옴 -->
																<c:forEach var="img"
																	items="${ productImageVO.imgs }">
																	<img src="product_images/${ img }.jpg" />
																</c:forEach>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<!-- 결제정보 -->
											<div class="content-area">
												<div class="cnt-txt">
													<h3>결제 정보</h3>
													<p>주문 후 확인과정에서 카드 도난, 카드 도용, 상업적 재판매 등 비정상적인 주문의 우려가
														있다고 판단되는 경우에는 임의로 배송이 보류되거나, 주문이 취소될 수 있습니다.</p>
												</div>
											</div>
											<!-- 반품 배송비 안내 -->
											<div class="content-area">
												<div class="cnt-txt">
													<h3>반품/배송비 안내</h3>
													<p>이 상품의 반품/교환 시 배송비는 고객님께서 부담하셔야 하며 (단, 상품 하자로 인한
														반품/교환 시 제외) 상품이 발송된 이후 주문취소를 요청하실 경우 고객님께 반품 배송비가 부과될 수
														있습니다.</p>
												</div>
											</div>
										</div>
									</div>
									<!-- // content-area -->
								</div>
								<!-- // 상세설명 탭 -->
								<!-- 기본정보 탭 -->
								<div class="pages page2" id="viewPage02">
									<!-- content-area // 상품정보 -->
									<div class="content-area">
										<div class="tblwrap">
											<table>
												<caption>상품필수정보및인증정보</caption>
												<colgroup>
													<col style="width: 220px">
													<col style="width: auto">
												</colgroup>
												<!-- 상품 관련 정보들 DB에서 받아와 출력 (박주영) -->
												<tbody>
													<tr>
														<th scope="row" class="txt-left">상품코드</th>
														<td>${ productVO.productCode }</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">상품명</th>
														<td>${ productVO.productName }</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">가격</th>
														<td><fmt:formatNumber
																value="${ productVO.discountPrice }" pattern="#,###" />원</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">배송비</th>
														<td>무료</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">택배사</th>
														<td>${ productVO.deliveryCompany }</td>
													</tr>
													<tr>
														<th scope="row" class="txt-left">반품/교환</th>
														<td>상품확인 후 환불 / 반품관련배송비 : 5,000원 / 교환관련배송비 : 5,000원</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!-- // content-area // 상품정보 -->
									<!-- content-area / 유의사항 -->
									<div class="content-area">
										<div class="accparent">
											<h3 class="selected">
												<button onclick="GA_Event('상품상세','기본정보','배송/교환/환불/AS/유의사항')"
													data-modules-collapse="parent:.accparent;"
													class="accordion-trigger" aria-expanded="false">
													<i class="icon question"></i> <span>배송/교환/환불/AS/유의사항</span>
													<i class="icon acc-arrow"></i>
												</button>
											</h3>
											<div class="accordion-panel basic basic-txt02 selected"
												role="basic-txt02" aria-label="배송/교환/환불/AS/유의사항">
												<div class="txt-info">
													<p>
														<strong>전자상거래 소비자보호에 관한 법률에 의한 반품/교환 규정이 상품공급업체가
															지정한 반품/교환 조건보다 우선합니다.</strong>
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙배송소요일</strong><br>&nbsp; · 결제 완료일
														다음날로부터&nbsp; 2 ~ 7일(토요일/공휴일 제외, 도서지역 4~8일)<br>&nbsp;
														· 설치 및 주문제작상품 : 5일~15일(엄지펀딩 상품의 경우 최장 90일, 토요일/공휴일 제외)
													</p>
													<p>
														&nbsp; · 본 상품은 협력사 사정에 따라 주문 후 "품절"이 발생 될 수 있으며, 이 경우 즉시
														연락을 드려 환불해<br>&nbsp;&nbsp;&nbsp; 드리겠으니, 이 점 양해
														바랍니다.&nbsp;
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙교환/반품/취소</strong><br>&nbsp; · 상품을 인도 받은 날로부터
														7일 이내에 당해 계약에 관한 청약철회(반품) 가능합니다.<br>&nbsp;&nbsp;&nbsp;
														상품명 주변에 [TV쇼핑]이 표시된 상품은 상품 인도일 이후 30일 <br>&nbsp;&nbsp;&nbsp;
														(의류,보석,핸드백,슈즈,선글라스는 15일,농산물 수산물 축산물 등 신선식품:7일) 이내 청약 철회 가능
													</p>
													<p>
														<span style="FONT-SIZE: 10pt" ar-sa?=""
															mso-bidi-language:="" ko;="" mso-fareast-language:=""
															en-us;="" mso-ansi-language:="" minor-bidi;=""
															mso-bidi-theme-font:="" roman\?;="" new="" \?times=""
															mso-bidi-font-family:="" minor-latin;=""
															mso-hansi-theme-font:="" minor-fareast;=""
															mso-fareast-theme-font:="" mso-ascii-theme-font:=""
															11.0pt;="" mso-bidi-font-size:=""
															115%;="" line-height:="" red;="" color:="" 고딕\?;="" 맑은=""><span
															style="COLOR: #123456">&nbsp;&nbsp;&nbsp; ※ <span
																style="FONT-SIZE: 10pt; FONT-FAMILY: &amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; 맑은 고딕&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; COLOR: red; LINE-HEIGHT: 115%; mso-bidi-font-size: 11.0pt; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot; Times New Roman&amp;amp; amp; amp; amp; amp; amp; amp; amp; amp; amp; quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: KO; mso-bidi-language: AR-SA"><span
																	style="COLOR: #123456">단</span><span lang="EN-US"
																	style="COLOR: #123456">, </span><span
																	style="COLOR: #123456">식품의 경우</span><span lang="EN-US"
																	style="COLOR: #123456">, </span><span
																	style="COLOR: #123456">상품 출고 이후 상품의 변질 및 유통기간 단축
																		등으로 인해 재판매가 어려운 경우는 교환</span><span lang="EN-US"
																	style="COLOR: #123456">/</span><span
																	style="COLOR: #123456">반품이 불가할 수 있습니다</span><span
																	lang="EN-US" style="COLOR: #123456">.</span></span></span></span>&nbsp;<br>&nbsp;
														· 교환시, 교환 상품이 도착 한 후에 상품을 배송해드립니다. <br>&nbsp; · 반품시,
														반품 상품이 도착 한 후에 결제가 취소됩니다.<br>&nbsp; · 일부상품은 고객변심에 의한
														반품/교환시 배송비 고객부담(상품설명에 명시된 상품)<br>&nbsp; · 교환/반품/취소신청
														방법:인터넷 주문/배송조회
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙교환/반품 불가사유(상품하자시 제외)</strong><br>&nbsp;·
														반품/교환 가능기간을 초과하였을 경우<br>&nbsp;· 상품 및 구성품을 사용하였거나 부주의로
														인하여 상품이 훼손(파손/고장/오염 등)된 경우<br>&nbsp;· 상품 사용시 상품설명에
														기재된 주의사항을 지키지 않은 경우<br>&nbsp;· 상품택을 파손하였거나 분실했을 경우<br>&nbsp;·
														런닝머신/자동차용품 등 설치상품으로 배달 후 설치 완료된 경우<br>&nbsp;· 기타,
														'전자상거래 등에서의 소비자보호에 관한 법률'이 정하는 청약철회 제한사유에 해당되는 경우
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙교환/반품 참고사항</strong><br>&nbsp; · 교환/반품은 청약철회
														기간내에만 가능하며, 청약철회 기간 이후에는 상품의 하자시에만 가능합니다.<br>&nbsp; ·
														반품/교환시 고객님 귀책사유로 인해 수거가 지연될 경우에는 반품이 제한될 수 있습니다.<br>&nbsp;
														· 일부 상품은 트러블 발생시 소견서, 진료확인서 중 1가지를 첨부하셔야 반품이 가능합니다.<br>&nbsp;
														· 가격변동으로 인한 반품 및 가격보상은 불가합니다.<br>&nbsp; · 판매하는 협력사별로
														동일 상품이어도 가격에 차이가 있을 수 있으며, 이로인한 반품이나 교환은 불가합니다.
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙A/S 안내</strong><br>&nbsp; · 상품불량에 의한 반품, 교환,
														A/S, 환불, 품질보증 및 피해보상 등에 관한 사항은 소비자분쟁해결기준<br>&nbsp;&nbsp;
														(공정거래위원회 고시)에 따라 받으실 수 있습니다.&nbsp;
													</p>
													<p>&nbsp;</p>
													<p>
														<strong>⊙ 미성년자 권리보호 안내<br></strong><u>&nbsp; ·
															구매자가 미성년자일 경우, 법정대리인이 그 계약에 동의하지 아니하면 미성년자 본인 또는 법정 대리인이
															그 계약을 취소할 수 있습니다.&nbsp;</u>
													</p>
												</div>
											</div>
										</div>
									</div>
									<!-- // content-area / 유의사항 -->
								</div>
								<!-- // 기본정보 탭 -->
								<!-- 상품평 탭 -->
								<div class="pages page3" id="viewPage03">
									<div class="content-area">
										<div class="tit-wrap review satisfaction">
											<h3>
												상품평 작성하고 H.Point 최대 <em>250P</em> 혜택 받으세요!<a
													href="#tooltipReviewCont" data-modules-tooltip="" class=""><i
													class="icon que-mark"></i></a>
											</h3>
											<div class="tooltip-box" id="tooltipReviewCont">
												<div class="thead">
													<p class="tit">상품평 작성 혜택</p>
												</div>
												<div class="tblwrap">
													<table>
														<caption>상품평작성혜택</caption>
														<colgroup>
															<col style="width: 115px">
															<col style="width: 95px">
															<col style="width: 97px">
															<col style="width: 66px">
															<col style="width: 76px">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" rowspan="2">등급구분</th>
																<th scope="col" colspan="2">텍스트</th>
																<th scope="col" rowspan="2">포토</th>
																<th scope="col" rowspan="2">동영상</th>
															</tr>
															<tr>
																<th>50자 이하</th>
																<th>50자 초과</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td><span class="sliver-lvtxt">SILVER</span>, <span
																	class="gold-lvtxt">GOLD</span>, <span
																	class="platinum-lvtxt">PLATINUM</span></td>
																<td rowspan="2">10P</td>
																<td>100P</td>
																<td rowspan="2">+50P</td>
																<td rowspan="2">+100P</td>
															</tr>
															<tr>
																<td><span class="topclass-lvtxt">TOP CLASS</span>,
																	<span class="diamond-lvtxt">DIAMOND</span></td>
																<td>200P</td>
															</tr>
														</tbody>
													</table>
												</div>
												<button class="btn-close">
													<i class="icon"></i><span class="hiding">닫기</span>
												</button>
												<button class="btn-close">
													<i class="icon"></i><span class="hiding">닫기</span>
												</button>
											</div>
											<button ga-category="상품상세" ga-action="상품평" ga-label="상품평 쓰기"
												class="btn btn-lineblack small itemEvalRegBtn gp_className"
												onclick="evalWrite('Y', '/p/pda/itemPtc.do?slitmCd=2137317374');">
												<span><i class="icon review"></i>상품평 쓰기</span>
											</button>
										</div>
										<!-- 상품평 딜/옵션 combobox -->
									</div>
									<div class="content-area review-point">
										<h3>구매고객 총 평점</h3>
										<!--review-star -->
										<div class="review-star">
											<div class="starbg type-big pt10">
												<p class="score">
													<span class="hiding">0점</span>
												</p>
											</div>
											<span class="like-point" aria-label="포인트"><em>0.0</em></span>
										</div>
										<!-- //.review-star -->
										<!--review-rate -->
										<div class="review-rate ui-active">
											<strong class="hiding">평가 비율</strong>
											<div class="rate-list">
												<div class="rate-item" id="rateItem0">
													<p class="rate-tit">사이즈</p>
													<div class="part">
														<p class="data">
															<span>조금 작아요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>정사이즈에요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>조금 커요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
												</div>
												<div class="rate-item" id="rateItem1">
													<p class="rate-tit">색상</p>
													<div class="part">
														<p class="data">
															<span>조금 밝아요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>동일해요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>조금 어두워요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
												</div>
												<div class="rate-item" id="rateItem2">
													<p class="rate-tit">착화감</p>
													<div class="part">
														<p class="data">
															<span>편해요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>보통이에요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
													<div class="part">
														<p class="data">
															<span>불편해요</span>
														</p>
														<div class="gauge-box">
															<p class="gauge-bar">
																<span class="gauge" style="width: 0%;"></span>
															</p>
															<p class="rate">
																0<span>%</span>
															</p>
														</div>
													</div>
												</div>

											</div>
											<div class="more-btn">
												<a href="#"
													data-modules-customtoggle="openText:자세히보기;parent:.review-rate;"><span
													data-text="">닫기</span><i class="icon arrow"></i></a>
											</div>
										</div>
										<!-- //.review-rate -->
									</div>
									<div id="itemOptEvalInfo">
										<!-- 리스트 -->
										<div class="content-area txt-review" id="reviewContentArea">
											<h3>
												상품평 <em class="total-num">0</em>건
											</h3>
											<div class="selectwrap">
												<div class="custom-selectbox sm"
													onchange="searchEvalSort('/p/pdc/selectItemEvalList.do?dealYn=N')"
													id="posRightDiv" data-modules-selectbox="">
													<select id="posRight">
														<option value="01">최신순</option>
														<option value="14">도움순</option>
														<option value="16">별점 높은순</option>
														<option value="17">별점 낮은순</option>
													</select>
													<div class="ui-label">
														<a href="#1">최신순</a>
													</div>
													<div class="ui-selectbox">
														<div class="selectbox_area">
															<ul>
																<li><a href="#1">최신순</a></li>
																<li><a href="#2">도움순</a></li>
																<li><a href="#3">별점 높은순</a></li>
																<li><a href="#4">별점 낮은순</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="nodata">
												<span class="bgcircle"><i class="icon nodata-type12"></i></span>
												<p>등록된 상품평이 없습니다.</p>
											</div>
										</div>
									</div>
								</div>
								<!-- // 상품평 탭 -->
								<!-- Q&A 탭 -->
								<div class="pages page4" id="viewPage04">
									<!--content-area // 문의버튼-->
									<div class="content-area btngroup">
										<a href="/p/ccd/selectCnslOrdReqDtl.do"
											onclick="GA_Event('상품상세','Q&amp;A','배송/회수문의');"
											target="_blank" class="btn btn-lineblack small"><span>배송/회수
												문의</span></a> <a href="javascript://" ga-category="상품상세"
											ga-action="Q&amp;A" ga-label="상품문의"
											onclick="openLoginPopup('https://www.hmall.com/p/pda/itemPtc.do?slitmCd=2139296966')"
											class="btn btn-lineblack small gp_className"><span>질문하기</span></a>
									</div>
									<!--//content-area // 문의버튼-->
									<div id="itemOptQnAInfo">
										<div class="content-area inquiry-wrap">
											<div class="nodata">
												<span class="bgcircle"><i class="icon nodata-type12"></i></span>
												<p>상품 Q&amp;A가 없습니다.</p>
											</div>
											<!--//inquiry-list-->
											<div class="paging qnaPaging"></div>
										</div>
									</div>
								</div>
								<!-- // Q&A 탭 -->
							</div>
							<!-- // scrollspy-wrap -->
							<!-- option -->
							<div class="sticky-ui-wrapper product-option-sticky">
								<div class="sticky-placeholder" style></div>
								<div class="util-option sticky right-option-area"
									data-modules-sticky="padding:-20;breakPoint:.product-detail-content;className:product-option-sticky;"
									style>
									<div class="sticky-inner">
										<div class="util-inner">
											<div class="option-scroll">
												<strong class="prduct-name">[${ productVO.brand }]
													${ productVO.productName }</strong>
												<div class="selprduct-list select-product-list" style>
												</div>
											</div>
											<!-- total -->
											<div class="total-wrap">
												<div class="total-price sum-price" style="">
													<p class="btn-total">
														<span>총 상품금액</span> <a href="#tooltipCont4"
															data-modules-tooltip=""> <i class="icon que-mark"></i>
														</a>
													</p>
													<ins>
														<em>${ productVO.discountPrice }</em> <b>원</b>
													</ins>
													<div class="tooltip-box" id="tooltipCont4">
														<div class="thead btn-only"></div>
														<p class="txt">
															선택하실 수 있는 할인혜택이 모두 적용된 금액입니다.<br>배송비가 포함이 되어 있지 않은
															금액으로, 결제시 배송비가 추가 될 수 있습니다.
														</p>
														<button class="btn-close">
															<i class="icon"></i> <span class="hiding">닫기</span>
														</button>
													</div>
												</div>
												<div class="pick-method"></div>
												<div class="button-wrap pd_shipping_type_nomral">
													<div class="btngroup"></div>
												</div>
											</div>
											<!-- // total -->
										</div>
									</div>
								</div>
							</div>
							<!-- // option -->
						</div>
						<!-- // product-detail-content -->
					</div>
				</div>
				<!-- //.container -->
			</div>
		</main>

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