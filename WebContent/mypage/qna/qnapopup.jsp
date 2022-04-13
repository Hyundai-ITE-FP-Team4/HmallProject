<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--------------------------------------------------------------
파일명: qnapopup.jsp
기능: 1:1상담 작성 팝업 페이지
작성자: 황명하

코멘트: 현대몰 내 게시글 등록 html 코드 참조, 카테고리1,2 설정 후 답변방법, 답변 연락처를 
입력해 게시글 등록
 -------------------------------------------------------------->

<html lang="ko" class="desktop winos chrome x64 mobile">
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
<title>1:1 상담신청 - 현대Hmall</title>

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



<!-- includeScript -->
<link rel="stylesheet" type="text/css"
	href="//image.hmall.com/p/css/cc/customer.css">
<script type="text/javascript">
var changeChk = '';
var seller_host_customer = "https://htalk.hmall.com/happytalk/customer";
var claimDiv = ""; //mCnslCsfCdBoardFixed
var ordNo = "";
var ordPtcSeq = "";


jQuery(function($) {
	
    // 옵션 select
	$(document).on("change", "select[id*=exchUitmSelect]", function(e) {
	    exchUitmSel(this, e);
	});
    
	$(document).on("click", '#attachImg1, #attachImg2, #attachImg3', function(e) {
		console.log("attach icon clicked");
		var agent = navigator.userAgent.toLowerCase();        
	    if ( (navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
	    	uploadImgIEcase($(this));
	    } else {
	    	uploadImg($(this));
	    }
	});
	
    $(document).on('click', '#attachVideo', function(e) {
        if(e.target.className.indexOf("attach") > -1) {
            $(".marginB15").hide();
            deleteImg(this);
            return false;
        }else{
        	if ( (navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
                uploadImgIEcase($(this));
            } else {
                uploadImg($(this));
            }
        }
    });
    
    window.resizeTo(700,680);
    $("div.hideBtnGroup").attr('style', 'display:none');

   	if(!isEmpty(claimDiv)){
   		if(claimDiv == "cancle"){
   		   	$("select[name='cnslCsfCd']").change(function(){
   				var url = "";
   				var mCnslCsfCd = $("select[name='mCnslCsfCd']").val();
   				switch(mCnslCsfCd){
   				case '0405' 	: 	url = "/p/mpa/selectOrdCnclReqPup.do";
   										break;
   				case '0404' 	: 	url = "/p/mpa/selectOrdRtpReqPup.do";
   										break;
   				case '0501' 	: 	url = "/p/mpa/selectOrdDlvWtdwReqPup.do";
   										break;
   				case '0303' 	: 	url = "/p/mpa/selectOrdStlmRepyReqPup.do";
   										break;
   				case '0402' 	: 	url = "/p/mpa/selectOrdExchReqPup.do";
   										break;
   				case '0401' 	: 	url = "/p/mpa/selectOrdASReqPup.do";
   										break;
   				default		: 	$("select[name='cnslCsfCd']").append('<option value="">상담 사유</option>');
   										submitUrl="";	
   										return;
   				}
   				$.ajax({
   			        type: "get"
   			        ,url: url
   			        ,data: {ordNo:ordNo, ordPtcSeq:ordPtcSeq, claimDiv:claimDiv}
   			        ,dataType: "html"
   			        ,async: true
   			        ,success : function(data) {
   			        	choiceProductCallBack(data);
   			        },
   					error : function(){
   						console.log("json error");
   					}
   			    });
   	    	});
	   	}else{
	   		var url;
	   		if(claimDiv == "return"){
				$("select[name='mCnslCsfCd']").parent().selectbox().selected("0404");
	   			inSelectHtml('0404');
	   			url = "/p/mpa/selectOrdRtpReqPup.do";
	   			$("select[name='mCnslCsfCd']").parent().addClass("disabled");
	   		}else if(claimDiv == "change"){
	   			$("select[name='mCnslCsfCd']").parent().selectbox().selected("0402");
	   			inSelectHtml('0402');
				url = "/p/mpa/selectOrdExchReqPup.do";
				$("select[name='mCnslCsfCd']").parent().addClass("disabled");
			}
	   		$.ajax({
		        type: "get"
		        ,url: url
		        ,data: {ordNo:ordNo, ordPtcSeq:ordPtcSeq, claimDiv:claimDiv}
		        ,dataType: "html"
		        ,async: true
		        ,success : function(data) {
		        	choiceProductCallBack(data);
		        },
				error : function(){
					console.log("json error");
				}
		    });
		}
   	}
   	
    if(isEmpty(claimDiv)){
	    
	    $("select[name='cnslCsfCd']").change(function(){
	    	var cnslCsfCd = $("select[name='cnslCsfCd']").val();
	        if(isEmpty(cnslCsfCd)){
	            $("#productChoiceMsg").css("display","none");
	            $("#cnslNoItemMsg").css("display","none");
	            $("#cnslChoiceMsg").css("display","block");
	            $("div.popup-win")[0].classList.remove("product-delete");
	            $('#divContent').children().remove();
	            $("#choiceItemDiv").children().remove();
	        }else if(cnslCsfCd.substr(0,2) == '07'){
	        	//Do nothing
		    }else{
		    	var mCnslCsfNm = $("select[name='mCnslCsfCd'] option:checked").text();
	            $.ajax({
	                type: "post"
	                ,url: "/p/ccd/selectCnslAcptViewList.do"
	                ,data: {cnslCsfCd:$("select[name='cnslCsfCd']").val(), page:changeChk, mCnslCsfNm: mCnslCsfNm, ordNo:ordNo}
	                ,dataType: "json"
	                ,async: false
	                ,success : function(data) {
	                	if(data.ordList.length <= 0){
	                		$("#choiceItemDiv").children().remove();
	                		if($("select[name='mCnslCsfCd']").val() == "0401"){
	                			$("#cnslNoItemMsg").html("<p><em>"+mCnslCsfNm+"</em> 가능한 주문/배송 내역이 없습니다.</p>");
	                		}else{
	                			$("#cnslNoItemMsg").html("<p>최근 3개월 내 <em>"+mCnslCsfNm+"</em> 가능한 주문/배송 내역이 없습니다.</p>");
	                		}
	                		$("#cnslNoItemMsg").css("display","block");
	                		$("#cnslChoiceMsg").css("display","none");
	                	}else{
	        	            $("#choiceItemDiv").children().remove();
	        	            $("#productChoiceMsg").css("display","block");
	        	            $("#cnslNoItemMsg").css("display","none");
	        	            $("#cnslChoiceMsg").css("display","none");
	        	            $("div.popup-win")[0].classList.add("product-delete");
	                	}
	                }
	            });
	        }
	        changeChk = 1;        
	    });
    }

    
    $("select[name='mCnslCsfCd']").change(function(){

        //$('#divContent').children().remove();

        var mCnslCsfCd = $(this).val();
        var sCnslCsfCd = "";
        
        $("#productChoiceMsg").css("display","none");
        $("#cnslChoiceMsg").css("display","block");
        $("#cnslNoItemMsg").css("display","none");
        // 주석처리 (황명하)
        //$("#choiceItemDiv").children().remove();
        inSelectHtml(mCnslCsfCd);
        $("div.hideBtnGroup").attr('style', 'display:none');
        changeChk = 1;
        console.log("mCnslCsfCd  : " + mCnslCsfCd);
        
        if(mCnslCsfCd.substr(0,2) == '07'){
        	$("#frm").css("display" , "block");
        	$("#cnslChoiceMsg").css("display","none");
        	$("div.popup-win")[0].classList.add("product-delete");
        	//popup-win div에 product-delete class 추가 필요
        	
        	if(mCnslCsfCd.substr(0,4) == '0712'){
        		sCnslCsfCd = "071201"
        		//form태그에 상담분야 코드 넘기기 (황명하)
        		document.cnslAcptForm.cnslCsfCd.value = sCnslCsfCd;
        		setViewForm(sCnslCsfCd)
        	}else{
                sCnslCsfCd = "070102"
                //form태그에 상담분야 코드 넘기기 (황명하)
                document.cnslAcptForm.cnslCsfCd.value = sCnslCsfCd;
                setViewForm(sCnslCsfCd)
        	}
        	
    	    window.resizeTo(700,930);
	    }
        // 시스템 오류, 문의 를 제외한 나머지에는 제출폼 표시하지 않는 조건 추가(황명하) 
        else {
        	$("#frm").css("display" , "none");
        }
    });

    
    
    $("#cnslCntn").live('keyup', function(){
        limitBytes('cnslCntn', 1000);
        var len = getByteLength($('#cnslCntn').val());
        $("span.textareaBytes").text(len);
    });

   
});

function byteLength(input){
    var iByteLength = 0;
    for (var i = 0; i < input.length; i++) {
        var sChar = escape(input.charAt(i));
        if (sChar.length == 1 ) {
            iByteLength ++;
        } else if (sChar.indexOf("%u") != -1) {
            iByteLength += 2;
        } else if (sChar.indexOf("%") != -1) {
            iByteLength += sChar.length/3;
        }
    }
    return iByteLength;
}



function choiceProductCallBack(data) {
    window.resizeTo(700,930);
	$("#choiceItemDiv").html(data).css("display","block");
	$("#cnslChoiceMsg").css("display","none");
	$("#productChoiceMsg").css("display","none");
	$(".custom-selectbox").selectbox();
	$("div.popup-win")[0].classList.add("product-delete");
}


// 상담 분야 별 뷰 설정

 function setViewForm(cnslCsfCd){
	
	$.ajax({
        type: "post"
        ,url: "/p/ccd/selectCnslAcptView.do"
        ,data: {cnslCsfCd:cnslCsfCd, page:changeChk, mCnslCsfNm: $("select[name='mCnslCsfCd'] option:checked").text()}
        ,dataType: "html"
        ,async: false
        ,success : function(html) {
            $('#choiceItemDiv').html(html);
        }
    });
    $("div.hideBtnGroup").attr('style', 'display:none');
}


//상세 내역 select 생성
function inSelectHtml(mCnslCsfCdBoard){
		$("select[name='cnslCsfCd']").html('');	
		
		var selectHtml1="";
		var selectHtml2="";
		var selectHtml3="";
		var selectHtml4="";
		var selectHtml5="";
		var selectHtml6="";
		var selectHtml7="";
		var selectHtml8="";
		
		//취소신청
		selectHtml1 += '	<option value="">상담 사유</option>									      ';
		selectHtml1 += '	<option value="040501">변심</option>									      ';
		selectHtml1 += '	<option value="040501">유사상품 구입</option>						      ';
		selectHtml1 += '	<option value="040501">결제변경</option>								      ';
		selectHtml1 += '	<option value="040501">단품변경</option>								      ';
		selectHtml1 += '	<option value="040501">가격변경</option>								      ';
		selectHtml1 += '	<option value="040501">배송지연</option>								      ';
		selectHtml1 += '	<option value="040501">기타문의</option>								      ';

		//반품신청
		selectHtml2 += '	<option value="">상담 사유</option>									      ';
		selectHtml2 += '	<option value="040401">변심</option>									      ';
		selectHtml2 += '	<option value="040401">이미지차이</option>							      ';
		selectHtml2 += '	<option value="040401">상품불량(작동불량)</option>				      ';
		selectHtml2 += '	<option value="040401">반품배송</option>								      ';
		selectHtml2 += '	<option value="040401">지연</option>									      ';
		selectHtml2 += '	<option value="040401">기타사유</option>								      ';

		//배송/회수 문의
		selectHtml3 += '	<option value="">상담 사유</option>									      ';
		selectHtml3 += '	<option value="050103">배송문의</option>								      ';
		selectHtml3 += '	<option value="050105">배송지 변경요청</option>';
		selectHtml3 += '	<option value="050103">출고후 배송지연</option>					      ';
		selectHtml3 += '	<option value="050103">지정일 배송문의</option>					      ';
		selectHtml3 += '	<option value="050103">회수지연</option>								      ';
		selectHtml3 += '	<option value="050103">기타문의</option>								      ';

		//결제/환불 문의
		selectHtml4 += '	<option value="">상담 사유</option>									      ';
		selectHtml4 += '	<option value="030304">입금확인문의</option>						      ';
		selectHtml4 += '	<option value="030304">예치금환불</option>							      ';
		selectHtml4 += '	<option value="030304">상품권 결제 문의</option>					      ';
		selectHtml4 += '	<option value="030304">기타문의</option>								      ';

		//교환신청
		selectHtml5 += '	<option value="">상담 사유</option>									      ';
		selectHtml5 += '	<option value="0402">포장불량</option>								      ';
		selectHtml5 += '	<option value="0402">색상변경</option>								      ';
		selectHtml5 += '	<option value="0402">상품불량(작동불량)</option>				       ';
		selectHtml5 += '	<option value="0402">사이즈변경</option>				       ';
		selectHtml5 += '	<option value="0402">구성품누락</option>				       ';
		selectHtml5 += '	<option value="0402">교환지연</option>								      ';
		selectHtml5 += '	<option value="0402">교환방법문의</option>						      ';
		selectHtml5 += '	<option value="0402">기타문의</option>								      ';

		//AS신청
		selectHtml6 += '	<option value="">상담 사유</option>									      ';
		selectHtml6 += '	<option value="040101">작동불량</option>								      ';
		selectHtml6 += '	<option value="040101">수선</option>									      ';
		selectHtml6 += '	<option value="040101">AS센터 전화번호 확인</option>				      ';
		selectHtml6 += '	<option value="040101">AS가능여부 확인</option>					      ';
		selectHtml6 += '	<option value="040101">AS신청 후 처리사항</option>				      ';
		selectHtml6 += '	<option value="040101 ">기타 문의 </option>							      ';

		//시스템오류
		selectHtml7 += '    <option value="071201" selected>시스템오류/불편사항</option>				       ';

		//서비스문의                                         
		selectHtml8 += '    <option value="070102" selected>이벤트문의(문화공연/일반)</option>				       ';
		
		switch(mCnslCsfCdBoard){
		case '0405' 	: 	$("select[name='cnslCsfCd']").append(selectHtml1);
								break;
		case '0404' 	: 	$("select[name='cnslCsfCd']").append(selectHtml2);
								break;
		case '0501' 	: 	$("select[name='cnslCsfCd']").append(selectHtml3);
								break;
		case '0303' 	: 	$("select[name='cnslCsfCd']").append(selectHtml4);
								break;
		case '0402' 	: 	$("select[name='cnslCsfCd']").append(selectHtml5);
								break;
		case '0401' 	: 	$("select[name='cnslCsfCd']").append(selectHtml6);
								break;
		
		case '0712'  :   $("select[name='cnslCsfCd']").append(selectHtml7);
								break;
		case '0701' : 	$("select[name='cnslCsfCd']").append(selectHtml8); 
								break;
		default		: 	$("select[name='cnslCsfCd']").append('<option value="">상담 사유</option>');
								submitUrl="";	
								break;
	}
    //$("select[name='cnslCsfCd']").append(html);
    $("#cnslCsfCd").selectbox('refresh');
}

function getByteLength(input) {
    var iByteLength = 0;
    for (var i = 0; i < input.length; i++) {
        var sChar = escape(input.charAt(i));
        if (sChar.length == 1 ) {
            iByteLength ++;
        } else if (sChar.indexOf("%u") != -1) {
            iByteLength += 2;
        } else if (sChar.indexOf("%") != -1) {
            iByteLength += sChar.length/3;
        }
    }
    return iByteLength;
}

function changeCnslChatAcpt() {
    window.location.href = "/p/ccd/selectCnslChatAcptPup.do";
}

function openCnslOrdReq(){
	opener.location.href = "/p/ccd/selectCnslOrdReqDtl.do";
	window.close();
}


function picCallback(otherFunc,f,idx,imgId,event){
    otherFunc(f,idx,imgId,event);
}

function some_other_func(f,idx,imgId,event){
    var picFile = event.target;
    var srcImg = "<img id=\"" + imgId +"\" src='" + picFile.result + "' title='" + f.name+ "' />";
    var thumnailId = "attachImg" + idx;
    
    $("#"+ thumnailId+" .upfile").append(srcImg);
    $("#"+ thumnailId).addClass("attach");
    callAjax(picFile.result,imgId,idx,f.name,"1");
}
	
function filechk(fileDir){

	var rtnVal = false;
	
	if(fileDir.search("jpg") == -1 && fileDir.search("png") == -1 && fileDir.search("gif") == -1 && fileDir.search("jpeg") == -1) {
	    rtnVal = true;
	}
	
	return rtnVal;
}

//html5의 Canvas를 사용해서 이미지 리사이징이 가능한지 판별하는 메소드
function isImageResizable() {
    var isCanvasUsable = !!document.createElement('canvas').getContext;
    var isLowerIE = false;
 
    if($.browser.msie) {
        if($.browser.version < 10) {    // IE9은 Canvas는 쓸 수 있지만 file input에서 file Object를 가져오지 못해 제외
            isLowerIE = true;
        }
    }
 
    return isCanvasUsable && !isLowerIE;
}

function dataURItoBlob(dataURI){
    var byteString = atob(dataURI.split(',')[1]);
    var mimeString = dataURI.split(',')[0].split(':')[1].split(';')[0]
    var ab = new ArrayBuffer(byteString.length);
    var ia = new Uint8Array(ab);
    for (var i = 0; i < byteString.length; i++)
    {
        ia[i] = byteString.charCodeAt(i);
    }

    var bb = new Blob([ab], { "type": mimeString });
    return bb;
}

/**
 * 입력한 문자열의 바이트를 계산한다.
 * @param obj
 * @param limitByte
 */
 
function checkCntn(obj, limitByte) {    
    
    $obj = $(obj);
    var inputStr = $obj.val();

    var iByteLength = 0;
    for (var i = 0; i < inputStr.length; i++) {
        var sChar = escape(inputStr.charAt(i));
        iByteLength += calculateByte(sChar);

        if(iByteLength > limitByte){
            alert('최대 '+limitByte+'Byte 까지 입력가능합니다.');
            $obj.val(inputStr.substring(0, i));
            iByteLength = iByteLength - calculateByte(escape(inputStr.charAt(i)));

            break;
        }
    }
    $("span.txtcount em").text(iByteLength);	
}


function calculateByte(sChar) {
	
	var byte = 0;
	if(sChar.length == 1 ) {
		byte = 1;
	} else if (sChar.indexOf("%u") != -1) {
		byte = 2;
	} else if (sChar.indexOf("%") != -1) {
		byte = 3;
	}
	
	return byte;
	
}

function formCheckSubmitSellerChat(obj) {
    var userId  = "KgkuNUcnnR0Gd9kKgxX6FA%3D%3D";
    //alert(iserId);
    $.ajax({
        type: "GET"
        ,url: "https://htalk.hmall.com/happytalk/api/chat/isEnable"
        ,dataType: "json"
        ,async: false
        ,crossDomain: true
        ,success : function(result) {
            if(result.code == '0000'){
               var sellerUrl = "";
               var room_href = sellerUrl + "?userId="+userId;
           	   var popName = "cnslChatAcptPup";
           	   var popOption = "height=800, width=800, fullscreen=no, location=no, scrollbars=yes, menubar=no, toolbar=no, titlebar=no, directories=no, resizable=no";
           	   window.open(room_href,popName,popOption); 
            }else{
                alert("네트워크가 불안정합니다. 잠시후에  다시 시도해주세요. ");
                return false;
            }
        }
        ,
        error : function(){
            console.log("json fail");
        }
    });
}

</script>

</head>
<body id="popWin" style="">
	<!--20200826 수요일 추가 윈도우 팝업은 body에 popWin 아이디값 설정해주셔야 합니다. -->
	<!--윈도우팝업(새창으로열기) 1:1 상담신청 :  PIA017 LNB 1:1상담신청 클릭 시 윈도우 팝업 // 20200825 script 요청드림-->
	<!--pc 공통 스크립트 잡은 후 윈도우 팝업 변경 가능성 있음-->
	<!--popup-win : 윈도우 팝업일 경우 // width:649px , min-height:482px, height:575px (높이값은 popup-win 뒤의 클래스마다 변경) -->
	<div class="popup-win wd600 cus-consult product-delete">
		<!--20200828 금요일 pc레이아웃 공통작업 wd600 클래스 추가-->
		<!--pop-wrap-->
		<div class="pop-wrap" tabindex="0">
			<!--pop-content-wrap-->
			<div class="pop-content-wrap">
				<strong class="pop-title">1:1 상담신청</strong>
				<!--pop-content-->
				<div class="pop-content">
					<p class="desc">
						당일 16시 이후 접수 건은 익일 오전 9시 이후 답변 가능 (단, 주말 공휴일 제외)
						<button class="btn btn-linelgray small30" type="button"
							onclick="openCnslOrdReq()">
							<span>1:1 상담내역 보기</span>
						</button>
						<!--마이페이지 1:1상담으로 이동-->
					</p>
					<div class="content">
						<div class="consult-wrap">
							<!--상담유형선택-->
							<div class="selectwrap">
								<div class="custom-selectbox" data-modules-selectbox="">
									<select name="mCnslCsfCd" class="cu_select" id="mCnslCsfCd">


										
										<option value="">상담 분야 선택</option>
										 <!-- 미구현할 기능 주석 처리 (황명하)
										<option value="0405">취소신청</option>
										<option value="0404">반품신청</option>
										<option value="0501">배송/회수 문의</option>
										<option value="0303">결제/환불 문의</option>
										<option value="0402">교환신청</option>
										<option value="0401">AS신청</option>
										 -->
										<option value="0712">시스템오류</option>
										<option value="0701">서비스문의</option>


									</select>
									<!-- 
                            <div class="ui-label">
                            <a href="#8">시스템오류</a>
                            </div>
                             -->
									<div class="ui-selectbox" style="display: none;">
										<div class="selectbox_area">
											<ul>
											
												<li><a href="#1">상담 분야 선택</a></li>
												<!-- 미구현할 기능 주석 처리 (황명하)
												<li><a href="#2">취소신청</a></li>
												<li><a href="#3">반품신청</a></li>
												<li><a href="#4">배송/회수 문의</a></li>
												<li><a href="#5">결제/환불 문의</a></li>
												<li><a href="#6">교환신청</a></li>
												<li><a href="#7">AS신청</a></li>
												-->
												<li><a href="#8">시스템오류</a></li>
												<li><a href="#9">서비스문의</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!--//상담유형선택-->
							
							<!--상담유형선택-->
							<div class="selectwrap">
								<div class="custom-selectbox" data-modules-selectbox=""
									id="cnslCsfCd">
									<select name="cnslCsfCd" class="cu_select">
										<option value>상담 사유</option>
										<!-- 
										<option value="040401">변심</option>
										<option value="040401">이미지 차이</option>
										<option value="040401">상품불량(작동불량)</option>
										<option value="040401">반품배송</option>
										<option value="040401">지연</option>
										<option value="040401">기타사유</option>
										 -->
									</select>
									<!-- 
									<div class="ui-label">
										<a href="#1">상담 사유 선택</a>
									</div>
									 -->
									<div class="ui-selectbox">
										<div class="selectbox_area">
											<ul>
												<li><a href="#1">상담 사유 선택</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!--//상담유형선택-->
							
							
							<!--product-wrap-->
							<div class="product-wrap" id="cnslChoiceMsg"
								style="display: none;">
								<p>문의 분야를 선택해주세요.</p>
							</div>
							<!--//product-wrap-->
							
							<!--product-wrap-->
							<div class="product-wrap" id="cnslNoItemMsg"
								style="display: none;">
								<p>
									최근 3개월 내 <em>취소신청</em> 가능한 주문/배송 내역이 없습니다.
								</p>
							</div>
							<!--//product-wrap-->
						</div>
						
						
						<!--product-wrap-->
						<div class="product-wrap delete" id="productChoiceMsg"
							style="display: none;">
							<!--20200827 금요일 윈도우 팝업안에서 버튼 클릭 시 새창 윈도우로 뜸. (페이지고유 name값 추가)-->
							<a href="#" onclick="openCnslAcptPup(); return false;">
								<p>
									<i class="icon"></i>상담할 상품을 선택해주세요.
								</p>
							</a>
						</div>
						<!--//product-wrap-->

						<!--choice-item-->
						<div id="choiceItemDiv">
							<script type="text/javascript">
							if ("" != "") {
								    alert("");
								    try {
								        opener.fnRefresh();
								    }catch(e) {}
								    window.close();
								}
								
								$(function () {
								    $("textarea[name=cntn]").keyup(function () {
								        $("#writeBytes").text(getByteLength(this.value));
								    });
								
								});
								
								//submitForm 
								function submitForm(){
								    var email = $("input[name=email]");
								    var mobileDdd,mobilePhone1,mobilePhone2;
								    var cntn = $("textarea[name=cntn]");
								    var reqCntn = $("input[name=reqCntn]");
								    var reqCntnJson = $("input[name=reqCntnJson]");
								    var answReqnGbcd = $("input:radio[name=answReqnGbcd]:checked").val();
								    
								    if(!$("input[name='chkPersonalInfo']")[0].checked){
								    	alert("개인정보 수집 및 이용에 모두 동의해주세요.");
								    	return false;
								    }

								    if (isEmpty(cntn.val())) {
								        alert("문의내용을 입력해 주세요 ");
								        cntn.focus();
								        return false;
								    }
								    if (getByteLength(cntn.val()) > 1000) {
								        alert("내용은 1000자(한글 500자)이내로 입력하세요.");
								        cntn.focus();
								        return false;
								    }
								    if(answReqnGbcd == "3"){
								    	if (isEmpty(email.val())) {
								            alert("이메일 입력해 주세요 ");
								            email.focus();
								            return false;
								        }
								
								        if (validateEmail(email.val()) == false) {
								            alert("올바른 이메일을 입력해 주세요");
								            email.focus();
								            return false;
								        }
								        
								        var mobileDddOrg = $("input[name='mobileDdd']").val(); // $("select[name=mobileDdd]");
								        mobileDdd = mobileDddOrg.substr(0,3);
								        
								        if(mobileDdd == '013'){
								            mobileDdd=mobiledDddOrg.substr(0,4);
								            mobileDddOrg=mobildDddOrg.substr(4,8);
								        }else{ 
								            mobileDddOrg = mobileDddOrg.substr(3,8);
								        }
								        
								        if(mobileDddOrg.length == 7){
								            mobilePhone1 = mobileDddOrg.substr(0,3);
								            mobilePhone2 = mobileDddOrg.substr(3,7);
								        }else if(mobileDddOrg.length == 8){
								            mobilePhone1 = mobileDddOrg.substr(0,4);
								            mobilePhone2 = mobileDddOrg.substr(4,8);
								        }
								
								        $("#hpIdntNo").val(mobileDdd);
								        $("#hpIntmNo").val(mobilePhone1);
								        $("#hpBckNo").val(mobilePhone2);
								    }

								    if(answReqnGbcd == "1" || answReqnGbcd == "2"){
								
								    	var mobileDddOrg = $("input[name='mobileDdd']").val(); // $("select[name=mobileDdd]");
								        mobileDdd = mobileDddOrg.substr(0,3);
								        
								    	if (isEmpty(mobileDdd)) {
								            alert("전화번호를 입력해 주세요 ");
								            return false;
								        }
								        
								        if(mobileDdd == '013'){
								        	mobileDdd=mobiledDddOrg.substr(0,4);
								        	mobileDddOrg=mobildDddOrg.substr(4,8);
								       	}else{ 
								        	mobileDddOrg = mobileDddOrg.substr(3,8);
								       	}
								        
								        if(mobileDddOrg.length == 7){
								        	mobilePhone1 = mobileDddOrg.substr(0,3);
								        	mobilePhone2 = mobileDddOrg.substr(3,7);
								        }else if(mobileDddOrg.length == 8){
								        	mobilePhone1 = mobileDddOrg.substr(0,4);
								        	mobilePhone2 = mobileDddOrg.substr(4,8);
								        }else{
								        	alert("전화번호를 확인해 주세요");
								        	return false;
								        }
								        $("#hpIdntNo").val(mobileDdd);
								        $("#hpIntmNo").val(mobilePhone1);
								        $("#hpBckNo").val(mobilePhone2);
								    }

								    //계좌번호
								    var decBnkac = "04";
								    //환불계좌
								    var decReBnkac = "48";
								    //입금계좌
								    var decInBnkac = "49";
								    //전화번호
								    var decPhoneNum = "55";
								    //휴대폰번호
								    var decMobileNum = "56";
								    //예금주
								    var decDpsr = "26";
								    //기타사유
								    var decEtc = "99";
								
									var reqCntnStrJson = {};
									reqCntnStrJson[decMobileNum] = mobileDdd + "-" + mobilePhone1 + "-" + mobilePhone2;
									
								    var line = "\n"
								    var reqCntnStr = cntn.val() + line + line;
								    reqCntnStr += "아래는 신청내용입니다." + line;
								    reqCntnStr += "세부문의분야 : " + $("select[name='cnslCsfCd'] option:selected").text() + line;
								    //reqCntnStr += "상품명 : " + $("input[name=ordItemNm]").val() + line;
								    //reqCntnStr += "수량 : " + $("input[name=ordQty]").val() + line;
								    //reqCntnStr += "주문번호 : " + "" + line;
								    /* reqCntnStr += "긴급연락처 : " + mobileDdd.val() + "-" + mobilePhone1.val() + "-" + mobilePhone2.val()  + line; */
								
								    // 신청내역 입력
								    
								    if($("#attachImg1").find("img").length != 0){
								    	$("#frm").append('<input type="hidden" name="attachImage" id="hiddenImg1"/>');
								        $("#hiddenImg1").val($("#attachImg1").find("img").attr("src"));
								    }
								   
								    if($("#attachImg2").find("img").length != 0){
								    	$("#frm").append('<input type="hidden" name="attachImage" id="hiddenImg2"/>');
								        $("#hiddenImg2").val($("#attachImg2").find("img").attr("src"));
								    }
								   
								    if($("#attachImg3").find("img").length != 0){
								    	$("#frm").append('<input type="hidden" name="attachImage" id="hiddenImg3"/>');
								        $("#hiddenImg3").val($("#attachImg3").find("img").attr("src"));
								    }
								    
								    reqCntn.val(reqCntnStr);
								    reqCntnJson.val(JSON.stringify(reqCntnStrJson));
								    console.log(reqCntnStr);
								    
								    $("#frm").submit();

								}

								$("input[name='answReqnGbcd']").change(function(){
									var checked = $("input[name='answReqnGbcd']:checked").val();
									if(checked == '3'){//이메일
										$("#emailConsultDiv").css("display","block");
										$("#phoneConsultDiv").css("display","none");
									}else {//전화상담,SMS
										$("#emailConsultDiv").css("display","none");
										$("#phoneConsultDiv").css("display","block");
									}
								});
								var mCnslCsfCd = $("select[name='mCnslCsfCd']").val();
								document.cnslAcptForm.cnslCsfCd.value=mCnslCsfCd;

								</script>
							
							<form id="frm" action="HmallServlet?command=enroll_question" method="post"
								name="cnslAcptForm" style = "display: none;" >
								
								<script>
								var mCnslCsfCd = getElementsById("mCnslCsfCd");
								document.cnslAcptForm.cnslCsfCd.value=mCnslCsfCd;
								</script>
								
								<!--개인정보 입력(회원ID 비밀번호 문의선택시)-->
									<input type="hidden" name="ordNo"> 
									<input type="hidden" name="ordPtcSeq"> 
									<input type="hidden" name="reqCntn"> 
									<input type="hidden" name="reqCntnJson"> 
									<input type="hidden" name="cnslCsfCd" value=""> 
									<input type="hidden" name="hpIdntNo"> 
									<input type="hidden" name="hpIntmNo"> 
									<input type="hidden" name="hpBckNo">
				
									<input type= "hidden" name = "category" value= "${select[name='mCnslCsfCd']}">
									
								<!--consult-form-wrap-->
								<div class="consult-form-wrap">
									<h3>문의내용</h3>
									<!--문의내용-->
									<div class="consult-form">
										<div class="field">
											<div class="textareabox">
												<label class="txtlabel">
												<textarea cols="48" rows="7"
												 name="cntn" onkeyup="checkCntn(this, 500)"
												placeholder="문의하실 내용을 구체적으로 적어주시면정확하고 빠른 답변에 도움이 됩니다."
												aria-placeholder="문의하실 내용을 구체적으로 적어주시면 정확하고 빠른 답변에 도움이 됩니다."></textarea>
												</label> <span class="txtcount"><em>0</em><b>500</b></span>
											</div>
										</div>
									</div>
									<!--//문의내용-->
								</div>
								<!--//consult-form-wrap-->

								<!--consult-form-wrap-->
								<div class="consult-form-wrap" style="display: none">
									<h3>사진 첨부</h3>
									<!--pickmov-add-->
									<div class="picmov-add" id="attachImageD1">
										<div class="picmov-aligner">
											<div class="upload">
												<label class="filelabel" id="attachImg1"> <span
													class="upfile"> </span>
												</label>
												<button class="btn btn-close" type="button" id="1"
													onclick="deleteImg(this);" style="display: none">
													<i class="icon close"></i><span class="hiding">파일 삭제</span>
												</button>
											</div>
											<div class="upload">
												<label class="filelabel" id="attachImg2"> <span
													class="upfile"> </span>
												</label>
												<button class="btn btn-close" type="button" id="2"
													onclick="deleteImg(this);" style="display: none">
													<i class="icon close"></i><span class="hiding">파일 삭제</span>
												</button>
											</div>
											<div class="upload">
												<label class="filelabel" id="attachImg3"> <span
													class="upfile"> </span>
												</label>
												<button class="btn btn-close" type="button" id="3"
													onclick="deleteImg(this);" style="display: none">
													<i class="icon close"></i><span class="hiding">파일 삭제</span>
												</button>
											</div>
											<input type="file" id="getfile_1" accept="image/*"
												title="파일 업로드" style="display: none;" multiple=""> <input
												type="file" id="getfile_2" accept="image/*" title="파일 업로드"
												style="display: none;" multiple=""> <input
												type="file" id="getfile_3" accept="image/*" title="파일 업로드"
												style="display: none;" multiple="">
										</div>
									</div>
									<!-- //.picmov-add -->
								</div>
								<!--//consult-form-wrap-->

								<!--consult-form-wrap-->
								<div class="consult-form-wrap">
									<h3>답변 방법</h3>
									<!--답변방법-->
									<div class="consult-form">
										<!--radiobox-->
										<div class="radiobox">
											<label class="radlabel">'<input type="radio"
												name="answReqnGbcd" checked="" aria-checked="true"
												id="answReqnGbcd2" value="1"><i class="icon"></i><span>SMS</span></label>
												
											<label class="radlabel"><input type="radio"
												name="answReqnGbcd" aria-checked="true" 
												id="answReqnGbcd1" value="3"><i class="icon"></i><span>이메일</span></label> 
												
												<label class="radlabel"><input type="radio"
												name="answReqnGbcd" aria-checked="true" 
												id="answReqnGbcd3" value="2"><i class="icon"></i><span>전화상담</span></label>
										</div>
										<!--//radiobox-->
										
										<!-- 답변 방법 별 block 박스 생성해주는 익명함수 추가 (황명하) -->
										<script>
										$("input[name='answReqnGbcd']").change(function(){
											var checked = $("input[name='answReqnGbcd']:checked").val();
											if(checked == '3'){//이메일
												$("#emailConsultDiv").css("display","block");
												$("#phoneConsultDiv").css("display","none");
											}else {//전화상담,SMS
												$("#emailConsultDiv").css("display","none");
												$("#phoneConsultDiv").css("display","block");
											}
										});
										</script>
										
										<!--휴대폰번호-->
										<div class="field" id="phoneConsultDiv" style="display: block;">
											<div class="inputbox">
												<label class="inplabel">
												<input type="number" name="mobileDdd" placeholder="휴대폰 번호 (예:01012345678)" title="휴대폰 번호 입력"></label> 
													<!-- 필요없는 부분 주석처리 (황명하)
													<input type="hidden" name="mobilePhone1"> 
													<input type="hidden" name="mobilePhone2">
													 -->
												<button class="btn ico-clearabled">
													<i class="icon"></i><span class="hiding">지우기</span>
												</button>
											</div>
										</div>
										<!--//휴대폰번호-->
										
										<!--//이메일-->
										<div class="field" id="emailConsultDiv" style="display: none;">
											<div class="inputbox">
												<label class="inplabel">
												<input type="email" name="email" placeholder="userid@mail.com" title="이메일 입력" ></label>
												<button class="btn ico-clearabled">
													<i class="icon"></i><span class="hiding">지우기</span>
												</button>
											</div>
										</div>
										<!--//이메일-->
									</div>
									<!--//답변방법-->
								</div>
								<!--//consult-form-wrap-->
								<div class="terms-box">
									<!-- [12/04]_수정(TMS 관련 수정 - PC_고객센터_1대1 상담신청_201022 체크박스 누락케이스 마크업 구조 변경 및 문구변경) -->
									<label class="chklabel"> <input type="checkbox"
										name="chkPersonalInfo"> <i class="icon"></i> <span>개인정보
											수집 및 이용에 동의합니다</span>
									</label>
									<!--20201005 월요일 레이어팝업링크추가-->
									<a href="#modalCollectPersonalInfo" class="btn atext"
										data-modules-modal=""><span>내용보기</span><i
										class="arrow right"></i></a>
								</div>
								<!--btngroup-->
								<div class="btngroup">
									<!-- 20200828 금요일 취소버튼 클릭 시 닫힘 -->
									<button class="btn btn-linelgray medium" data-dismiss="window">
										<span>취소</span>
									</button>
									<button class="btn btn-default medium"
										onclick="submitForm(); return false;">
										<span>확인</span>
									</button>
								</div>
								<!--//btngroup-->
							</form>
						</div>
						<!--//choice-item -->

						<form id="cnslAcptPupForm">
							<input type="hidden" name="cnslCsfCd"> 
							<input type="hidden" name="page" value=""> 
							<input type="hidden" name="mCnslCsfNm" value="">
						</form>
					</div>
				</div>
				<!--//pop-content-->
			</div>
			<!--//pop-content-wrap-->
		</div>
		<!--//pop-wrap-->
	</div>
	<!--popup-win-->
	<!--//윈도우팝업 1:1 상담신청-->
	<!--20201005 월요일 레이어팝업추가 : 개인정보수집및이용-->
	<div class="ui-modal" id="modalCollectPersonalInfo" tabindex="-1"
		role="dialog" aria-label="개인정보수집및이용">
		<div class="ui-modal-dialog collect-perInfo" role="document">
			<div class="content">
				<p class="ui-title">개인정보 수집 및 이용</p>
				<!-- //.content-head -->
				<div class="content-body">
					<div class="tblwrap">
						<table>
							<caption>개인정보 수집 및 이용</caption>
							<colgroup>
								<col style="width: 138px">
								<col style="width: 140px">
								<col style="width: 182px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="regular">목적</th>
									<th scope="col" class="regular">항목</th>
									<th scope="col">보유기간</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="txt-center">1:1상담</td>
									<td class="txt-center">휴대폰번호(SMS, 전화상담 선택 시), 이메일(이메일 선택
										시)</td>
									<td class="txt-center bold">회원탈퇴 시 <br> 또는 법정 의무 보유기간
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- //.content-body -->

				<button class="btn btn-close" data-dismiss="modal">
					<i class="icon xico"></i><span class="hiding">레이어 닫기</span>
				</button>
			</div>
			<!-- //.content -->
		</div>
		<!-- //.ui-modal-dialog -->
	</div>
	<!--//20201005 월요일 레이어팝업추가 : 개인정보수집및이용-->
	<!--20201005 월요일 레이어팝업추가 : 개인정보수집및이용-환불-->
	<div class="ui-modal" id="modalCollectPersonalInfoRefund" tabindex="-1"
		role="dialog" aria-label="개인정보수집및이용">
		<div class="ui-modal-dialog collect-perInfo" role="document">
			<div class="content">
				<p class="ui-title">개인정보 수집 및 이용</p>
				<!-- //.content-head -->
				<div class="content-body">
					<div class="tblwrap">
						<table>
							<caption>개인정보 수집 및 이용</caption>
							<colgroup>
								<col style="width: 138px">
								<col style="width: 140px">
								<col style="width: 182px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" class="regular">목적</th>
									<th scope="col" class="regular">항목</th>
									<th scope="col">보유기간</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="txt-center">환불처리</td>
									<td class="txt-center">예금주명, 계좌정보</td>
									<td class="txt-center bold">회원탈퇴 시 <br> 또는 법정 의무 보유기간
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- //.content-body -->

				<button class="btn btn-close" data-dismiss="modal">
					<i class="icon xico"></i><span class="hiding">레이어 닫기</span>
				</button>
			</div>
			<!-- //.content -->
		</div>
	</div>
	<!--//20201005 월요일 레이어팝업추가 : 개인정보수집및이용-환불-->
	<div class="ui-modal alert" id="modalAddressAlert1" tabindex="-1"
		role="dialog" aria-label="택배사 방문 주소를 입력해 주세요.">
		<div class="ui-modal-dialog restockalarm" role="document">
			<div class="content">
				<span class="bgcircle ex-redmark-sm"><i
					class="icon ex-red-mark"></i></span>
				<p class="ctypo17 bold">택배사 방문 주소를 입력해 주세요.</p>
			</div>
			<div class="btngroup">
				<button class="btn btn-default" data-dismiss="modal">
					<span>확인</span>
				</button>
				<!-- 데이터 전송 후 닫힘 $(element).modal().hide() -->
			</div>
			<button class="btn btn-close" data-dismiss="modal">
				<i class="icon xico"></i><span class="hiding">레이어 닫기</span>
			</button>
		</div>
	</div>
</body>
<whale-quicksearch translate="no"></whale-quicksearch>
</html>