<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String pjName = "/kobus";
%>
<%@ page import="java.util.List"%>
<%@ page import="model.ScheduleModel"%>
<%@ page import="service.ReserService"%>
<%
	List<ScheduleModel> mList4 = (List<ScheduleModel>) request.getAttribute("reserList4");
	String depplacenm = request.getParameter("dep_placenm");
	String arrplacenm = request.getParameter("arr_placenm");
%>

<!--  메뉴바 가져오기 -->
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>


<!doctype html>

<html>

<head>


<link href="/kobus/css/reservMain.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/kobus/css/reset.css">
<link rel="stylesheet" type="text/css" href="/kobus/css/layout.css">
<link rel="stylesheet" type="text/css" href="/kobus/css/content.css">



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<script type="text/javascript">
	/*********************************************
	 * 상수
	 *********************************************/
</script>


<link rel="stylesheet" type="text/css"
	href="https://www.kobus.co.kr/css/ui.jqgrid.custom.css" />

<script type="text/javascript"
	src="https://www.kobus.co.kr/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	//쿠키 가져오기
</script>
<script type="text/javascript" src="https://www.kobus.co.kr/js/ui.js"></script>
<script type="text/javascript"
	src="https://www.kobus.co.kr/js/plugin.js"></script>
<script type="text/javascript"
	src="https://www.kobus.co.kr/js/common.js"></script>

<script type="text/javascript"
	src="https://www.kobus.co.kr/js/jquery/jquery.number.js"></script>
<script type="text/javascript"
	src="https://www.kobus.co.kr/js/security.js"></script>
</head>
<body class="sub">
	<div id="wrap">
		<!-- 170109 gnb 수정 -->
		<!-- 170109 gnb 수정 -->
		<script type="text/javascript">
			//<![CDATA[

			//]]>
		</script>
		<!-- wrap -->
		<!-- contents -->
		<div id="contentWrap">
			<div class="dimmed"></div>
			<div id="contents">

				<script type="text/javascript" src="/kobus/js/SatsChc.js"></script>
				<%
					for (ScheduleModel SM : mList4) {
				%>
				<form name="satsChcFrm" id="satsChcFrm" method="post"
					action="/mrs/satschc.do">
					<!-- 	<input type="hidden" name="deprCd"         id="deprCd"         value="115" />출발지코드 -->
					<input type="hidden" name="deprNm" id="deprNm"
						value="<%=SM.getDepplacenm()%>" />
					<!-- 출발지명 -->
					<!-- 	<input type="hidden" name="arvlCd"         id="arvlCd"         value="602" />도착지코드 -->
					<input type="hidden" name="arvlNm" id="arvlNm"
						value="<%=SM.getArrplacenm()%>" />
					<!-- 도착지명 -->

					<!-- 	<input type="hidden" name="deprDtm"        id="deprDtm"        value="20171020" />가는날(편도,왕복) -->
					<!-- 	<input type="hidden" name="deprDtmAll"     id="deprDtmAll"     value="2017. 10. 20. 금" />가는날(편도,왕복) -->
					<!-- 	<input type="hidden" name="arvlDtm"        id="arvlDtm"        value="20171020" />오는날(왕복) -->
					<!-- 	<input type="hidden" name="arvlDtmAll"     id="arvlDtmAll"     value="2017. 10. 20. 금" />오는날(왕복) -->
					<!-- 	<input type="hidden" name="busClsCd"       id="busClsCd"       value="0" />버스등급 -->
					<!-- 	<input type="hidden" name="takeDrtmOrg"    id="takeDrtmOrg"    value="200" />소요시간 -->
					<!-- 	<input type="hidden" name="distOrg"        id="distOrg"        value="244.9" />거리 -->
					<!-- 	<!-- 출발일자:deprDtm or arvlDtm, 출발터미널번호:deprCd, 도착터미널번호:arvlCd  -->
					-->
					<!-- 	<input type="hidden" name="deprDt"         id="deprDt"         value="20171020" />출발일 -->
					<input type="hidden" name="deprTime" id="deprTime"
						value="<%=SM.getDepplandtime()%>" />
					<!-- 출발시각 -->

					<input type="hidden" name="alcnDeprTime" id="alcnDeprTime"
						value="<%=SM.getDepplandtime()%>" />
					<!-- 배차출발시각 -->



					<input type="hidden" name="adltFee" id="adltFee"
						value="<%=SM.getCharge()%>" />
					<!-- 일반금액 -->

					<!-- 	<input type="hidden" name="rmnSatsNum"     id="rmnSatsNum"      value="28" />잔여좌석수 -->
					<!-- 	<input type="hidden" name="totSatsNum"     id="totSatsNum"      value="28" />총좌석수 -->
					<!-- 	<input type="hidden" name="selSeatNum"     id="selSeatNum"      value="" />선택좌석번호 -->
					<!-- 	<input type="hidden" name="selSeatCnt"     id="selSeatCnt"      value="0" />선택좌석수 -->
					<!-- 	<input type="hidden" name="selAdltCnt"     id="selAdltCnt"      value="0" />어른수 -->

					<!-- 	<input type="hidden" name="rtSelAdltCnt"      id="rtSelAdltCnt"       value="" />어른수   -->



				</form>
				<%
					}
				%>
				<div class="title_wrap in_process ticketingT">



					<!-- 170110 수정 -->

					<!-- 페이지 분류 -->
					<div class="page" id="seatChcPage">

						<h3>매수 및 좌석선택</h3>

						<div class="selectSeat_wrap">
							<!-- compareBox -->
							<div class="compare_wrap">
								<!-- 좌측 infoBox -->
								<div class="infoBox">


									<p class="date" id="satsDeprDtm">
										<!-- 출발일 -->
									</p>


									<div class="route_wrap" id="satsRotInfo">
										<div class="inner">
											<p class="roundBox departure" id="satsDeprTmlNm">-</p>
											<!-- 출발지 -->


											<p class="roundBox arrive" id="satsArvlTmlNm">-</p>
											<!-- 도착지 -->
										</div>
										<div class="detail_info"></div>
										<div class="btn_r">
											<a href="#" class="btn btn_modify white"
												onclick="fnUpdRot();">수정</a>
										</div>
									</div>



									<div class="route_wrap">
										<div class="tbl_type2">
											<table>
												<caption>
													<strong>버스 정보</strong>
													<p>고속사, 등급, 출발</p>
												</caption>
												<colgroup>
													<col style="width: 66px;">
													<col style="width: *;">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">고속사</th>
														<td>아름고속</td>
													</tr>
												</tbody>
											</table>
											<div class="btn_r mob_pad">
												<a href="#" class="btn btn_modify white"
													onclick="fnUpdAlcn();">수정</a>
											</div>
										</div>
									</div>


								</div>
								<!-- //좌측 infoBox -->

								<!-- 우측 detailBox -->
								<div class="detailBox">
									<span class="dimm"> <span class="txt_check">예매하실
											매수를 먼저 선택하신 후<br>좌석을 선택해 주세요.
									</span> <a href="#none" class="btnS btn_normal">확인</a>
									</span>
									<!-- mobile 매수 선택 -->
									<div class="ticketBox mobileBox">
										<ul class="sel_list" id="mobileSelCnt">




											<li>
												<div class="countBox">
													<p class="division">
														<em>일반</em> <span class="text_num count" id="adltCntMob">0</span>
													</p>
													<div class="btn_wrap">
														<ul>
															<li><button type="button" class="btn btn_minus">
																	<span class="ico_minus">감소</span>
																</button></li>
															<li><button type="button" class="btn btn_add">
																	<span class="ico_plus">증가</span>
																</button></li>
														</ul>
													</div>
												</div>
											</li>


											<li>
												<div class="countBox">
													<p class="division">
														<em>초등생</em> <span class="text_num count" id="chldCntMob">0</span>
													</p>
													<div class="btn_wrap">
														<ul>
															<li><button type="button" class="btn btn_minus">
																	<span class="ico_minus">감소</span>
																</button></li>
															<li><button type="button" class="btn btn_add">
																	<span class="ico_plus">증가</span>
																</button></li>
														</ul>
													</div>
												</div>
											</li>





										</ul>
									</div>
									<div class="detailBox_body">
										<!-- 매수선택 -->
										<div class="ticketBox">
											<ul class="sel_list">

												<li>
													<div class="countBox">
														<p class="division">
															<em>매수</em> <span class="text_num count" id="adltCnt">0</span>
														</p>
														<div class="btn_wrap">
															<ul>
																<li><button type="button" class="btn btn_minus">
																		<span class="ico_minus">감소</span>
																	</button></li>
																<li><button type="button" class="btn btn_add">
																		<span class="ico_plus">증가</span>
																	</button></li>
															</ul>
														</div>
													</div>
												</li>

											</ul>
										</div>
										<!-- //매수선택 -->
										<!-- 좌석선택 -->


										<!-- 28석 클래스 seat28 -->
										<div class="selectSeat_box">
											<div class="bg_seatBox seat28" style="display: block;">
												<div class="seatList">


													<span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_01" value="1"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_01">1</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_02" value="2"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_02">2</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_03" value="3"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_03">3</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_04" value="4"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_04">4</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_05" value="5"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_05">5</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_06" value="6"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_06">6</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_07" value="7"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_07">7</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_08" value="8"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_08">8</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_09" value="9"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_09">9</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_10" value="10"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_10">10</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_11" value="11"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_11">11</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_12" value="12"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_12">12</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_13" value="13"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_13">13</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_14" value="14"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_14">14</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_15" value="15"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_15">15</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_16" value="16"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_16">16</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_17" value="17"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_17">17</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_18" value="18"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_18">18</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_19" value="19"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_19">19</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_20" value="20"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_20">20</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_21" value="21"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_21">21</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_22" value="22"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_22">22</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_23" value="23"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_23">23</label>
													</span> <span class="seatBox"> <input type="checkbox"
														name="seatBoxDtl" id="seatNum_28_24" value="24"
														onclick="fnSeatChc(this);"> <label
														for="seatNum_28_24">24</label>
													</span> <span class="seatBox last_seat"> <input
														type="checkbox" name="seatBoxDtl" id="seatNum_28_25"
														value="25" onclick="fnSeatChc(this);"> <label
														for="seatNum_28_25">25</label>
													</span> <span class="seatBox last_seat"> <input
														type="checkbox" name="seatBoxDtl" id="seatNum_28_26"
														value="26" onclick="fnSeatChc(this);"> <label
														for="seatNum_28_26">26</label>
													</span> <span class="seatBox last_seat"> <input
														type="checkbox" name="seatBoxDtl" id="seatNum_28_27"
														value="27" onclick="fnSeatChc(this);"> <label
														for="seatNum_28_27">27</label>
													</span> <span class="seatBox last_seat last"> <input
														type="checkbox" name="seatBoxDtl" id="seatNum_28_28"
														value="28" onclick="fnSeatChc(this);"> <label
														for="seatNum_28_28">28</label>
													</span>


												</div>
											</div>
										</div>
										<!-- //좌석선택 -->
									</div>
								</div>
								<!-- //우측 detailBox -->
							</div>
							<!-- //compareBox -->
							<!-- 선택좌석 상세보기 -->
							<div class="selectSeat_detail">
								<div class="box_tbl">
									<!-- 선택좌석 -->
									<section class="box_detail">
										<div class="box_title">
											<strong class="txt_tit">선택좌석</strong>
										</div>
										<div class="sel_seatNum">
											<span class="txt_selSeat" style="display: none;">좌석을
												선택해주세요</span> <span class="txt_selSeat selected" id="selSeatView">좌석을
												선택해주세요</span>
											<!-- 좌석번호 선택시 class="selected" 추가 -->
										</div>
									</section>
									<!-- //선택좌석 -->
									<!-- 탑승인원 및 요금 -->
									<section class="box_detail">
										<div class="tbl_type3">
											<table class="taR">
												<caption>
													<strong>탑승인원 및 요금</strong>
													<p>결제금액, 취소 수수료(예상), 반환금액</p>
												</caption>
												<colgroup>
													<col style="width: 115px;">
													<col style="width: *;">
												</colgroup>
												<tbody>
												<caption>
													<strong>탑승인원 및 요금</strong>
													<p>결제금액, 취소 수수료(예상), 반환금액</p>
												</caption>
												<tr>
													<th scope="row" class="txt_black"><strong>총결제
															금액(<span id="adltSeatCnt">0</span>)
													</strong></th>
													<td id="adltTotAmt">0원</td>
												</tr>


												</tbody>
											</table>
										</div>
									</section>
									<!-- //탑승인원 및 요금 -->
								</div>
								<!-- 할인선택 -->
								<div class="box_tbl">
									<!-- //할인선택 -->
									<!-- 총 결제금액 -->

									<!-- //총 결제금액 -->
								</div>
							</div>
							<!-- //선택좌석 상세보기 -->
							<div class="btns btn_selectSeat">
								<a href="#" id="satsChcCfmBtn" class="btnL btn_confirm ready"
									onclick="fnSatsChcCfm(event);">선택완료</a>
							</div>

						</div>

						<!-- 상세설명 -->
						<ul class="desc_list">
							<li>심야 시간대 출발차량의 1번부터 9번 좌석까지는 여성고객 및 노약자를 위한 좌석으로 운영되고
								있습니다. 교통 약자를 위해 배려해 주시기 바랍니다.</li>
							<li>편도의 경우 최대 6매, 왕복의 경우 최대 3매까지 선택 가능합니다.</li>
							<li>일부 버스의 경우 실제 좌석배치와 다를 수 있습니다.</li>
							<li><span class="ico_square orange">색상표기 좌석</span>은 여성고객 및
								노약자를 위한 좌석입니다. 배려해 주시기 바랍니다.</li>
						</ul>
						<!-- //상세설명 -->


					</div>

				</div>



			</div>

			<!-- Footer -->
			<footer>
				<div class="footerHeader"></div>
				<div class="containerWidth">
					<div class="col-md-4">
						<h3>또이또이 5조</h3>
						<p>허접들의 사이트에 오신것을 환영합니다</p>
					</div>

					<div class="col-md-4">
						<h3>Our Location</h3>
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3166.234914628765!2d126.87891451512434!3d37.478782479814384!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b61e3044a68bd%3A0x8f21e056c9253c97!2z64yA7ZWc66-86rWtIOyEnOyauO2KueuzhOyLnCDquIjsspzqtawg6rCA7IKw65SU7KeA7YS4MeuhnCAxNTE!5e0!3m2!1sko!2sjo!4v1507779193815"
							width="400" height="300" frameborder="0" style="border: 0"
							allowfullscreen></iframe>
					</div>
					<div class="col-md-4">
						<h3>Tell</h3>
						<ul>
							<li>이아름 : 010-2378-5199</li>
							<li>김민우 : 010-3060-9504</li>
							<li>류정욱 : 010-2741-4067</li>
						</ul>
						<p>집에가고싶다</p>
						<ul class="sm">
							<li><a href="#"><img
									src="https://www.facebook.com/images/fb_icon_325x325.png"
									class="img-responsive"></a></li>
							<li><a href="#"><img
									src="https://lh3.googleusercontent.com/00APBMVQh3yraN704gKCeM63KzeQ-zHUi5wK6E9TjRQ26McyqYBt-zy__4i8GXDAfeys=w300"
									class="img-responsive"></a></li>
							<li><a href="#"><img
									src="http://playbookathlete.com/wp-content/uploads/2016/10/twitter-logo-4.png"
									class="img-responsive"></a></li>
						</ul>
					</div>
				</div>
			</footer>
</body>
</html>