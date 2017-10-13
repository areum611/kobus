<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/kobus/css/reservMain.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/kobus/css/reset.css">
<link rel="stylesheet" type="text/css" href="/kobus/css/layout.css">
<link rel="stylesheet" type="text/css" href="/kobus/css/content.css">

</head>
<body>
	<div class="title_wrap in_process route_chk ticketingT">
		<a href="#" class="back">back</a> <a href="#" class="mo_toggle">메뉴</a>
		<h2>고속버스예매</h2>
		<ol class="process">
			<li class="active">예매정보입력</li>
			<li>결제정보입력</li>
			<li>예매완료</li>
		</ol>
	</div>

	<div class="page">
		<h3>배차조회</h3>

		<div class="buscheck_wrap clfix">
			<!-- 좌측 infoBox -->
			<div class="infoBox">


				<p class="date" id="alcnDeprDtm">2017. 10. 14. 토</p>

				<!-- //왕복시 노출 추가 2017-02-10 -->

				<div class="route_wrap" id="alcnRotInfo">
					<div class="inner">
						<p class="roundBox departure" id="alcnDeprTmlNm">서울경부</p>

						<p class="roundBox arrive" id="alcnArvlTmlNm">강릉</p>
					</div>
					<div class="detail_info">
						<span id="takeDrtm">2시간 50분 소요</span> <span id="dist">228.7
							Km</span>
					</div>
					<div class="btn_r">
						<a href="#none" class="btn btn_modify white" onclick="fnUpdRot()">수정</a>
					</div>
				</div>

				<a href="#" class="btn_price">요금보기</a>
				<div class="price_info bottom" id="alcnPriceInf">
					<p class="stit">
						요금정보<span>(일반요금)</span>
					</p>
					<dl>
						<dt id="psrmFeeNm">프리미엄</dt>
						<dd id="psrmFee">
							<input type="hidden" name="psrmFeeVal" id="psrmFeeVal"
								value="27,900"> 27,900 원

						</dd>
						<dt id="prmmFeeNm">우등고속</dt>
						<dd id="prmmFee">
							<input type="hidden" name="prmmFeeVal" id="prmmFeeVal"
								value="21,500"> 21,500 원

						</dd>
						<dt id="hspdFeeNm">일반고속</dt>
						<dd id="hspdFee">
							<input type="hidden" name="hspdFeeVal" id="hspdFeeVal"
								value="14,600"> 14,600 원

						</dd>
						<dt id="mdntPsrmFeeNm">심야프리미엄</dt>
						<dd id="mdntPsrmFee">
							<input type="hidden" name="mdntPsrmFeeVal" id="mdntPsrmFeeVal"
								value="30,600"> 30,600 원

						</dd>
						<dt id="mdntPrmmFeeNm">심야우등</dt>
						<dd id="mdntPrmmFee">
							<input type="hidden" name="mdntPrmmFeeVal" id="mdntPrmmFeeVal"
								value="23,600"> 23,600 원

						</dd>
						<dt id="mdntHspdFeeNm">심야고속</dt>
						<dd id="mdntHspdFee">
							<input type="hidden" name="mdntHspdFeeVal" id="mdntHspdFeeVal"
								value="16,000"> 16,000 원

						</dd>
						<dt id="mdntPsrmExchFeeNm">할증프리미엄</dt>
						<dd id="mdntPsrmExchFee">
							<input type="hidden" name="mdntPsrmExchFeeVal"
								id="mdntPsrmExchFeeVal" value="33,400"> 33,400 원

						</dd>
						<dt id="mdntPrmmExchFeeNm">할증우등</dt>
						<dd id="mdntPrmmExchFee">
							<input type="hidden" name="mdntPrmmExchFeeVal"
								id="mdntPrmmExchFeeVal" value="23,600"> 23,600 원

						</dd>
						<dt id="mdntHspdExchFeeNm">할증고속</dt>
						<dd id="mdntHspdExchFee">
							<input type="hidden" name="mdntHspdExchFeeVal"
								id="mdntHspdExchFeeVal" value="16,000"> 16,000 원

						</dd>
					</dl>
				</div>
			</div>
			<!-- //좌측 infoBox -->
			<!-- 우측 detailBox -->
			<div class="detailBox">
				<div class="detailBox_head col3">
					<div class="box_refresh">
						<button type="button" class="btn btn_refresh" id="reloadBtn">
							<span class="ico_refresh">새로고침</span>
						</button>
					</div>
					<div class="head_date">
						<span class="date_cont" id="rideDate">2017. 10. 14. 토</span> <input
							type="text" id="busDate" readonly="" class="hasDatepicker"><img
							class="ui-datepicker-trigger" src="/kobus/image/ico_calender.png"
							alt="달력" title="달력"> <span class="calender"></span>
					</div>
				</div>
				<div class="detailBox_body clfix">
					<ul class="time">
						<li class="night"><a href="#none" class="" data-time="01">1</a></li>
						<li class="night"><a href="#none" class="" data-time="03">3</a></li>
						<li class="night"><a href="#none" class="" data-time="05">5</a></li>
						<li class="daytime"><a href="#none" class="" data-time="07">7</a></li>
						<li class="daytime"><a href="#none" class="" data-time="09">9</a></li>
						<li class="daytime"><a href="#none" class="" data-time="11">11</a></li>
						<li class="daytime"><a href="#none" class="" data-time="13">13</a></li>
						<li class="daytime"><a href="#none" class="" data-time="15">15</a></li>
						<li class="daytime"><a href="#none" class="" data-time="17">17</a></li>
						<li class="daytime"><a href="#none" class="" data-time="19">19</a></li>
						<li class="night"><a href="#none" class="" data-time="21">21</a></li>
						<li class="night"><a href="#none" class="" data-time="23">23</a></li>

					</ul>
					<div class="bustime_wrap">
						<p class="bustime_head">
							<span class="start_time">출발</span> <span class="bus_info">고속사/등급</span>
							<!-- tablet / mobile 사이즈에서 보임 -->
							<span class="bus_com">고속사</span>
							<!-- pc 사이즈에서만 보임 -->
							<span class="grade" style="">등급</span>
							<!-- pc 사이즈에서만 보임 -->
							<span class="temp"></span> <span class="remain">잔여석</span> <span
								class="status"></span>
						</p>
						<div class="bus_time">
							<!-- 동양고속 class="dyexpress" 삼화고속 class="samhwa" 중앙고속 class="jabus" 금호고속 class="kumho" 천일고속 class="chunil" 한일고속 class="hanil" 동부고속 class="dongbu" 금호속리산고속 class="songnisan" 코버스 class="kobus" -->
							<!-- 기타 -->
							<div class="noti" id="notiNoToday">
								<!-- 현시점 기준 출발 5분~60분 남은 차량의 경우 배차정보는 노출하되 예매진행 불가처리하여 고속버스 모바일앱 안내 노출 -->
								<p>
									<span class="accent">출발예정 60분전</span> 배차 차량은 고속버스 모바일앱을 통하여 예매할
									수 있습니다.<br> <span class="show_pc">곧 출발하는 버스탑승을 하시려면
										지금 바로 고속버스 모바일앱으로 접속하세요.</span><br> 임시차량은 공동운수협정차량이 운행될 수도 있습니다.
								</p>
								<a href="http://www.epassmobile.co.kr" class="btnS btn_normal"
									target="_blank">고속버스 모바일앱</a>
							</div>

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="05">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','060000','060000','010','200','1','06','N','Y');">
									<span class="start_time">06 : 00</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','062000','062000','010','200','1','02','N','Y');">
									<span class="start_time">06 : 20</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">20 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','064000','064000','010','200','2','06','N','Y');">
									<span class="start_time">06 : 40</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">고속<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">고속 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">37 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="premium" data-time="07">
								<a href="#" class="noselect"> <span class="start_time">07
										: 00</span> <span class="bus_info"><span class="jabus">(주)중앙고속</span><span
										class="grade_mo">프리미엄<br> <span
											style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">프리미엄 <br>
										<span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">0 석</span> <span class="status"> 매진 </span>
								</a>
							</p>

							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','072000','072000','010','200','1','06','N','Y');">
									<span class="start_time">07 : 20</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">5 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','074000','074000','010','200','1','02','N','Y');">
									<span class="start_time">07 : 40</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">12 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','080000','080000','010','200','2','06','N','Y');">
									<span class="start_time">08 : 00</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">고속<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">고속 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">26 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','082000','082000','010','200','1','06','N','Y');">
									<span class="start_time">08 : 20</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">6 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','084000','084000','010','200','1','02','N','Y');">
									<span class="start_time">08 : 40</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">9 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="09">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','090000','090000','010','200','2','02','N','Y');">
									<span class="start_time">09 : 00</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">고속<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">고속 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">28 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','092000','092000','010','200','1','06','N','Y');">
									<span class="start_time">09 : 20</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">4 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','094000','094000','010','200','1','02','N','Y');">
									<span class="start_time">09 : 40</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">9 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="premium" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','100000','100000','010','200','7','02','N','Y');">
									<span class="start_time">10 : 00</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">프리미엄<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">프리미엄 <br>
										<span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">3 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>

							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','102000','102000','010','200','1','06','N','Y');">
									<span class="start_time">10 : 20</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">12 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','104000','104000','010','200','1','02','N','Y');">

									<span class="start_time">10 : 40</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">22 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="11">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','110000','110000','010','200','1','06','N','Y');">
									<span class="start_time">11 : 00</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">24 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','112000','112000','010','200','1','02','N','Y');">
									<span class="start_time">11 : 20</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>

							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','114000','114000','010','200','1','06','N','Y');">
									<span class="start_time">11 : 40</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">28 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','120000','120000','010','200','1','02','N','Y');">
									<span class="start_time">12 : 00</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">24 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','122000','122000','010','200','2','06','N','Y');">
									<span class="start_time">12 : 20</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">고속<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">고속 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">38 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','124000','124000','010','200','1','06','N','Y');">
									<span class="start_time">12 : 40</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">28 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="premium" data-time="13">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','130000','130000','010','200','7','02','N','Y');">
									<span class="start_time">13 : 00</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">프리미엄<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">프리미엄 <br>
										<span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">18 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>

							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','132000','132000','010','200','1','02','N','Y');">
									<span class="start_time">13 : 20</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">19 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','134000','134000','010','200','2','02','N','Y');">
									<span class="start_time">13 : 40</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">고속<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">고속 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">45 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','140000','140000','010','200','1','06','N','Y');">
									<span class="start_time">14 : 00</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">23 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>

							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','142000','142000','010','200','1','02','N','Y');">
									<span class="start_time">14 : 20</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">26 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>

							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','144000','144000','010','200','2','02','N','Y');">
									<span class="start_time">14 : 40</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">고속<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">고속 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">36 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','145000','145000','010','200','1','02','N','Y');">



									<span class="start_time">14 : 50</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">25 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="15">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','150000','150000','010','200','1','06','N','Y');">

									<span class="start_time">15 : 00</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">22 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','152000','152000','010','200','1','02','N','Y');">
									<span class="start_time">15 : 20</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','154000','154000','010','200','1','06','N','Y');">

									<span class="start_time">15 : 40</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">17 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="premium" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','160000','160000','010','200','7','06','N','Y');">

									<span class="start_time">16 : 00</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">프리미엄<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">프리미엄 <br>
										<span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">21 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','162000','162000','010','200','1','02','N','Y');">

									<span class="start_time">16 : 20</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">25 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">
								<a href="#" class=""
									onclick="fnSatsChc('20171014','164000','164000','010','200','1','06','N','Y');">

									<span class="start_time">16 : 40</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">28 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->
							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="17">


								<a href="#" class=""
									onclick="fnSatsChc('20171014','170000','170000','010','200','1','02','N','Y');">



									<span class="start_time">17 : 00</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">23 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->


								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','172000','172000','010','200','1','06','N','Y');">

									<span class="start_time">17 : 20</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','174000','174000','010','200','1','02','N','Y');">

									<span class="start_time">17 : 40</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">21 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','180000','180000','010','200','2','06','N','Y');">

									<span class="start_time">18 : 00</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">고속<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">고속 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">43 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','182000','182000','010','200','1','06','N','Y');">

									<span class="start_time">18 : 20</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">25 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','184000','184000','010','200','1','02','N','Y');">

									<span class="start_time">18 : 40</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="premium" data-time="19">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','190000','190000','010','200','7','06','N','Y');">

									<span class="start_time">19 : 00</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">프리미엄<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">프리미엄 <br>
										<span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">15 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">


								<a href="#" class=""
									onclick="fnSatsChc('20171014','192000','192000','010','200','2','06','N','Y');">

									<span class="start_time">19 : 20</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">고속<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">고속 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">42 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','194000','194000','010','200','1','06','N','Y');">

									<span class="start_time">19 : 40</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','200000','200000','010','200','1','02','N','Y');">

									<span class="start_time">20 : 00</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">


								<a href="#" class=""
									onclick="fnSatsChc('20171014','202000','202000','010','200','2','02','N','Y');">



									<span class="start_time">20 : 20</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">고속<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">고속 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">45 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','204000','204000','010','200','1','06','N','Y');">

									<span class="start_time">20 : 40</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="21">


								<a href="#" class=""
									onclick="fnSatsChc('20171014','210000','210000','010','200','1','02','N','Y');">

									<span class="start_time">21 : 00</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">26 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">


								<a href="#" class=""
									onclick="fnSatsChc('20171014','213000','213000','010','200','1','06','N','Y');">



									<span class="start_time">21 : 30</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">우등 <br> <span
										style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->


								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="premium2" data-time="">


								<a href="#" class=""
									onclick="fnSatsChc('20171014','220000','220000','010','200','8','02','N','Y');">



									<span class="start_time">22 : 00</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">심야프리미엄<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">심야프리미엄 <br>
										<span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">18 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">

								<a href="#" class=""
									onclick="fnSatsChc('20171014','223000','223000','010','200','3','02','N','Y');">

									<span class="start_time">22 : 30</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">심야우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">심야우등 <br>
										<span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">27 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->

								</span>
								</a>
							</p>

							<!-- 기타 -->

							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="23">


								<a href="#" class=""
									onclick="fnSatsChc('20171014','230000','230000','010','200','3','06','N','Y');">



									<span class="start_time">23 : 00</span> <span class="bus_info"><span
										class="jabus">(주)중앙고속</span><span class="grade_mo">심야우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="jabus">(주)중앙고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">심야우등 <br>
										<span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">28 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->


								</span>
								</a>
							</p>






							<!-- 기타 -->












							<!-- <p class="noselect premium" data-time="09"> -->
							<!-- 선택할수 목록(1. 시간이 지났을경우, 2. 잔여좌석이 0일경우) 에 class = 'noselect', 등급이 프리미엄일 경우 class = "premium" -->
							<p class="" data-time="">


								<a href="#" class=""
									onclick="fnSatsChc('20171014','233000','233000','010','200','3','02','N','Y');">



									<span class="start_time">23 : 30</span> <span class="bus_info"><span
										class="dongbu">(주)동부고속</span><span class="grade_mo">심야우등<br>
											<span style="font-size: 8pt; color: #333;"></span></span></span> <!-- tablet / mobile 사이즈에서 보임 -->
									<span class="bus_com"><span class="dongbu">(주)동부고속</span></span>
									<!-- pc 사이즈에서만 보임 --> <span class="grade">심야우등 <br>
										<span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 -->
									<span class="temp"></span> <!-- pc 사이즈에서만 보임 --> <span
									class="remain">23 석</span> <span class="status"> <span
										class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
								</span>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- //우측 detailBox -->
		</div>
		<div class="section">
			<ul class="desc_list">
				<li>심야고속 및 심야우등의 할증 요금은 당일 02:00부터 04:00 사이 출발차량</li>
				<li>노선에 따라 심야요금과 심야할증요금이 동일할 수도 있음</li>
			</ul>
		</div>
	</div>




</body>
</html>