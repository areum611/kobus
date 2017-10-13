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
	
	<div class="page" id="seatChcPage">
					<h3>매수 및 좌석선택</h3>
				<div class="selectSeat_wrap">
					<!-- compareBox -->
					<div class="compare_wrap">
						<!-- 좌측 infoBox -->
						<div class="infoBox">
								<p class="date" id="satsDeprDtm">2017. 10. 13. 금</p>								
							<div class="route_wrap" id="satsRotInfo">
								<div class="inner">
									<p class="roundBox departure" id="satsDeprTmlNm">센트럴시티(서울)</p><!-- 출발지 -->																			
									<p class="roundBox arrive" id="satsArvlTmlNm">김제</p><!-- 도착지 -->
								</div>
								<div class="detail_info">
									<span id="satsTakeDrtm">3시간 5분 소요</span>
									<span id="satsDist">215.3 Km</span>
								</div>
								<div class="btn_r">
									<a href="#" class="btn btn_modify white" onclick="fnUpdRot();">수정</a>
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
													<col style="width:66px;">
													<col style="width:*;">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">고속사</th>
														<td>금호시외</td>
													</tr>
													<tr>
														<th scope="row">등급</th>
														<td>우등</td>
													</tr>
													<tr>
														<th scope="row">출발</th>
														<td>12:40</td>
													</tr>
												</tbody>
											</table>
											<div class="btn_r mob_pad">
												<a href="#" class="btn btn_modify white" onclick="fnUpdAlcn();">수정</a>
											</div>
										</div>
									</div>
								
							
						</div>
						<!-- //좌측 infoBox -->
											
						<!-- 우측 detailBox -->
						<div class="detailBox">
							<span class="dimm" style="display: none;">
								<span class="txt_check">예매하실 매수를 먼저 선택하신 후<br>좌석을 선택해 주세요.</span>
								<a href="#none" class="btnS btn_normal">확인</a>
							</span>
							
							<div class="detailBox_body">

								<!-- 좌석선택 -->
									<!-- 28석 클래스 seat28 -->
								<div class="selectSeat_box">
									<div class="bg_seatBox seat28" style="display:block;">
										<div class="seatList">
																							
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_01" value="1" onclick="fnSeatChc(this);" disabled="">
														<label for="seatNum_28_01">1</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_02" value="2" onclick="fnSeatChc(this);">
														<label for="seatNum_28_02">2</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_03" value="3" onclick="fnSeatChc(this);" disabled="">
														<label for="seatNum_28_03">3</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_04" value="4" onclick="fnSeatChc(this);">
														<label for="seatNum_28_04">4</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_05" value="5" onclick="fnSeatChc(this);">
														<label for="seatNum_28_05">5</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_06" value="6" onclick="fnSeatChc(this);">
														<label for="seatNum_28_06">6</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_07" value="7" onclick="fnSeatChc(this);">
														<label for="seatNum_28_07">7</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_08" value="8" onclick="fnSeatChc(this);">
														<label for="seatNum_28_08">8</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_09" value="9" onclick="fnSeatChc(this);">
														<label for="seatNum_28_09">9</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_10" value="10" onclick="fnSeatChc(this);">
														<label for="seatNum_28_10">10</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_11" value="11" onclick="fnSeatChc(this);">
														<label for="seatNum_28_11">11</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_12" value="12" onclick="fnSeatChc(this);">
														<label for="seatNum_28_12">12</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_13" value="13" onclick="fnSeatChc(this);">
														<label for="seatNum_28_13">13</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_14" value="14" onclick="fnSeatChc(this);">
														<label for="seatNum_28_14">14</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_15" value="15" onclick="fnSeatChc(this);">
														<label for="seatNum_28_15">15</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_16" value="16" onclick="fnSeatChc(this);">
														<label for="seatNum_28_16">16</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_17" value="17" onclick="fnSeatChc(this);">
														<label for="seatNum_28_17">17</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_18" value="18" onclick="fnSeatChc(this);">
														<label for="seatNum_28_18">18</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_19" value="19" onclick="fnSeatChc(this);">
														<label for="seatNum_28_19">19</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_20" value="20" onclick="fnSeatChc(this);">
														<label for="seatNum_28_20">20</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_21" value="21" onclick="fnSeatChc(this);">
														<label for="seatNum_28_21">21</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_22" value="22" onclick="fnSeatChc(this);">
														<label for="seatNum_28_22">22</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_23" value="23" onclick="fnSeatChc(this);">
														<label for="seatNum_28_23">23</label>
													</span>
												
													<span class="seatBox">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_24" value="24" onclick="fnSeatChc(this);">
														<label for="seatNum_28_24">24</label>
													</span>
												
													<span class="seatBox last_seat honors">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_25" value="25" onclick="fnSeatChc(this);">
														<label for="seatNum_28_25">25</label>
													</span>
												
													<span class="seatBox last_seat honors">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_26" value="26" onclick="fnSeatChc(this);">
														<label for="seatNum_28_26">26</label>
													</span>
												
													<span class="seatBox last_seat honors">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_27" value="27" onclick="fnSeatChc(this);">
														<label for="seatNum_28_27">27</label>
													</span>
												
													<span class="seatBox last_seat last honors">
														<input type="checkbox" name="seatBoxDtl" id="seatNum_28_28" value="28" onclick="fnSeatChc(this);">
														<label for="seatNum_28_28">28</label>
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
									<span class="txt_selSeat" style="display:none;">좌석을 선택해주세요</span>
									<span class="txt_selSeat selected" id="selSeatView">좌석을 선택해주세요</span><!-- 좌석번호 선택시 class="selected" 추가 -->
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
											<col style="width:115px;">
											<col style="width:*;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row" class="txt_black">탑승인원 및 요금</th>
												<td id="allTotAmtLocU">0원</td>
											</tr>
											
												<tr>
													<th scope="row">일반 <span id="adltSeatCnt">0</span></th>
													<td id="adltTotAmt">0원</td>
												</tr>
											
											
												<tr>
													<th scope="row">초등생  <span id="chldSeatCnt">0</span></th>
													<td id="chldTotAmt">0원</td>
												</tr>
											
											
												<tr>
													<th scope="row">중고생  <span id="teenSeatCnt">0</span></th>
													<td id="teenTotAmt">0원</td>
												</tr>
											
											
										</tbody>
									</table>
								</div>
							</section>
							<!-- //탑승인원 및 요금 -->
						</div>
						<!-- 할인선택 -->
						<div class="box_tbl">
							
								<section class="box_detail">
									<div class="box_title">
										<strong class="txt_tit">할인선택</strong>
									</div>
									<ul class="checkList">
										
										<!-- 왕복이 아닐겨우 단체,사전,뒷좌석할인 적용  -->
											<li id="bfrhMrsDcView" style="display: none;">
												<input type="radio" name="salesInfo" id="salesInfo01" onclick="fnCtyPrmmDC('fee1',this);" value="1900">
												<label for="salesInfo01">사전 예매 할인(10%)<span class="price" id="bfrhMrsDc">0원</span></label>
											</li>
											<li>
												<input type="radio" name="salesInfo" id="salesInfo02" onclick="fnCtyPrmmDC('fee2',this);" value="1900">
												<label for="salesInfo02">단체 예매 할인(10%)<span class="price" id="grpMrsDc">0원</span></label>
											</li>
											<li>
												<input type="radio" name="salesInfo" id="salesInfo04" onclick="fnCtyPrmmDC('fee4',this);" value="1900">
												<label for="salesInfo04">뒷좌석 예매 할인(10%)<span class="price" id="fnlSatsMrsDc">0원</span></label>
											</li>
										
										
											<li>
												<input type="radio" name="salesInfo" id="salesInfo05" onclick="fnCtyPrmmDC('non',this);" value="18800">
												<label for="salesInfo05">할인 미적용</label>
											</li>
										
									</ul>
								</section>
							
							
							<!-- //할인선택 -->
							<!-- 총 결제금액 -->
							<section class="box_detail total_price"> <!-- 총 결재금액일 시 class="total_price" 추가 -->
								<div class="box_title">
									<strong class="txt_tit">총 결제금액</strong>
									<span class="sel_price" id="allTotAmtLocD">0원</span>
								</div>
							</section>
							<!-- //총 결제금액 -->
						</div>
					</div>
					<!-- //선택좌석 상세보기 -->
					<div class="btns btn_selectSeat">
						<a href="#" id="satsChcCfmBtn" class="btnL btn_confirm ready" onclick="fnSatsChcCfm(event);">선택완료</a>
					</div>
					
				</div>
				
				
					<!-- 상세설명 -->
					<ul class="desc_list">
						<li>할인적용시에는 신용카드 결제만 가능합니다.</li>
						<li>심야 시간대 출발차량의 1번부터 9번 좌석까지는 여성고객 및 노약자를 위한 좌석으로 운영되고 있습니다. 교통 약자를 위해 배려해 주시기 바랍니다.</li>
						<li>할인대상 노선입니다. 편도의 경우 최대10매, 왕복일경우 최대 5매까지 선택 가능합니다.</li>
						<li>중복할인이 적용되지 않으며, 할인조건에서 하나를 직접 선택하여 적용해야 합니다.</li>
						<li>할인은 성인에게만 적용됩니다.</li>
						<li>단체할인은 5~10명 사이를 선택할 경우에 적용됩니다.</li>
						<li>뒷좌석을 선택하시면, "뒷좌석 할인"이 적용될 수 있습니다.</li>
						<li>일부 버스의 경우 실제 좌석배치와 다를 수 있습니다.</li>
						<li><span class="ico_square orange">색상표기 좌석</span>은 여성고객 및 노약자를 위한 좌석입니다. 배려해 주시기 바랍니다.</li>
					</ul>
					<!-- //상세설명 -->
				
			</div>
	
</body>
</html>