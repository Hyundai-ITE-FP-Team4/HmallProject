var locationHref = document.location.href;
var imageServer = "http://image.hmall.com";
var serverHost = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0) ? "http://" + location.host : "http://www.hmall.com";
var serverHostForSSL = (location.href.indexOf("final") > 0 || location.href.indexOf("stg") > 0 || location.href.indexOf("dev") > 0) ? "https://" + location.host : "https://www.hmall.com";
var switch_serverHost;

if (locationHref.indexOf("https") > -1) {
    switch_serverHost = serverHostForSSL;
    imageServer = "https://image.hmall.com";
} else if (locationHref.indexOf("http") > -1) {
    switch_serverHost = serverHost;
    imageServer = "http://image.hmall.com";
}

var console = window.console || {log:function(){}};

//�ㅻ쭏�명룿�먯꽌 �ㅼ쓬怨� 媛숈� �뚮씪誘명꽣濡� �섏뼱�ㅻ㈃ m.hyundaihmall.com�쇰줈 �덈낫�몃떎.
var smartSitename = location.href;
var smartDir ="";
if(smartSitename.indexOf("?") >= 0){
    var cut_param =  smartSitename.split("?");
    if(cut_param[1].indexOf("dir") >= 0 || cut_param[0].indexOf("dpc") >=0){	// 20150630 - �섏젙 (�붿껌-rladltn)
        //if(cut_param[1].indexOf("dir") >= 0){
        smartDir="no";
    }
}

//�대찓�� �섏떊嫄곕� 嫄곗젅�쒗럹�댁��먯꽌 �묎렐�� m.hyundaihmall.com�쇰줈 �덈낫�몃떎.
if(smartSitename.indexOf("emailRfs") >=0 || smartSitename.indexOf("simpEmailRfsC") >=0 ){
    smartDir="no";
}

// 紐⑤컮�� 泥댄겕��  - EHReferCode + EHTcCode 20110527
if(smartSitename.indexOf("pcViewYn=Y") < 0 && $.cookie("pcViewYn") !="Y"){
    var mobileKeyWords = new Array('iPhone', 'iPod', 'iPad', 'BlackBerry', 'Windows Phone', 'Android', 'Mobi', 'Mobile', 'SymbOS', 'SymbianOS', 'Mini', 'Bada', 'webOS');
    if(document.domain.indexOf("kbpointreemall") <= 0 && document.domain.indexOf("trendh") < 0 && smartDir !="no"){
        for (var word in mobileKeyWords){
            if (navigator.userAgent.match(mobileKeyWords[word]) != null){
            	if(smartSitename.indexOf("evntMainPage.do") >=0){
                	location.href =  "/p/shNetworkShop.do?NetworkShop=smart&mainSeq=7";
                	break;
                }
                //location.href = "http://m.hyundaihmall.com/p/index.do";
                location.href = "/p/shNetworkShop.do?NetworkShop=smart";
                break;
            }
        }
    }
}


// IE version chk
function getInternetExplorerVersion() {
    var rv = -1;
    if (navigator.appName == 'Microsoft Internet Explorer') {
        var ua = navigator.userAgent;
        var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
        if (re.exec(ua) != null)
            rv = parseFloat(RegExp.$1);
    }

    if ( rv >= 7 ) {
        var trident = navigator.userAgent.match(/Trident\/(\d)/i);
        if(trident != null){
            var trident_ver = trident[0];
            if ( trident_ver == 4 ) {
                return 8
            }
            else if ( trident_ver == 5 ) {
                return 9
            }
            else if ( trident_ver == 6 ) {
                return 10;
            }
            else {
                return rv;
            }
        } else{
            return 7;
        }
    }
    return rv;
}

// gnb - Category
function setup_gnbCategory(){
    var xdr, switch_htmlName;
    if (locationHref.indexOf("https") > -1) {
        switch_htmlName = "mainSectCtgrSsl";
    } else if (locationHref.indexOf("http") > -1) {
        switch_htmlName = "mainSectCtgr";
    }

    if (document.location.hostname.indexOf("www") == -1 && navigator.userAgent.indexOf("MSIE") != -1 && getInternetExplorerVersion() < 10 ) {
        xdr = new XDomainRequest();
        if(xdr){
            xdr.onload  = function(){
                $("#gnb").html(xdr.responseText);
                main_gnb();
            }
            xdr.onerror = function(){}
            xdr.open("get", ""+ switch_serverHost + "/gen/html/"+ switch_htmlName +".html");
            xdr.send();
        }
    } else {
        $("#gnb").load(""+ switch_serverHost + "/gen/html/"+ switch_htmlName +".html", function(responseTxt,statusTxt,xhr){
            if(statusTxt=="success") main_gnb();
        });
    }
}

jQuery(function($){

    //釉뚮씪�곗졇 �대룞 �잛닔
    var pageMoveCnt = $.cookie("pageMoveCnt");
    if(pageMoveCnt != null){
        pageMoveCnt = parseInt(pageMoveCnt) + 1;
    }else{
        pageMoveCnt = 1;
    }

    var todayDate = new Date();
    todayDate = new Date( todayDate.getFullYear(), todayDate.getMonth(), todayDate.getDate(), 23, 59, 59 );
    document.cookie = "pageMoveCnt=" + escape( pageMoveCnt ) + "; path=/; domain=.hmall.com; expires=" + todayDate + ";"

    // new_main_data4.js - �뚮줈�� 諛곕꼫
    try {
        if(FloatingJson.length > 0 && location.href.indexOf("Home.html") > 0){
            $.each(FloatingJson, function(i, arr){
                var crmCd = FloatingJson[0].crmCd;
                var dispTrtyNmCd = FloatingJson[0].dispTrtyNmCd;
                var dispImflNm = FloatingJson[0].dispImflNm;
                var dispNm = FloatingJson[0].dispNm;
                var dispUrl = FloatingJson[0].dispUrl;
                if(window.location.href.indexOf("Home.html") >= 0){
                    dispUrl = (dispUrl.indexOf("?") > -1) ? dispUrl +'&MainpageGroup=FloatingBanner&GroupbannerName='+ crmCd : dispUrl +'?MainpageGroup=FloatingBanner&GroupbannerName='+ crmCd;
                }

                if($.cookie(crmCd) != "checked"){
                    var excep_rgx = new RegExp('(/Home.html)','g');
                    var excep_Filter = excep_rgx.test(locationHref);
                    if ( excep_Filter ){
                        var floatBn_html = '';
                        var cont_top = Math.floor((($(window).height() - 163) / 1.5) + $(window).scrollTop());
                        var cont_left = Math.floor((($(window).width() - 163) / 1.2) + $(window).scrollLeft());
                        /*
                        anmt = function(){
                            $("div.floatingBn").animate({ top : cont_top }, 600).animate({ top : cont_top + 10 }, 700, function(){ anmt() });
                        }
                        */
                        bn_close = function(){
                            $.cookie(crmCd, "checked" , {expires : 1, path : "/"});
                            $(".floatingBn").remove();
                        }

                        floatBn_html += '<div class="floatingBn" style="position:absolute; top:'+ cont_top +'px; left:'+ cont_left +'px; z-index:10005;" data-original="position:absolute; top:'+ Math.floor(($(window).height() - 163) / 1.5) +'px; left:'+ cont_left +'px; z-index:10005;">';
                        floatBn_html += '<a href="javascript:bn_close();" style="position:absolute; top:25px; right:24px"><img src="' + imageServer + '/hmall/co/floating_close.png" alt="�リ린" /></a>';
                        floatBn_html += '<a href="'+ dispUrl +'" class="gp_className" ga-category="硫붿씤 ��" ga-action="�뚮줈�낅같��" ga-label="' + dispNm + '"><img src="'+ imageServer + dispImflNm +'" alt="" /></a>';
                        floatBn_html += '</div>';

                        $('body').append(floatBn_html);
                        /*
                        anmt();

                        $("div.floatingBn").on("mouseenter", function(){
                            $("div.floatingBn").stop().stop();
                        }).on("mouseleave", function(){
                            anmt();
                        });
                        */
                        /*
                                                $(window).resize(function(){
                                                    var cont_top = (($(window).height() - 163) / 1.5) + $(window).scrollTop();
                                                    var cont_left = (($(window).width() - 163) / 1.2) + $(window).scrollLeft();
                                                    $('div.floatingBn').css({ top : cont_top, left : cont_left });
                                                });
                                                */
                    }
                }
            });
        }
    } catch (e) {}

    /**
     * �レ옄留� �낅젰媛���
     */
    $("input.onlyNumberInput").keydown(function(event) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ( $.inArray(event.keyCode,[46,8,9,27,13,190]) !== -1 ||
            // Allow: Ctrl+A
            (event.keyCode == 65 && event.ctrlKey === true) ||
            // Allow: home, end, left, right
            (event.keyCode >= 35 && event.keyCode <= 39)) {
            // let it happen, don't do anything
            return;
        }
        else {
            // Ensure that it is a number and stop the keypress
            if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )) {
                event.preventDefault();
            }
        }
    });

    /**
     * 濡쒓렇�� �뚯썝ID �ъ빱��
     */
    var logCob_rgx = new RegExp('(/p/cob/)','g');
    var logCob_Filter = logCob_rgx.test(locationHref);
    var inputVal = null;


    /**
     * �뚯썝媛��� - STEP3 �뺣낫�낅젰, 留덉씠�섏씠吏� - �뚯썝�뺣낫
     */
    var cua_rgx = new RegExp('(/p/cua/)|(/p/mpd/)','g');
    var cua_Filter = cua_rgx.test(locationHref);
    if ( cua_Filter ){
        var emailSelect = $('#emailSelect'),
            job = $('#jop'),
            allChkBox = $('#allChk'),
            marriageChk = $('#weddingChk input[type="radio"]'),
            allChk = $('#agreeAllChk');

        // �대찓�� �낅젰諛⑹떇
        emailSelect.bind('change', function(){
            var $this = $(this);
            var value = $this.val();
            var target = $this.prev('input[type="text"]')
            if (value != 'none') {
                target.hide();
            }else{
                target.show().focus();
            };
        });

        // 吏곸뾽�좏깮
        job.bind('change', function(){
            var $this = $(this);
            var value = $this.val();
            var target = $('#jobInfo');
            if (value != 'none') {
                target.show();
            }else{
                target.hide()
            };
        }).filter(':first').change();

        // 移댄뀒怨좊━ 泥댄겕
        allChkBox.bind('click', function(){
            var $this = $(this);
            var checked = $this.attr('checked');
            var target= $('.detail li input[type="checkbox"]');
            if (checked) {
                target.attr('checked', 'checked')
            }else{
                target.removeAttr('checked')
            };
        });

        // 寃고샎�щ�
        marriageChk.bind('click', function(){
            var $this = $(this);
            var target = $('#anniversary');
            var sel = $this.next('label').text();
            if ( sel == '湲고샎' ) {
                target.show();
            }else{
                target.hide();
            }
        });
    }

    /**
     * �곹뭹 �뺣젹 媛�닔 [ OO媛쒖뵫 �뺤떇 ] - 湲고쉷�� �뺤떇[searchSpexSectItem.do] �덉쇅
     **/
    var searchSpexSectItem_rgx = new RegExp('(/p/dpa/searchSpexSectItem.do)','g');
    var searchSpexSectItem_Filter = searchSpexSectItem_rgx.test(locationHref);
    if ( !searchSpexSectItem_Filter ){
        var select_root = $('div.cate_selec');
        var select_value = $('.myValue');
        var select_a = $('div.cate_selec>ul>li>a');
        var select_input = $('div.cate_selec>ul>li>input[type=radio]');
        var select_label = $('div.cate_selec>ul>li>label');

        // Radio Default Value
        $('div.myValue').each(function(){
            var default_value = $(this).next('.iList').find('input[checked]').next('label').text();
            $(this).append(default_value);
        });

        select_value.bind('focusin',function(){$(this).addClass('outLine');});
        select_value.bind('focusout',function(){$(this).removeClass('outLine');});
        select_input.bind('focusin',function(){$(this).parents('div.cate_selec').children('div.myValue').addClass('outLine');});
        select_input.bind('focusout',function(){$(this).parents('div.cate_selec').children('div.myValue').removeClass('outLine');});

        function i_hover(){
            $(this).parents('ul:first').children('li').removeClass('hover');
            $(this).parents('li:first').toggleClass('hover');
        }

        function hide_option(){
            var t = $(this);
            setTimeout(function(){
                t.parents('div.cate_selec:first').removeClass('open');
            }, 1);
        }

        function set_label(){
            var v = $(this).next('label').text();
            $(this).parents('ul:first').prev('.myValue').text('').append(v);
            $(this).parents('ul:first').prev('.myValue').addClass('selected');
        }

        function set_anchor(){
            var v = $(this).text();
            $(this).parents('ul:first').prev('.myValue').text('').append(v);
            $(this).parents('ul:first').prev('.myValue').addClass('selected');
        }

        $('*:not("div.cate_selec a")').focus(function(){
            $('.aList').parent('.cate_selec').removeClass('open');
        });

        select_value.bind('click',function(){
            $(this).parents('div.cate_selec:first').toggleClass('open');
        });

        select_root.removeClass('open');
        select_root.mouseleave(function(){$(this).removeClass('open');});
        select_a.click(set_anchor).click(hide_option).focus(i_hover).hover(i_hover);
        select_input.change(set_label).focus(set_label);
        select_label.hover(i_hover).click(hide_option);
    }

    /**
     * 怨듯넻 �덈룄�� �앹뾽 & �덉씠�� �앹뾽
     **/
    var popup = $('a.popupOpen, #footer_map area.popupOpen');
    var screenWidth = $(window).width();
    var screenHeight = $(window).height();
    //popup.bind('click', function(){
    $(document).on("click", "a.popupOpen, #footer_map area.popupOpen", function(){
        var $this = $(this),
            link = $this.attr('href'),
            name= $this.attr('name'),
            width = null,
            height = null,
            scroll = 'no';
        switch (name){
            // 二쇱냼 寃��� 1�④퀎
            case 'address':
                width = 573;
                height = 670;
                break;
            // �꾩씠�� 以묐났��
            case 'idCheck':
                width = 390;
                height = 230;
                break;
            // �� �꾨줈紐� 二쇱냼
            case 'newAddress':
                width = 488;
                height = 610;
                break;
            // 援� 二쇱냼(吏�踰�)
            case 'oldAddress':
                width = 488;
                height = 471;
                break;

            //440x258 �ъ씠利덉갹
            case 'pop440x228':
                width = 440;
                height = 228;
                scroll = 'yes';
                break;

            // 580*630 �고렪踰덊샇.�붾（�� �곕룞
            case 'solutionAaddress':
                width = 580;
                height = 630;
                scroll = 'yes';
                break;

            //496x550 �ъ씠利덉갹
            case 'pop496x550':
                width = 532;
                height = 520;
                scroll = 'yes';
                break;

            //pop667x550
            case 'pop667x550':
                width = 683;
                height = 522;
                scroll = 'yes';
                break;
            //pop667x550
            case 'pop700x491':
                width = 700;
                height = 491;
                scroll = 'no';
                break;

            //pop800x550
            case 'pop800x550':
                width = 815;
                height = 825;
                scroll = 'yes';
                break;

            //pop800x400
            case 'pop800x400':
                width = 836;
                height = 350;
                scroll = 'yes';
                break;

            //loginPopup
            case 'loginPopup':
                width = 420;
                height = 550;
                scroll = 'yes';
                break;

            //csFindPopup
            case 'soFindPopup':
                width = 520;
                height = 270;
                scroll = 'no';
                break;

            //pop820x685
            case 'pop820x685':
                width = 836;
                height = 685;
                scroll = 'yes';
                break;

            //怨좉컼�됯��� . �ㅻ쪟�깅줉 . �곹뭹 議고쉶 �앹뾽
            case 'openItem':
                width = 740;
                height = 630;
                scroll = 'yes';
                break;
            // 怨좉컼�됯��� . 諛⑹넚紐⑤땲�고븨 . 諛⑹넚�꾨줈洹몃옩 議고쉶
            case 'openBrodFind':
                width = 542;
                height = 435;
                scroll = 'yes';
                break;

            //媛먰룷�명듃 �덈궡�앹뾽
            case 'pop817x671':
                width = 817;
                height = 671;
                scroll = 'yes';
                break;

            //媛먰룷�명듃 �덈궡�앹뾽
            case 'hCodiPop':
                width = 900;
                height = 671;
                scroll = 'yes';
                break;

            //�⑤�由ъ〈 �깃툒 洹몃┝�쇰줈 蹂닿린 �앹뾽
            case 'familyGradePop':
                width = 800;
                height = 590;
                scroll = 'yes';
                break;

            //�⑤�由ъ〈 �쇳븨�깃툒 �밴툒諛⑸쾿�뺤씤�앹뾽
            case 'familyNextGradePop':
                width = 520;
                height = 580;
                scroll = 'yes';
                break;

            //�앸갑�� �ш쾶 蹂닿린
            case 'mediaViewPop':
                width = 637;
                height = 576;
                scroll = 'no';
                break;

            //梨꾨꼸�됯��� TV �붿���/�꾨궇濡쒓렇 議고쉶
            case 'evgrTvGb':
                width = 440;
                height = 295;
                scroll = 'no';
                break;

            //梨꾨꼸�됯��� TV �붿���/�꾨궇濡쒓렇 議고쉶
            case 'tour_news':
                width = 650;
                height = 556;
                scroll = 'no';
                break;

            //�뚯썝 �덊눜 �앹뾽
            case 'leaveMemberPopup':
                width = 693;
                height = 395;
                scroll = 'no';
                break;

            //�곹뭹�됰벑濡� �쒗븳 �앹뾽
            case 'itemEvalRegLimtPup':
                width = 693;
                height = 365;
                scroll = 'no';
                break;

            //�곹뭹QNA�깅줉 �앹뾽
            case 'itemQNARegPup':
                width = 800;
                height = 576;
                scroll = 'no';
                break;


            // 怨좉컼�됯��� MD Search
            case 'csegMdSearch':
                width = 405;
                height = 405;
                scroll = 'no';
                break;

            // H肄붾뵒�섍린 �뚮옒�� �앹뾽
            case 'hcodi':
                width = 900;
                height = 590;
                scroll = 'no';
                break;

            //媛꾨떒臾몄쓽 #0900

            case 'simple0900':
                width=550;
                height=570;
                scroll='no';
                break;

            // �뗫뜑 �ъ뾽�먮벑濡앸쾲�� �앹뾽
            case 'busi_license':
                width = 720;
                height = 523;
                scroll = 'no';
                break;


            // 諛⑹넚�뚮━誘� �앹뾽
            case 'brodAlrim':
                width = 795;
                height = 660;
                scroll = 'no';
                break;

            // �ъ엯怨� �뚮━誘� �앹뾽
            case 'rishpAlrim':
                width = 550;
                height = 530;
                scroll = 'no';
                break;

            // 移댄깉濡쒓렇 �앹뾽
            case 'ctlgAlrim':
                width = 460;
                height = 400;
                scroll = 'no';
                break;

            // �곹뭹鍮꾧탳�섍린 �앹뾽(�섏젙�� Common.js�� �덈뒗 �ㅽ뵂�앹뾽 �⑥닔�� 媛숈씠 �섏젙�좉쾬)
            case 'comparePup':
                width = 980;
                height = 700;
                scroll = 'yes';
                break;

            //怨좉컼留뚯”�� �됯� �앹뾽(�섏젙�� Common.js�� �덈뒗 �ㅽ뵂�앹뾽 �⑥닔�� 媛숈씠 �섏젙�좉쾬)
            case 'custStsfEvalPup':
                width = 820;
                height = 535;
                scroll = 'no';
                break;

            // �뚯썝 �뺣낫 鍮꾨�踰덊샇 蹂�寃� �앹뾽
            case 'changePwdPup':
                width = 402;
                height = 350;
                scroll = 'no';
                break;

            // �댁쇅諛곗넦二쇱냼濡� 紐⑸줉
            case 'fogiaddr':
                width = 820;
                height = 505;
                scroll = 'no';
                break;

            // �앸갑�� 寃쏀뭹�뱀꺼�� 紐⑸줉
            case 'prmoWinr':
                width = 613;
                height = 628;
                scroll = 'no';
                break;

            // �쇳븨媛��대뱶
            case 'shopGuide':
                width = 990;
                height = 700;
                scroll = 'no';
                break;

            // �꾩씠�붿갼湲�
            case 'findId':
                width = 835;
                height = 770;
                scroll = 'no';
                break;

            //1:1�곷떞 �꾩씠��/鍮꾨�踰덊샇 臾몄쓽
            case 'cnslCustPop':
                width = 800;
                height = 853;
                scroll = 'yes';
                break;

            // �댁쇅諛곗넚鍮� 寃곗젣
            case 'frgnDlvcPup':
                width = 800;
                height = 475;
                scroll = 'yes';
                break;

            //諛곗넚二쇱냼濡�
            case 'dstnAdr':
                width = 838;
                height = 440;
                scroll = 'yes';
                break;

            //�ъ��덊봽濡쒕え��
            case 'giftPrmo':
                width = 820;
                height = 550;
                scroll = 'yes';
                break;

            //pop651x590
            case 'pop651x590':
                width = 651;
                height = 590;
                scroll = 'yes';
                break;

            //cvstAddress11
            case 'cvstAddress11':
                width = 1024;
                height = 640;
                scroll = 'yes';
                break;

            // 媛� �ъ씤�몄븞�� �앹뾽
            case 'gampopup':
                width = 820;
                height = 413;
                scroll = 'no';
                break;

            // �곹뭹�곸꽭 �ъ씠利덉젙蹂� �앹뾽 �ъ씠利늯otoary
            case 'pop550x700':
                width = 550;
                height = 700;
                scroll = 'yes';
                break;

            default:
                break;
        }
        openPopup(link, name, width, height, scroll, screenWidth, screenHeight);
        return false;
    });

    // �덉씠�댄뙘��(紐⑤떖�앹뾽) 而⑦듃濡�
    var layerPopLink = $('.layerPopLink'),
        layerPopClose = $('.layerPopClose'),			//�덉씠�댄뙘�� �リ린 踰꾪듉
        modalLayerPopup = $('.modalLayerPopup'),		//紐⑤떖 �덉씠�� �앹뾽
        targetLayerPopup = $('.targetLayerPopup'),		//�곷�媛� �덉씠�� �앹뾽
        targetLayerPopup2 = $('.targetLayerPopup2'),		//�곷�媛� �덉씠�� �앹뾽2
        targetLayerCenter = $('.targetLayerCenter'),		//�덉씠�댄뙘�� 以묒븰�뺣젹
        modalWidth = 100,
        modalHeight = 0,	//body�� 珥� �믪씠媛�
        winX = null,
        winY = null;
    targetLayerCenter.click(function(e){
        e.preventDefault();
        var posX = e.pageX,
            posY = e.pageY;
        var target = $(this.hash);
        target.css({'left':'50%', 'top':posY+10, 'margin-left':-target.width()/2})
        target.show();
    })

    layerPopLink.on('click', function(){
        $(this.hash).show();
        return false;
    });

    layerPopClose.on('click', function(){
        $(this).parent('div').hide();
        return false;
    });

    // 以묒븰 �뺣젹 �덉씠�� �앹뾽
    modalLayerPopup.bind('click', function(){
        winX = $(document).width();
        winY = $(window).height();
        var $this = $(this),
            target = $(this.hash),
            scrollTop = $(window).scrollTop(),					//�꾩옱 �ㅽ겕濡� �꾩튂
            x = (winX - target.outerWidth() ) / 2 ,				//�덉씠�댄뙘�� left 媛�
            y = scrollTop + ((winY - target.outerHeight())/2),	//�덉씠�댄뙘�� top 媛�
            popupClose = $this.parents('div.popup'),
            modalHeight =$('body').prop("scrollHeight");

        // �덉씠�댄뙘�� �꾩튂 �뗮똿
        target.css({"top":y+"px","left":x+"px"});
        // ie6�멸꼍�� 紐⑤떖 BG �앹꽦 �섍퀬 �꾩씠�꾨젅�� bg �몄텧
        if (popupClose.attr('style')) {
            if (popupClose.attr('style').indexOf('block')) {
                popupClose.hide();
            };
        };
        // 201208 dim �ㅻ쪟濡� 二쇱꽍泥섎━
        // if ($.browser.version == 6.0) {
        //     ie6layerBg(x, y, target);
        // }else{
        //     // 紐⑤떖 BG �앹꽦
        //     if ($('.modal').length == 0) {
        //         $('body').append('<div class="modal">');
        //         $('.modal').css({"cursor":"move","position":"absolute","z-index":"10000","opacity":"0","background":"#000","top":0,"left":0,"width":modalWidth+"%","height":modalHeight+"px"});
        //         $('.modal').animate({"opacity":"0.8"}, 300,"easeInExpo")
        //     };
        // }
        // �ㅽ겕濡ㅻ컮 �쒓굅
        target.show();

        return false;
    });

    // �곷��꾩튂 �덉씠�� �앹뾽
    targetLayerPopup.bind('click', function(){
        var $this = $(this),
            target = $(this.hash),
            margin = 1,														// �щ갚
            positionY = $this.offset().top + $this.outerHeight() + margin,	// �덉씠�댄뙘�� top 媛�
            positionX = $this.offset().left + $this.outerWidth() + margin;	// �덉씠�댄뙘�� left 媛�
        target.css({"top":positionY+"px","left":positionX+"px"});
        // ie6�멸꼍�� �꾩씠�꾨젅�� bg �몄텧
        if ($.browser.version == 6.0) {
            ie6layerBg(positionX, positionY, target);
        };
        // �덉씠�댄뙘�� View
        target.show();
        return false;
    });

    // �곷��꾩튂 �덉씠�� �앹뾽2(�곹뭹 誘몃━蹂닿린 �덉씠��)
    // live->on �⑥닔濡� 蹂�寃� jquery1.9 deprecated
//     $(document).on('click',  targetLayerPopup2, function(){
//         var $this = $(this),
//             target = $(this.hash),
//             margin = 1,
//             // jquery version�� �곕Ⅸ error 諛쒖깮�쇰줈 二쇱꽍泥섎━
//             // positionY = $this.offset().top + $this.outerHeight() + margin,
//             // positionX = $this.offset().left + $this.outerWidth() + margin;
//             positionY = "";
//             positionX = "";
//         target.css({"top":(positionY-150)+"px","left":200}),
//             modalHeight =$(document).height();
// // 201208 dim �ㅻ쪟濡� 二쇱꽍泥섎━
//             // 紐⑤떖 BG �앹꽦
//             // if ($(".modal").length == 0) {
//             //     $("body").append("<div class='modal'>");
//             //     $(".modal").css({ "cursor" : "move", "position" : "absolute", "z-index" : "10000", "opacity" : "0", "background" : "#000", "top" : "0", "left" : "0", "width" : modalWidth+"%", "height" : (modalHeight + 110)+"px" });
//             //     $(".modal").animate({ "opacity" : "0.8" }, 300, "easeInExpo");
//             // }
//
//
//         // �덉씠�댄뙘�� View
//         target.show();
//         return false;
//     });


    // 紐⑤떖 �덉씠�� �앹뾽 �몄텧 �뺥깭 異붽� - rlatkdals
    $(document).on("click", ".dimLayerPopup", function(e){
        var $target = $(this.hash), positionY, positionX;
        $target.css({ position : "absolute", zIndex : 99999999 });
        positionY = $(window).scrollTop() + (($(window).height() - $target.outerHeight()) / 2), positionX = ($(document).width() - $target.outerWidth()) / 2;
        $target.css({ top : positionY, left : positionX });

        if ($(".modal").length == 0) {
            $("html, body").css({ overflow : "hidden" });
            $("body").append("<div class='modal'></div>");
            $(".modal").css({ position : "absolute", zIndex : 10000, opacity : 0, background : "#000", top : 0, left : 0, width : $(window).width(), height : $(document).height() }).animate({ opacity : 0.8 }, 150, "easeInExpo");
        }
        $target.css({ display : "block" });

        $target.find(".dimLayerPopup-close").on("click", function(e){
            $("html, body").removeAttr("style");
            $target.css({ display : "none" });
            $(".modal").remove();
            e.preventDefault();
        });

        e.preventDefault();
    });

    /**
     * footer - Family Site
     **/
    var $family_site = $('#familySite');
    var $select_layer = $('#select_layer');

    $family_site.bind('mouseover', function(){
        $select_layer.show();
    })
    $family_site.bind('mouseleave', function(){
        $select_layer.hide();
    });

    /* default.js - 20140609 */
    // ui-datepicker-div z-index
    if ($('#ui-datepicker-div').length != 0) $('#ui-datepicker-div').css('z-index',2);

    // �덉씠�댄뙘�� �リ린
    $(".optionClose").bind("click", function(e){
        e.preventDefault();
        $(this).parent().hide();
    })

    $('.delivPayClose a').bind('click', function(e){
        e.preventDefault();
        window.close();
    })

    // �� 0226 源�湲몄콈異붽�
    if ($('.tabNav, .tabNav2').find('a').length != 0) {
        // �� �ㅽ겕由쏀듃 湲곕뒫 援щ텇 [ #�섏씠吏� �대룞�� �ㅽ겕由쏀듃 �숈옉 And �쇰컲 �섏씠吏� 留곹겕�� �ㅽ겕由쏀듃 鍮꾨룞�� ]
        var tabNav = $('.tabNav, .tabNav2').find('a').attr('href').charAt(0) == '#' ? $('.tabNav, .tabNav2').find('a') : null ;		//�� �ㅻ퉬寃뚯씠��
        if (tabNav) {
            var oldDeps = null;
            // �� �대┃ �대깽��
            tabNav.bind('click', function(){
                var $this = $(this);
                // �쒖꽦�붾맂 �앹씠 �덈뒗寃쎌슦
                if (oldDeps != null) {
                    oldDeps.removeClass('on');
                    $(oldDeps.attr('href')).hide();
                };
                // �대┃�� �� / �� 而⑦뀗痢� �쒖꽦��
                $this.addClass('on');
                $($this.attr('href')).show();
                oldDeps = $this;
                // 留곹겕 湲곕뒫 鍮꾪솢�깊솕
                return false;
                // 泥ル쾲吏� �� �쒖꽦��
            }).filter(':eq(0)').click();
        }else{
            $('.tabCont > div').css({"display":"block"})
        };
    };

    var toolTip = $('.tooltipNav'),				//�ㅽ똻 �ㅻ퉬寃뚯씠��
        toolTip_ex = $('.tooltipNav_ex'),		//�ㅽ똻 �ㅻ퉬寃뚯씠��
        dateTooltip = $('.tooltipWrap img'),	//罹섎┛�� �대�吏�
        datepicker = $('#ui-datepicker-div');	//罹섎┛��
    // �ㅻ떃 �ㅻ퉬寃뚯씠�� 留덉슦�� �ㅻ쾭�� �섏쐞 �붿냼以� tooltip�� 李얠븘 蹂댁뿬二�
    toolTip.bind('mouseenter', function(){
        $(this).find('.tooltip').show();
    });
    toolTip_ex.bind('mouseenter', function(){
        $(this).next('.tooltip').show();
    });
    // �ㅽ똻 hide
    toolTip.bind('mouseleave', function(){
        $(this).find('.tooltip').hide();
    });
    toolTip_ex.bind('mouseleave', function(){
        $(this).next('.tooltip').hide();
    });
    // 罹섎┛�� �대�吏� �대┃�� �ㅽ똻 hide
    dateTooltip.click(function(){
        $(this).next('.tooltip').hide();
    });
    // 罹섎┛�� �붿냼 �ㅽ��� 吏���  [ �대┃ �대깽�� 泥섎━瑜� �꾪빐 �몃씪�� �ㅽ��� 吏��� ]
    if (datepicker.length != 0) {
        datepicker.css({"display":"none"});
    };
    // 罹섎┛�� �대�吏� 留덉슦�� �몃쾭
    dateTooltip.hover(function(){
            if (datepicker.length != 0 && datepicker.attr('style').indexOf('block') == -1) {
                $(this).next('.tooltip').show();
            };
        },
        function(){
            if (datepicker.length != 0 && datepicker.attr('style').indexOf('block') == -1) {
                $(this).next('.tooltip').hide();
            };
        });

    // 20140307 - new Tooltip log.
    if($(".call_tooltipL").length != 0){
        var $tooltipID;
        $(".call_tooltipL").on("mouseenter", function(){
            $tooltipID = $("#tooltip_" + $(this).attr("name"));
            $tooltipID.siblings(".tooltip").css({ display : "none" });
            $tooltipID.fadeIn("fast");
        }).parent().mouseleave(function(){
            $tooltipID.css({ display : "none" });
        });
    }

    // 留ㅼ옣 �뚮텇瑜� 由ъ뒪��
    if ($('#sCont').length != 0) {
        var sCont = $('#sCont');
        sCont.find('span.pBtn').bind('click', function(){

            var $this = $(this),											//�대┃�� �붿냼
                toggleTarget  = $this.parent().parent().find('dd:first'), 				//��寃�
                minHeight = 24,												//湲곕낯 �믪씠
                maxHeight = toggleTarget.children('ul').outerHeight(),		//�쇱낀�꾨븣�� �믪씠
                img = $this.children('img'),								//酉� �대�吏� [ �대�吏�媛� �놁쓣寃쎌슦 null 媛� �곸슜 ]
                toggleBack = true;											//�묎린 湲곕뒫 �щ� [�묎린湲곕뒫 �놁쓣�� false]

            if ($this.parents('dl').index() ==2) {
                minHeight = 24
            }else{
                minHeight = 72
            };

            // �좉� �ㅽ뻾 怨듯넻 �⑥닔 �몄텧
            toggle( toggleTarget, minHeight, maxHeight, img, toggleBack );	// �좉� �ㅽ뻾 �⑥닔 �몄텧
        })
    };

    // �ш퀬�섎웾
    $('.status.white2_1').click(function(e){
        e.preventDefault();
        $('#stock_cnt').show();
    })

    $('.acc_con').hide();
    $('.adult_acc_tab li a').bind('mouseenter', function(){
        var $target = $(this.hash);
        $('.acc_con').hide();
        $target.show();
    }).filter(':first').mouseenter();

    // Caps Lock �뚮┝ �ㅽ똻
    var pw_input = $("input[type='password']"),
        pw_input_width = pw_input.outerWidth();
    $('.tooltip_caps').css({'width':pw_input_width-2});

    // �뺥삎�� �대깽�� 移대뱶�� Q&A
    var txt_hide = $('.ev_qna_toggle dd');
    $('.ev_qna_toggle dt').bind('click', function(e){
        e.preventDefault();
        txt_hide.hide();
        $(this).next().show();
    });

    /**
     * 寃��됰컯�� �ъ빱�ㅼ떆 愿묎퀬 �ㅼ썙�� ��젣 [ 理쒖큹 1�� 愿묎퀬 �ㅼ썙�� �쒓굅 ]
     */
    var flag_KeywordfirstClick = false;
    var noDelKeyword_rgx = new RegExp('(/p/pde/)','g');
    var noDelKeyword_Filter = noDelKeyword_rgx.test(locationHref);
    //if ( !noDelKeyword_Filter ){	// del.180206
    if(location.href.indexOf("www.") > -1 || location.href.indexOf("stg.") > -1){
        $(document).on("focusin", "input[class=keyword], input[class=search-box]", function(){
            if(flag_KeywordfirstClick == false) $(this).attr('value','');
            flag_KeywordfirstClick = true;
            if($(".pop-keyword-list").length > 0 && $("input[class=keyword], input[class=search-box]").val() == ""){
                $(".search_layer1").css({ display : "none" });
                $(".pop-keyword-list").css({ display : "block" });	// �멸린/理쒓렐 寃��됱뼱 �덉씠�� �몄텧
                searchKeywordIndex();	// 170922 - �멸린寃��됱뼱 �ㅽ��� 湲�癒몃━ �꾩씠肄� - rlatkdals
            }
        });
    }
    //}

    // �ъ빱�� �꾩썐 �� 寃��됯껐怨� �덈궡 �덉씠�� �④�
    $(document).on("focusout", "input[class=keyword], input[class=search-box]", function(){
        if ($(this).val() && ($(".search_layer1").css("display") == "block")) {
            $(".search_layer1").css({ display : "none" });
        }
    });

    /**
     * Accordion Toggle [ �쇳븨媛��대뱶 HTML, 留덉씠�섏씠吏� LNB ]
     **/
    var accordionToggle_rgx = new RegExp('(/html/shop/)|(/p/ccd/)|(/p/mpa/)|(/p/mpb/)|(/p/mpc/)|(/p/mpd/)|(/p/mpe/)|(/p/mpf/)','g');
    var accordionToggle_Filter = accordionToggle_rgx.test(locationHref);
    if ( accordionToggle_Filter ){
        var accordionMenu = $('.accordionMenu'),
            selector = accordionMenu.find('> li > a'),
            showSpeed = 300,
            hideSpeed = 300;

        // 寃��됲썑 on�대옒�ㅺ� �덈뒗�붿냼 �쒖꽦��[�섏씠吏� �ㅻ퉬寃뚯씠��]
        selector.each(function(){
            if ($(this).hasClass('on') && $(this).next('ul').length != 0 ){
                $(this).next('ul').show();
                oldselector = $(this);
            };
        });

        selector.bind('click', function(){
            var $this = $(this),
                // �ㅻ퉬寃뚯씠�� �섏쐞硫붾돱
                deps2 = $this.next('ul'),
                // �ㅻ퉬寃뚯씠�� 留곹겕媛�
                link = $this.attr('href');
            // on �대옒�ㅺ� �덈뒗寃쎌슦 由ы꽩
            if ($this.hasClass('on')) return false;
            if ( deps2.length === 0 ) location.href=link
            if (deps2.hasClass('active')) {
                deps2.slideUp(hideSpeed);
                deps2.removeClass('active')
                return false;
            }
            deps2.slideDown(showSpeed)
            deps2.addClass('active');

            return false;
        });
    }

    /**
     * Q&A Toggle [ �곹뭹�곸꽭 - �곹뭹 Q&A ]
     **/
    var qaToggle_rgx = new RegExp('(/p/pda/itemPtc.do)','g');
    var qaToggle_Filter = qaToggle_rgx.test(locationHref);
    if ( qaToggle_Filter ){
        $('#tblFAQ td.a div.divA, #tblFAQ td.a div.divQ').hide(); // �섏젙 :  150820
        $(document).on('click', '#tblFAQ tr.ihdye', function(e){
            e.preventDefault();
            if($(this).hasClass('sc')){//鍮꾨�湲�
                if($(this).find('td.q > a').length > 0){
                    //�ㅽ뵂�� �쒕ぉ �대┃�� �ㅼ떆 close�섍린 �꾪빐 異붽�
                    if($(this).next('tr').find("div.divQ:not(:visible)").length > 0){
                        $(this).children('td.q').addClass('on');
                        $(this).children().css('border-bottom','0');

                        var nextTR_divA = $(this).next('tr').find('.divA');
                        var nextTR_divQ = $(this).next('tr').find('.divQ');
                        nextTR_divA.show().css({"border-bottom":"1px solid #d5d5d5"});
                        nextTR_divQ.show();
                    }
                    else{
                        $(this).children().css({"border-bottom":"1px solid #d5d5d5"});
                        $(this).children('td.q').removeClass('on');
                        var nextTR_divA = $(this).next('tr').find('.divA');
                        var nextTR_divQ = $(this).next('tr').find('.divQ');
                        nextTR_divA.hide();
                        nextTR_divQ.hide();
                    }
                }
            }else{
                //�ㅽ뵂�� �쒕ぉ �대┃�� �ㅼ떆 close�섍린 �꾪빐 異붽�
                if($(this).next('tr').find("div.divQ:not(:visible)").length > 0){
                    $(this).children('td.q').addClass('on');
                    $(this).children().css('border-bottom','0');

                    var nextTR_divA = $(this).next('tr').find('.divA');
                    var nextTR_divQ = $(this).next('tr').find('.divQ');
                    nextTR_divA.show().css({"border-bottom":"1px solid #d5d5d5"});
                    nextTR_divQ.show();
                }else{
                    $(this).children().css({"border-bottom":"1px solid #d5d5d5"});
                    $(this).children('td.q').removeClass('on');
                    var nextTR_divA = $(this).next('tr').find('.divA');
                    var nextTR_divQ = $(this).next('tr').find('.divQ');
                    nextTR_divA.hide();
                    nextTR_divQ.hide();
                }
            }
        })

    }

    /**
     * 二쇰Ц�� �묒꽦 - �щ윭 怨녹쑝濡� 諛곗넚 (吏곸젒�낅젰, �묒��뚯씪 �낅줈��)
     **/
    var odaShip_rgx = new RegExp('(/p/oda/)','g');
    var odaShip_Filter = odaShip_rgx.test(locationHref);
    if ( odaShip_Filter ){
        var outerHeight = $('.heightFix').outerHeight(),
            outerHeightCont = $('.heightFix'),
            innerHeight = $('.heightFix > table').outerHeight(),
            controlBtn = $('#openCont1');
        controlBtn.bind('click', function(){
            var table = $('.heightFix > table');
            if (outerHeight < innerHeight ) {
                var height = $('.heightFix > table').outerHeight();
                outerHeightCont.animate({"height":height+"px","max-height":height+"px"}, 500, 'easeOutBack', function(){});
            };
            return false;
        });
    }

    $('.pwbg').focus(function(){
        $(this).css('background-position','10000px 10000px');
    }).blur(function() {
        if($(this).val().length == 0) {
            $(this).css('background-position','15px 7px');
        }
    });

    //faq anwser tr 蹂댁엫
    $('.faqTable table tbody tr.anstr').show();

    $('.corporate_pwd').focus(function(){
        $(this).css('background-position','10000px 10000px');
    }).blur(function() {
        if($(this).val().length == 0) {
            $(this).css('background-position','15px 4px');
        }
    });

    var listDelete = $('.listDelete'),
        productListChk = $('.allChk')

    listDelete.bind('click', function(){
        $(this).parents('tr').remove();
        return false;
    });

    // live->on �⑥닔濡� 蹂�寃� jquery1.9 deprecated
    // $(document).on('click',  productListChk, function(){
    //     var checked = $(this).attr('checked');
    //     var pdtChk = $(this).parents('table.basketLsit, .sympathy2 table, .sympathy3, .addrContaTable, .recentListWrap, .pop_adr_list, .contents, .layer_content').find('input.pdtChk')
    //     if (checked) {
    //         pdtChk.attr('checked', 'checked')
    //     }else{
    //         pdtChk.removeAttr('checked')
    //     };
    // });

    var $priceDLx216 = $('.previewCont .priceDL');
    $('#preview_mode1').click(function(){
        $(this).addClass('on');
        $(this).next().removeClass('on');
        $('.previewCont').removeClass('mode200');
        $('.mainProductWrap > img').each(function(){
            var swapImg = $(this).attr('src').replace('200x200','480x480');
            $(this).attr('src',swapImg);
        })
        $priceDLx216.removeClass('priceDLx216');
    })
    $('#preview_mode2').click(function(){
        $(this).addClass('on');
        $(this).prev().removeClass('on');
        $('.previewCont').addClass('mode200');
        $('.mainProductWrap > img').each(function(){
            var swapImg = $(this).attr('src').replace('480x480','200x200');
            $(this).attr('src',swapImg);
        })
        //winResize();
        $priceDLx216.addClass('priceDLx216');
    })

    $('.bigGalleryUL li div.cover').bind('click',function(){
        $(this).parent().siblings().removeClass('on');
        $(this).parent().addClass('on');
        previewMainPic_idx = $(this).parent().attr('id').substr(4);
        $('[id^=placeHolder_]').hide();
        $('#placeHolder_'+previewMainPic_idx).show();
    })
    $('.smallGalleryUL li div.cover').bind('click',function(){
        $(this).parent().siblings().removeClass('on');
        $(this).parent().addClass('on');
        var s_img = $(this).prev('a').find('img').attr('src');
        if ($('.previewCont.mode200').length != 0) {
            var b_img = s_img.replace('60x60','200x200');
            $(this).parent().parent().parent().parent().prev().prev().find('.mainProductWrap img').attr('src',b_img);
        } else {
            var b_img = s_img.replace('60x60','480x480');
            $(this).parent().parent().parent().parent().prev().prev().find('.mainProductWrap img').attr('src',b_img);
        }
    });

    var trigger = $('.cultureCarouselUL li a');
    var menuLength = $('.listToggle > ul:not(".spcList") > li').length;
    var menuHeight = $('.listToggle > ul > li').outerHeight();
    var toggleHeight = '';
    var maxViewMenu = 10;
    var totalMax = 20;
    var target = '';
    var menuArr = [];

    //寃��� - 寃곌낵 �� �ш��� �ㅽ겕濡ㅻ뵲�� ��吏곸씠�� 諛곕꼫(�좏깮議곌굔)
    if ($('#search_rangeBox').length != 0) {
        var $search_rangeBoxScrolling = $('.rangeBox'),
            $footer_top =$('#footer'),
            $re_search = $('.re_search');
        var posTop = parseInt($search_rangeBoxScrolling.offset().top);
        $(window).scroll(function() {
            sideBarFixed();
        });
    }

    if (menuLength > totalMax) {
        $('.listToggle').each(function(n){
            var $this = $(this);
            var len = $this.find(' > ul:not(".spcList") > li').length;
            menuArr[n] = len;
        });

        if ( menuArr[0] > maxViewMenu && menuArr[1] > maxViewMenu ) {
            toggleHeight = (menuHeight*maxViewMenu)
            target = $('.listToggle')
        }else{
            if (menuArr[0] > menuArr[1]) {
                toggleHeight = (totalMax - menuArr[1]) * menuHeight;
                target = $('.listToggle').eq(0)
            }else{
                toggleHeight = (totalMax - menuArr[0]) * menuHeight;
                target = $('.listToggle').eq(1)
            };
        };
        $('.detailViewBtn').bind('click', function(){
            var $this = $(this),											//�대┃�� �붿냼
                toggleTarget  = target, 									//��寃�
                minHeight = toggleHeight,												//湲곕낯 �믪씠
                maxHeight = toggleTarget.children('ul').outerHeight(),		//�쇱낀�꾨븣�� �믪씠
                img = $this.children('img'),								//酉� �대�吏� [ �대�吏�媛� �놁쓣寃쎌슦 null 媛� �곸슜 ]
                toggleBack = true;											//�묎린 湲곕뒫 �щ� [�묎린湲곕뒫 �놁쓣�� false]
            // �좉� �ㅽ뻾 怨듯넻 �⑥닔 �몄텧
            toggle( toggleTarget, minHeight, maxHeight, img, toggleBack, true);	// �좉� �ㅽ뻾 �⑥닔 �몄텧
            sideBarFixed()
        });
        posTop = parseInt($search_rangeBoxScrolling.offset().top);
    }

    function sideBarFixed(){
        if(setHeight == 0) setHeight = 1;	// �쒗쑕�� 諛곕꼫媛� �놁쓣 寃쎌슦 臾댁“嫄� 媛믪� 1

        var footer_top = parseInt($footer_top.offset().top);
        var curr_position = (setHeight > 0)? setHeight + $(document).scrollTop() : 0;
        var d_height = $(document).height();
        var w_height = $(window).height();
        var bottom = $('#footer').offset().top;
        if (!$search_rangeBoxScrolling.attr('style')) {
            posTop = parseInt($search_rangeBoxScrolling.offset().top);
        };

        if ((curr_position + 10) > posTop) {
            var gapTop = curr_position - posTop;
            $re_search.removeClass('hidden');
            $search_rangeBoxScrolling.attr('style','position:fixed;top:'+(setHeight+30)+'px;width:168px;');
        } else {
            $re_search.addClass('hidden');
            $search_rangeBoxScrolling.removeAttr('style');
        }
        if (($search_rangeBoxScrolling.outerHeight() ) > ( w_height - $footer_top.outerHeight()) ) {
            if ((curr_position+w_height) > bottom  ){ //�ㅽ겕濡� ��, 諛붾떏, 留� �꾨옒
                var bottomFixed = ( (curr_position+w_height) - bottom ) + 50 - setHeight;
                $search_rangeBoxScrolling.attr('style','position:fixed;bottom:'+bottomFixed+'px;width:168px;');
            };
        };
    };
    if ($('.payment_info_wrap').length != 0){
        resizngPaymentArea();
        $(window).resize(function(){
            resizngPaymentArea();
        });
    };

    //吏꾪뻾以묒씤 �대깽�� 泥댄뿕�꾧린由ъ뒪��
    var free_post_tblUL = $('.free_post_tblUL'),
        free_post_tbl_a = free_post_tblUL.find('span.left a');

    free_post_tblUL.find('.ev_free_detail').parent('li').hide();
    free_post_tbl_a.bind('click', function(e){
        e.preventDefault();
        if (!$(this).is('.on')) {
            $(this).addClass('on');
            free_post_tblUL.find('.ev_free_detail').parent('li').hide();
            $(this).parent().parent().next('li').show();
            $(this).parent().parent().siblings().find('span.left a').removeClass('on');
        } else {
            $(this).parent().parent().next('li').hide();
        };
    });

    //蹂몄씤�몄쬆�� - 20140310 - 源��곷� - �ㅺ뎅�� �뚯썝媛��낆쑀�� 愿��⑥쑝濡� �섏젙
    $('.tabNav > li > a').bind('click', function(){
        var $tabIndex = $(this).parent().index();
        $(this).parent().addClass('on').siblings().removeClass('on');
        $('.tabCont > div').hide();
        $('#tabCont' + ($tabIndex+1)).show();
    })

    //lnb   ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    if ($('.layerViewMenu', '#content').length != 0) {
        var layerMenu = $('.layerViewMenu'),
            sideCont = $('.sideCont'),
            allBrand = $('.allBrandViewBox > h3 > a'),
            btnX = $('.closeLayerBtn'),
            menu_trigger = $('.layerViewMenu > ul >li > a'), // 諛⑹넚�곹뭹hot click �ㅻ쭏�몄뭅硫붾씪, 而댄뙥�명븯�댁뿏��, 誘몃윭由ъ뒪, �곗꽭�꾩뭅硫붾씪.......�섎꽕
            submenu = $('.sideMenu ul .deps2'),
            prev = null,
            plusNum = 0;

        if ($('ul.banner_con2').length != 0) {
            lnbBannerSetting();
        };
        submenu.filter(":last").css({"border-right":"0 none"})
        menu_trigger.bind('mouseenter focus', function () {


            // 2Depth �댄븯 �쒕툕�덉씠�� �몄텧 湲곗� �뺤쓽
            var	thisPosition = layerMenu.offset().top - setHeight,	// lnb �꾩튂
                thisHeight = layerMenu.outerHeight(),	// lnb �꾩껜 �믪씠
                defaultTop = 30;

            var $this = $(this),
                target = $this.next('.deps2Wrap'),		//2 �곸뒪硫붾돱��
                elemPosition = $this.offset().top,		//硫붾돱 Top �꾩튂
                position = thisHeight - (elemPosition - thisPosition),
                top = null,
                deps_length = $this.next('.deps2Wrap').children('.deps2').size(),
                scrollTop = (setHeight > $(window).scrollTop()) ? setHeight - $(window).scrollTop() : $(window).scrollTop(),
                windowHheight = $(window).outerHeight(),
                cutHeight = 0;
            target.width(deps_length * 170);

            var targetHeight = target.outerHeight();
            if (prev != null) {
                hideLayer();
                target.removeAttr('style');
            };

            if ( (scrollTop + windowHheight) > (thisPosition+thisHeight) ) {
                if ( (thisPosition+thisHeight) - scrollTop <  targetHeight) {
                    plusNum = (scrollTop + 31);
                }else{
                    plusNum = (scrollTop + windowHheight) - (thisPosition+thisHeight);
                };
            }else{
                plusNum = 0;
            };

            if (target.length != 0){ //�ш린
                if ($this.parents('.noSposition').length != 0) {
                    //elemPosition : 2depth 媛� �쒖옉�섎뒗 �꾩튂
                    //scrollTop :
                    if (elemPosition - scrollTop < 60) {
                        top = elemPosition -scrollTop - 30;
                    }else if ( (elemPosition + targetHeight) - scrollTop > windowHheight) {
                        top = (elemPosition + targetHeight) - scrollTop - windowHheight + plusNum -setHeight;
                    }
                    else{
                        if ( (thisPosition+thisHeight) < (elemPosition + targetHeight - defaultTop - setHeight) ) {
                            //3depth 媛� 20媛� �댁긽
                            plusNum = (targetHeight - position) - 30 - setHeight + 4;
                        }else{
                            //3depth 媛� 20媛� �댄븯
                            plusNum = 0;
                            if(target.find(".deps2").find("li").length < 2) plusNum = targetHeight - 50;
                        }
                        top = defaultTop + plusNum - 4 ;
                    };
                    target.css({"top":-top+"px","width":(deps_length * 169)+"px"})
                };

                $this.addClass('on');
                target.show();
                if (target.length != 0 && target.offset().top < scrollTop) {
                    target.css({"position":"fixed","left":"50%","top":(defaultTop + setHeight)+"px","margin-left":"-327px","width":(deps_length * 170)+"px"})
                }
                if (target.offset().top < sideCont.offset().top) {
                    target.css({"position":"fixed","left":"50%","top":sideCont.offset().top+"px","margin-left":"-327px","width":(deps_length * 170)+"px"});
                }
            }else{
                hideLayer();
            };
            prev = $this;
        });

        submenu.bind('mouseenter mouseleave', function(){
            $(this).prev('a').addClass('off');
        });

        $('.sideMenu > ul > li').bind('mouseleave', function(){
            $(this).children('a').removeClass('on');
            $(this).children('a').removeClass('off');
        });

        layerMenu.bind('mouseleave', function(){
            if(prev != null) hideLayer();
        });

        function hideLayer(){
            if (prev != null) {
                prev.removeClass('on');
                prev.siblings('.deps2Wrap').hide();
                prev.siblings('.deps2Wrap').removeAttr('style');
            };
        };

        allBrand.bind('click', function (event) {
            var $this = $(this);
            $this.parent('h3').next('div.allBrandView').toggle();
            $this.addClass('on');
            if ($this.parent().next().css('display') == 'none'){
                $this.removeClass('on');
            }
            return false;
        });

        btnX.bind('click', function(){
            $(this).parent('div').hide();
            allBrand.removeClass('on')
            return false;
        });
    }

    if ($(".imgLiquidFill").length != 0) {
        $(window).bind('load', function(){
            $(".imgLiquidFill").imgLiquid({fill:true, fadeInTime:50});
        });
    };
    if ($('input.from').length != 0) {
        $( ".from" ).datepicker({
            showOn: "button",
            buttonImage: default_image_url + "hmall/co/ico_cal.gif",
            buttonText : '�쒖옉�좎쭨',
            buttonImageOnly: true,
            defaultDate: "+1w",
            changeYear: true,
            changeMonth: true,
            numberOfMonths: 1,
            dateFormat: "yymmdd",
            showButtonPanel: true,
            closeText: "�リ린",
            monthNamesShort: setMonth(),
            monthNames: setMonth(),
            dayNamesMin: setDayName(),
            onClose: function( selectedDate ) {
                $( ".to" ).datepicker( "option", "minDate", selectedDate );
            }
        });
        $( ".to" ).datepicker({
            showOn: "button",
            buttonImage: default_image_url + "hmall/co/ico_cal.gif",
            buttonText : '醫낅즺�좎쭨',
            buttonImageOnly: true,
            defaultDate: "+1w",
            changeMonth: true,
            changeYear: true,
            numberOfMonths: 1,
            dateFormat: "yymmdd",
            showButtonPanel: true,
            closeText: "�リ린",
            monthNamesShort: setMonth(),
            monthNames: setMonth(),
            dayNamesMin: setDayName(),
            onClose: function( selectedDate ) {
                $( ".from" ).datepicker( "option", "maxDate", selectedDate );
            }
        });
    };
    if ($('input.datePicker').length != 0) {
        $( ".datePicker" ).datepicker({
            showOn: "button",
            buttonImage: default_image_url + "hmall/co/ico_cal.gif",
            buttonText : '�좎쭨�좏깮',
            buttonImageOnly: true,
            defaultDate: "",
            changeMonth: true,
            changeYear: true,
            numberOfMonths: 1,
            dateFormat: "yymmdd",
            showButtonPanel: true,
            closeText: "",
            monthNamesShort: setMonth(),
            monthNames: setMonth(),
            dayNamesMin: setDayName()
        });
    };
    if ($('#viewDatePicker').length != 0) {
        $( "#viewDatePicker" ).datepicker({
            buttonImage: default_image_url + "hmall/co/ico_cal.gif",
            buttonText : '�좎쭨�좏깮',
            buttonImageOnly: true,
            defaultDate: "",
            changeMonth: true,
            changeYear: true,
            numberOfMonths: 1,
            dateFormat: "yymmdd",
            showButtonPanel: true,
            closeText: "",
            monthNamesShort: setMonth(),
            monthNames: setMonth(),
            dayNamesMin: setDayName()
        });
    };

    // type2 Hot Item
    if ($('.hm1023').length != 0) {
        imgBit.pazing.init( {
            pageSize: 1,
            listArray: jQuery( '.type2_hot_item ul' ).toArray(),
            ltbtnSelector: '.type2_hot_item .controls a.lt',
            gtbtnSelector: '.type2_hot_item .controls a.gt',
            upName: '_on'
        });
    }

    //�꾨뮘, 鍮꾨쾲李얘린 ��
    if($('.memberIdSearch').length != 0){
        $('.memberIdSearch').navContent({
            contWrap 		: $('.memberIdSearch')
            ,	nav 			: $('.search_info_pop > li')
            ,	activeClass 	: 'on'
            ,	contents 			: $('div.search_infos')
            ,	contLength 	: $('div.search_infos').length
            ,	eventType 		: 'click'
            ,	autoRolling		: false
        });
    }

    //�ㅽ럹�쒗듅媛�
    if($('.tour_tabULWrap').length != 0){
        $('.tour_tabULWrap').navContent({
            contWrap 		: $('.tour_tabULWrap')
            ,	nav 			: $('#tour_tabUL > li')
            ,	activeClass 	: 'on'
            ,	contents 			: $('ul.tour_specialUL')
            ,	contLength 	: $('ul.tour_specialUL').length
            ,	eventType 		: 'click'
            ,	autoRolling		: false
        });
    }

    // Media Main  [ BEST EVENT ]
    if($('.tv_bestEvent').length != 0){
        $('.tv_bestEvent').navContent({
            contWrap 		: $('.tv_bestEvent')
            ,	contType 		: 'slide'
            ,	nav 			: $('.tv_bestEventUL > li')
            ,	activeClass 	: 'on'
            ,	contents 			: $('.img_bestEvent > a')
            ,	contLength 	: $('.tv_bestEventUL > li').length
            ,	eventType 		: 'mouseenter'
            ,	autoSpeed 		: 2000
            ,	easing 			: 'swing'
            ,	autoRolling		: true
        });
    }

    // Media Main  [ category ]
    if($('.tv_consultTabWrap').length != 0){
        $('.tv_consultTabWrap').navContent({
            contWrap 		: $('.tv_consult')
            ,	contType 		: 'slide'
            ,	nav 			: $('.tv_consultTab > li')
            ,	activeClass 	: 'on'
            ,	contents 			: $('.tv_consultContWrap')
            ,	contLength 	: $('.tv_consultTab > li').length
            ,	eventType 		: 'mouseenter'
            ,	autoSpeed 		: 2000
            ,	easing 			: 'swing'
            ,	autoRolling		: true
        });
    }

    // Event Main  [ culture event ]
    if($('.cultureEventCont').length != 0){
        $('.cultureEventCont').navContent({
            contWrap 		: $('.tv_consult')
            ,	contType 		: 'slide'
            ,	nav 			: $('.cultureCarouselUL > li')
            ,	activeClass 	: 'on'
            ,	contents 			: $('.cultureEventCont > div')
            ,	contLength 	: $('.cultureEventCont > div').length
            ,	eventType 		: 'mouseenter'
            ,	autoRolling		: false
        });
    }

    // Event Main  [ visual ]
    if($('.bigEventWrap').length != 0){
        $('.bigEventWrap').navContent({
            contWrap 		: $('.bigEventWrap')
            ,	contType 		: 'slide'

            ,	nav 			: $('.bigCarouselUL > li')
            ,	activeClass 	: 'on'
            ,	contents 			: $('.bigEventUL > li')
            ,	contLength 	: $('.bigEventUL > li').length
            ,	eventType 		: 'mouseenter'
            ,	autoSpeed 		: 2000
            ,	easing 			: 'swing'
            ,	autoRolling		: true
        });
    }

    // tour Main  [ visual ]    [ 濡ㅻ쭅 �곸슜 �щ� �뺤씤 ]
    if($('.tour_carousel').length != 0){
        $('.tour_carousel').navContent({
            contWrap 		: $('.tour_carousel')
            ,	contType 		: 'slide'
            ,	nav 			: $('.tour_carouselUL > li')
            ,	activeClass 	: 'on'
            ,	contents 			: $('.tour_visualUL > li')
            ,	contLength 	: $('.tour_visualUL > li').length
            ,	eventType 		: 'mouseenter'	// 20131204 - eventType click -> mouseenter - K_Sangmin
            ,	autoSpeed 		: 2000
            ,	autoRolling		: true
        });
    }

    /* rolling1.js - 20140609 */
    //rolling1 (�멸린釉뚮옖��)
    if ($('.hot_item').length != 0) {
        $('[id^=brand_]').not('#brand_1').hide();

        var botton_up = $('#controlUp');
        var botton_down = $('#controlDown');
        var botton_stop = $('#controlStop');

        botton_up.bind('click',function(e){
            e.preventDefault();
            if(event_botton_click == 0){
                event_stop();
                event_botton_click = 1;
                var move_obj = $(".eventUL");
                var move_obj_height = (move_obj.find(">li").height() * -1);

                move_obj.find(">li").eq(0).clone().appendTo(move_obj);
                move_obj.animate(
                    {top: move_obj_height}
                    ,event_botton_speed
                    ,function(){

                        move_obj.find(">li").eq(0).remove();
                        move_obj.css("top","0");

                        event_botton_click = 0;

                        if(event_botton_auto == "Y"){
                            event_play();
                        }
                    }
                );
            }
        })

        botton_down.bind('click',function(e){
            e.preventDefault();
            if(event_botton_click == 0){
                event_stop();
                event_botton_click = 1;
                var move_obj = $(".eventUL");
                var move_obj_height = (move_obj.find(">li").height() * -1);

                move_obj.find(">li:last").clone().prependTo(move_obj);
                move_obj.css("top",move_obj_height+"px");

                move_obj.animate(
                    {top: 0}
                    ,event_botton_speed
                    ,function(){

                        move_obj.find(">li:last").remove();

                        event_botton_click = 0;

                        if(event_botton_auto == "Y"){
                            event_play();
                        }
                    }
                );
            }
        })
    }

    //rolling5 (理쒓렐蹂몄긽��)    [               ��젣 �덉젙                ]
    if ($('.sl_last').length != 0) {
        var botton_up5 = $('#control_L');
        var botton_down5 = $('#control_R');
        var botton_stop = $('#controlStop');

        botton_up5.bind('click',function(){
            if(event_botton_click == 0){
                event_stop();
                event_botton_click = 1;
                var move_obj = $(".view_thumWrap .view_thum, .view_thumWrap_768 .view_thum");
                var move_obj_width = (move_obj.find(">li").width() * -1);

                move_obj.find(">li").eq(0).clone().appendTo(move_obj);
                move_obj.animate(
                    {left: move_obj_width}
                    ,event_botton_speed
                    ,function(){

                        move_obj.find(">li").eq(0).remove();
                        move_obj.css("left","0");

                        event_botton_click = 0;

                        if(event_botton_auto == "Y"){
                            event_play();
                        }
                    }
                );
            }
            return false;
        })

        botton_down5.bind('click',function(){
            if(event_botton_click == 0){
                event_stop();
                event_botton_click = 1;
                var move_obj = $(".view_thumWrap .view_thum, .view_thumWrap_768 .view_thum");
                var move_obj_width = (move_obj.find(">li").width() * -1);

                move_obj.find(">li:last").clone().prependTo(move_obj);
                move_obj.css("left",move_obj_width+"px");

                move_obj.animate(
                    {left: 0}
                    ,event_botton_speed
                    ,function(){

                        move_obj.find(">li:last").remove();

                        event_botton_click = 0;

                        if(event_botton_auto == "Y"){
                            event_play();
                        }
                    }
                );
            }
            return false;
        })
    }

    if ($('.hmall_news').length != 0){
        event_play7();
        $('.hmall_news').hover(function(){
            event_stop();
        },function(){
            event_up7();
        })

        var open_H = ($('.news_content p').outerHeight() + 10) * $('.news_content p').size();
        var $news_content_arrow = $('.news_content_arrow');
        var close_H = $('.news_content').height();
        $('.newsContentWrap').hover(function(){
            var $this = $(this).children('.news_content');
            $news_content_arrow.addClass('open');
            $this.height(open_H);
            $('.news_content').addClass('open');
        },function(){
            var $this = $(this).children('.news_content');
            $news_content_arrow.removeClass('open');
            $this.height(close_H);
            $('.news_content').removeClass('open');
        })
    }

    //rolling8 �곹뭹�곸꽭 �대씪�곕뱶    [  �곹뭹 �ш쾶蹂닿린 �덉씠�� �앹뾽 ]
    if ($('.productGalleryUL').length != 0) {
        var slideBox = $('.productGalleryUL')
        var botton_prev8 = $('.productGallery > #btn_prev1');
        var botton_next8 = $('.productGallery > #btn_next1');
        var botton_stop = $('#controlStop');
        var sumList = $('.productGalleryUL>li');
        var li_width = $('.productGalleryUL li').outerWidth() + 2;
        var max = $('.productGalleryUL li').size();
        var galleryBigImg = $('.cloudzoom');
        var cnt = 7;
        var count = 0;

        if($('.productGallery li').size() >= cnt) {
            botton_prev8.show();
            botton_next8.show().addClass('on')
        }
        slideBox.css({width:(li_width * max) +"px",position:'absolute'})
        sumList.filter(':first').addClass('active');
        $('.productGalleryUL').width();


        sumList.bind('mouseenter', function(){
            var num = $(this).index()
            activeThumbnail(num);
        });
        botton_prev8.bind('click',function(e){
            if (!$(this).hasClass('on')) return false;
            e.preventDefault();
            rollingProduct(count-1)
        })

        botton_next8.bind('click',function(e){
            if (!$(this).hasClass('on')) return false;
            e.preventDefault();
            rollingProduct(count+1)
        })

        function rollingProduct(n){
            var index = n;
            var current = sumList.filter(':eq('+index+')').find('>a')
            var ul_len = parseInt(index / cnt);
            if (index > cnt-1) {
                slideBox.css({"left":-(li_width * (cnt*ul_len))+"px"});
            }else{
                slideBox.css({left:0});
            }
            checkArrow(index)
            sumList.removeClass('active');
            current.addClass('active');
            current.mouseover();
            count = index;
        };

        function activeThumbnail(num){
            sumList.removeClass('active');
            sumList.filter(':eq('+num+')').addClass('active');
            count = num
            checkArrow(count)
        };

        function checkArrow(index){
            if (index <= 0) {
                botton_prev8.removeClass('on')
            }else if (max-1 <= index) {
                botton_next8.removeClass('on')
            }else{
                botton_prev8.addClass('on')
                botton_next8.addClass('on')
            }
        }
    }

    //rolling9 ()
    var botton_prev9 = $('.dangolPrevS');
    var botton_next9 = $('.dangolNextS');
    var botton_stop = $('#controlStop');

    botton_prev9.bind('click',function(){
        if(event_botton_click == 0){
            event_stop();
            event_botton_click = 1;
            var move_obj = $(".storeListWrap .navTlt ul");
            var move_obj_width = (move_obj.find(">li").width() * -1);

            move_obj.find(">li").eq(0).clone(true).appendTo(move_obj);
            move_obj.animate(
                {left: move_obj_width}
                ,event_botton_speed
                ,function(){

                    move_obj.find(">li").eq(0).detach();
                    move_obj.css("left","0");

                    event_botton_click = 0;

                    if(event_botton_auto == "Y"){
                        event_play();
                    }
                }
            );
        }
        return false;
    })

    botton_next9.bind('click',function(){
        if(event_botton_click == 0){
            event_stop();
            event_botton_click = 1;
            var move_obj = $(".storeListWrap .navTlt ul");
            var move_obj_width = (move_obj.find(">li").width() * -1);

            move_obj.find(">li:last").clone(true).prependTo(move_obj);
            move_obj.css("left",move_obj_width+"px");

            move_obj.animate(
                {left: 0}
                ,event_botton_speed
                ,function(){

                    move_obj.find(">li:last").detach()

                    event_botton_click = 0;

                    if(event_botton_auto == "Y"){
                        event_play();
                    }
                }
            );
        }
        return false;
    })
    /*
     * del. 171213 - rlatkdals
        var left = $('.hcodiViewBtnPrev');
        var right = $('.hcodiViewBtnNext');
        var elem = $('.hcodirolling');
        var list = $('.hcodirolling').find('>li');
        var width = 728;
        var count = 0;

        elem.css({"width":(width * list.length) +"px"});
        btnSet(count);

        left.bind('click', function(){
            if	(count == 0){
                left.addClass("disable");
            } else {
                count--;
                left.removeClass("disable");
            }
            btnSet(count);
            elem.css({"left":-(width*count)+"px"});
            return false;
        });

        right.bind('click', function(){
            if	( count ==  list.length -1 ){
                right.addClass("disable");
            } else {
                right.removeClass("disable");
                count++;
            }
            btnSet(count);
            elem.css({"left":-(width*count)+"px"});
            return false;
        });

        function btnSet(index){
            if	( index == 0 ){
                left.addClass("disable");
            }else{
                left.removeClass("disable");
            }

            if	( index == list.length -1 ){
                right.addClass("disable");
            }else{
                right.removeClass("disable");
            }

        }

        hcodiRolling.rolling = function(){
            btnSet(count);
            elem.css({"left":-(width*count)+"px"});
        };

        hcodiRolling.setCount = function(int){
            count = int;
        };

        hcodiRolling.getCount = function(){
            return count;
        };
    */
    var move_obj = $("#rollingType1, #rollingType2, #rollingType3");
    var list = $('#rollingType1, #rollingType2, #rollingType3').find('>li');
    var move_obj_width = list.length*200;
    move_obj.width(move_obj_width);

    $('.rollingType1Wrap #rollingType1 > li:nth-child(4n-3)').css({'margin-left':'0'});
    $('.rollingType1Wrap #rollingType1 > li:nth-child(1)').css({'margin-left':'-1px'});
    $('.rollingType1Wrap #rollingType2 > li:nth-child(4n-3)').css({'margin-left':'0'});
    $('.rollingType1Wrap #rollingType2 > li:nth-child(1)').css({'margin-left':'-1px'});
    $('.rollingType1Wrap #rollingType3 > li:nth-child(5n-4)').css({'margin-left':'0'});
    $('.rollingType1Wrap #rollingType3 > li:nth-child(1)').css({'margin-left':'-1px'});

    if($('.ty01_right').length != 0){
        $('.ty01_right').imageSlider({
            sliderWrap 		: $('.ty01_right')
            ,	slideBox 		: $('#rollingType4')
            ,	slides 			: $('#rollingType4').find(' >li')
            ,	slideLength 	: $('#rollingType4').find(' >li').length
            ,	slideWidth	 	: $('#rollingType4').find(' >li').outerWidth()
            ,	btnPrev 		: $('#rollingType1_prev4')
            ,	btnNext 		: $('#rollingType1_next4')
            ,	direction 		: 'horizontal'
            ,	speed 			: 0
            ,	autoSpeed 		: 2000
            ,	easing 			: ''
            ,	autoRolling		: true
        });
    }

    if($('.ty02_right').length != 0){
        $('.ty02_right').imageSlider({
            sliderWrap 		: $('.ty02_right')
            ,	slideBox 		: $('.type2_hot_item > div')
            ,	slides 			: $('.type2_hot_item > div').find(' >ul')
            ,	slideLength 	: $('.type2_hot_item > div').find(' >ul').length
            ,	slideWidth	 	: $('.type2_hot_item > div').find(' >ul').outerHeight()
            ,	btnPrev 		: $('.controls a.lt')
            ,	btnNext 		: $('.controls a.gt')
            ,	direction 		: 'vertical'
            ,	speed 			: 0
            ,	autoSpeed 		: 2000
            ,	easing 			: ''
            ,	autoRolling		: true
        });
    }

    if ($('.hot_item').length != 0 || $('.type2_hot_item').length != 0) {
        var hotSit = $('.controls > a');
        if (hotSit.css('visibility') == 'hidden') {
            hotSit.css('visibility', 'visible');
        };
    };

    //�몃꽕��
    if($('ul.bestProd_thum_ul').length != 0) {
        $('ul.bestProd_thum_ul').each(function(){
            var $slideBox = $(this);
            var $btn_prev = $(this).parent().parent().find('a#btn_prev');
            var $btn_next = $(this).parent().parent().find('a#btn_next');
            var $btn_arrow = $(this).parent().parent().find('a.btn_arrow');
            var $sumList = $(this).children('li');
            var $li_width = $sumList.outerWidth() + 7;
            var max = $sumList.size();
            var cnt = 6;
            var count = 0;

            if(max >= cnt) {
                $btn_prev.show();
                $btn_next.show().addClass('on');
            }

            $slideBox.css({width:($li_width * max) +"px",position:'absolute'})
            $sumList.filter(':first').addClass('active');
            $(this).width();

            $sumList.bind('mouseenter', function(){
                var num = $(this).index();
                $sumList.removeClass('active');
                $sumList.filter(':eq('+num+')').addClass('active');
                count = num;
                checkArrow(count);
            });

            $btn_arrow.bind('click',function(e){
                if (!$(this).hasClass('on')) return false;
                e.preventDefault();
                if ($(this).attr('id') == 'btn_prev') rollingProduct(count-1);
                else rollingProduct(count+1);

            })

            function rollingProduct(n){
                var index = n; //�섏뼱媛��� 蹂댁뿬吏� �ъ쭊 踰덊샇 (1~
                var current = $sumList.filter(':eq('+index+')').find('>a')
                if (index > cnt-1) $slideBox.css({"left":-($li_width * cnt)+"px"});
                else $slideBox.css({left:0});

                checkArrow(index);
                $sumList.removeClass('active');
                current.addClass('active');
                current.mouseover();
                count = index;
            };

            function checkArrow(index){
                if (index <= 0) {
                    $btn_prev.removeClass('on')
                }else if (max-1 <= index) {
                    $btn_next.removeClass('on')
                }else{
                    $btn_prev.addClass('on')
                    $btn_next.addClass('on')
                }
            }

            $sumList.find('a').mouseenter(function(){
                var imgIndex  = $(this).attr('index');
                var imgLink_s = $(this).find('img').eq(0).attr("src");
                var imgLink_m = $(this).find('img').eq(1).attr("src");
                $('#bestProd_placeHolder'+imgIndex).attr('src',imgLink_m);
            })
        });
    }

    /* section_store.js - 20140609 */
    // 媛�寃� 踰붿쐞 ui �щ씪�대뱶
    if ($( "#slider-range" ).length != 0) {
        var minSellPrc = 0;
        var maxSellPrc = 100000;

        var itemMinSellPrc = $("#rangeVal_L").val() * 1;
        var itemMaxSellPrc = $("#rangeVal_R").val() * 1;

        $( "#slider-range" ).slider({
            range: true,
            min: 0, //理쒖냼媛�
            max: maxSellPrc, //理쒕�媛�
            values: [ minSellPrc, itemMaxSellPrc ], //蹂�寃쎈맂 理쒖냼媛�, 蹂�寃쎈맂 理쒕�媛�
            slide: function( event, ui ) {
                $("#rangeVal_L").val(ui.values[ 0 ]);
                $("#rangeVal_R").val(ui.values[ 1 ]);
            }
        });
    };

    // 0806_�곹뭹鍮꾧탳 �꾩�留� �ㅽ똻�섏젙(1225)
    $('.meas_helptip').hover(
        function() {
            $(this).next().show().addClass('tooltip_meas');
        },
        function(){
            $(this).next().hide().removeClass('tooltip_meas');
        });

    // 1112_�곹뭹鍮꾧탳 �곹뭹�뺤씤 �� �섎텋 �꾩�留� �ㅽ똻(1225)
    $('.meas_refund').hover(
        function() {
            $(this).parent().find('.tooltip_meas_rech1').show();
        },
        function(){
            $(this).parent().find('.tooltip_meas_rech1').hide();
        });

    // 1112_諛섑뭹 쨌 援먰솚諛곗넚鍮� �꾩�留� �ㅽ똻(1225)
    $('.meas_charge').hover(
        function() {
            $(this).parent().find('.tooltip_meas_rech2').show();
        },
        function(){
            $(this).parent().find('.tooltip_meas_rech2').hide();
        });

    // �곹뭹 鍮꾧탳�섍린
    if ($('[id^=detailViewjUL]').length != 0) {
        var obj = $('[id^=detailViewjUL]');
        obj.find('li a').bind('mouseover',function(){
            var index = $(this).parent().parent().attr('id');
            index = index.substr(13);
            compareGallery(index);
        })
    }

    // �ㅽ럹�� �� �쒕툕�섏씠吏� 諛곕꼫 �믪씠媛� 泥댄겕
    var specialSubBan = $('.specialMainCont .banner_con2'),
        hRentalSubLnb = specialSubBan.prev().height();

    specialSubBan.css('margin-top', hRentalSubLnb);

    // �ㅽ럹�쒖꺏 lnb
    var h_rentalHeight = $('.h_rental').outerHeight(); //硫붾돱 �믪씠
    $('.h_rental_all').next().addClass('mt0');
    $('.h_rental_Menu .depth1').bind('mouseenter', function(){
        $('.deps2Wrap').hide();
        $(this).next().show();
        $('.h_rental_Menu .depth1').removeClass('on');
        $(this).addClass('on');
        var $height = $(this).parent().height();
        $(this).next().css('margin-top', -$height);

        var deps2Height = $(this).next().outerHeight(); //2depth �믪씠
        // 2depth�믪씠媛� 硫붾돱 �믪씠 蹂대떎 湲� 寃쎌슦 �곷떒�� 遺숈뼱�� �섏샂.
        if(h_rentalHeight < deps2Height) $(this).next().css({'margin-top':-($height-16), 'top':'0'});
    });

    $('.h_rental_Menu .depth1').bind('mouseleave', function(){
        $(this).next().hide().removeClass('on');
    });

    $('.deps2Wrap').bind('mouseenter', function(){
        $(this).show().prev().addClass('on');
    }).bind('mouseleave', function(){
        $(this).hide().prev().removeClass('on');
    });

    // 3Depth 留ㅼ옣��
    // 3Depth �곹뭹�� �곗닔 �곹뭹 WorstCase
    if ($('.worst_hit_wrap').length != 0) {
        if ($('.worst_hit_wrap').find('.worst_hit_R').attr('class') == null) {
            $('.worst_hit_L > ul').addClass('solo');
        }
    }

    if ($('.worst_prod_wrap').length != 0) {
        $('.worst_prod').hide();
        $('.worst_prod').eq(0).show();
        $('.worst_tab li a').bind('click focusIn', function(e){
            e.preventDefault();
            var $target = $(this.hash);
            $('.worst_prod').hide();
            $target.show();
            $('.worst_tab li a').addClass('off');
            $(this).removeClass('off').addClass('on');
        });
        $('.worst_tab li a').eq(0).click();
    }

    // �곹뭹�� �곗닔�곹뭹
    $('.worst_best_etc .listBoxs .pdtImg2').hover(
        function(){
            $(this).children('.worst_hit_gray').show();
        },
        function(){
            $(this).children('.worst_hit_gray').hide();
        });

    // 留롮씠 議고쉶�� �곹뭹
    $('.worst_hit_R .listBoxs .pdtImg2').hover(
        function(){
            $(this).children('.worst_hit_gray').show();
        },
        function(){
            $(this).children('.worst_hit_gray').hide();
        });

    // �ы뻾留ㅼ옣��
    // 援�궡/�쒖쫵 異붿쿇踰좎뒪��
    $('[id^=tour_recommUL_]').not('#tour_recommUL_1').hide();
    $('#tour_recomm li a').bind('click', function(e){
        e.preventDefault();
        $('.productList').hide();
        $(this.hash).show();
        $(this).parent().addClass('on').siblings().removeClass('on');
    });

    // 鍮좊Ⅸ寃��� ��
    var tour_search_kind = $('.tour_search_kind li a'),
        tourTab = $('#tourTab li input[type=radio]'),
        tourTab_1 = tourTab.eq(0),
        tourTab_2 = tourTab.eq(1),
        hotelTab = $("#iframe_hotel"),
        checked = $('input[checked]');

    tour_search_kind.bind('click', function(e){
        e.preventDefault();
        $(this).addClass('on').parent().siblings().children('a').removeClass('on');
        $('.tour_radioUL').hide();

        // �댁떆媛믪씠 0蹂대떎 �� 寃쎌슦 �대떦 �댁떆ID �덉씠�� �몄텧
        if($(this.hash).length > 0) $(this.hash).show();

        // �대┃ ��퀎 �꾩씠�꾨젅�� �몄텧	[�ы뻾 & �명뀛]
        if ($(this).hasClass('tour')){
            tourTab_1.click();
        } else {
            $('.tour_iframeWrap1 iframe').hide()
            hotelTab.show();
        }
    })

    tourTab_1.click(function(){
        if (checked) {
            $('.tour_iframeWrap1 iframe').hide()
            $('#iframe_tour_1').show();
        }
    })
    tourTab_2.click(function(){
        if (checked) {
            $('.tour_iframeWrap1 iframe').hide()
            $('#iframe_tour_2').show();
        }
    });
});

;(function($){
    $.fn.navContent = function(slide){
        var nTimerID = null;
        var animate = true;
        var options = $.extend({
            contWrap 		: $('.tv_bestEvent')
            ,	contType 		: 'slide'
            ,	nav 			: $('.tv_bestEventUL > li')
            ,	contents 		: $('.img_bestEvent > a')
            ,	activeClassNav 	: 'on'
            ,	activeClassCont : null
            ,	contLength 		: null
            ,	eventType 		: 'mouseenter'
            ,	autoSpeed 		: 2000
            ,	easing 			: 'swing'
            ,	autoRolling		: false
            ,	defaultIndex	: 0
            ,	navFixed		: false

        },slide||{});
        options.current = options.defaultIndex;
        // setting
        options.contents.hide().filter(':eq('+options.defaultIndex+')').show()
        options.nav.filter(':eq('+options.defaultIndex+')').addClass(options.activeClassNav)

        if (options.contLength == 1) {
            if ( options.contType =='slide' ) {
                options.nav.hide();
            }
            return false;
        };

        if (options.autoRolling) {
            options.contWrap.hover(function(){
                    clearInterval(nTimerID);
                    nTimerID = null;
                },
                function(){
                    nTimerID = setInterval(function(){
                        animateSlider( (options.current+1) % options.contLength);
                    }, options.autoSpeed)
                })
        };

        if (options.autoRolling) {
            nTimerID = setInterval(function(){
                animateSlider( (options.current+1) % options.contLength);
            }, options.autoSpeed)
        };

        options.nav.bind(options.eventType, function(e){
            var index = $(this).index();
            clearInterval(nTimerID);
            nTimerID = null;
            if (index == options.current) return false;
            animateSlider( index % options.contLength);
            e.preventDefault();
        });
        if (options.navFixed) {
            options.contWrap.bind('mouseleave', function(){
                options.contents.hide().filter(':eq('+options.defaultIndex+')').show()
                options.nav.removeClass(options.activeClassNav).filter(':eq('+options.defaultIndex+')').addClass(options.activeClassNav)
                options.current = options.defaultIndex;
            })
        };
        var animateSlider = function(index){
            options.nav.eq(index).addClass(options.activeClass);
            options.nav.eq(options.current).removeClass(options.activeClass);
            if (options.activeClassCont != null) {
                options.contents.eq(index).addClass(options.activeClassCont);
                options.contents.eq(options.current).removeClass(options.activeClassCont);
            }else{
                options.contents.eq(index).show();
                options.contents.eq(options.current).hide();
            };
            options.current = index;
        };
    };

    $.fn.imageSlider = function(slide){
        var nTimerID = null;
        var animate = true;
        var options = $.extend({
            sliderWrap 		: $('.slideWrap')	// �꾩껜 �щ씪�대뱶 諛뺤뒪
            ,	slideBox 		: null	// �щ씪�대뱶 �붿냼�ㅼ쓣 媛먯떥�� 諛뺤뒪
            ,	slides 			: null	// �щ씪�대뵫 �� �붿냼��
            ,	slideLength 	: null	// �꾩껜 �щ씪�대뱶 ��
            ,	slideWidth	 	: null	// �щ씪�대뱶 �덈퉬 , �믪씠
            ,	btnPrev 		: null	// �댁쟾踰꾪듉
            ,	btnNext 		: null	// �ㅼ쓬踰꾪듉
            ,	direction 		: null	// �щ씪�대뱶 諛⑺빆 [ horizontal, vartical ]
            ,	speed 			: 300	// �щ씪�대뱶 �ㅽ뵾��
            ,	autoSpeed 		: 2000	// �먮룞 濡ㅻ쭅 �ㅽ뵾��
            ,	easing 			: 'swing'	// �щ씪�대뵫 �좊땲硫붿씠�� ����
            ,	dir 			: 'left'	// css �띿꽦 [ 媛�濡쒕갑�� : left, �몃줈諛⑺뼢 : top ]
            ,	autoRolling		: false	// �먮룞 濡ㅻ쭅 �щ� [Boolean]
            ,	arrowDisabled	: false	//  �댁쟾 �ㅼ쓬踰꾪듉 鍮꾪솢�깊솕 �щ� [ 鍮꾪솢�깊솕�� �대옒�ㅻ챸 ]
        },slide||{});
        // setting
        options.current = 0;
        if (options.slideLength <= 1) {
            options.btnPrev.css({"visibility":"hidden"});
            options.btnNext.css({"visibility":"hidden"});
        };
        if (options.direction === 'horizontal') {
            options.slideBox.css({"position":"relative"});
            options.slides.css({"position":"absolute","top":"0","left":options.slideWidth+"px"}).filter(":first").css({"left":0})
            options.dir = 'left';
        }else if (options.direction === 'vertical') {
            options.slideBox.css({"position":"relative"});
            options.slides.css({"position":"absolute","top":options.slideWidth+"px","left":0}).filter(":first").css({"top":0})
            options.dir = 'top';
        };
        if (options.arrowDisabled) {
            options.btnPrev.addClass(options.arrowDisabled)
        };
        if (options.autoRolling) {
            options.sliderWrap.hover(function(){
                    clearInterval(nTimerID);
                    nTimerID = null;
                },
                function(){
                    nTimerID = setInterval(function(){
                        options.btnNext.click();
                    }, 2000)
                })
        };
        options.btnPrev.bind('click', function(){
            if ($(this).hasClass(options.arrowDisabled)) return false;
            animateSlider((options.slideLength+options.current-1) % options.slideLength, 'prev');
            return false;
        });
        options.btnNext.bind('click', function(){
            if ($(this).hasClass(options.arrowDisabled)) return false;
            animateSlider( (options.current+1) % options.slideLength, 'next');
            return false;
        })
        if (options.autoRolling) {
            nTimerID = setInterval(function(){
                options.btnNext.click();
            }, options.autoSpeed)
        };

        var animateSlider = 	function(index, dur){
            if (!animate) return false;
            animate = false;
            var newIndex = index,
                dur	= dur
            oldIndex = options.current,
                propSet = {},
                propStyle = {},
                prevSetting = {},
                nextSetting = {};
            prevSetting[options.dir] = -options.slideWidth+"px";
            nextSetting[options.dir] = options.slideWidth+"px";
            if ( dur === 'next' ) {
                propSet[options.dir] = -options.slideWidth+"px";
                propStyle[options.dir] = 0
            }else{
                options.slides.eq(newIndex).css(prevSetting)
                propSet[options.dir] = options.slideWidth+"px";
                propStyle[options.dir] = 0;
            };

            options.slides.eq(oldIndex).stop().animate(propSet, options.speed, options.easing,  function(){
                $(this).css(nextSetting);
                animate = true;
            })
            options.slides.eq(newIndex).stop().animate(propStyle, options.speed, options.easing);
            if (options.arrowDisabled) {
                checkArrow(index);
            };
            options.current = index;
        };
        var checkArrow = function(n){
            var first = 0,
                last  = options.slides.filter(':last').index();

            if (n === first || n === last) {
                if (n === first) options.btnPrev.addClass(options.arrowDisabled);
                if (n === last) options.btnNext.addClass(options.arrowDisabled);
            }else{
                options.btnPrev.removeClass(options.arrowDisabled);
                options.btnNext.removeClass(options.arrowDisabled);
            };
        }
    };
}) (jQuery);

/** 20140609  -  �щ텇瑜� ���� str **/
// STEP1 �λ컮援щ땲 (�ъ슜媛��� 荑좏룿 諛쏄린), STEP2 二쇰Ц�� �묒꽦, 誘몃━怨꾩궛�섍린
var old_couponUse = null;
$(document).on("click", ".couponUse", function(){
    $(this).each(function(index){
        $(this).attr("name", index);
    });

    var target = $(this).next("div");
    if (old_couponUse != null){
        if (old_couponUse.attr("name") != $(this).attr("name")){
            hideListLayer(old_couponUse)
        }
    }

    if(!target.attr("name")) showListLayer($(this));
    else hideListLayer($(this));

    old_couponUse = $(this);
    $(".basketLsit td.coupon > div").addClass("prEven");
    $(this).parent().parent().removeClass("prEven").addClass("PrOdd");
});

$(document).on("click", ".smallLayerClose > a", function(){
    var close = $(this).parents(".smallLayer").prev(".couponUse");
    hideListLayer(close);
    return false;
});

$(document).on("click", ".cuponlistBox", function(){
    $(".cuponlistBox").css({"position":"static"});
    $(this).css({"position":"relative"});
});

$(document).on("click", ".btn_bsk_close", function(e){
    e.preventDefault();
    $(this).parent().parent().hide().attr("name", "");
    var close2 = $(this).parent().parent().prev();
    hideListLayer(close2);
});

/******************************************************************************************
 * anyLayerPopup - �대┃ �≪뀡 �덉씠�� �앹뾽 [�댄똻 �댁슜媛���]
 ******************************************************************************************
 * <a href="#mobileBuy" class="anyLayerPop anyLP_T anyLP_W415s">...</a>
 * href="#id" - ��寃잛씠 �� ID紐�
 * class="......" - �몄텧�� �꾩슂�� 湲곕낯 援ъ꽦, �ㅽ��쇱뿉 �꾩슂�� �대옒�� 異붽��� 湲곕낯 �뺤쓽�� �대옒�� �ㅻ줈 異붽��쒕떎.

 * anyLayerPop : �덉씠�� �앹뾽 �≪뀡 援щ텇媛�
 * anyLP_�꾩튂 : �덉씠�� �앹뾽 �꾩튂 援щ텇媛�
 * anyLP_T : �대�吏� ��
 * anyLP_B : �대�吏� �꾨옒
 * anyLP_L : �대�吏� �쇱そ
 * anyLP_R : �대�吏� �ㅻⅨ履�
 * anyLP_M : �붾㈃以묒븰
 * anyLP_W�レ옄 : �덉씠�� �앹뾽 媛�濡� 湲몄씠
 *******************************************************************************************/
var anyLP_flag=false, $this_anyLP_Click, anyLP_posType, anyLP_Width, targetLayerID, anyLP_childImg, anyLP_scrollTop, anyLP_posX, anyLP_posY, anyLP_noHide = "n", pTarget = 0, pTargetObj = null;
function anyLayerPop($this){
    anyLP_flag = true;	// 由ъ궗�댁쫰 �먮윭 諛⑹� �뚮옒洹� 媛�
    anyLP_posType = $this.attr("class").split(" ")[1];	// �덉씠�� �앹뾽 �꾩튂 異붿텧
    anyLP_Width = $this.attr("class").split(" ")[2].split("anyLP_W")[1];	// �덉씠�� �앹뾽 媛�濡� 湲몄씠 異붿텧
    anyLP_childImg = $this.children(), anyLP_scrollTop = $(window).scrollTop();

    // 留덉슦�ㅼ뿏�� �대깽�몄떆 �덉씠�� �먮룞�④� �좏깮 ��/臾� 泥섎━ - 20140902
    if($this.attr("class").split(" ")[3] ==  "anyLP_noHide") anyLP_noHide = "y";
    else anyLP_noHide = "n";

    if(anyLP_posType == "anyLP_T" || anyLP_posType == "anyLP_B"){	// �대┃�� �대�吏� �� �먮뒗 �꾨옒

        if($this.closest(".left_group").length > 0){
            pTarget = ($("#layer_popup #layer1").offset().left+$("#layer_popup #layer1").width());
            pTargetObj = $("#layer_popup .left_group");
        } else if($(".product_renew").length > 0) {
            pTarget = ($(".product_renew").offset().left+$(".product_renew").width());
            pTargetObj = $(".product_renew");
        }

        if(($("#easySelectItem").css("display") == undefined || $("#easySelectItem").css("display") == "none") && (pTarget < (anyLP_childImg.offset().left + (parseInt(anyLP_Width)+34)))){
            anyLP_posX = anyLP_childImg.position().left - ((anyLP_childImg.offset().left + (parseInt(anyLP_Width)+34)) - pTarget);
        } else if(($("#easySelectItem").css("display") == "block" && $("#easySelectItem").hasClass("easySelectPos_vertical")) && (($(".product_renew").offset().left+$(".product_renew").width()) + $("#easySelectItem").outerWidth() + 5) < (anyLP_childImg.offset().left + (parseInt(anyLP_Width)+34))){	// �쇰컲�곸꽭 媛꾪렪�좏깮
            anyLP_posX = (anyLP_childImg.offset().left - anyLP_childImg.offset().left - 4);
        } else if(($("#easySelectItem").css("display") == "block" && $("#easySelectItem").hasClass("easySelectPos_horizontal")) && ($("#easySelectItem").offset().left+$("#easySelectItem").width()) < (anyLP_childImg.offset().left + (parseInt(anyLP_Width)+34))){	// �쇰컲�곸꽭 媛꾪렪�좏깮
            anyLP_posX = (anyLP_childImg.offset().left - anyLP_childImg.offset().left - 4);
        } else {
            anyLP_posX = anyLP_childImg.position().left;
        }
        anyLP_posX = anyLP_childImg.position().left - 300;

        if(anyLP_posType == "anyLP_T") anyLP_posY = anyLP_childImg.position().top - targetLayerID.outerHeight() - 1;
        else if(anyLP_posType == "anyLP_B"){
            anyLP_posY = ((anyLP_childImg.position().top + targetLayerID.outerHeight()) > $(document).height()) ? anyLP_childImg.position().top - targetLayerID.outerHeight() - 1 : anyLP_childImg.position().top + anyLP_childImg.outerHeight() + 1;
        }
    } else if(anyLP_posType == "anyLP_L" || anyLP_posType == "anyLP_R"){	// �대┃�� �대�吏� �쇱そ �먮뒗 �ㅻⅨ履�
        if(anyLP_posType == "anyLP_L") anyLP_posX = anyLP_childImg.position().left - anyLP_Width;
        else if(anyLP_posType == "anyLP_R") anyLP_posX = anyLP_childImg.position().left + anyLP_childImg.outerWidth() + 1;

        anyLP_posY = (anyLP_childImg.position().top+anyLP_childImg.outerHeight()) - targetLayerID.outerHeight() + 1;
    } else if(anyLP_posType == "anyLP_M"){	// �붾㈃ 以묒븰
        anyLP_posX = ($(document).width() - anyLP_Width)/2,
            anyLP_posY = anyLP_scrollTop + (($(window).height() - targetLayerID.outerHeight())/2);

        // Modal
        $("body").append("<div class='modal'></div>");
        $(".modal").css({"cursor" : "move", "position" : "absolute", "z-index" : "10000", "opacity" : "0", "background" : "#000", "top" : "0", "left" : "0", "width" : $(document).width(), "height" : $(document).height()});
        $(".modal").animate({"opacity" : "0.5"}, 300, "easeInExpo")
    }

    // �덉씠�� �꾩튂
    var re_pTargetObj = (pTargetObj != null) ? "." + pTargetObj.attr("class") + " #" + targetLayerID.attr("id") : "#" + targetLayerID.attr("id");
    $(re_pTargetObj).css({display : "block", top : anyLP_posY + "px", left : (anyLP_posX + 10) + "px", padding : 10 });

    // 誘몃━蹂닿린
    if($this.closest("#layer_popup #layer1").length > 0 && ($("#layer_popup #layer1").offset().left+$("#layer_popup #layer1").width() < (targetLayerID.offset().left+targetLayerID.outerWidth()))){
        var overflow_anyLP_posX = (targetLayerID.offset().left+targetLayerID.outerWidth()) - ($("#layer_popup #layer1").offset().left+$("#layer_popup #layer1").width());
        targetLayerID.css({left : (anyLP_posX-overflow_anyLP_posX-22) + "px"});
    }
    return false;
}

$(document).on("click mouseenter", ".anyLayerPopC, .anyLayerPopE", function(e){
    // �대┃�� �붿냼瑜� ���� 諛� �댁떆 媛믪쓣 媛��몄삩��. (href=#xxx)
    if(($(this).hasClass("anyLayerPopC") == true) && (e.type == "click")){
        $this_anyLP_Click = $(this);
        targetLayerID = $(this.hash);
        anyLayerPop($this_anyLP_Click);
    } else if(($(this).hasClass("anyLayerPopE") == true) && (e.type == "mouseenter")){
        $this_anyLP_Click = $(this);
        targetLayerID = $(this.hash);
        anyLayerPop($this_anyLP_Click);
    }
    return false;
});

// 留덉슦�ㅼ뿏�� �대깽�� �� �대떦 �댄똻 �덉씠�� 嫄곗퀜 �④�泥섎━
$(document).on("mouseleave", ".anyLayerPopE", function(){

    var re_pTargetObj = (pTargetObj != null) ? "." + pTargetObj.attr("class") + " #" + targetLayerID.attr("id") : "#" + targetLayerID.attr("id");

    // 留덉슦�ㅼ뿏�� �대깽�몄떆 �덉씠�� �먮룞�④� �좏깮 ��/臾� 泥섎━ - 20140902
    if(anyLP_noHide == "n"){
        $(re_pTargetObj).css({display : "none"});
    } else if(anyLP_noHide == "y"){
        targetLayerID.on("mouseleave", function(){
            $(re_pTargetObj).css({display : "none"});
        });
    }
});

// anyLayerPopup �꾩튂 �ъ젙��
$(window).resize(function(){
    if($(".anyLayerPopC, .anyLayerPopE").length > 0 && anyLP_flag == true && targetLayerID.css("display") == "block"){
        anyLayerPop($this_anyLP_Click);
    }
});
/** 20140609  -  �щ텇瑜� ���� end **/

// 怨듯넻�앹뾽 �ㅽ뻾
function openPopup(link, name, width, height, scroll, screenWidth, screenHeight) {
    var left = (screenWidth - width) / 2,
        top = (screenHeight - height) / 2;

    var win = window.open(link, name, "width="+width+", height="+height+", left="+left+", top="+top+" toolbar=no, location=no, status=no, menubar=no, scrollbars="+scroll+", directories=no, resizable=no");
    win.focus();
    // Mute: �앹뾽李� 媛먯떆瑜� �꾪빐 異붽�
    return win;
};

var tempStr = "";   //湲��� byte 泥댄겕�� �곗씠�� �꾩뿭蹂���
/**
 * null check
 * @param value
 * @returns {Boolean}
 */
function isEmpty(value) {
    return (value == null || value == undefined || value == "");
}

/**
 * 濡쒓렇�� �앹뾽 �닿린
 * @param redirectUrl 濡쒓렇�� �깃났 �� �대룞�� URL
 */
function openLoginPopup(redirectUrl) {
    var link = serverHost + "/p/cob/loginPup.do";
    if (!isEmpty(redirectUrl)) {
        link += "?redirectUrl=" + encodeURIComponent(redirectUrl);
    }
    openPopup(link, "loginPup", 425, 500, "no", $(window).width(), $(window).height());
}

/**
 * 鍮꾪쉶�� 援щℓ�� 濡쒓렇�� �앹뾽
 */
function openLoginNonMemberPopup() {
    var link = "/p/cob/orderLoginPup.do?redirectUrl=buyDirect";
    openPopup(link, "loginPup", 425, 570, "yes", $(window).width(), $(window).height());
}

function openAdultLoginPopup(redirectUrl) {
    var link = "/p/cob/loginPup.do";
    if (!isEmpty(redirectUrl)) {
        link += "?redirectUrl=" + encodeURIComponent(redirectUrl) + "&adultCheckYn=Y";
    } else {
        link += "?adultCheckYn=Y"
    }
    openPopup(link, "loginPup", 425, 500, "no", $(window).width(), $(window).height());
}

function openAdultLoginPopupGA(redirectUrl, slitmNm, slitmCd, tabNm) {
    var link = "/p/cob/loginPup.do";
    if (!isEmpty(redirectUrl)) {
        link += "?redirectUrl=" + encodeURIComponent(redirectUrl) + "&adultCheckYn=Y";
    } else {
        link += "?adultCheckYn=Y"
    }
    sendSlitmClickGo(slitmNm, slitmCd, tabNm,redirectUrl)
    openPopup(link, "loginPup", 425, 500, "no", $(window).width(), $(window).height());
}

/**
 * �먮룞�ㅼ썙�쒓��� 援щℓ�� 濡쒓렇�� �앹뾽
 */
function autoSearchOpenLoginNonMemberPopup() {
    var link = "/p/cob/orderLoginPup.do?redirectUrl=noReload";
    openPopup(link, "loginPup", 425, 580, "no", $(window).width(), $(window).height());
}

/**
 * 鍮꾨�踰덊샇 蹂�寃� 耳먰럹�� �앹뾽 �닿린
 */
function openPwdChangePup() {
    var link = "/p/cob/pwdChangePup.do";
    openPopup(link, "pwdChangePup", 650, 485, "no", $(window).width(), $(window).height());
}

/**
 * �고렪踰덊샇 �앹뾽 �닿린
 */
function openPostPopup(gubun) {
    //window.open("/p/coa/chocPostType.do","", "width=495, height=290");
    openPopup("/p/coa/chocPostType.do?gubun="+gubun, 'address', "495", "290", null, $(window).width(), $(window).height());
}

/**
 * 留덉씠�섏씠吏��� �곹뭹�� �앹뾽
 * Ajax瑜� �ъ슜�섍린�뚮Ц�� 怨듯넻 �앹뾽�� �ъ슜�섏� �딅뒗��.
 */
function openItemEvalPopup(slitmCd, uitmCd, ordNo){
    var param = "slitmCd=" + slitmCd + "&uitmCd=" + uitmCd + "&ordNo=" + ordNo;
    openPopup("/p/pdc/selectItemEvalPup.do?"+ param, "itemEval", 620, 800, "yes");
}

/**
 * �곹뭹�곸꽭�� 怨좉컼留뚯”�� �앹뾽
 * Ajax瑜� �ъ슜�섍린�뚮Ц�� 怨듯넻 �앹뾽�� �ъ슜�섏� �딅뒗��.

 */
function openCustStsfEvalPup(slitmCd){
    openPopup("/p/pdc/selectCustStsfEvalPup.do?slitmCd=" + slitmCd, "custStsfEval", 820, 487, "yes");
}

/**
 * �곹뭹�곸꽭�� �곹뭹QNA �앹뾽
 * Ajax瑜� �ъ슜�섍린�뚮Ц�� 怨듯넻 �앹뾽�� �ъ슜�섏� �딅뒗��.
 */
function openItemQNAPopup(slitmCd) {
    openPopup("/p/pdd/selectItemQNAQstnPup.do?slitmCd=" + slitmCd, "itemQna", 800, 728, "yes");
}

/**
 * �덉＜�� ( �꾨줈紐� )  李얘린 �앹뾽
 */
function newAddressPopup() {
    openPopup(serverHost+"/p/coa/qtyRdnmAdrPost.do", 'newAddress', "578", "540", null, $(window).width(), $(window).height());
}

/**
 * 湲곗〈 二쇱냼 ( 吏�踰덈챸)  李얘린 �앹뾽
 */
function oldAddressPopup() {
    openPopup(serverHost+"/p/coa/qtyJibunAdrPost.do", 'oldAddress', "488", "490", null, $(window).width(), $(window).height());
}

/**
 * �섏씠�ㅻ턿
 * @param title
 * @param image
 * @param shareUrl
 */
function shareFacebook(title, image, shareUrl) {
    if(isEmpty(shareUrl)) {
        shareUrl = location.href;
    }
    var url = "http://www.facebook.com/sharer.php?s=100&p[url]=" + shareUrl + "&p[images][0]=" + image + "&p[title]=" + title;
    url = url.split("#").join("%23");
    url = encodeURI(url);
    window.open(url);

    return false;
}

/**
 * �몄쐞��
 * @param title
 * @param shareUrl
 * @returns {Boolean}
 */
function shareTwitter(title, shareUrl) {
    if(isEmpty(shareUrl)) {
        location.href.search(new RegExp('slitmCd=([^&]+)','g'));
        shareUrl = "http://hmall.kr/?i"+RegExp.$1;
    }
    var url = "http://twitter.com/share?text=";
    var result = window.open(url + encodeURIComponent(title) + " " + encodeURIComponent(shareUrl) , 'twitter', 'width=466, height=356');
    if (result) {
        result.focus();
    }

    return false;
}

/**
 * 誘명닾�곗씠
 * @param title
 * @param tag
 * @param postUrl
 * @returns {Boolean}
 */
function postMe2day(title, tag, postUrl) {
    if(isEmpty(postUrl)) {
        postUrl = location.href;
    }

    if(isEmpty(tag)) {
        tag = "";
    }

    var url = "http://me2day.net/posts/new?new_post[body]=" + encodeURIComponent(title) + " " + encodeURIComponent('"') + encodeURIComponent(postUrl) + encodeURIComponent('"') + "&new_post[tags]=" + encodeURIComponent(tag);
    window.open(url);
    return false;
}

/**
 * �몄씠�붾뱶
 * @param title
 * @param image
 * @param price
 * @param postUrl
 * @returns {Boolean}
 */
function postCyworld(title, image, price, postUrl) {
    if(isEmpty(postUrl)) {
        postUrl = location.href;
    }

    var url = "http://csp.cyworld.com/bi/bi_recommend_pop.php?url=" + encodeURIComponent(postUrl) + "&title_nobase64=" + encodeURIComponent(title) +"&summary_nobase64=" + encodeURIComponent(title) +"&thumbnail="+ encodeURIComponent(image)+"&writer="+ encodeURIComponent('�꾨�Hmall')+"&div_code=shop&tag4="+price;
    var result = window.open(url, 'nate', 'width=400,height=364,scrollbars=no,resizable=no');
    if (result) {
        result.focus();
    }

    return false;
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

function removeComma(val) {
    return val.replace(/,/g, '');
}


// textarea id, �쒗븳 湲��� ��, �낅젰 寃곌낵 硫붿꽭吏� ���� ID
function limitCharacters(textid, limit, limitid) {
    // �녿젰 媛� ����
    var text = $('#'+textid).val();
    // �낅젰媛� 湲몄씠 ����
    var textlength = text.length;
    if(textlength > limit) {
        alert('理쒕� '+limit+'�먭퉴吏� �낅젰媛��ν빀�덈떎.');
        //$('#' + limitid).html('湲��댁슜�� '+limit+ '�� �댁긽 �몄닔 �놁뒿�덈떎!');
        // �쒗븳 湲��� 湲몄씠留뚰겮 媛� �� ����
        $('#'+textid).val(text.substr(0,limit));
        return false;
    } else {
        //$('#' + limitid).html('�몄닔 �덈뒗 湲��먭� '+ (limit - textlength) + ' �� �⑥븯�듬땲��.');
        return true;
    }

    /* �섎떒�� , jsp�곸뿉�� 肄붾뵫�댁꽌 �ъ슜�섎㈃ ��.
     *
     * // 怨듯넻 湲��먯닔 �쒗븳 泥댄겕
		$(function(){
			$('#prop1Cntn').keydown(function(){
    			limitCharacters('prop1Cntn', 10, 'charlimitid');
			})
		});

     */
}

//add comma
function Comma(Num) {
    Num += '';
    Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
    Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
    x = Num.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1))
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    return x1 + x2;
}

/**
 * 濡쒓렇�� 泥댄겕
 */
function isLogin() {
    var result = 'false';

    $.ajax({
        type: "get"
        ,url: "/p/cob/isLogin.do"
        ,dataType: "json"
        ,async: false
        ,success : function(data) {
            if (data.isLogin) {
                result = 'true';
            } else {
                result = 'false';
            }
        }
        ,error: function(data) {
        }
    });

    return result;
}

/**
 * �대��� 蹂몄씤�몄쬆 �앹뾽
 * @param formName
 */
function certByMobile(formName) {
    $("form[name='" + formName + "']").submit(function() {
        window.open("", "DRMOKWindow", "width=425, height=550, resizable=0, scrollbars=yes, status=0, titlebar=0, toolbar=0, left=435, top=250");
        $(this).attr("target", "DRMOKWindow");
    }).trigger("submit");
}

/**
 * �대��� 蹂몄씤�몄쬆(SCI) �앹뾽
 * @param formName
 */
function certByMobile2(formName){
    $("form[name='" + formName + "']").submit(function() {
        window.open('', 'popupHPCF', 'width=420,height=600,top=100,left=150,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbar=no');
        $(this).attr("target", "popupHPCF");
    }).trigger("submit");
}

/**
 * 怨듭씤�몄쬆�� �앹뾽
 */
function certByPub(formName) {
    $("form[name='" + formName + "']").submit(function() {
        window.open('', 'DRMOKWindow', 'width=420, height=576, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=435, top=250' );
        $(this).attr("target", "DRMOKWindow");
    }).trigger("submit");
}

/**
 * �꾩씠�� �몄쬆 �앹뾽
 */
function certByIpin(formName, ipinCompany) {
    $("form[name='" + formName + "']").submit(function() {
        if (ipinCompany == "sci") {
            window.open('', 'ipinWindow', 'width=450, height=500, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0, left=300, top=200' );
        } else {
            window.open('', 'ipinWindow', 'width=450,height=550,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbar=no');
        }
        $(this).attr("target", "ipinWindow");
    }).trigger("submit");
}

/**
 * hmall gnb reload (login 愿��� 遺�遺꾨쭔)
 */
function loadHmallGnb() {
    $.ajax({
        type: "post"
        ,url: "/p/coa/loadHmallGnb.do?"+Math.random()
        ,dataType: "html"
        ,cache: false
        ,async: false
        ,success : function(data) {
            $("body", window.opener.document).append("<div id='hiddenGnb' style='display:none;'></div>");
            $("body #hiddenGnb", window.opener.document).html(data);
            $("#header:eq(0)", window.opener.document).find(".person_area").empty();
            $("#header:eq(0)", window.opener.document).find(".person_area").append($("#hiddenGnb", window.opener.document).find(".person_area").html());
            $("#hiddenGnb", window.opener.document).remove();
        }
        ,error: function(data) {
        }
    });
}

/**
 * �낅젰李� Byte 泥댄겕 理쒕� 源뚯�留� �낅젰媛��ν븯寃�.
 * @param inputObjId
 * @param limitByte
 * @returns {Boolean}
 */
function limitBytes(inputObjId, limitByte){

    /**
     * $(function(){
            $('#atclCntn').keyup(function(){
                limitBytes('atclCntn', 1000);
            })
        });
     */

    var input = $("#" + inputObjId).val();

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

    if(iByteLength > limitByte){
        alert('理쒕� '+limitByte+'Byte 源뚯� �낅젰媛��ν빀�덈떎.');
        $("#" + inputObjId).val(tempStr);
        return false;
    }
    tempStr = $("#" + inputObjId).val();
}

/**
 * �대찓�� �뺤떇 �좏슚�� 寃���
 * @param email
 * @returns {Boolean} �좏슚�� �대찓�� �뺤떇�대㈃ true, �좏슚�섏� �딆쑝硫� false
 */
function validateEmail(email) {
    var pattern = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

    if(!pattern.test(email)){
        return false;
    }

    return true;
}

/**
 * �낅젰媛믪뿉 �レ옄留� �덉슜�섎뒗 寃쎌슦
 * @param value
 * @returns {Boolean} �レ옄�댁쇅 媛믪씠 �덉쑝硫� false, �レ옄留� �덉쑝硫� true
 */
function onlyNum(value) {
    var pattern = /\D/g;

    if (pattern.test(value)) {
        return false;
    }

    return true;
}

/**
 * �꾪솕踰덊샇 �좏슚�� 寃���1
 * @param num1 �꾩닔
 * @param num2 �꾩닔
 * @param num3 �꾩닔
 * @param num4 �좏깮
 * @returns {Boolean} �좏슚�섎㈃ true, �좏슚�섏� �딆쑝硫� false
 */
function validatePhoneNum(num1, num2, num3, num4) {
    if (isEmpty(num4)) {
        if (onlyNum(num1) && onlyNum(num2) && onlyNum(num3)) {
            return true;
        } else {
            return false;
        }
    } else {
        if (onlyNum(num1) && onlyNum(num2) && onlyNum(num3) && onlyNum(num4)) {
            return true;
        } else {
            return false;
        }
    }
}

/**
 * �꾪솕踰덊샇 �좏슚�� 寃���2
 * @param num 123-1234-1234-1234 �뺤떇�� 寃�
 * @returns {Boolean} �좏슚�섎㈃ true, �좏슚�섏� �딆쑝硫� false
 */
/*function validatePhoneNumber(num) {
    var result = false;

    var numArray = num.split("-");
    if (numArray.length == 3) {
        result = validatePhoneNum(numArray[0], numArray[1], numArray[2])
    } else if (numArray.length == 4) {
        result = validatePhoneNum(numArray[0], numArray[1], numArray[2], numArray[3])
    } else {
        result = false;
    }

    return result;
}*/

/**
 * �대��� �좏슚�� 寃���
 * @param no1 �꾩닔
 * @param no2 �꾩닔
 * @param no3 �꾩닔
 * @returns {int} �좏슚�섎㈃ 1, no1�� �좏슚�섏� �딆쑝硫� 1, no2�� �좏슚�섏� �딆쑝硫� 2, no3�� �좏슚�섏� �딆쑝硫� 3
 */
function validateHpNo(no1, no2, no3) {
    var pattern1 = /^[\d]{3,4}$/;
    var pattern2 = /^[\d]{3,4}$/;
    var pattern3 = /^[\d]{4}$/;
    if ( !pattern1.test(no1) ) {
        return 1;
    }
    if ( !pattern2.test(no2) ) {
        return 2;
    }
    if ( !pattern3.test(no3) ) {
        return 3;
    }
    return 0;
}

/**
 * �ъ뾽�먮쾲�� 泥댄겕
 *
 * @param  str
 * @return boolean
 */
function isRgno(str) {
    var sum = 0;
    var getlist =new Array(10);
    var chkvalue =new Array("1","3","7","1","3","7","1","3","5");

    for(var i=0; i<10; i++) {
        getlist[i] = str.substring(i, i+1);
    }
    for(var i=0; i<9; i++) {
        sum += getlist[i]*chkvalue[i];
    }
    sum = sum + parseInt((getlist[8]*5)/10);
    sidliy = sum % 10;
    sidchk = 0;
    if (sidliy != 0) {
        sidchk = 10 - sidliy;
    } else {
        sidchk = 0;
    }
    if (sidchk != getlist[9]) {
        return false;
    }

    return true;
}

/**
 * 李쒗븯湲� �덉씠�� �앹뾽(�섎굹�� ��) : �곹뭹紐⑸줉
 * totoary �곹뭹由ъ뒪�몄뿉�� 李� �좊븣�� �대�吏�瑜� 蹂�寃쏀븯湲� �꾪빐�� 異붽�
 *
 * @param  slitmCdUitmCd
 * @param  sectId
 * @param  e
 */
function zzimItem(slitmCdUitmCd, sectId, e, obj){


    if(window.location.href.indexOf("http://") >= 0)
    {
        //�몄텧�쒕떎
        $.ajax({
            url: "/p/mpc/tvMainSelectTotalSltdItem.do"
            , dataType: "json"
            , success: function(data) {
                if(data != null && data.resultMsg == "DELETE"){
                    // �쇱떆以묐떒 �곹뭹�� �덈뒗 寃쎌슦
                    if(confirm("李쒖� 理쒕� 200媛쒓퉴吏� 媛��ν빀�덈떎. 李쒕━�ㅽ듃�먯꽌 �ㅻ옒�� �곹뭹 諛� 以묐떒�� �곹뭹 ��젣�� �ㅼ떆 �댁슜�댁＜�몄슂.")){
                        location.href = "/p/mpc/sltdItemList.do";
                    }
                }
                else{
                    zzimExclItemTrgtChk(slitmCdUitmCd, sectId, e, obj); // totoary �곹뭹由ъ뒪�몄뿉�� 李� �좊븣�� �대�吏�瑜� 蹂�寃쏀븯湲� �꾪빐�� 異붽�
                    return;
                }
            }
            , error: function(xhr, status, error) {
                console.log("json error");
                return;
            }
        });

        try {
            _trk_flashEnvView('_TRK_PI=LYRWISH');
        } catch(e) {}
    }
    else
    {
        //�몄텧�쒕떎
        $.ajax({
            url: "/p/mpc/selectTotalSltdItem.do"
            , dataType: "json"
            , success: function(data) {
                if(data != null && data.resultMsg == "DELETE"){
                    // �쇱떆以묐떒 �곹뭹�� �덈뒗 寃쎌슦
                    if(confirm("李쒖� 理쒕� 200媛쒓퉴吏� 媛��ν빀�덈떎. 李쒕━�ㅽ듃�먯꽌 �ㅻ옒�� �곹뭹 諛� 以묐떒�� �곹뭹 ��젣�� �ㅼ떆 �댁슜�댁＜�몄슂.")){
                        location.href = "/p/mpc/sltdItemList.do";
                    }
                }
                else{
                    zzimExclItemTrgtChk(slitmCdUitmCd, sectId, e, obj); // totoary �곹뭹由ъ뒪�몄뿉�� 李� �좊븣�� �대�吏�瑜� 蹂�寃쏀븯湲� �꾪빐�� 異붽�
                    return;
                }
            }
            , error: function(xhr, status, error) {
                console.log("json error");
                return;
            }
        });

        try {
            _trk_flashEnvView('_TRK_PI=LYRWISH');
        } catch(e) {}
    }

}

/**
 * 李쒗븯湲� �덉씠�� �앹뾽(�� 媛� �댁긽) : �곹뭹紐⑸줉
 *
 * @param  slitmCdUitmCds
 * @param  sectId
 * @param  e
 */
function zzimArray(slitmCdUitmCds, sectId, e){
    if(slitmCdUitmCds == null || slitmCdUitmCds == ''){
        alert("�곹뭹�� �좏깮�� 二쇱꽭��.");
        return;
    }

    var chkedSlitmCdUitmCds = '';
    for(var i=0; i<slitmCdUitmCds.length;i++){
        chkedSlitmCdUitmCds += "|";
        chkedSlitmCdUitmCds += slitmCdUitmCds[i];
    }
    chkedSlitmCdUitmCds = chkedSlitmCdUitmCds.substring(1);
    zzimExclItemTrgtChk(chkedSlitmCdUitmCds, sectId, e);
}

/**
 * 李쒗븯湲� �덉씠�� �앹뾽(�섎굹�� ��) : �곹뭹�곸꽭
 *
 * @param  slitmCdUitmCd
 * @param  sectId
 * @param  e
 */
function zzimItemDetail(slitmCdUitmCd, sectId, e){
    sltdItemFormItemDetail(slitmCdUitmCd, sectId, e);
}

/**
 * 李쒗븯湲� �덉씠�� �앹뾽 �닿린(�곹뭹紐⑸줉)
 *
 * @param  chkedSlitmCdUitmCds
 * @param  sectId
 * @param  e
 */
var sectItemZzimObj = ""; // totoary �곹뭹由ъ뒪�몄뿉�� 李� �좊븣�� �대�吏�瑜� 蹂�寃쏀븯湲� �꾪빐�� 異붽�
function sltdItemForm(chkedSlitmCdUitmCds, sectId, e, obj){
    if ( e.preventDefault ) {
        e.preventDefault();
    } else {
        e.returnValue = false;
    }

    if(isLogin() == 'false'){
        openLoginPopup(locationHref);return false;
    }else {
        // totoary �곹뭹由ъ뒪�몄뿉�� 李� �좊븣�� �대�吏�瑜� 蹂�寃쏀븯湲� �꾪빐�� 異붽�
        if(!isEmpty(obj)) {
            sectItemZzimObj = obj;
        }
        $('#jjim_codi').children().remove();

        var modalWidth = 100,
            modalHeight = 0,	//body�� 珥� �믪씠媛�
            winX = null,
            winY = null;

        winX = $(document).width();
        winY = $(window).height();
        var $this = $(e),
            target = $("#jjim_codi"),
            scrollTop = $(window).scrollTop(),					//�꾩옱 �ㅽ겕濡� �꾩튂
            x = (winX - target.outerWidth() ) / 2 ,				//�덉씠�댄뙘�� left 媛�
            y = scrollTop + ((winY - 187)/2),	//�덉씠�댄뙘�� top 媛�
            popupClose = $this.parents('div.popup'),
            modalHeight =$('body').prop("scrollHeight");

        // �덉씠�댄뙘�� �꾩튂 �뗮똿
        target.css({"top":y+"px","left":x+"px"});
        // ie6�멸꼍�� 紐⑤떖 BG �앹꽦 �섍퀬 �꾩씠�꾨젅�� bg �몄텧
        if (popupClose.attr('style')) {
            if (popupClose.attr('style').indexOf('block')) {
                popupClose.hide();
            };
        };
        // 201208 dim �ㅻ쪟濡� 二쇱꽍泥섎━
        // if ($.browser.version == 6.0) {
        //     ie6layerBg(x, y, target);
        // }else{
        //     // 紐⑤떖 BG �앹꽦
        //     if ($('.modal').length == 0) {
        //         $('body').append('<div class="modal">');
        //         $('.modal').css({"cursor":"move","position":"absolute","z-index":"10000","opacity":"0","background":"#000","top":0,"left":0,"width":modalWidth+"%","height":modalHeight+"px"});
        //         $('.modal').animate({"opacity":"0.8"}, 300,"easeInExpo")
        //     };
        // }

        var params = "chkedSlitmCdUitmCds=" + chkedSlitmCdUitmCds + "&sectId=" + sectId;
        $.ajax({ url: "/p/mpc/editSltdItemLayerPup.do", data:params, type:"post", success: function(data){
                $('#jjim_codi').html(data);
                target.show();
            }, dataType: "html"});
    }
}

/**
 * 李쒗븯湲� �곹뭹 �깅줉(�곹뭹紐⑸줉)
 *
 * @param  obj
 * @param  chkedSlitmCdUitmCds
 * @param  sectId
 * @param  e
 */
function sltdItemDone(obj, chkedSlitmCdUitmCds, sectId, e){

    try {
        _trk_flashEnvView('_TRK_PI=FLDRWISH');
    } catch(e) {}


    if ( e.preventDefault ) {
        e.preventDefault();
    } else {
        e.returnValue = false;
    }

    if(isLogin() == 'false'){
        openLoginPopup(locationHref);return false;
    }else {
        var sltdFldeSeq = $(obj).parent().children("select[name='sltdFldeSeq']").val();
        var params = "chkedSlitmCdUitmCds=" + chkedSlitmCdUitmCds + "&sectId=" + sectId + "&sltdFldeSeq=" + sltdFldeSeq;
        $.ajax({ url: "/p/mpc/insertSltdItemLayerPup.do", data:params, type:"post", success: function(data){
                $('#jjim_codi').children().remove();
                $('#jjim_codi').html(data);
                $('#jjim_codi').show();
                try {
                    _trk_clickTrace("EVT", "�곹뭹由ъ뒪��_李쒗븯湲�");
                } catch (e) {}
                //SKYSCRAPPER�� 蹂�寃쎈맂 李쒗븳�곹뭹 �섎� �ｋ뒗��
                //$("#div4").find("strong").html($.cookie("GGimCnt"));
                // totoary �곹뭹由ъ뒪�몄뿉�� 李� �좊븣�� �대�吏�瑜� 蹂�寃쏀븯湲� �꾪빐�� 異붽�
                if(!isEmpty(sectItemZzimObj)) {
                    if($(sectItemZzimObj).hasClass('gdealItem')){
                        $(sectItemZzimObj).children('i').addClass('on');

                    }else{
                        $(sectItemZzimObj).html('<img src="' + imageServer + '/hmall/co/pl17_icon_wanted_sel.png"/><span>李�</span>');
                    }
                }
            }, dataType: "html"});
    }
}

/**
 * 李쒗븯湲� �덉씠�� �앹뾽 �リ린(�곹뭹紐⑸줉)
 *
 * @param  obj
 * @param  e
 */
function sltdItemClose(obj, e){
    if ( e.preventDefault ) {
        e.preventDefault();
    } else {
        e.returnValue = false;
    }
    $("#jjim_codi").hide();

    //�곹뭹�곸꽭 �덉씠�� �앹뾽�먯꽌 遺�瑜� 寃쎌슦 紐⑤떖 誘몄궘�� 泥섎━
    var pd_zoom_disp = $("#pd_zoom").css("display");
    if((typeof pd_zoom_disp === 'undefined') == true  || pd_zoom_disp == 'none'){
        // 紐⑤떖 bg媛� �덈뒗 寃쎌슦 紐⑤떖 BG �쒓렇 ��젣
        if ($('.modal').length != 0) {
            $('.modal').remove();
            $('html').removeAttr('style');
            // �꾩씠�꾨젅�� BG媛� �덈뒗寃쎌슦 ��젣
        }else if($('.ie6Layer').length != 0){
            $('.ie6Layer').remove();
            $('html').removeAttr('style');
        }
    }
}

/**
 * 李쒗븯湲� �덉씠�� �앹뾽 �닿린(�곹뭹�곸꽭)
 *
 * @param  chkedSlitmCdUitmCds
 * @param  sectId
 * @param  e
 */
function sltdItemFormItemDetail(chkedSlitmCdUitmCds, sectId, e){
    if ( e.preventDefault ) {
        e.preventDefault();
    } else {
        e.returnValue = false;
    }

    if(isLogin() == 'false'){
        openLoginPopup(locationHref);return false;
    }else {
        var params = "chkedSlitmCdUitmCds=" + chkedSlitmCdUitmCds + "&sectId=" + sectId;
        $.ajax({ url: "/p/mpc/editSltdItemLayerPup.do", data:params, type:"post",  success: function(data){
                $('#jjim_codi').html(data);
                var posX = e.pageX,
                    posY = e.pageY;

                var offset = $(".btnWrapA").offset();
                posX = offset.left;
                posY = offset.top;

                $('#jjim_codi').show().css({'left':posX+185,'top':posY+45});
//			$('#jjim_codi').show().css({'left':posX-150,'top':posY+10});
            }, dataType: "html"});
    }
}

/**
 * 李쒗븯湲� �곹뭹 �깅줉(�곹뭹�곸꽭)
 *
 * @param  obj
 * @param  chkedSlitmCdUitmCds
 * @param  sectId
 * @param  e
 */
function sltdItemDoneItemDetail(obj, chkedSlitmCdUitmCds, sectId, e){
    if ( e.preventDefault ) {
        e.preventDefault();
    } else {
        e.returnValue = false;
    }
    var sltdFldeSeq = $(obj).parent().children("select[name='sltdFldeSeq']").val();
    var params = "chkedSlitmCdUitmCds=" + chkedSlitmCdUitmCds + "&sectId=" + sectId + "&sltdFldeSeq=" + sltdFldeSeq;
    $.ajax({ url: "/p/mpc/insertSltdItemLayerPup.do", data:params, type:"post", success: function(data){
            var posX = e.pageX,
                posY = e.pageY;
            $('#jjim_codi').children().remove();
            $('#jjim_codi').html(data);
            $('#jjim_codi').show().css({'left':posX-250,'top':posY-100});
        }, dataType: "html"});
}

/**
 * 李쒗븯湲� �덉씠�� �앹뾽 �リ린(�곹뭹�곸꽭)
 *
 * @param  obj
 * @param  e
 */
function sltdItemCloseItemDetail(obj, e){
    if ( e.preventDefault ) {
        e.preventDefault();
    } else {
        e.returnValue = false;
    }
    $("#jjim_codi").hide();
}


/**
 * 誘몃━蹂닿린 �닿린
 *
 * @param  slitmCd
 * @param  sectId
 * @param  obj
 *
 * 2014. 10 : ajax -> iframe 援먯껜
 */
function itemPreview(slitmCd, sectId, obj){
    $("#previewifm_div").remove();

    var $this = $(obj), previewifm_Div = "";

    var scrollTop = $(window).scrollTop(),	//�꾩옱 �ㅽ겕濡� �꾩튂
        x = ($(document).width() - 1178) / 2,	//�덉씠�댄뙘�� left 媛�
        y = scrollTop + (($(window).height() - 690)/2)	//�덉씠�댄뙘�� top 媛�

    // �덉씠�댄뙘�� �꾩튂 �뗮똿
    previewifm_Div += '<div id="previewifm_div" style="position:absolute; top:'+ y +'px; left:'+ x +'px">';
    previewifm_Div += '<iframe id="previewifm_ifm" title="�곹뭹 誘몃━蹂닿린�� �덉씠�� �꾨젅��" src="/p/dpa/itemPreviewLayerPup.do?slitmCd='+ slitmCd +'&sectId='+ sectId+'" frameborder="0" width="1024" height="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>';
    previewifm_Div += '</div>';
    $("body").append(previewifm_Div);

    // 濡쒕뵫泥댄겕
    var dup_loading_flag = false;
    ifm_loading_timer = setInterval(function () {
        if($("#previewifm_div").outerHeight() == 0){
            if(dup_loading_flag == false){
                showLoadingBar((x + $("#previewifm_div").width()/2)+"px", (y + 300)+"px");
            }
            dup_loading_flag = true;
        } else {
            clearInterval(ifm_loading_timer);
            hideLoadingBar();
        }
    }, 100);

    try {
        _trk_flashEnvView('_TRK_PI=LYRPRVW');
    } catch(e) {}

    try {
        // totoary 寃��됯껐怨쇱뿉�� 諛붾줈二쇰Ц 踰꾪듉 �대┃�쒖뿉 ���� 議곌굔 異붽�
        if($(obj).hasClass("pl_item_tv_buynow")) {
            _trk_clickTrace("EVT", "寃��됯껐怨�_TV諛⑹넚�덉젙�곹뭹_諛붾줈二쇰Цbtn");
        } else {
            _trk_clickTrace("EVT", "�곹뭹由ъ뒪��_誘몃━蹂닿린");
        }
    } catch (e) {}
}

function newWindow(link, obj){
    try {
        _trk_flashEnvView('_TRK_PI=LYRNWN');
    } catch(e) {}

    try {
        _trk_clickTrace("EVT", "�곹뭹由ъ뒪��_�덉갹");
    } catch (e) {}
    window.open(link, '_blank');
}

/**
 * 誘몃━蹂닿린 �リ린
 *
 * @param  e
 */
function itemPreviewClose(e){
    if ( e.preventDefault ) {
        e.preventDefault();
    } else {
        e.returnValue = false;
    }

    playerStop();
    if ($(".modal", parent.document).length != 0) {
        $("html, body", parent.document).removeAttr('style');
        $(".modal", parent.document).remove();
        $("#previewifm_div", parent.document).hide();

        // remove() �ъ슜�� 誘몃뵒�댄뵆�덉씠�� ��쾶 �щ씪吏��� �꾩긽�쇰줈 ���대㉧ remove() �곸슜
        setTimeout(function(){
            $("#previewifm_div", parent.document).remove();
        }, 100);
    } else if($(".ie6Layer", parent.document).length != 0) {
        $("html, body", parent.document).removeAttr('style');
        $(".ie6Layer", parent.document).remove();
        $("#previewifm_div", parent.document).hide();

        // remove() �ъ슜�� 誘몃뵒�댄뵆�덉씠�� ��쾶 �щ씪吏��� �꾩긽�쇰줈 ���대㉧ remove() �곸슜
        setTimeout(function(){
            $("#previewifm_div", parent.document).remove();
        }, 100);
    }
}

/**
 * 利먭꺼李얘린 �먮룞�ㅼ튂
 */
function autoBookMark(){
    var url="http://www.hmall.com";
    var title="�꾨�Hmall";

    if (document.all)
        window.external.AddFavorite(url,title)
}

/**
 * 利먭꺼李얘린 SMS 諛쒖넚
 */
function openSmsPup(prmoNo){
    if(isLogin() == 'true'){
        openPopup("/pevent/eva/evntTmpl15SmsSendPup.do?prmoNo=" + prmoNo, 'smsSendPup', "430", "430", null, $(window).width(), $(window).height());
    }else{
        doEvntLogin();
    }
}

/**
 * �곹뭹�곸꽭 �붾㈃�대룞
 */
function itemDetailView(sectId, slitmCd, adltItemYn, tmplDispTrtyCd, reNewItemListYn)
{
    if(adltItemYn == 'Y' && isLogin() == 'false'){
        openLoginPopup();return false;
    }else {
        // 20150612 - param �꾩튂 蹂�寃� (sectId <-> slitmCd)
        var param = "?slitmCd="+slitmCd+"&sectId="+sectId;

        if(tmplDispTrtyCd != null && tmplDispTrtyCd != ''){
            param += "&2depthGroup=" + tmplDispTrtyCd;
        }
        try {
            // totoary �쒓퉭 異붽� �붿껌�쇰줈 議곌굔 泥섎━
            if(reNewItemListYn == "Y") {
                _trk_clickTrace("EVT", "留ㅼ옣(4depth)_�곹뭹由ъ뒪��_�곹뭹�곸꽭");
            } else {
                _trk_clickTrace("EVT", "�곹뭹由ъ뒪��_�덉갹");
            }
        } catch (e) {}

        document.location.href = "/p/pda/itemPtc.do" + param;
    }

}
/**
 * �곹뭹�곸꽭 �붾㈃�대룞
 */
function itemDetailViewGA(sectId, slitmCd, adltItemYn, tmplDispTrtyCd, reNewItemListYn, slitmNm, tabNm)
{
    if(adltItemYn == 'Y' && isLogin() == 'false'){
        openLoginPopup();return false;
    }else {
        // 20150612 - param �꾩튂 蹂�寃� (sectId <-> slitmCd)
        var param = "?slitmCd="+slitmCd+"&sectId="+sectId;

        if(tmplDispTrtyCd != null && tmplDispTrtyCd != ''){
            param += "&2depthGroup=" + tmplDispTrtyCd;
        }
        try {
            // totoary �쒓퉭 異붽� �붿껌�쇰줈 議곌굔 泥섎━
            if(reNewItemListYn == "Y") {
                _trk_clickTrace("EVT", "留ㅼ옣(4depth)_�곹뭹由ъ뒪��_�곹뭹�곸꽭");
            } else {
                _trk_clickTrace("EVT", "�곹뭹由ъ뒪��_�덉갹");
            }
        } catch (e) {}
        // ga�쒓퉭
        sendSlitmClick(slitmNm,slitmCd, tabNm);
        document.location.href = "/p/pda/itemPtc.do" + param;
    }

}
/**
 * �곹뭹�곸꽭 �붾㈃�대룞(鍮꾩쫰�ㅽ봽留�)
 */
function itemDetailView2(sectId, slitmCd, adltItemYn, tmplDispTrtyCd, reNewItemListYn, tagging)
{
    if(adltItemYn == 'Y' && isLogin() == 'false'){
        openLoginPopup();return false;
    }else {
        // 20150612 - param �꾩튂 蹂�寃� (sectId <-> slitmCd)
        var param = "?slitmCd="+slitmCd+"&sectId="+sectId+tagging;

        if(tmplDispTrtyCd != null && tmplDispTrtyCd != ''){
            param += "&2depthGroup=" + tmplDispTrtyCd;
        }
        try {
            // totoary �쒓퉭 異붽� �붿껌�쇰줈 議곌굔 泥섎━
            if(reNewItemListYn == "Y") {
                _trk_clickTrace("EVT", "留ㅼ옣(4depth)_�곹뭹由ъ뒪��_�곹뭹�곸꽭");
            } else {
                _trk_clickTrace("EVT", "�곹뭹由ъ뒪��_�덉갹");
            }
        } catch (e) {}
        document.location.href = "/p/pda/itemPtc.do" + param;
    }

}
/**
 * �곹뭹�곸꽭 �붾㈃�대룞(鍮꾩쫰�ㅽ봽留�, ga)
 */
function itemDetailView2GA(sectId, slitmCd, adltItemYn, tmplDispTrtyCd, reNewItemListYn, tagging,  slitmNm, tabNm)
{
    if(adltItemYn == 'Y' && isLogin() == 'false'){
        openLoginPopup();return false;
    }else {
        // 20150612 - param �꾩튂 蹂�寃� (sectId <-> slitmCd)
        var param = "?slitmCd="+slitmCd+"&sectId="+sectId+tagging;

        if(tmplDispTrtyCd != null && tmplDispTrtyCd != ''){
            param += "&2depthGroup=" + tmplDispTrtyCd;
        }
        try {
            // totoary �쒓퉭 異붽� �붿껌�쇰줈 議곌굔 泥섎━
            if(reNewItemListYn == "Y") {
                _trk_clickTrace("EVT", "留ㅼ옣(4depth)_�곹뭹由ъ뒪��_�곹뭹�곸꽭");
            } else {
                _trk_clickTrace("EVT", "�곹뭹由ъ뒪��_�덉갹");
            }
        } catch (e) {}
        sendSlitmClick(slitmNm,slitmCd, tabNm);
        document.location.href = "/p/pda/itemPtc.do" + param;
    }

}
/**
 * �곹뭹�곸꽭(湲고쉷��) �붾㈃�대룞
 */
function itemSpexView(sectId, slitmCd, adltItemYn, tmplDispTrtyCd, prmoNo)
{
    if(adltItemYn == 'Y' && isLogin() == 'false'){
        openLoginPopup();return false;
    }else {
        // 20150612 - param �꾩튂 蹂�寃� (sectId <-> slitmCd)
        var param = "";
        if( prmoNo != null && prmoNo != "") {
            param = "?slitmCd="+slitmCd+"&sectId="+sectId+"&prmoNo="+prmoNo;
        }else{
            param = "?slitmCd="+slitmCd+"&sectId="+sectId;
        }

        if(tmplDispTrtyCd != null && tmplDispTrtyCd != ''){
            param += "&2depthGroup=" + tmplDispTrtyCd;
        }
        try {
            _trk_clickTrace("EVT", "�곹뭹由ъ뒪��_�덉갹");
        } catch (e) {}

        document.location.href = "/p/pda/itemPtc.do" + param;
    }

}

/**
 * �곹뭹�곸꽭(�곹뭹��) �붾㈃�대룞
 */
function itemEvaView(sectId, slitmCd, adltItemYn, tmplDispTrtyCd)
{
    if(adltItemYn == 'Y' && isLogin() == 'false'){
        openLoginPopup();return false;
    }else {
        var param = "?sectId="+sectId+"&slitmCd="+slitmCd;
        if(tmplDispTrtyCd != null && tmplDispTrtyCd != ''){
            param += "&2depthGroup=" + tmplDispTrtyCd;
        }
        document.location.href = "/p/pda/itemPtc.do" + param + "#detail_cont_3";
    }

}
/**
 * �곹뭹�곸꽭(�곹뭹Q&A) �붾㈃�대룞
 */
function itemQNAView(sectId, slitmCd, adltItemYn, tmplDispTrtyCd)
{
    if(adltItemYn == 'Y' && isLogin() == 'false'){
        openLoginPopup();return false;
    }else {
        var param = "?sectId="+sectId+"&slitmCd="+slitmCd;
        if(tmplDispTrtyCd != null && tmplDispTrtyCd != ''){
            param += "&2depthGroup=" + tmplDispTrtyCd;
        }
        document.location.href = "/p/pda/itemPtc.do" + param + "#detail_cont_4";
    }
}

/**
 * 湲고쉷�꾨ℓ�� �붾㈃�대룞
 */
function spexSectView(sectId)
{
    // totoary �곹뭹由ъ뒪�� �쒓퉭 異붽�
    try {
        _trk_clickTrace('EVT',"寃��됯껐怨�_湲고쉷��_諛곕꼫");
    } catch (e) {}
    document.location.href = "/p/dpa/searchSpexSectItem.do?sectId="+sectId;
}
/**
 * 留ㅼ옣 �붾㈃�대룞
 */
function sectView(sectId, connUrlGbcd, connUrl)
{
    /** 2013.10.27 ��젣
     if (connUrlGbcd == "01" && !isEmpty(connUrl)) {
		sectViewOpenPop(sectId);
		return false;
	}*/
    document.location.href = "/p/dpa/searchSectItem.do?sectId="+sectId;
}
/**
 * 誘몃━蹂닿린 �붾㈃�대룞
 */
function sectPreview(sectId)
{
    document.location.href = "/p/dpa/multiCreateSectHtml.do?sectId="+sectId;
}
/**
 * �듯빀寃��� �붾㈃�대룞
 */
function searchByTerm(lCat, lmCat, brndCdNm, brndImgNm, deptOption)
{
    var param = "";
    if (lmCat != null && lmCat != "") {
        param += "lCat="+encodeURIComponent(lmCat)+"&";
    }
    if (brndCdNm != null && brndCdNm != "") {
        /*param += "makecoInfo="+escape(brndCdNm);*/
        var brndCdNm_encode = encodeURIComponent(brndCdNm.replace("@", "'"));
        var brndCd= brndCdNm_encode.substring(0, brndCdNm_encode.indexOf("%20"));
        var searchTerm= brndCdNm_encode.substring(brndCdNm_encode.indexOf("%20")+3);
        //param += "makecoInfo="+brndCdNm_encode+"&";
        param += "brndCd="+brndCd+"&";
        param += "searchTerm="+searchTerm+"&";
    }
    if (brndImgNm != null && brndImgNm != "") {
        param += "brndImgNm="+encodeURIComponent(brndImgNm)+"&";
    }
//	if (deptOption != null && deptOption != "") {
//		for (var i = 0; i < deptOption.length; i++) {
//			param += "deptGubun="+deptOption.charAt(i)+"&";
//		}
//	}
    document.location.href = "/p/pde/search.do?type=1&"+param;
}

/**
 * �ъ빱�� 議곗젙
 * @param obj
 */
function focusObj(obj) {
    obj.focus();
    $("body, html").animate({scrollTop : obj.offset().top - 30}, 1);
}

/**
 * 二쇰Ц�곸꽭 �앹뾽 議고쉶
 * @param ordNo
 */
function openOrderDetailPopup(ordNo) {
    var link = "/p/mpa/selectOrdPTCPup.do?ordNo=" + ordNo;
    openPopup(link, "", 836, 1000, "yes", $(window).width(), $(window).height());
}

/**
 * 濡쒕뵫諛� �몄텧
 * @param posX '#px'
 * @param posY '#px'
 */
function showLoadingBar(posX, posY) {
    $("body").append("<div id=\"loadingBar\" style=\"position:absolute; z-index:999999; display:none\"><img src=\"" +  imageServer + "/hmall/co/hmall_loader.gif\" alt=\"loadingBar\"/></div>");
    $("#loadingBar").css({"left" : posX, "top": posY});
    $("#loadingBar").fadeIn("fast");
}

/**
 * 濡쒕뵫諛� 媛먯텛湲�
 */
function hideLoadingBar() {
    $("#loadingBar").hide("fast");
    $("#loadingBar").remove();
}

/**
 * 釉붾윮 濡쒕뵫諛� �몄텧
 */
function showBlockLoadingBar() {
	var loading = '';
	loading += '<div class="loading-spin">';
	loading += '    <div class="loading-area">';
	loading += '        <p class="tit">寃곗젣媛� 吏꾪뻾以묒엯�덈떎��</p>';
	loading += '        <div class="spin-fading-circle">';
	loading += '            <div class="spin-circle1 spin-circle"></div>';
	loading += '            <div class="spin-circle2 spin-circle"></div>';
	loading += '            <div class="spin-circle3 spin-circle"></div>';
	loading += '            <div class="spin-circle4 spin-circle"></div>';
	loading += '            <div class="spin-circle5 spin-circle"></div>';
	loading += '            <div class="spin-circle6 spin-circle"></div>';            
	loading += '            <div class="spin-circle7 spin-circle"></div>';
	loading += '            <div class="spin-circle8 spin-circle"></div>';
	loading += '            <div class="spin-circle9 spin-circle"></div>';
	loading += '            <div class="spin-circle10 spin-circle"></div>';
	loading += '            <div class="spin-circle11 spin-circle"></div>';
	loading += '            <div class="spin-circle12 spin-circle"></div>';
	loading += '        </div>';
	loading += '        <ul class="txt">';
	loading += '            <li>�좎떆留� 湲곕떎�� 二쇱꽭��.</li>';
	loading += '        </ul>';
	loading += '    </div>';
	loading += '</div>';
	$("main").after(loading);
}

/**
 * 釉붾윮 濡쒕뵫諛� 媛먯텛湲�
 */
function hideBlockLoadingBar() {
	$(".loading-spin").remove();
}


function playerStop() {
    try{
        document.WMPlayer.Stop();
        if (navigator.appName == "Netscape") {
            document.WMPlayer.SetCurrentPosition(0);
        } else {
            document.WMPlayer.CurrentPosition = 0;
        }
    }catch(e){}
}

/**
 * GNB 寃��됱갹�� �먮룞�꾩꽦�ㅼ썙�� �곹뭹Paing
 */
function autoItemSearchPaing(url){

    //2017.12 源��댁닔 鍮꾩쫰�ㅽ봽留� �쒓렇 異붽�
    try {
        _trk_clickTrace('EVT','寃��됱갹�덉씠��_諛붾줈寃��됯껐怨�');
    } catch (e) {}

    url = url.replace("('", "").replace("')", "");

    var searchTerm = $("div.searchResult_R span.search_word2 span.search_word").html();
    showLoadingBar("1000px", "300px");

    $.ajax({
        url: url
        , type: "post"
        , data: {searchTerm : searchTerm}
        , dataType: "html"
        , success: function(data) {
            $("div.searchResult_R").html("");
            $("div.searchResult_R").html(data);

            hideLoadingBar();
        }
        , error: function(data) {
            hideLoadingBar();
        }
    });
    return false;
}

/**
 * �④낏留ㅼ옣�깅줉
 * @param sectId
 */
function addWishShop(sectId) {
    if(isLogin() == 'false'){
        // 濡쒓렇�몄갹 �대룞
        openLoginPopup("/p/dpa/addWishShop.do?sectId="+sectId);
    } else {
        var params = "sectId="+sectId;
        $.ajax({
            type: "get"
            ,url: "/p/dpa/addWishShop.do"
            ,data: params
            ,async: false
            ,success : function(data) {

                if(data.successFlag == 'dup') {
                    alert('�대� �깅줉�� 留ㅼ옣�낅땲��.');
                }
                if(data.successFlag == '1') {
                    alert('�④낏留ㅼ옣�쇰줈 �깅줉�섏뿀�듬땲��.');
                }
            }
            ,error: function(data) {
            }
        });
    }
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

/**
 * �ъ엯怨� �뚮┝ �깅줉 �앹뾽
 * @param slitmCd
 * @param uitmCd
 */
function addItemRishpAlrimCommonPopup(slitmCd, uitmCd) {
    if(isLogin() == 'false'){
        openLoginPopup();return false;
    } else {
        var link = "/p/mpc/itemRishpAlrimPup.do?slitmCd=" + slitmCd + "&uitmCd=" + uitmCd;
        openPopup(link, "", 550, 530, "no", $(window).width(), $(window).height());
    }
}

/**
 * 諛⑹넚 �뚮┝ �깅줉 �앹뾽(�곹뭹紐�)
 * @param slitmNm
 */
function addBitemAlrimCommonPopup(slitmNm) {
    if(isLogin() == 'false'){
        openLoginPopup();return false;
    } else {
        var link = "/p/bma/editBitmAlrimNewPup.do?slitmNm=" + encodeURIComponent(slitmNm);
        openPopup(link, "", 795, 660, "no", $(window).width(), $(window).height());
    }
}

/**
 * 留ㅼ옣�앹뾽�몄텧
 */
function sectViewOpenPop(sectId) {
    var link = "/p/dpa/searchSectItem.do?sectId="+sectId;
    document.location.href = link;
    document.location.target = "_blank";
}


/**
 * 移댄깉濡쒓렇 �고렪 �깅줉 �앹뾽
 */
function ctlgPostReqPopup() {
    if(isLogin() == 'false'){
        openLoginPopup("clickCatalogue");return false;
    } else {
        var link = "/p/dpf/ctlgPostReqPup.do";
        openPopup(link, "", 460, 400, "no", $(window).width(), $(window).height());
    }
}

/**
 * img tag onerror image 泥섎━
 */
function noImage(obj, source) {
    var img = new Image();

    img.onerror = function() {
        callbackNoImage(obj, source, false);
    };

    img.onload = function() {
        callbackNoImage(obj, source, true);
    };

    img.src = source;
}

function callbackNoImage(obj, source, b) {
    if (b) {
        $(obj).attr('img404', obj.src);
        obj.src = source;
    }
}

function getItemImgSrc(slitmCd, sFName) {
    var itemImgSrc  = "";
    try {
        var host        = getPropertie("item_image_server_host");
        var directory   = getPropertie("item_image_server_directory");
        itemImgSrc      += "//";
        itemImgSrc      += host;

        itemImgSrc      += directory;
        itemImgSrc      += "/";
        itemImgSrc      += slitmCd.substring(7,8);
        itemImgSrc      += "/";
        itemImgSrc      += slitmCd.substring(6,7);
        itemImgSrc      += "/";
        itemImgSrc      += slitmCd.substring(4,6);
        itemImgSrc      += "/";
        itemImgSrc      += slitmCd.substring(2,4);
        itemImgSrc      += "/";
        itemImgSrc      += sFName;
    } catch (err) {
        //alert(err.description);
        itemImgSrc = "";
    }
    return itemImgSrc;
}
function getImgSrc(img) {
    if ( document.location.protocol == 'http:' ) {
        return 'http://'+getPropertie("image_server_host")+img;
    }
    else if ( document.location.protocol == 'https:' ) {
        return 'https://'+getPropertie("image_server_host_for_ssl")+img;
    }
    else {
        return '//'+getPropertie("image_server_host")+img;
    }

}


// �대깽�� �뱀꺼 �덈궡 �앹뾽
function openWinPtupPop(prmoNo){

    var url = "/pevent/eva/evntWinPtupPop.do?prmoNo=" + prmoNo;
    window.open(url, 'evntWinPtupPop', 'width=660,height=700,scrollbars=yes,resizable=no');
}


/*
 * �쇰컲留ㅼ옣 荑좏룿 �ㅼ슫濡쒕뱶
 * 20140714 evnt.js �먯꽌 �대룞
 */
function evntSectCopnDownload(prmoNo){
    if(isLogin() == 'true'){
        $.ajax({
            type: "post"
            ,url: "/pevent/eva/evntSectCopnDownLoad.do"
            ,dataType: "json"
            ,data:{prmoNo:prmoNo}
            ,async: false
            ,success : function(data) {
                if(data.save){
                    var c = confirm("荑좏룿�� 諛쒗뻾�섏뿀�듬땲��. 援щℓ 留ㅼ옣�쇰줈 �대룞 �섏떆寃좎뒿�덇퉴?");
                    if(c == 1){
                        window.location.href = data.targetUrl;
                    }
                }else{
                    var c = confirm(data.errorMsg+" 援щℓ 留ㅼ옣�쇰줈 �대룞 �섏떆寃좎뒿�덇퉴?");
                    if(c == 1){
                        window.location.href = data.targetUrl;
                    }
                }
            }
            ,error : function(request,status,error){
                if(confirm('�대깽�� �묐え�� �ㅻ쪟媛� 諛쒖깮�덉뒿�덈떎.\n�대깽�명럹�댁�濡� �대룞�섏떆寃좎뒿�덇퉴?')){
                    window.location.href="/pevent/eva/evntDivideView.do?prmoNo=" + prmoNo;
                }
            }
        });

        return false;
    }else{
        openLoginPopup();
        return false;
    }
}

/*
�ㅻ챸  : �� �낅젰媛믪쓣 �뺢퇋�앺뙣�댁쓣 �댁슜�댁꽌 泥댄겕�� (2014-11-28)
�ъ슜踰� : frmchk_char(臾몄옄��, 議곌굔)
寃곌낵媛� : true/false
議곌굔  : �곷Ц, �レ옄, �쒓�, �뱀닔臾몄옄 �ъ슜媛���
*/
function frmchk_char(str) {
    var objPattern;

    if(str == "" || str == "undefined" || str == null){
        return false;
    }

    str = str.replace(/(\s*)/g,""); //怨듬갚�쒓굅
    str = str.replace(/\r\n/g,"");  //媛쒗뻾�쒓굅
    objPattern = /^[媛�-�ｃ꽦-�롢뀖-�즑-zA-Z0-9a-zA-Z0-9~!@\#$%<>^&*?|{}:;,.\()\-=+_\'\[\]\\\/\"\`]+$/;


    return objPattern.test(str);
}

/**
 * 援��蹂� zipcode 泥댄겕
 * 2014-12-01 rmffhqjf tkehddlf
 * @param cnryCd
 * @param zipcode
 */
function zipCodeValidation(cnryCd, zipcode){
    var val = zipcode;
    if(cnryCd == "AU" || cnryCd == "AT" || cnryCd == "BE" || cnryCd == "DK" || cnryCd == "LU" || cnryCd == "NL" || cnryCd == "NO"
        || cnryCd == "PH" || cnryCd == "PT" || cnryCd == "ZA" || cnryCd == "CH"){
        if(/^\d{4}$/.test(val))
            return true;
        else
            return false;

    }
    else if(cnryCd == "FI" || cnryCd == "FR" || cnryCd == "DE" || cnryCd == "GR" || cnryCd == "ID" || cnryCd == "IT" || cnryCd == "MY"
        || cnryCd == "MX" || cnryCd == "PR" || cnryCd == "ES" || cnryCd == "SE" || cnryCd == "TH" || cnryCd == "TR" || cnryCd == "US"){
        if(/^\d{5}$/.test(val))
            return true;
        else
            return false;

    }
    else if(cnryCd == "CN" || cnryCd == "IN" || cnryCd == "RU" || cnryCd == "KR" || cnryCd == "SG"){
        if(/^\d{6}$/.test(val))
            return true;
        else
            return false;

    }else if(cnryCd == "JP"){
        if(/^\d{7}$/.test(val))
            return true;
        else
            return false;

    }else if(cnryCd == "BR"){
        if(/^\d{8}$/.test(val))
            return true;
        else
            return false;

    }else if(cnryCd == "CA"){
        if(/^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1}\d{1}[A-Z]{1}\d{1}$/.test(val))
            return true;
        else
            return false;

    }else if(cnryCd == "GB"){
        if(/^[A-Z]{1,2}[0-9R][0-9A-Z]?[0-9][ABD-HJLNP-UW-Z]{2}$/.test(val))
            return true;
        else
            return false;

    }
}


/**
 * 援��蹂� zipcode 泥댄겕
 * 2014-12-01 rmffhqjf tkehddlf
 * @param cnryCd
 * @param zipcode
 * @param frgnDlvcoCd
 */
function zipCodeValidation2(cnryCd, zipcode, frgnDlvcoCd){


    if( frgnDlvcoCd == "87"
        && cnryCd != "TW"
        && cnryCd != "VN"
        && cnryCd != "HK"
        && cnryCd != "KH"
        && cnryCd != "CL"
        && cnryCd != "HR"
        && cnryCd != "IE"
        && cnryCd != "KZ"
        && cnryCd != "KW"
        && cnryCd != "MN"
        && cnryCd != "NZ"
        && cnryCd != "SA"
        && cnryCd != "SK"
        && cnryCd != "TR"
        && cnryCd != "AE"
        && cnryCd != "UZ"
        && cnryCd != "VE"
        && cnryCd != "MO"){
        var isPass = false;

        if(!isEmpty(frgnDlvcoCd)
            && !isEmpty(cnryCd)
            && !isEmpty(zipcode)) {

            $.ajax({
                type: "post"
                , url: "/p/cof/validateShipping.do"
                , dataType: "json"
                , async:false
                , data : {frgnDlvcoCd : frgnDlvcoCd, frgnDstnPostNo : zipcode, cnryCd : cnryCd}
                , success : function(data) {
                    if(isEmpty(data.resultMsg)) {
                        alert("System error.");
                    } else if(data.resultMsg == "OK"){
                        isPass = true;
                    }else{
                        //isPass = confirm("�댁쇅諛곗넚吏� �고렪踰덊샇媛� �섎せ�섏뿀�듬땲��. 洹몃옒�� 二쇰Ц �섏떆寃좎뒿�덇퉴?");
                        isPass = false;
                    }
                }
                , error: function(data) {
                    //alert(data);
                    alert("�ㅻ쪟媛� 諛쒖깮�섏��듬땲��. �ㅼ떆�쒕룄�댁＜�몄슂.");
                }
            });
        }
    }else{
        isPass = true;
    }
    return isPass;
}

/* 20150309 - �곹뭹 �대�吏� 濡ㅼ삤踰� �� 誘몃━蹂닿린, 李�, 鍮꾧탳�섍린 �ㅻ쾭�덉씠�� - 誘쇱닔�� */
$(document).on("mouseenter", ".pdtImg2, .bestProd",function(e){

    // �곸쐞 �쒓렇媛� A �쒓렇�� 寃쎌슦 以묐났 �대┃ 諛⑹�
    if($(this).parent().prop("tagName") == "A"){
        $(this).parent().attr({ "data-onclick" : $(this).parent().attr("onclick") }).removeAttr("onclick");
        e.preventDefault();
    }

    // �쇱떆以묐떒�곹뭹�� 寃쎌슦, �ㅻ쾭�덉씠�� 誘몃끂異�
    var itemSellGbcd = $(this).parent().find("input[name='itemSellGbcd']").val();
    if(itemSellGbcd == '11'){
        return;
    }

    // �깆씤�곹뭹 �멸꼍�� 誘몃━蹂닿린 誘몃끂異�
    var adltItemYn = $(this).parent().find("input[name='adltItemYn']").val();


    var sCd = $(this).attr("data").split(":"), overlayerName, inlineStyle_48 = "", inlineStyle_44 = "", btn_pd_over_1 = "btn_pd_over_1", btn_pd_over_2 = "btn_pd_over_2", btn_pd_over_3 = "btn_pd_over_3";

    // �곹뭹 �대�吏� 媛�濡� �ъ씠利덈퀎 overlayer �대옒�� 蹂�寃�
    ($(this).find("img").width() <= 140) ? overlayerName = "overlayer2" : overlayerName = "overlayer3";

    // �곹뭹 �대�吏� 媛�濡� �ъ씠利� 140�댄븯�� 寃쎌슦
    if(overlayerName == "overlayer2"){
        inlineStyle_48 = "width: 48px !important";
        inlineStyle_44 = "width: 44px !important";

        btn_pd_over_1 = "btn_pd_over_wide_1";
        btn_pd_over_2 = "btn_pd_over_wide_2";
        btn_pd_over_3 = "btn_pd_over_wide_3";
    }

    var objHtml = '';
    objHtml += '<div class="'+ overlayerName +'">';
    objHtml += '<ul class="'+ overlayerName +'UL">';
    if(adltItemYn !='Y'){
        objHtml += '<li><a href="javascript://" onclick="itemPreview(\''+ sCd[0] +'\', \''+ sCd[1] +'\', this);" class="targetLayerPopup2"><img src="' + imageServer + '/hmall/co/'+ btn_pd_over_1 +'.png" alt="誘몃━蹂닿린" style="'+ inlineStyle_48 +'" /></a></li>';
    }
    objHtml += '<li><a href="javascript://" onclick="zzimItem(\''+ sCd[0] +'\',\''+ sCd[1] +'\', event);"><img src="' + imageServer + '/hmall/co/'+ btn_pd_over_2 +'.png" alt="李�" style="'+ inlineStyle_44 +'" /></a></li>';
    objHtml += '<li><a href="javascript://" onclick="newWindow(\'' + '/p/pda/itemPtc.do?slitmCd='+ sCd[0] +'&overL=nw'+'\', this);"><img src="' + imageServer + '/hmall/co/'+ btn_pd_over_3 +'.png" alt="�덉갹�닿린" style="'+ inlineStyle_48 +'" /></a></li>';	// 20150615 - 鍮꾧탳�섍린 -> �덉갹蹂�寃�
    objHtml += '</ul>';
    objHtml += '</div>';

    $(this).append(objHtml);
}).on("mouseleave", ".pdtImg2, .bestProd",function(){
    // �곸쐞 �쒓렇媛� A �쒓렇�� 寃쎌슦 以묐났 �대┃ 諛⑹�
    if($(this).parent().prop("tagName") == "A"){
        $(this).parent().attr({ "onclick" : $(this).parent().attr("data-onclick") }).removeAttr("data-onclick");
    }

    $(".overlayer2, .overlayer3").remove();
});

//20150520 - �곹뭹鍮꾧탳�섍린(留ㅼ옣/寃���/李�/理쒓렐蹂몄긽��) - 源��곷�
$(document).on("click", ".listBoxs > span.chk", function(){
    // �좏깮 ��ぉ�� 4媛쒖씠�곸씪 寃쎌슦 由ы꽩
    var cnt = 0;
    $('[id^=slitmCd], [name^=slitmCd], [class^=pdtChk]').each(function(){
        if(this.checked) cnt += 1;
    });

    // �대� �쒖떆以묒씤 鍮꾧탳踰꾪듉 �쒓굅
    if($(".listBoxs").find(".compareBtn_div").length > 0) $(".listBoxs").find(".compareBtn_div").remove();

    // �좏깮�� �곹뭹�� 鍮꾧탳�섍린 踰꾪듉 異붽�/�쒓굅
    var compare = '';
    compare += '<div class="compareBtn_div" style="position:absolute; top:'+ ($(this).position().top-1) +'px; left:27px; z-index:1000">';

    // 鍮꾧탳�섍린 �⑥닔 �몄텧 �덉쇅泥섎━
    compare += '<a href="#" class="status white2_3"';
    if(location.href.indexOf("/p/pde/") > 0 || location.href.indexOf("/p/mpc/sltdItemList.do") > 0){	// 寃��됯껐怨� & 李� �붾㈃�� 寃쎌슦 �몄텧 �⑥닔 蹂�寃�
        compare += ' onclick="compareItems()';
    } else {
        compare += ' onclick="compareItms(event)';
    }
    compare += '; return false;"><span>鍮꾧탳</span></a>';

    compare += '<a href="#"><img src="' + imageServer + '/hmall/co/btn_close_x8.gif" alt="" class="ml1" /></a>';
    compare += '</div>';
    $(this).after(compare);

    // �좏깮 ��ぉ�� 紐⑤몢 �댁젣�� 寃쎌슦 鍮꾧탳踰꾪듉 誘몃끂異�
    if(cnt == 0) $(".listBoxs").find(".compareBtn_div").remove();

    // 鍮꾧탳踰꾪듉 �덉씠�� �リ린 諛� �쒓굅
    $(this).parent().find(".compareBtn_div").find("a:eq(1)").click(function(){
        $(this).parent().remove();
        return false;
    });
});

// 20150821 - �곹뭹��
$(document).on("click", "table.assessment > tbody > tr", function(){
    if(!$(this).hasClass("detailTR")){
        if($(this).next().css("display") == "table-row" || $(this).next().css("display") == "block") $(this).next().hide();
        else $(this).next().show();
    }
});

// �덉씠釉� �낅젰李� �ъ빱�ㅼ떆 �띿뒪�� �④�/�댁젣
function labelFocus(_this){
    var $label = $(_this);
    var _input = "#"+$(_this).siblings("input[id="+ $label.attr("for") +"]").attr("id");

    $label.css({ visibility : "hidden" });
    $(document).on("blur", _input, function(){
        if($(_input).val() == "") $label.css({ visibility : "visible" });
    });
}

// 160823 - �밸줈洹� 異붿쟻��
function itemDetailViewCate(sectId, slitmCd, adltItemYn, tmplDispTrtyCd, cateText, depth){
    if(adltItemYn == 'Y' && isLogin() == 'false'){
        openLoginPopup();return false;
    } else {
        var param = "?slitmCd="+slitmCd+"&sectId="+sectId;

        if(tmplDispTrtyCd != null && tmplDispTrtyCd != ''){
            if (depth != null && depth != '' && depth == '3' ) {
                param += "&3depthGroup=" + tmplDispTrtyCd;
            } else {
                param += "&2depthGroup=" + tmplDispTrtyCd;
            }
        }

        if(cateText != null && cateText != ''){
            param += "&cateText=" + cateText;
        }

        document.location.href = "/p/pda/itemPtc.do" + param;
    }
}

// 161006 - �곹뭹�곸꽭(�곹뭹��) �붾㈃�대룞 - KJY
function itemEvaViewCate(sectId, slitmCd, adltItemYn, tmplDispTrtyCd, cateText){
    if(adltItemYn == 'Y' && isLogin() == 'false'){
        openLoginPopup();
        return false;
    } else {
        var param = "?sectId="+sectId+"&slitmCd="+slitmCd;
        if(tmplDispTrtyCd != null && tmplDispTrtyCd != ''){
            param += "&2depthGroup=" + tmplDispTrtyCd;
        }

        if(cateText != null && cateText != '') {
            param += "#" + cateText;
        }

        document.location.href = "/p/pda/itemPtc.do" + param;
    }
}

// 170412 - 寃��됱쁺�� �댁쇅 �대┃�� 寃��됱갹(�멸린, 理쒓렐, 諛붾줈寃���) �④� - rlatkdals
$(document).on("click", function(e){
    if($(e.target).parents(".header-service-area").length == 0 && ($(".pop-keyword-list").css("display") == "block" || $(".search_layer2").css("display") == "block")){
        $(".pop-keyword-list, .search_layer2").css({ display : "none" });
    }
});

//----------- 17 renewal wingbanner function

//set wingbanner resize offset
$(window).on('resize', function(){
    if($(document).find(".wingbanner")[0]){
        setWingbannerSideOffset();
    }
});

$(window).on('scroll', function(){
    if($(document).find(".wingbanner")[0]){
        var currentScrollTop = $(document).scrollTop();
        var topOffset;
        try{
            topOffset = $('.content-quicklink-wrap').offset().top;
        } catch(e){}

        if(window.location.href.indexOf("Home.html") > 0 || window.location.href.indexOf("CO-MAIN-R1.html") > 0){
            var gltPositionY = $('.main-content:eq(1)').offset().top;
            var ssPositionY = $('.main-content:eq(0)').offset().top;
            var qwPositionY = topOffset;

            if(currentScrollTop > gltPositionY) $('.wingbanner.banner-left').addClass("fixed");
            else $('.wingbanner.banner-left').removeClass("fixed");

            if (currentScrollTop > ssPositionY) {
                $('.wingbanner.banner-right').css("top", gltPositionY+35);
                $('.wingbanner.banner-right').addClass("pos2nd");
                if($('.wingbanner.banner-right').children().hasClass("visit-indicator") == false){
                    $('.wingbanner.banner-right').prepend($('.header-quicklink-area .visit-indicator').clone());
                }

                // add.180528 - �뚮줈�낅같�� �꾩튂 議곗젙 - rlatkdals
                $(".floatingBn, .top-down-floating").css({ top : gltPositionY + $('.wingbanner.banner-right').outerHeight() + 51, left : $('.main-content:eq(0)').offset().left + $('.main-content:eq(0)').width() + 23 });
            }
            else {
                $('.wingbanner.banner-right').css("top", topOffset+54);
                $('.wingbanner.banner-right').removeClass("pos2nd");
                $('.wingbanner.banner-right .visit-indicator').remove();


                // add.180528 - �뚮줈�낅같�� �꾩튂 議곗젙 - rlatkdals
                $(".floatingBn, .top-down-floating").removeAttr("style").attr("style", $(".floatingBn, .top-down-floating").attr("data-original"));
            }

            if(currentScrollTop > gltPositionY) $('.wingbanner.banner-right, .floatingBn, .top-down-floating').addClass("fixed");
            else $('.wingbanner.banner-right, .floatingBn, .top-down-floating').removeClass("fixed");
        }
        else {
            if(currentScrollTop > topOffset+6){
                if($('.wingbanner.banner-right').children().hasClass("visit-indicator") == false){
                    $('.wingbanner.banner-right').prepend($('.header-quicklink-area .visit-indicator').clone());
                }
                $('.wingbanner.banner-left, .wingbanner.banner-right').addClass("fixed");
            }
            else{
                $('.wingbanner.banner-right .visit-indicator').remove();
                $('.wingbanner.banner-left, .wingbanner.banner-right').removeClass("fixed");
            }
        }
    }
});

function initWingbannerOffset(){
    var topOffset = $('.content-quicklink-wrap').offset().top+54;
    $('.wingbanner.banner-right, .wingbanner.banner-left').css("top", topOffset);

    if(window.location.href.indexOf("Home.html") > 0 || window.location.href.indexOf("CO-MAIN-R1.html") > 0){
        var leftTopOffset = $('.main-content:eq(1)').offset().top+35;
        $('.wingbanner.banner-left').css("top", leftTopOffset);
    }

    setWingbannerSideOffset();
    $('.wingbanner').css("visibility", "visible");
}

function setWingbannerSideOffset(){
    var mainConOffsetL = $('.content-quicklink-wrap').offset().left;
    $('.wingbanner.banner-left').css("left", mainConOffsetL-168);
    $('.wingbanner.banner-right').css("left", mainConOffsetL+1121);

    // 181121 - 援ы솕硫� �숇같�� �꾩튂 �꾪븳 遺�紐� �ъ��� 珥덇린�� - rlatkdals
    if($("#container > #content > .body").length > 0 && $(".wingbanner.banner-left").length > 0) $("#container, #content").css({ position : "static" });
}

function initWingbannerSlider(){
    $(".wingbanner > ul").each(function(idx){
        var _childLength = $(this).children().length;

        // 泥ル쾲吏� ��ぉ �쒖떆 諛� 1媛� �댁긽�� 寃쎌슦 �섏씠吏� 泥섎━
        if(_childLength >= 1){
            $(this).children().first().addClass("on");

            if(_childLength > 1){
                var _navHtml = "<div class='slider-direction'>" +
                    "<div class='slider-prev'>&lt;</div>" +
                    "<div class='slider-pager'><span class='current-page'>1</span>/<span class='total-page'>-</span></div>" +
                    "<div class='slider-next'>&gt;</div>" +
                    "</div>";

                // AdBanner, CardPromotion, Recentview : slider-pager
                $(this).after(_navHtml);

                // AdBanner, CardPromotion, Recentview : slider-pager totalSize
                $(this).closest("ul").next(".slider-direction").find(".total-page").text(_childLength);
            }

        } else {
            if($(this).attr("id") == "recentView") $(this).append("<li class='on no-contents'>理쒓렐 蹂� �곹뭹�� �놁뒿�덈떎</li>");
        }
    });
}

function ajaxCallback(){

    var rep_switch_serverHost;
    if(location.href.indexOf("tour") > 0){
        rep_switch_serverHost = "http://www.hmall.com";
    } else {
        rep_switch_serverHost = switch_serverHost;
    }

    var _categoryUrl = rep_switch_serverHost + "/gen/html/sectCtgr.html";

    if(location.href.indexOf("Home.html") > 0){
        setCategory(_categoryUrl);
        //201208 �먮윭濡� 二쇱꽍泥섎━
        //setQuicklink(PCmainTABJson);
        //setWingbanner();
    } else {
        $(window).on("load", function(){
            setCategory(_categoryUrl);
            //setQuicklink(PCmainTABJson);
            //setWingbanner();
        });
    }

}

//----------- //17 renewal wingbanner function

//gnb - Category
function setup_gnbCategoryNew(){
    var xdr, switch_htmlName;
    if (locationHref.indexOf("https") > -1) {
        switch_htmlName = "sectCtgrSsl";
    } else if (locationHref.indexOf("http") > -1) {
        switch_htmlName = "sectCtgr";
    }

    if (document.location.hostname.indexOf("www") == -1 && navigator.userAgent.indexOf("MSIE") != -1 && getInternetExplorerVersion() < 10 ) {
        xdr = new XDomainRequest();
        if(xdr){
            xdr.onload  = function(){
                $("#gnb").html(xdr.responseText);
                main_gnb();
            }
            xdr.onerror = function(){}
            xdr.open("get", ""+ switch_serverHost + "/gen/html/"+ switch_htmlName +".html");
            xdr.send();
        }
    } else {
        $("#gnb").load(""+ switch_serverHost + "/gen/html/"+ switch_htmlName +".html", function(responseTxt,statusTxt,xhr){
            if(statusTxt=="success") main_gnb();
        });
    }
}

//�곷떒怨좎젙諛� �대┃�� 鍮꾩쫰�ㅽ봽留� 遺꾧린
function clickDetailCont(param){
    if(param == "baseInfo"){
        //BIZSPRING
        try {
            _trk_clickTrace('EVT','�곹뭹�곸꽭_�곷떒怨좎젙諛�_湲곕낯�뺣낫');
        } catch (e) {}
    }else if(param == "itemDesc"){
        //BIZSPRING
        try {
            _trk_clickTrace('EVT','�곹뭹�곸꽭_�곷떒怨좎젙諛�_�곸꽭�ㅻ챸');
        } catch (e) {}
    }else if(param == "eval"){
        //BIZSPRING
        try {
            _trk_clickTrace('EVT','�곹뭹�곸꽭_�곷떒怨좎젙諛�_�곹뭹��');
        } catch (e) {}
    }else if(param == "qna"){
        //BIZSPRING
        try {
            _trk_clickTrace('EVT','�곹뭹�곸꽭_�곷떒怨좎젙諛�_�곹뭹Q&A');
        } catch (e) {}
    }else if(param == "custSatisFaction"){
        //BIZSPRING
        try {
            _trk_clickTrace('EVT','�곹뭹�곸꽭_�곷떒怨좎젙諛�_怨좉컼留뚯”��');
        } catch (e) {}
    }else if(param == "dlvExchRtp"){
        //BIZSPRING
        try {
            _trk_clickTrace('EVT','�곹뭹�곸꽭_�곷떒怨좎젙諛�_諛곗넚/援먰솚/諛섑뭹');
        } catch (e) {}
    }
}

/* 180308 - 二쇱냼寃��� 由щ돱�� - sb */
$(document).on('click', ".addr-search .custom-placeholder", function(){
    $(this).hide();
    $(this).parents(".placeholder-wrap").find("input").focus();
});

$(document).on('focus', ".addr-search .placeholder-wrap > input", function(){
    $(this).parents(".placeholder-wrap").find(".custom-placeholder").hide();
    if($(this).parents().hasClass("search-input-wrap")){
        $(".addr-search .search-input-wrap").addClass("active");
    }
});

$(document).on('focusout', ".addr-search .placeholder-wrap > input", function(){
    if($(this).val() == "") {
        $(this).parents(".placeholder-wrap").find(".custom-placeholder").show();
        if($(this).parents().hasClass(".search-input-wrap")){
            $(".addr-search .search-input-wrap").removeClass("active");
        }
    }
});

$(document).on('keyup', ".addr-search .search-input", function(){
    if($(".addr-search .search-input").val() != "") $(".addr-search .remove-btn").show();
    else $(".addr-search .remove-btn").hide();
});

$(document).on('click', ".addr-search .remove-btn", function(){
    $(".addr-search .search-input").val("");
    $(".addr-search .remove-btn").hide();
    $(".addr-search .search-input").focus();
});

$(document).on('click', ".addr-search .addr-selector", function(){
    if($(this).hasClass("active")){
        $(".addr-selector").removeClass("active");
        $(".addr-selector-list").hide();
        $(this).removeClass("active");
        $(this).siblings(".addr-selector-list").hide();
    }
    else{
        $(".addr-selector").removeClass("active");
        $(".addr-selector-list").hide();
        $(this).addClass("active");
        $(this).siblings(".addr-selector-list").show();
    }
});

$(document).on('click', ".addr-search .addr-selector-list > li > a", function(){
    $(this).parents(".selector-wrap").find(".addr-selector").text($(this).text()).removeClass("active");
    $(this).parents(".addr-selector-list").hide();
});

$(document).on('click', ".addr-submit-btn", function(){
    if($(".addr-detail-input").val() == ""){
        $(".input-error-noti").show();
        $(".addr-detail-input").focus();
    }
});

/* // 180308 - 二쇱냼寃��� 由щ돱�� - sb */

/* 180502 - 怨좎젙 �띾낫�� - dlsvy */
$(window).on('load resize', function(){
    if ($('.fixed-ad-belt').length > 0){
        $('.fixed-ad-belt').css({ left: ($(window).width() - 1081) / 2 });
        $('.fixed-ad-belt').css({ visibility: 'visible' });
    }
    if ($('.fixed-ad-img').length > 0){
        $('.fixed-ad-img').css({ left: $(window).width() / 2 - 541 - 168 });
        $('.fixed-ad-img').css({ visibility: 'visible' });
    }
});

function rollTxt(){
    var ad_txtwidth = $('.fixed-ad-content ._rolltxt').width();
    var ad_wrapwidth = $('.fixed-ad-content').width();
    var ad_dur = ad_txtwidth * 15;

    $('.fixed-ad-content ._rolltxt').animate({
        marginLeft: - (ad_txtwidth + ad_wrapwidth)
    }, ad_dur, 'linear', function(){
        $('.fixed-ad-content ._rolltxt').css({
            marginLeft: ad_wrapwidth
        });
        rollTxt();
    });
};

//�앹뾽愿�由�.
function fnPupDispWindow(pupDispGbcd){
    //page�대룞 5�� 誘몃쭔 �앹뾽 �④�
    //2019.05.20 源��숇� 3�� 誘몃쭔�쇰줈 �섏젙
    if($.cookie("pageMoveCnt") < 3 || $.cookie("pageMoveCnt") == null){
        $(".fixed-ad-img").css({
            display: "none"
        });
        $(".fixed-ad-belt").css({
            display: "none"
        });
    }else{
        if(pupDispGbcd != ""){
            $.ajax({
                type: "get"
                ,url: "/p/coa/selectPupWindow.do"
                ,dataType: "html"
                ,data: {pupDispGbcd:pupDispGbcd}
                ,async: false
                ,success : function(data) {
                    if(data != null){
                        $("#pupDispWindow").html(data);
                    }
                }
                ,error: function(data) {
                }
            });
        }

    }
}

/* 180618 - �뱁솕諛곗넚 - sb */
/* 諛곗넚諛⑸쾿 �쇰뵒�ㅻ쾭�� */
$(document).on('change', "input[name='deliveryType3']", function(){
    var _selectedType = $("input[name='deliveryType3']:checked").attr('id');
    var deliveryType = "";
    if(_selectedType == "dType1"){
        $(".delivery-type").removeAttr("disabled");
        $(".delivery-type").removeClass("disabled");
        $(".special-delivery-type").attr("disabled", "disabled");
        $(".special-delivery-type").addClass("disabled");
        deliveryType = $(".delivery-type").val();    //20180801�뱁솕諛곗넚 議곗쑀吏�
        $(".delivery-type").each(function(){
            $(this).val(deliveryType).trigger('change');
        });
        $(".special-delivery-guide-btn").hide();
        if(deliveryType != "3"){
            $(".gl_order.hidden").hide();
            $("#multiChk").show();
        }else{
            $("#multiChk").hide();
        }

    }
    else{
        $(".delivery-type").attr("disabled", "disabled");
        $(".delivery-type").addClass("disabled");
        $(".special-delivery-type").removeAttr("disabled");
        $(".special-delivery-type").removeClass("disabled");
        deliveryType = $(".special-delivery-type").val();
        $(".special-delivery-type").each(function(){
            $(this).val(deliveryType).trigger('change');
        });
        $(".special-delivery-guide-btn").show();
        $(".gl_order.hidden").hide();
        $("#multiChk").hide();
    }
});
/* �뱁솕諛곗넚 ���됲듃諛뺤뒪 */
$(document).on('change', ".deliveryType .special-delivery-type", function(){
    var _selectedType = $(".deliveryType .special-delivery-type option:selected").attr('class');
    var _selectedTypeName = $(".deliveryType .special-delivery-type option:selected").text();
    $(".special-delivery-guide-btn").show();
    $(".special-delivery-guide-btn > span").text(_selectedTypeName + " �댁슜�덈궡");
    $("#specialDeliveryPopup > .layer_con").removeClass("on");
    $("#specialDeliveryPopup > ." + _selectedType).addClass("on");
});

/* 180716 - tv �몄꽦�� 移댄뀒怨좊━ �ㅻ뜑 怨좎젙 - sb */

var stickyHeaders = (function() {

    var $window = $(window), $stickies;

    var load = function(stickies) {

        if (typeof stickies === "object" && stickies instanceof jQuery && stickies.length > 0) {

            $stickies = stickies.each(function() {

                var $thisSticky = $(this).wrap('<div class="followWrap" />');

                $thisSticky
                    .data('originalPosition', $thisSticky.offset().top)
                    .data('originalHeight', $thisSticky.outerHeight())
                    .parent()
                    .height($thisSticky.outerHeight());
            });

            $window.off("scroll.stickies").on("scroll.stickies", function() {
                _whenScrolling();
            });
        }
    };

    var _whenScrolling = function() {

        $stickies.each(function(i) {

            var $thisSticky = $(this), $stickyPosition = $thisSticky.data('originalPosition');

            if ($stickyPosition <= $window.scrollTop()+135) {

                var $nextSticky = $stickies.eq(i + 1),
                    $nextStickyPosition = $nextSticky.data('originalPosition') - $thisSticky.data('originalHeight');

                $thisSticky.addClass("fixed");

                if ($nextSticky.length > 0 && $thisSticky.offset().top >= $nextStickyPosition+51) $thisSticky.removeClass("fixed");

            }
            else $thisSticky.removeClass("fixed");
        });
    };

    return {
        load: load
    };
})();

$(function() {
    stickyHeaders.load($(".followMeBar, .followMeBarEtc"));

    // add.0529 youtube �앹꽦
    createYoutube();

    //�꾩떆�곸슜 => jsp �⑥뿉�� commonUi('initLibrary') �꾨즺 �� �ㅽ뻾
    setTimeout(
        function(){
            $(".wing-banner.banner-right").sticky().setPosition("top",($("header").height()-$(".header-menu-in").height()));
        }, 1000
    );
});

function createYoutube(){
    if($("div[data-youtube]").length > 0){
        $("div[data-youtube]").each(function(){
            var $iframe = $("<iframe />");
            $iframe.attr({ src : location.protocol + "//" + location.host + "/html/evnt/youtubePlayer.html?id=" + $(this).attr("data-youtube"), allowfullscreen : true, frameborder : 0, scrolling : "no" });
            $iframe.css({ width : "100%", height : "100%" });

            $(this).html($iframe);
        });
    }
}

function zzimExclItemTrgtChk(slitmCdUitmCd, sectId, e, obj){

    $.ajax({
        url: "/p/mpc/exclItemTrgtChk.do?chkedSlitmCdUitmCds="+ slitmCdUitmCd
        , type: "get"
        , dataType: "json"
        , success: function(data) {
            if(!isEmpty(data.errorMessages)) {

                alert(data.errorMessages);
            }else{
                sltdItemForm(slitmCdUitmCd, sectId, e, obj);
            }
        }, error: function() {
            console.log("zzim �뱀젙���� �곹뭹 �뺣낫 泥댄겕 error");
        }
    });

}

/* 180810 - �쒖닔荑좏룿 ��臾몄옄 - dlsvy  */
$(document).on('keyup', '.random-coupon #first-copNum, .random-coupon #last-copNum', function(e) {
    var position, texto, code;

    texto=this.value;
    code=e.keyCode;
    position=texto.slice(0, this.selectionStart).length;

    if((code>=65 && code <=90 )|| code ==192 ){
        this.value=texto.toUpperCase();
        this.setSelectionRange(position,position);
    }
});

/* 181012 - �섎굹癒몃땲 媛쒖씤�뺣낫 �섏쭛/�댁슜�숈쓽 異붽� - sb */
$(document).on('click', "#hanamoneyPopup .agreement-area .agreement-open-btn", function(){
    if($(this).hasClass('on')){
        $(this).removeClass("on");
        $("#hanamoneyPopup .agreement-area .agreement-text").hide();
    }
    else {
        $(this).addClass("on");
        $("#hanamoneyPopup .agreement-area .agreement-text").show();
    }
});

/* 181115 - 鍮꾪쉶�� 援щℓ SMS �몄쬆 �섏젙 - sb */
$(document).on('keyup', ".auth-area.type-phone input", function(e){
    var regex = /[^0-9]/;
    if(regex.test($(this).val())){
        alert("�レ옄留� �낅젰�� 二쇱꽭��");
        $(this).val("");
    }
});

/* placeholder 遺�遺꾩� 二쇱냼寃��� 遺�遺꾧낵 �숈씪, 異뷀썑 �듯빀 �� */
$(document).on('click', ".nonmember-auth > .auth-btn", function(){
    var authType = $(this).attr('class').replace("auth-btn","").trim();
    $(this).hide();
    $(".nonmember-auth .auth-area." + authType).show();
});
$(document).on('click', ".custom-placeholder", function(){
    $(this).hide();
    $(this).parents(".placeholder-wrap").find("input").focus();
});

$(document).on('focus', ".placeholder-wrap > input", function(){
    $(this).parents(".placeholder-wrap").find(".custom-placeholder").hide();
});

$(document).on('focusout', ".placeholder-wrap > input", function(){
    if($(this).val() == "") {
        $(this).parents(".placeholder-wrap").find(".custom-placeholder").show();
    }
});

//20181207 - Goodbye IE8 - dlsvy
$(document).on('ready', ie8Check);

function ie8Check(){
    if($.browser.msie && $.browser.version.split('.')[0] <= 8){
        $('.header-wrap').prepend('<div style="width:100%; background:#ddd; display:block;"><p style="position:relative; width:1081px; margin:0 auto; padding:20px 0; font-size:14px; color:#000; line-height:20px;"><strong style="font-size:18px; margin-bottom:10px; display:block;">怨좉컼�섏쓽 �명꽣�� 釉뚮씪�곗�瑜� �낅뜲�댄듃�� 二쇱꽭��.</strong>�꾨�Hmall�� �щ＼ �먮뒗 �명꽣�� �듭뒪�뚮줈�� 9 �댁긽�� 釉뚮씪�곗��먯꽌 苡뚯쟻�섍쾶 �ъ슜�섏떎 �� �덉뒿�덈떎.<br>吏��먰븯吏� �딅뒗 釉뚮씪�곗� �먮뒗 �명솚�깅낫湲� 紐⑤뱶瑜� �ъ슜�섏떎 寃쎌슦 �뺤긽�곸씤 �댁슜�� �대젮�곗떎 �� �덉뒿�덈떎.<br>�낅뜲�댄듃 �꾩뿉�� �� 硫붿떆吏�媛� 蹂댁씪 寃쎌슦, <strong>�꾧뎄-�명솚�깅낫湲� �ㅼ젙�먯꽌 *.hmall.com�� �쒓굅�� 二쇱꽭��.</strong><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" style="font-size:16px; background:#fff; color:#000; font-weight:bold; display:inline-block; padding:10px; white-space:nowrap; position:absolute; top:15px; right:0; width:190px; text-align:center;" target="_blank"><img src="http://image.hmall.com/hmimg/ie_icon.png" style="height: 25px; vertical-align: middle; margin-right: 8px;">�듭뒪�뚮줈�� �낅뜲�댄듃</a><a href="https://www.google.com/chrome/browser/desktop/index.html" style="font-size:16px; background:#fff; color:#000; font-weight:bold; display:inline-block; padding:10px; white-space:nowrap; position:absolute; bottom:15px; right:0; width:190px; text-align:center;" target="_blank"><img src="http://image.hmall.com/hmimg/chrome_icon.png" style="height: 25px; vertical-align: middle; margin-right: 8px;">�щ＼ �ㅼ튂�섍린</a></p></div>');
    }
}

/* 190103 - �좎엯 �앹뾽 �섏젙 - sb */
var ReferCode = ($.cookie("EHReferCode"))? ( $.cookie("EHReferCode") ) : false;
$(document).on('click', ".refer-popup .close-btn", function(){ //�� �대깽�몃뒗 異뷀썑 ��젣 �꾩슂.
    if($(this).hasClass("oneday") && ReferCode){
        var _d = new Date();

        $.cookie("referPopupClose-"+ReferCode, "Y", {path: '/', domain: "hmall.com", expires: new Date(_d.getFullYear().toString(), _d.getMonth().toString(), _d.getDate().toString(), "23","59","59")});
    }
    $(this).parents(".refer-dim").hide();
});

/* �쒗쑕�� �앹뾽 �リ린 �대깽�� 異붽�. �쒖젏李⑥씠 臾몄젣濡� 諛섏쁺 �� �꾩뿉爰� �쒓굅 �섎㈃��.*/
$(document).on('click', ".refer-popup .tmp-close", function(){
    if($(this).hasClass("oneday") && ReferCode){
        var _d = new Date();

        $.cookie("referPopupClose-"+ReferCode, "Y", {path: '/', domain: "hmall.com", expires: new Date(_d.getFullYear().toString(), _d.getMonth().toString(), _d.getDate().toString(), "23","59","59")});
    }
    $(this).parents(".refer-dim").hide();
});

/* �덈꼍諛곗넚 �덈궡�앹뾽 蹂�寃� - 二쇱냼 �쒕∼�ㅼ슫 - sb */
$(document).on('click', ".special-delivery-guide.delivery-type-dawn .addr-selector", function(){
    if($(this).hasClass("active")){
        $(".addr-selector").removeClass("active");
        $(".addr-selector-list").hide();
        $(this).removeClass("active");
        $(this).siblings(".addr-selector-list").hide();
    }
    else{
        $(".addr-selector").removeClass("active");
        $(".addr-selector-list").hide();
        $(this).addClass("active");
        $(this).siblings(".addr-selector-list").show();
    }
});

/* 吏���퀎 異붽� 諛곗넚鍮� */
$(document).on('mouseenter mouseleave', '.adddel_cancel i', hoverAdddel1);

function hoverAdddel1(e){
    if (e.type == 'mouseenter'){
        $(this).siblings('.adddel_cancel_message').css('display', 'block');
    } else{
        $(this).siblings('.adddel_cancel_message').css('display', 'none');
    }
}

$(document).on('mouseenter mouseleave', '.adddel_order', hoverAdddel2);

function hoverAdddel2(e){
    if (e.type == 'mouseenter'){
        $(this).parent().parent().parent().find('.adddel_order_message').css('display', 'block');
    } else{
        $(this).parent().parent().parent().find('.adddel_order_message').css('display', 'none');
    }
}

$(document).on('mouseenter mouseleave', '.adddel_basket', hoverAdddel);

function hoverAdddel(e){
    if (e.type == 'mouseenter'){
        $(this).find('.adddel_message').css('display', 'block');
    } else{
        $(this).find('.adddel_message').css('display', 'none');
    }
}