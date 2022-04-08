/**
* 2021.01.13 �댁듅��
* COEHmallTopRenew.openLoginTag �⑥닔�먯꽌 �ъ슜.
* redirectUrl�� �놁쑝硫� location.href 媛믪쓣 媛뺤젣濡� 吏��뺥븯寃� �섏뼱�덉쑝��, �덉쇅 泥섎━媛� �꾩슂�섏뿬 �뚯씪�� �앹꽦 ��.
*/

var LOGIN_EXPECT_REDIRECT_URL = new Array();
LOGIN_EXPECT_REDIRECT_URL[0] = "/cob/snsBindingLogin.do";          // SNS怨꾩젙�곌껐

function isLoginExpectUrl(checkUrl) {
	for (var i = 0; i < LOGIN_EXPECT_REDIRECT_URL.length; i++) {
		if (checkUrl.indexOf(LOGIN_EXPECT_REDIRECT_URL[i]) > -1) {
			return true;
		}
	}
	
	return false;
}