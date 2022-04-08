var scroll_top = 0;
function loading(isShow) {
    if (isShow) {
        scroll_top = $(window).scrollTop();
        if ($("#_loading_spin").length == 0) {
            var loadingBar = "";
            loadingBar += "<div id=\"_loading_spin\" class=\"loadingwrap\">                               ";
            loadingBar += "    <div class='hmall-loading'>                           ";
            loadingBar += "        <div class=\"wave-box\">                          ";
            loadingBar += "            <div class=\"wave\"></div>                    ";
            loadingBar += "            <div class=\"up-box\"></div>                  ";
            loadingBar += "        </div>                                            ";
            loadingBar += "        <div class=\"hmall-text\">                        ";
            loadingBar += "            <span class=\"svg-txt white-txt\">Hmall</span>";
            loadingBar += "            <span class=\"svg-txt red-txt\">Hmall</span>  ";
            loadingBar += "        </div>                                            ";
            loadingBar += "    </div>                                                ";
            loadingBar += "</div>                                                    ";         
            $('body').append(loadingBar);
        }
    } else {
        $(window).scrollTop(scroll_top);
        scroll_top = 0;
        if ($("#_loading_spin").length > 0) {
            $("#_loading_spin").remove();
        }
    }
}

/**
 * 諛⑹넚 �뚮┝ �깅줉 �앹뾽(�곹뭹紐�). 紐⑤컮�� 由щ돱�� �꾨줈�앺듃
 * @param slitmNm
 */
function addBitemAlrimCommonPopupNew(slitmNm , slitmCd ,bsitmCd) {
    if(isLogin() == 'false'){
        openLoginPopup('/p/bmc/brodPordPbdv.do?type=03&MainpageGroup=TopTvLiveSchedule&_IC_=TopTvLiveSchedule');return false;
    } else {
        var link = "/p/bma/editBitmAlrimNewPup.do?slitmNm=" + encodeURIComponent(slitmNm) + "&slitmCd="+slitmCd + "&bsitmCd="+bsitmCd;
        //openPopup(link, {name: 'BitemAlrimCommonPop', width: 600, height: 650, align: center});
        openPopup(link, "", 795, 755, "no", $(window).width(), $(window).height());
    }
}

/**
 * 異붽�濡쒕뵫諛�.
 * @param isShow
 * @param targetObj
 * @param targetInit
 * @returns
 */
function moreLoading(isShow,targetObj,targetInit) {
    //isShow     : true(濡쒕뵫�쒖옉),false(濡쒕뵫��)  
    //targetObj  : ���� �곸뿭�좏깮��
    //targetInit : ���� �곸뿭 珥덇린�붿뿬遺�
    
    if(!targetInit){
        targetInit = false;
    }
    
    var $target = $(targetObj).find(".load-bar");
    if (isShow) {
        if ($target.length == 0) {
            if(targetInit){
                $(targetObj).html("<div class=\"load-bar\"><span></span><span></span><span></span></div>");    
            }else{
                $(targetObj).append("<div class=\"load-bar\"><span></span><span></span><span></span></div>");    
            }
        }
    } else {
        if ($target.length > 0) {
            $target.remove();
        }
    }
}

//(- - -)no dim 濡쒕뵫諛� center default, �꾩튂議곗젙
function centerLoading(isShow, top, left) {
    if (isShow) {
        if ($("#_loading_center").length == 0) {
            var loadingBar = "";
            loadingBar += "<div id=\"_loading_center\" class=\"load-bar fixed\">         ";
            loadingBar += "    <span></span>             						   ";
            loadingBar += "    <span></span>            						   ";
            loadingBar += "    <span></span>           							   ";
            loadingBar += "</div>                      							   ";
            $('body').append(loadingBar);
            if(top!=undefined){
                $("#_loading_center").css("top", top+'%');
            }
            if(left!=undefined){
                $("#_loading_center").css("left", left+'%');
            }
        }
    } else {
        if ($("#_loading_center").length > 0) {
            $("#_loading_center").remove();
        }
    }
}