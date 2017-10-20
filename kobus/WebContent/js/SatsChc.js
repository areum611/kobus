/* 전역변수 : 모든 전역변수에 접두사로 all 사용
 * 최종확인변수 : 모든 변수에 접미사 cfm 사용 
 */
var allAdltChcCnt = 0;
var allChldChcCnt = 0;
var allTeenChcCnt = 0;
var allUvsdChcCnt = 0;
var allSelSeatCnt = 0;

$(document).ready(function() {
	var pathDvs = $("#pathDvs").val(); //왕복여부
	var pathStep = $("#pathStep").val(); //왕복스텝
	if(pathDvs == "rtrp" ){
		var rtrpDerpDtmHtml = "<span>가는 날</span>";
		var rtrpArvlDtmHtml = "<span>오는 날</span>";
		$("#rtrpDeprDtm").html(rtrpDerpDtmHtml+$("#deprDtmAll").val()); //가는날
		$("#rtrpArvlDtm").html(rtrpArvlDtmHtml+$("#arvlDtmAll").val()); //오는날
		$("#satsRotInfo").addClass("around");
		if($("#pathStep").val() == "2"){
			$("#seatChcPage").addClass("change_time");
			if($("#prmmDcDvsCd").val() == "4"){
				$("#salesInfo03").trigger("click");
				$("#rtrpPrmmDc").css("display","block");
			}else{
				$("#salesInfo05").trigger("click");
				$("#prmmDcDvsCd").val("0");
				$("#rtrpPrmmDc").css("display","none");
			}
			 if($("#teenFeeNCntY").val() == "Y"){
				alert("선택하신 차량은 중고생 좌석이 존재하지 않아 일반좌석으로 변경됩니다."); 
			 }
			 if($("#uvsdFeeNCntY").val() == "Y"){
				 alert("선택하신 차량은 대학생 좌석이 존재하지 않아 일반좌석으로 변경됩니다."); 
			 }
		}else{
			$("#seatChcPage").removeClass("change_time");
		}
	}else{
		$("#seatChcPage").removeClass("change_time");
		if(pathDvs == "trtr" && pathStep == "1"){
			$("#satsDeprTmlNm").removeClass("opacity");
			$("#satsArvlTmlNm").addClass("opacity");
		}else if(pathDvs == "trtr" && pathStep == "2"){
			$("#seatChcPage").addClass("change_time");
			$("#satsDeprTmlNm").addClass("opacity");
			$("#satsArvlTmlNm").removeClass("opacity");
		}else{
			$("#satsDeprTmlNm").removeClass("opacity");
			$("#satsArvlTmlNm").removeClass("opacity");
		}
		$("#satsRotInfo").removeClass("around");
		$("#satsDeprDtm").text($("#deprDtmAll").val()); //날짜
	}
	$("#satsDeprTmlNm").text($("#deprNm").val()); //출발터미널
	$("#satsArvlTmlNm").text($("#arvlNm").val()); //도착터미널
	
	$("#locInf").val("sats");
	var takeDrtmAll = Number($("#takeDrtmOrg").val()); //전체소요시간
	var takeDrtm = "";
	var takeDrtmHH = parseInt(takeDrtmAll/60) ; 
	if(takeDrtmHH > 0){
		takeDrtm = parseInt(takeDrtmAll/60)+"시간 "+(takeDrtmAll%60)+"분 소요";
	}else{
		takeDrtm = (takeDrtmAll%60)+"분 소요";
	}
	$("#satsTakeDrtm").text(takeDrtm); //소요시간
	
	var distOrg = Number($("#distOrg").val()); //거리
	if(distOrg > 0){
		$("#satsDist").text($("#distOrg").val()+" Km"); //거리
	}else{
		$("#satsDist").text("-"); //거리
	}
	var prsTimeAll = $("#prsTimeAll").val();
	var chkDeprDtTime = $("#chkDeprDt").val()+""+$("#chkDeprTime").val();
	if(Number(prsTimeAll) > Number(chkDeprDtTime)){
		$("#bfrhMrsDcView").css("display","none");
	}
	
	var chkMoblieCnt = 0;
	if(Number($("#adltFee").val()) > 0){
		chkMoblieCnt++;
	}
	if(Number($("#chldFee").val()) > 0){
		chkMoblieCnt++;
	}
	if(Number($("#teenFee").val()) > 0){
		chkMoblieCnt++;
	}
	if(Number($("#uvsdFee").val()) > 0){
		chkMoblieCnt++;
	}
	
	if(chkMoblieCnt == 2){
		$("#mobileSelCnt").addClass("col2");
	}else if(chkMoblieCnt == 3){
		$("#mobileSelCnt").addClass("col3");
	}else if(chkMoblieCnt == 4){
		$("#mobileSelCnt").addClass("col4");
	}else{
		$("#mobileSelCnt").addClass("col2");
	}
	
	if($("#ctyPrmmDcYn").val() != "Y"){
		$("#prmmDcDvsCd").val("0");
	}
	
	 $(".popLogin .remodal-close").click(function() {
		 fnCancPcpy("clk");
	});
	//$(".pop_place .remodal-close").trigger("click");
	/* if($("#tlcnTrcnUtlzPsbYn").val() == "N"){
		 alert("선택하신 차량은 모바일티켓 발권이 불가하니 \n홈티켓 발권 또는 예매 후 현장발권 하시기 바랍니다.");
	 }*/
	 
	 // 뒷좌석 할인 좌석 녹색으로 표시
	 if($("#ctyPrmmDcYn").val() == "Y" && $("#pathDvs").val() != "rtrp"){
		 //fnCtyPrmmDC('fee4');
		 $(".last_seat").addClass("honors");
	 }
	 
});



function fnSeatCnt(obj,fnVal){

	fnSelSeatCnt(); //전체 선택매수설정

	var clkObjVal = $(obj).parents('.countBox').find('.count').text(); //+- 클릭시 기존 값
	var rmnSatsNum = $("#rmnSatsNum").val(); //잔여좌석수
	var mathVal = 0; //+- 작업후 count
	
	if(fnVal == "add"){
		if((allSelSeatCnt+1) > Number(rmnSatsNum)){
			alert("잔여좌석수 이하로 다시 선택해 주세요.");
			return;
		}else{
			if($("#ctyPrmmDcYn").val() =="Y"){ //시외우등할인시는 10매
				if($("#pathDvs").val() == "rtrp"){
					if((allSelSeatCnt+1) <= 5 ){
						mathVal = Number(clkObjVal)+1;
					}else{
						alert("매수를 총 5매 이하로 다시 선택해 주세요.");
						return;
					}
				}else{
					if((allSelSeatCnt+1) <= 10 ){
						mathVal = Number(clkObjVal)+1;
					}else{
						alert("매수를 총 10매 이하로 다시 선택해 주세요.");
						return;
					}
				}
			}else{ // 시외우등할인이 아닐시는 6매
				if($("#pathDvs").val() == "rtrp"){
					if((allSelSeatCnt+1) <= 3 ){
						mathVal = Number(clkObjVal)+1;
					}else{
						alert("매수를 총 3매 이하로 다시 선택해 주세요.");
						return;
					}
				}else{
					if((allSelSeatCnt+1) <= 6 ){
						mathVal = Number(clkObjVal)+1;
					}else{
						alert("매수를 총 6매 이하로 다시 선택해 주세요.");
						return;
					}
				}
			}
			//mathVal*
		}
	}else{
		if($("input:checkbox[name=seatBoxDtl]:checked").length >= allSelSeatCnt) {
			return;
		}
		if(Number(clkObjVal) <= 0){
			mathVal = 0;
		}else{
			mathVal = Number(clkObjVal)-1;
		}
	}
	
	$(obj).parents('.countBox').find('.count').text(mathVal); 
	if($("#ctyPrmmDcYn").val() == "Y"){
		if((($("#adltCnt").text() == 0 || $("#adltCnt").text() == "") ? 0 : $("#adltCnt").text()) >= 5){
			$("input:radio[id='salesInfo02']").attr("disabled",false);
		}else{
			if($("input:radio[id='salesInfo02']").is(":checked")){
				$("#salesInfo05").trigger("click");
			}
			$("input:radio[id='salesInfo02']").attr("disabled",true);
		}
	}
	
	fnSamdDataSet();
	if($("input:checkbox[name=seatBoxDtl]:checked").length > 0){ //1좌석이상이 선택되어 있을경우 선택된 값 계산
		fnAmtClln();
	}

}



function fnSamdDataSet(){
	var clientWidth = document.body.clientWidth;
	if(clientWidth < 768){
		$("#adltCnt").text($("#adltCntMob").text());
		$("#chldCnt").text($("#chldCntMob").text());
		$("#teenCnt").text($("#teenCntMob").text());
		$("#uvsdCnt").text($("#uvsdCntMob").text());
	}else{
		$("#adltCntMob").text($("#adltCnt").text());
		$("#chldCntMob").text($("#chldCnt").text());
		$("#teenCntMob").text($("#teenCnt").text());
		$("#uvsdCntMob").text($("#uvsdCnt").text());
	}
}



function fnAmtClln(){
	//카운트
	
	var adltChcCnt = ($("#adltCnt").text() == 0 || $("#adltCnt").text() == "") ? 0 : $("#adltCnt").text();
	var chldChcCnt = ($("#chldCnt").text() == 0 || $("#chldCnt").text() == "") ? 0 : $("#chldCnt").text();
	var teenChcCnt = ($("#teenCnt").text() == 0 || $("#teenCnt").text() == "") ? 0 : $("#teenCnt").text();
	var uvsdChcCnt = ($("#uvsdCnt").text() == 0 || $("#uvsdCnt").text() == "") ? 0 : $("#uvsdCnt").text();
	
	var adltCheckCnt = 0;
	var chldCheckCnt = 0;
	var teenCheckCnt = 0;
	var uvsdCheckCnt = 0;
	
	if($("input:checkbox[name=seatBoxDtl]:checked").length <= adltChcCnt ){ //성인선택수
		adltCheckCnt = $("input:checkbox[name=seatBoxDtl]:checked").length;
	}else{
		adltCheckCnt = adltChcCnt;
		if($("input:checkbox[name=seatBoxDtl]:checked").length <= (Number(adltChcCnt)+Number(chldChcCnt)) ){
			chldCheckCnt = $("input:checkbox[name=seatBoxDtl]:checked").length - Number(adltChcCnt);
		}else{
			chldCheckCnt = chldChcCnt;
			if($("input:checkbox[name=seatBoxDtl]:checked").length <= (Number(adltChcCnt)+Number(chldChcCnt)+Number(teenChcCnt)) ){
				teenCheckCnt = $("input:checkbox[name=seatBoxDtl]:checked").length - Number(adltChcCnt) - Number(chldChcCnt);
			}else{
				teenCheckCnt = teenChcCnt;
				uvsdCheckCnt = $("input:checkbox[name=seatBoxDtl]:checked").length - Number(adltChcCnt) - Number(chldChcCnt) - Number(teenChcCnt);
			}
		}
	}
	//단가금액
	var adltUprc = $("#adltFee").val(); //일반
	var chldUprc = $("#chldFee").val();
	var teenUprc = $("#teenFee").val();
	var uvsdUprc = $("#uvsdFee").val();
	
	var adltCllnUprc = Number(adltCheckCnt) * Number(adltUprc); 
	var chldCllnUprc = Number(chldCheckCnt) * Number(chldUprc);
	var teenCllnUprc = Number(teenCheckCnt) * Number(teenUprc);
	var uvsdCllnUprc = Number(uvsdCheckCnt) * Number(uvsdUprc);
	var AllCllnUprc = adltCllnUprc+chldCllnUprc+teenCllnUprc+uvsdCllnUprc;
	
	$("#adltSeatCnt").text(adltCheckCnt+"명");
	$("#chldSeatCnt").text(chldCheckCnt+"명");
	$("#teenSeatCnt").text(teenCheckCnt+"명");
	$("#uvsdSeatCnt").text(uvsdCheckCnt+"명");
	
	$("#adltTotAmt").text(comma(adltCllnUprc)+"원");
	$("#chldTotAmt").text(comma(chldCllnUprc)+"원");
	$("#teenTotAmt").text(comma(teenCllnUprc)+"원");
	$("#uvsdTotAmt").text(comma(uvsdCllnUprc)+"원");
	
	$("#allTotAmtLocU").text(comma(AllCllnUprc)+"원");
	
	var adltDcUprc = 0; //일반할인 /* 	 0 : 미할인, 1 : 사전할인, 2 : 단체할인, 3 : 뒤좌석할인, 4 : 왕복할인 */
	var adltCheckDCCnt = 0; //할인좌석대상수
	var prmmDcDvsCdChk = $("#prmmDcDvsCd").val();
	var orgAdltCheckCnt = adltCheckCnt;
	
	if(prmmDcDvsCdChk == "0"){//미할인
		adltUprc = $("#adltFee").val();
		adltDcUprc = 0;
	}else if(prmmDcDvsCdChk == "1"){//사전
		//adltUprc = 0;
		adltDcUprc = $("#ctyDcFee1").val();
		adltCheckDCCnt = orgAdltCheckCnt;
		orgAdltCheckCnt = 0;
	}else if(prmmDcDvsCdChk == "2"){//단체
		//adltUprc = 0;
		if($("input:checkbox[name=seatBoxDtl]:checked").length >= 5){
			adltDcUprc = $("#ctyDcFee2").val();
		}else{
			adltDcUprc = 0;
		}
		adltCheckDCCnt = orgAdltCheckCnt;
		orgAdltCheckCnt = 0;
	}else if(prmmDcDvsCdChk == "3"){ //뒷좌석
		//adltUprc =  $("#adltFee").val();
		adltDcUprc = $("#ctyDcFee4").val();
		adltCheckDCCnt = $("#ctyDcFee4Cnt").val();
		orgAdltCheckCnt = orgAdltCheckCnt - adltCheckDCCnt ;
	}else if(prmmDcDvsCdChk == "4"){ //왕복
		//adltUprc = 0;
		adltDcUprc = $("#ctyDcFee3").val();
		adltCheckDCCnt = orgAdltCheckCnt;
		orgAdltCheckCnt = 0;
	}
	//할인 금액을 내려줄경우
	var bfrhMrsDc =  (Number($("#ctyDcFee1").val())*Number(adltCheckCnt));
	// 단체할인적용 5명 이상 선택시 금액 노출, 5명 미만은 0원으로 노출 
	var grpMrsDc = 0;
	if($("input:checkbox[name=seatBoxDtl]:checked").length >= 5){
		grpMrsDc =   (Number($("#ctyDcFee2").val())*Number(adltCheckCnt));
	}
	var rtrpMrsDc =  (Number($("#ctyDcFee3").val())*Number(adltCheckCnt)); 
	var fnlSeatCnt = $("#ctyDcFee4Cnt").val();
	var fnlSatsMrsDc = 0;
	if(adltCheckCnt >= fnlSeatCnt){
		fnlSatsMrsDc =  (Number($("#ctyDcFee4").val())*Number(fnlSeatCnt));
	}else{
		fnlSatsMrsDc =  (Number($("#ctyDcFee4").val())*Number(adltCheckCnt));
	}

	$("#bfrhMrsDc").text(comma(bfrhMrsDc)+"원"); //사전예매할인금액
	$("#grpMrsDc").text(comma(grpMrsDc)+"원"); //단체예매할인금액
	$("#rtrpMrsDc").text(comma(rtrpMrsDc)+"원"); //왕복예매할인금액
	$("#fnlSatsMrsDc").text(comma(fnlSatsMrsDc)+"원"); //뒷좌석예매할인금액
	
	var AllCllnDcUprc = ((Number(orgAdltCheckCnt)+Number(adltCheckDCCnt)) * Number(adltUprc))-(Number(adltCheckDCCnt)*Number(adltDcUprc))+chldCllnUprc+teenCllnUprc+uvsdCllnUprc;
	
	//할인후 잔액을 내려줄경우
/*	var bfrhMrsDc =  Number(adltCllnUprc) - (Number($("#ctyDcFee1").val())*Number(adltCheckCnt));
	var grpMrsDc =   Number(adltCllnUprc) - (Number($("#ctyDcFee2").val())*Number(adltCheckCnt));
	var rtrpMrsDc =  Number(adltCllnUprc) - (Number($("#ctyDcFee3").val())*Number(adltCheckCnt)); //왕복은 일단 주석
	var fnlSeatCnt = $("#ctyDcFee4Cnt").val();
	var fnlSatsMrsDc = 0;
	if(adltCheckCnt >= fnlSeatCnt){
		fnlSatsMrsDc =  (Number(adltUprc) *Number(fnlSeatCnt) ) - (Number($("#ctyDcFee4").val())*Number(fnlSeatCnt));
	}else{
		fnlSatsMrsDc =  (Number(adltUprc) *Number(adltCheckCnt) ) - (Number($("#ctyDcFee4").val())*Number(adltCheckCnt));
	}
	
	$("#bfrhMrsDc").text(comma(bfrhMrsDc)+"원"); //사전예매할인금액
	$("#grpMrsDc").text(comma(grpMrsDc)+"원"); //단체예매할인금액
	$("#rtrpMrsDc").text(comma(rtrpMrsDc)+"원"); //왕복예매할인금액
	$("#fnlSatsMrsDc").text(comma(fnlSatsMrsDc)+"원"); //뒷좌석예매할인금액
	
	var AllCllnDcUprc = (Number(orgAdltCheckCnt) * Number(adltUprc))+(Number(adltCheckDCCnt)*Number(adltDcUprc))+chldCllnUprc+teenCllnUprc+uvsdCllnUprc;
*/	
	
	$("#allTotAmtLocD").text(comma(AllCllnDcUprc)+"원");
}



function fnSelSeatCnt(){
	var clientWidth = document.body.clientWidth;
	if(clientWidth < 768){
		allAdltChcCnt = ($("#adltCntMob").text() == 0 || $("#adltCntMob").text() == "") ? 0 : $("#adltCntMob").text();
		allChldChcCnt = ($("#chldCntMob").text() == 0 || $("#chldCntMob").text() == "") ? 0 : $("#chldCntMob").text();
		allTeenChcCnt = ($("#teenCntMob").text() == 0 || $("#teenCntMob").text() == "") ? 0 : $("#teenCntMob").text();
		allUvsdChcCnt = ($("#uvsdCntMob").text() == 0 || $("#uvsdCntMob").text() == "") ? 0 : $("#uvsdCntMob").text();
	}else{
		allAdltChcCnt = ($("#adltCnt").text() == 0 || $("#adltCnt").text() == "") ? 0 : $("#adltCnt").text();
		allChldChcCnt = ($("#chldCnt").text() == 0 || $("#chldCnt").text() == "") ? 0 : $("#chldCnt").text();
		allTeenChcCnt = ($("#teenCnt").text() == 0 || $("#teenCnt").text() == "") ? 0 : $("#teenCnt").text();
		allUvsdChcCnt = ($("#uvsdCnt").text() == 0 || $("#uvsdCnt").text() == "") ? 0 : $("#uvsdCnt").text();
	}
	allSelSeatCnt = Number(allAdltChcCnt) + Number(allChldChcCnt) + Number(allTeenChcCnt) + Number(allUvsdChcCnt);
}



function fnSeatChc(obj){

	fnSelSeatCnt();

	if(obj.checked == true){
		if(allSelSeatCnt <= 0){
			alert("매수를 먼저 선택해 주세요.");
			obj.checked = false;
			return;
		}
		if($("input:checkbox[name=seatBoxDtl]:checked").length > allSelSeatCnt){
			//alert("좌석을 초과 선택하셨습니다. 현재선택하신 매수는"+$("input:checkbox[name=seatBoxDtl]:checked").length+"매 입니다.");
			alert("좌석을 초과 선택하셨습니다.");
			obj.checked = false;
			return;
		}else if($("input:checkbox[name=seatBoxDtl]:checked").length == allSelSeatCnt){
			$("#satsChcCfmBtn").removeClass("ready");
		}else{
			$("#satsChcCfmBtn").addClass("ready");
		}
	}else{
		if($("input:checkbox[name=seatBoxDtl]:checked").length < allSelSeatCnt){
			$("#satsChcCfmBtn").addClass("ready");
		}
	}
	
	var chcSeatNum = "";
	var chcSeatNumComma = "";
//	var lastSeatChkCnt = $("#ctyDcFee4Cnt").val();
	var lastSeatChkCnt = 0;
	var adltCntChk = $("#adltCnt").text();
	$("input:checkbox[name=seatBoxDtl]").each(function(){
		if(this.checked == true){
			if(chcSeatNum.length <= 0){
				chcSeatNum = $(this).val();
				chcSeatNumComma = $(this).val();
			}else{
				chcSeatNum += ":"+$(this).val();
				chcSeatNumComma += ", "+$(this).val();
			}
			//마지막좌석 선택 카운트
			if($(this).parents('.seatBox').hasClass("last_seat")){
				lastSeatChkCnt++;
			}
		}
	});
	if(lastSeatChkCnt > adltCntChk){
		lastSeatChkCnt = adltCntChk;
	}
	$("#ctyDcFee4Cnt").val(lastSeatChkCnt);
	
	if($("input:checkbox[name=seatBoxDtl]:checked").length > 0){
		$("#selSeatNum").val(chcSeatNum);
		$("#selSeatView").text(chcSeatNumComma+"번");
	}else{
		$("#selSeatNum").val("");
		$("#selSeatView").text("좌석을 선택해주세요");
	}
	fnAmtClln();
}



function fnCtyPrmmDC(ctyPrmmCd){
	//alert(ctyPrmmCd);//last_seat
	/* 	 0 : 미할인, 1 : 사전할인, 2 : 단체할인, 3 : 뒤좌석할인, 4 : 왕복할인 */
	//$(".last_seat").removeClass("honors");
	
	if(ctyPrmmCd == "fee1"){//사전할인
		$("#prmmDcDvsCd").val("1");
	}else if(ctyPrmmCd == "fee2"){//단체할인
		$('[data-remodal-id=modal02]').remodal().open();
	}else if(ctyPrmmCd == "fee3"){//왕복할인
		if($("#pathStep").val() == "2"){
			fnFeeOk("3");
		}else{
			$('[data-remodal-id=modal03]').remodal().open();
		}
	}else if(ctyPrmmCd == "fee4"){//뒷좌석할인
		$("#prmmDcDvsCd").val("3");
		//$(".last_seat").addClass("honors");
	}else{
		$("#prmmDcDvsCd").val("0");
	}
	
	if($("input:checkbox[name=seatBoxDtl]:checked").length > 0){ //1좌석이상이 선택되어 있을경우 선택된 값 계산
		fnAmtClln();
	}
}



function fnFeeCanc(chcCnt){
	$("#prmmDcDvsCd").val("0");
	$("#salesInfo05").trigger("click");
}



function fnFeeOk(chcCnt){

	if(chcCnt == '2'){
		$("#prmmDcDvsCd").val("2");//단체할인코드
	}else if(chcCnt == '3'){
		$("#prmmDcDvsCd").val("4");//왕복할인코드
	}
	
	if($("input:checkbox[name=seatBoxDtl]:checked").length > 0){ //1좌석이상이 선택되어 있을경우 선택된 값 계산
		fnAmtClln();
	}
}



function fnReload(){//화면 새로고침
	$("#satsChcFrm").submit();
}



function fnUpdRot(){//노선조회로 이동
	$("#satsChcFrm").attr("action","/mrs/rotinf.do");
	$("#satsChcFrm").submit();
}



function fnUpdAlcn(){//배차조회로 이동
	$("#satsChcFrm").attr("action","/mrs/alcnSrch.do");
	$("#satsChcFrm").submit();
}



function fnSatsChcCfm(e){
	try{e.preventDefault();}catch(e){}
	fnSelSeatCnt();
	
	if(allSelSeatCnt <= 0){
		alert("매수와 좌석을 선택해주세요.");
		return;
	}
	var selSeatCntChk = $("input:checkbox[name=seatBoxDtl]:checked").length;
	if((selSeatCntChk <= 0) || (allSelSeatCnt != selSeatCntChk)){
		alert("좌석을 선택해주세요.");
		return;
	}
	var ctyPrmmDcYn = $("#ctyPrmmDcYn").val();
	if(ctyPrmmDcYn == "Y" && $("input:radio[name=salesInfo]:checked").length == 0){
		alert("할인 구분을 선택하세요.");
		return;
	}
	if(allChldChcCnt > 0 || allTeenChcCnt > 0 || allUvsdChcCnt > 0){
		alert("할인 승차권 부정 사용시 운임의 10배 부가 운임을 요구할 수 있습니다.");
	}
	
	var cfmPrmmDcDvsCd = $("#prmmDcDvsCd").val();
//alert(cfmPrmmDcDvsCd);	
	if(cfmPrmmDcDvsCd == "0"){
		$("#selAdltCnt").val(allAdltChcCnt);
		$("#selAdltDcCnt").val("0");
	}else if(cfmPrmmDcDvsCd == "3"){
		var selAdltDcCnt = $("#ctyDcFee4Cnt").val();
		if(selAdltDcCnt >= selAdltDcCnt){
			$("#selAdltCnt").val(Number(allAdltChcCnt) - Number(selAdltDcCnt));
			$("#selAdltDcCnt").val(selAdltDcCnt);
		}else{
			$("#selAdltCnt").val("0");
			$("#selAdltDcCnt").val(allAdltChcCnt);
		}
	}else if(cfmPrmmDcDvsCd == "1" || cfmPrmmDcDvsCd == "2" || cfmPrmmDcDvsCd == "4"){
		$("#selAdltCnt").val("0");
		$("#selAdltDcCnt").val(allAdltChcCnt);
	}else{
		$("#prmmDcDvsCd").val("0");
		$("#selAdltCnt").val(allAdltChcCnt);
		$("#selAdltDcCnt").val("0");
	}
	$("#selChldCnt").val(allChldChcCnt);
	$("#selTeenCnt").val(allTeenChcCnt);
	$("#selUvsdCnt").val(allUvsdChcCnt); 
	$("#selSeatCnt").val(selSeatCntChk);
	//fnLoginChk();// 로그인을 나중으로, 선점을 우선
	fnSetPcpy();
}



function fnLoginChk(){
	//var rotInfFrm = $("form[name=rotInfFrm]").serialize() ;
	$.ajax({	
        url      : "/mrs/satsChcLoginChk.ajax",
        type     : "post",
        //data : rotInfFrm,
        dataType : "json",
        async    : true,
        success  : function(LoginChkMap){
        	//alert(LoginChkMap.loginYn);
        	if(LoginChkMap.loginYn == "N" || LoginChkMap.mbrsDvsCd == "1"){
        		var popLogin = $('[data-remodal-id=popLogin]').remodal().open();
        	}else{
        		if(LoginChkMap.mbrsDvsCd == "1"){ //비회원
        			$("#nonMbrsYn").val("Y");
        		}else{ // 회원
        			$("#nonMbrsYn").val("N");
        		}
        		fnFrmSubmit();
        	}
        },
        error:function (e){
        	fnCancPcpy();
        }
	});
}



function fnSatsSubmit(){  //레이어로그인에서 데이터 가져오기
	fnFrmSubmit(); //좌석선점
}


function fnNonUsrMrs(){
	$("#nonMbrsYn").val("Y");
	fnFrmSubmit(); //결제
}



function fnSetPcpy(){
	var satsChcFrm = $("form[name=satsChcFrm]").serialize() ;
	$.ajax({	
        url      : "/mrs/setPcpy.ajax",
        type     : "post",
        data     : satsChcFrm,
        dataType : "json",
        async    : true,
        success  : function(setPcpyMap){
        	if(setPcpyMap.MSG_CD =="ERR"){
        		fnFailPcpy("pcpy");
        	}else{
        		$("#satsNoAll").val(setPcpyMap.satsNoAll);
        		$("#pcpyNoAll").val(setPcpyMap.pcpyNoAll);
        		$("#estmAmt").val(setPcpyMap.ESTM_AMT);
        		$("#dcAmt").val(setPcpyMap.DC_AMT);
        		$("#tissuAmt").val(setPcpyMap.TISSU_AMT);
        		//alert($("#pcpyNoAll").val());
        		if($("#pathDvs").val() == "rtrp"){
        			if($("#pathStep").val() == "1"){
        				var rtrpDt1 = $("#selSeatCnt").val() //입력매수,일반인할인매수,일반인,중고생,초등생,대학생 순으로','로 구분
	        			+":"+$("#selAdltDcCnt").val()  //일반인할인매수
	        			+":"+$("#selAdltCnt").val()  //일반인
	        			+":"+$("#selTeenCnt").val() //중고생
	        			+":"+$("#selChldCnt").val() //초등생
	        			+":"+$("#selUvsdCnt").val() //초등생
	        			+":"+$("#ctyPrmmDcYn").val() //시외후등형할인구분
	        			+":"+$("#estmAmt").val() //예매금액
	        			+":"+$("#dcAmt").val() //할인금액
	        			+":"+$("#tissuAmt").val() //결제금액
	        			+":"+$("#deprDt").val() //출발일
	        			+":"+$("#deprTime").val() //출발시간
	        			+":"+$("#indVBusClsCd").val() //버스등급
	        			+":"+$("#cacmCd").val() //운수사코드
	        			+":"+$("#prmmDcDvsCd").val(); //시외우등형할인코드
        			
	        			$("#pathStep").val("2");
	        			$("#pcpyNoAll1").val($("#pcpyNoAll").val());
	        			$("#satsNoAll1").val($("#satsNoAll").val());
	        			$("#rtrpDtl1").val(rtrpDt1);
	        			
	        			$("#satsChcFrm").attr("action","/mrs/alcnSrch.do");
	        			$("#satsChcFrm").submit();
        			}else if($("#pathStep").val() == "2"){
        				var rtrpDt2 = $("#selSeatCnt").val() //입력매수,일반인할인매수,일반인,중고생,초등생,대학생 순으로','로 구분
	        			+":"+$("#selAdltDcCnt").val()  //일반인할인매수
	        			+":"+$("#selAdltCnt").val()  //일반인
	        			+":"+$("#selTeenCnt").val() //중고생
	        			+":"+$("#selChldCnt").val() //초등생
	        			+":"+$("#selUvsdCnt").val() //초등생
	        			+":"+$("#ctyPrmmDcYn").val() //시외후등형할인구분
	        			+":"+$("#estmAmt").val() //예매금액
	        			+":"+$("#dcAmt").val() //할인금액
	        			+":"+$("#tissuAmt").val() //결제금액
	        			+":"+$("#deprDt").val() //출발일
	        			+":"+$("#deprTime").val() //출발시간
	        			+":"+$("#indVBusClsCd").val() //버스등급
	        			+":"+$("#cacmCd").val() //운수사코드
	        			+":"+$("#prmmDcDvsCd").val(); //시외우등형할인코드
        				
        				$("#satsNoAll2").val($("#satsNoAll").val());
        				$("#pcpyNoAll2").val($("#pcpyNoAll").val());
        				$("#rtrpDtl2").val(rtrpDt2);
        				fnLoginChk();
        			}
        		}else{
        			fnLoginChk();
        			
        		}
        		
        	}
        },
        error:function (e){
        	fnFailPcpy("pcpy");
        }
	});
}



function fnFrmSubmit(){
	$("#satsChcFrm").attr("action","/mrs/stplcfmpym.do");
	$("#satsChcFrm").submit();
}



function fnFailPcpy(errCd){
	if(errCd == "pcpy"){
		alert("좌석선택완료했습니다.");
	}else if(errCd == "lgn"){
		alert("좌석선택완료했습니다.");
	}
	return;
}



function fnCancPcpy(lgnCnac){
	//alert(lgnCnac);
	var pcpyCanMsg = "";
	if(lgnCnac == "clk"){
		pcpyCanMsg = "clk";
		var satsChcFrm = $("form[name=satsChcFrm]").serialize() ;
		$.ajax({	
	        url      : "/mrs/cancPcpy.ajax",
	        type     : "post",
	        data     : satsChcFrm,
	        dataType : "json",
	        async    : true,
	        success  : function(cancPcpyMap){
	        	fnFailPcpy(pcpyCanMsg);
	        },
	        error:function (e){
	        	fnFailPcpy(pcpyCanMsg);
	        }
		});
	}else{
		pcpyCanMsg = "lgn";
	}
}