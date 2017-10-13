
function setCookieMinutes( name, value, expireminutes ) { 
	 var todayDate = new Date(); 
	 todayDate.setMinutes( todayDate.getMinutes() + expireminutes ); 
	 document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
}
$(document).ready(function(){
	// 공지사항을 10분에 한번씩만 받아오도록 수정 localStorage사용
	var setMinute = 10; // 분 (초기값:10분)
	var blnStorageVal = false;
	var readMainNtcList = "";
	var resultStorage = null;
	try {
		var readMainNtcListChk = getCookie("readMainNtcListChk");
		if (readMainNtcListChk != null && readMainNtcListChk != undefined && readMainNtcListChk == "Y") {
			if (window.localStorage) {
				readMainNtcList = window.localStorage.getItem("readMainNtcList");
				if (readMainNtcList != null && readMainNtcList != undefined && readMainNtcList != "") {
					resultStorage = JSON.parse(readMainNtcList);
					blnStorageVal = true;
				}
			}
		}
		
		var readMainNtcListLngCd = getCookie("readMainNtcListLngCd");
		if(lngCd != readMainNtcListLngCd){
			blnStorageVal = false;
		}
	} catch (e) {
		blnStorageVal = false;
	}
	if (blnStorageVal) {
		setLeftNtcList(resultStorage);
	} else {
		$.post("/readMainNtcList.ajax"
			,{}
			,function(result){
				try {
					if (window.localStorage) {
						window.localStorage.setItem("readMainNtcList",JSON.stringify(result));
						setCookieMinutes("readMainNtcListChk","Y",setMinute);
						setCookie("readMainNtcListLngCd",lngCd);
					}
				} catch (e) {
				}
				setLeftNtcList(result);
			}
			, "json"
		);
	}
});

function fnStrToDt(str){
	var secDate = str.substr(0,8);
	var year = secDate.substr(0,4);
	var month = secDate.substr(4,2);
	var day = secDate.substr(6,2);
	var parseStr = year + "." + month + "." + day;
	
	return parseStr;
}

function fnStrLen(str){
	var returnStr = str;
	if(str.length > 11){
		returnStr = str.substr(0,11) + "...";
	}
	
	return returnStr;
}

function fnGoReadPage(ntcNo){ // 상세 정보 조회 / 수정 페이지
	$("#leftNtcNo").val(ntcNo);
	$("form[name=leftForm]").attr({"action" : "/cscn/ntcmttr/readNtc.do", "method" : "post", "target" : "_self"}).submit();
}
