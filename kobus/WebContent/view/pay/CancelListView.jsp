<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
		<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	
			<title>고속버스통합예매</title>

	<link rel="stylesheet" type="text/css" href="https://www.kobus.co.kr/css/reset.css">
	<link rel="stylesheet" type="text/css" href="https://www.kobus.co.kr/css/plugin.css">
	<link rel="stylesheet" type="text/css" href="/kobus/css/layout.css">
	<link rel="stylesheet" type="text/css" href="/kobus/css/content.css">
	<link rel="shortcut icon" href="https://www.kobus.co.kr/images/favicon.ico">
<!-- 	<link rel="stylesheet"type="text/css"  href="../css/layout.css" /> -->
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="../css/content.css"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<script type="text/javascript">
/*********************************************
 * 상수
 *********************************************/
</script>
<link rel="stylesheet" type="text/css" href="https://www.kobus.co.kr/css/ui.jqgrid.custom.css" />

<script type="text/javascript" src="https://www.kobus.co.kr/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
//쿠키 가져오기
function getCookie( name ) {
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length ) {
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie ) { 
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) {
				endOfCookie = document.cookie.length;
			}
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 ) {
			break;
		}
	}
	return ""; 
}
//쿠키 넣기
function setCookie( name, value, expiredays ) {
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

// 상단 네비게이션, 모바일 좌측, 모바일 하단 언어선택 설정
var lngCdCookie = getCookie("LNG_CD");

lngCdCookie = (lngCdCookie != null && lngCdCookie != undefined && lngCdCookie != "") ? lngCdCookie : "";
var lngCd = (lngCdCookie == "EN" || lngCdCookie == "CN" || lngCdCookie == "JP") ? lngCdCookie : "KO";
$(document).ready(function() {
	if (navigator.userAgent.toUpperCase().indexOf("MSIE 5") >= 0 || navigator.userAgent.toUpperCase().indexOf("MSIE 6") >= 0 || navigator.userAgent.toUpperCase().indexOf("MSIE 7") >= 0 || navigator.userAgent.toUpperCase().indexOf("MSIE 8") >= 0) {
		// IE 8 이하
		if (location.href.indexOf("/underIE8.do") < 0) {
			// IE 8 이하 페이지 아님
			location.href = "/underIE8.do";
			return false;
		}
	}
	if (window.innerWidth < 768) {
		setCookie("IS_MOBILE_YN_WIDTH","Y",365);
		if (lngCd == "KO" && location.href.indexOf("/cmn/") < 0 && location.href.indexOf("/mrs/mrsrecppub.do") < 0 && location.href.indexOf("/mrs/mrsrecppub4.do") < 0 && location.href.indexOf("/underIE8.do") < 0) {
			location.href = "/mblIdx.do";
			return false;
		}
	} else {
		setCookie("IS_MOBILE_YN_WIDTH","N",365);
	}
	// 타이틀 수정
	if ($("h2").length > 0) {
		$("title").text($("title").text() + " - " + $("h2:eq(0)").text());
	}
	var $objBody = $("body");
	if (!($objBody.hasClass("KO") || $objBody.hasClass("EN") ||  $objBody.hasClass("CN") ||  $objBody.hasClass("JP"))) {
		$objBody.addClass(lngCd);
	}
	if (location.href.indexOf("/mngr/") < 0) {
		$("#lng_cd_navi option[value='" + lngCd + "'],#lng_cd_foot option[value='" + lngCd + "']").attr("selected","selected");
		$("#lng_cd_navi,#lng_cd_foot").unbind("change").bind("change",function() {
			var tempCd = this.value;
			lngCd = (tempCd != null && tempCd != undefined && tempCd != "" && (tempCd == "EN" || tempCd == "CN" || tempCd == "JP")) ? tempCd : "KO";
			setCookie("LNG_CD",lngCd,1);
			lngCdCookie = lngCd;
			//document.location.reload();
			location.href = "/main.do";
		});
	}
});
</script>
<script type="text/javascript" src="https://www.kobus.co.kr/js/ui.js"></script>
<script type="text/javascript" src="https://www.kobus.co.kr/js/plugin.js"></script>
<script type="text/javascript" src="https://www.kobus.co.kr/js/common.js"></script>

<script type="text/javascript" src="https://www.kobus.co.kr/js/jquery/jquery.number.js"></script>
<script type="text/javascript" src="https://www.kobus.co.kr/js/security.js"></script>
</head>

<body class="sub">
<div id="wrap">

<!-- 페이지 분류 -->
	<div id="gnb" class="gnb_mobile 
login">
		<h1 class="logo">
			<a href="/main.do">고속버스통합예매</a>
			<p class="user_info">
				<a href="/mbrs/mbrspage/myPageMain.do">
					<span class="mail">areum611@gmail.com</span>
					<span class="phone">01023785199</span>
				</a>
			</p>
		</h1>
		<p class="mo_util">
			<a href="/mbrs/lgn/loginMain.do" class="out">로그인</a>
			<a href="/mbrs/lgn/logoutMain.do" class="in">로그아웃</a>
			<a href="/mbrs/mbrspage/myPageMain.do" class="in">마이페이지</a>
			<a href="/mbrs/trprinqr/pymPtInqr.do">결제내역조회</a>
		</p>
	</div>
	<a href="#" class="close">닫기</a> 

<script type="text/javascript">
//<![CDATA[


//]]>
</script>
	<!-- wrap -->
			<!-- contents -->
			<div id="contentWrap">
				<div class="dimmed"></div>
				<div id="contents">

<script type="text/javascript" src="/js/kor/mrs/mrscfm/MrsCfmInf.js"></script>
<script type="text/javascript" src="/js/jquery.qrcode.js"></script>
<script type="text/javascript" src="/js/qrcode.js"></script>
		<div class="title_wrap checkTicketingT">

<!-- 170110 수정 -->
<div class="util">
	<ul class="clfix">
			<li><a href="/mbrs/lgn/logoutMain.do">로그아웃</a></li>
		<li><a href="/mbrs/mbrspage/myPageMain.do">회원가입</a></li>
	</ul>
</div>

<a href="#" class="back">back</a>
<a href="#" class="mo_toggle">메뉴</a>

			<h2>예매확인/취소/변경</h2>
		</div>

<script>
$(document).ready(function(){
	$('.breadcrumb_list .select-box select').selectric();
	
	$(".breadcrumb_list .select").on("change", function(){
		location.href = $(this).val();
	});
	
});
</script>
<!-- 페이지 분류 -->
 
		<div class="page">
			<div class="tab_wrap tab_type1">
				<ul class="tabs col2 blue">
					<li class="active">
						<a href="" onclick="">예매내역</a>
					</li>
					<li><a href="" onclick="">취소내역</a></li>
				</ul>					
				<!-- 예매내역 -->
				<div class="tab_conts" style="display: block;">
						<div class="box_detail_info noData">
						    <p>예매 자료가 존재하지 않습니다.</p>
						</div>
				</div>
				<!-- //예매내역 -->
				
						
				<!-- 취소내역 -->
				<div class="tab_conts" style="display: none;">
						  <!-- 홈티켓일때 --> 
							<section class="detail_info_wrap mobileTicket marT30"><!-- 현장발권 class="ontheSpot", 홈티켓 class="homeTicket", 모바일티겟 class="mobileTicket", 미발행 class="unissued" -->

										<div class="box_detail_info">
											<div class="routeHead">
												<p class="date txt_black">2017. 10. 13(금)&nbsp;07:30 출발</p>
												<p class="ticketPrice cancel">
													취소일시 
													<span class="txt_cancelDate">2017. 09. 29(금)14:21</span>
												</p>
											</div>
											<div class="routeBody">
												<div class="routeArea route_wrap cancel_com">
													<div class="inner">
														<span class="roundBox departure">센트럴시티(서울)</span>
														<span class="roundBox arrive">강진</span>
													</div>
													<div class="detail_info">
														<span>4시간 30분 소요</span>
													</div>
												</div>
		
															<div class="routeArea route_wrap mob_route">
																<div class="tbl_type2">
																	<table class="taR">
																		<caption>
																			<strong>취소결제 정보</strong>
																			<p>결제금, 취소 위약금, 총 반환 금액</p>
																		</caption>
																		<colgroup>
																			<col style="width:100px;">
																			<col style="width:*;">
																		</colgroup>
																		
																		<tbody>
																		
																			<tr>
																				<th scope="row">결제금</th>
																				<td>33,200원</td>
																			</tr>
																			<tr>
																				<th scope="row">취소 위약금</th>
																				<td>0원</td>
																			</tr>
																			<tr>
																				<th scope="row">총 반환 금액</th>
																				<td><strong>33,200원</strong></td>
																			</tr>
																		
																	</tbody>
																</table>
															</div>
														</div>
										</div>
									</div>	
							</section>
						
					
						  <!-- 홈티켓일때 --> 
							<section class="detail_info_wrap mobileTicket marT30"><!-- 현장발권 class="ontheSpot", 홈티켓 class="homeTicket", 모바일티겟 class="mobileTicket", 미발행 class="unissued" -->

										<div class="box_detail_info">
											<div class="routeHead">
												<p class="date txt_black">2017. 10. 07(토)&nbsp;08:30 출발</p>
												<p class="ticketPrice cancel">
													취소일시 
													<span class="txt_cancelDate">2017. 09. 27(수)19:26</span>
												</p>
											</div>
											<div class="routeBody">
												<div class="routeArea route_wrap cancel_com">
													<div class="inner">
														<span class="roundBox departure">경주</span>
														<span class="roundBox arrive">부산</span>
													</div>
													<div class="detail_info">
														<span>50분 소요</span>
													</div>
												</div>
		
															<div class="routeArea route_wrap mob_route">
																<div class="tbl_type2">
																	<table class="taR">
																		<caption>
																			<strong>취소결제 정보</strong>
																			<p>결제금, 취소 위약금, 총 반환 금액</p>
																		</caption>
																		<colgroup>
																			<col style="width:100px;">
																			<col style="width:*;">
																		</colgroup>
																		
																		<tbody>
																		
																			<tr>
																				<th scope="row">결제금</th>
																				<td>9,600원</td>
																			</tr>
																			<tr>
																				<th scope="row">취소 위약금</th>
																				<td>0원</td>
																			</tr>
																			<tr>
																				<th scope="row">총 반환 금액</th>
																				<td><strong>9,600원</strong></td>
																			</tr>
																		
																	</tbody>
																</table>
															</div>
														</div>

										</div>
									</div>	
							</section>

				</div>
				<!-- //취소내역 -->
			</div>
		</div>

<!-- 예매취소 선택 레이어팝업 -->
<div class="remodal w680 popTicket_cancel" id="popTicketCancel" role="dialog">
	
</div>

<!-- 모바일 홈티켓 뷰어 -->
<div class="remodal pop_price" data-remodal-id="homeTckMbl" role="dialog">
<div class="print_body">
	<div class="ticketArea">
		<strong class="receipt_tit">고속버스 홈티켓</strong><br>
		<div class="box_section sec02">
			<span class="qrCode" id="qrcodeTableMbl"></span>
			<span class="qrCodeNum" id="qrTckNo"></span>
		</div>

		</div>
	</div>
	<div class="btns">
		<button data-remodal-action="cancel" class="btnL btn_close">닫기</button>
	</div>
</div>	

				</div>
				
			</div>
</div>

</body>
</html>