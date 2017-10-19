<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ page import="java.util.List" %>
<%@ page import="model.ScheduleModel" %>    
<%@ page import="service.ReserService" %>  
      <% String pjName="/kobus"; %>
  <!-- 서비스의 메소드 호출  -->
  <%
  List <ScheduleModel> mList = ( List <ScheduleModel>)request.getAttribute("reserList");
  List <ScheduleModel> mList2 = ( List <ScheduleModel>)request.getAttribute("reserList2");
  String depplacenm = request.getParameter("dep_placenm"); 
  String arrplacenm = request.getParameter("arr_placenm");
 %>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">

<title>고속버스통합예매</title>

<link rel="stylesheet" type="text/css"
	href="https://kobus.co.kr/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="https://kobus.co.kr/css/plugin.css">
<link rel="stylesheet" href="/kobus/css/layout.css" />
<link rel="stylesheet" type="text/css" href="/kobus/css/content.css">
<link rel="shortcut icon" href="https://kobus.co.kr/images/favicon.ico">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css"
	href="https://kobus.co.kr/css/ui.jqgrid.custom.css" />

<!-- <script type="text/javascript" -->
<!-- 	src="/kobus/js/jquery-1.12.4.min.js"></script> -->

<script type="text/javascript" src="/kobus/js/jquery-1.12.4.min.js"></script>

<script type="text/javascript" src="https://kobus.co.kr/js/ui.js"></script>
<script type="text/javascript" src="https://kobus.co.kr/js/plugin.js"></script>
<script type="text/javascript" src="https://kobus.co.kr/js/common.js"></script>

<script type="text/javascript"
	src="https://kobus.co.kr/js/jquery/jquery.number.js"></script>
<script type="text/javascript" src="https://kobus.co.kr/js/security.js"></script>
</head>

<body class="main">
	<div id="wrap">
		<script type="text/javascript" src="/kobus/js/left.js"></script>
		<div id="contentWrap">
			<div class="dimmed"></div>
			<div id="contents">
				<script type="text/javascript"
					src="https://kobus.co.kr/js/kor/main/Main.js"></script>
				<script type="text/javascript"
					src="/kobus/js/popup.js"></script>
					<script type="text/javascript"
					src="/kobus/js/OprnAlcnlnqr.js"></script>


				<script type="text/javascript"
					src="https://kobus.co.kr/js/kor/mrs/rotinf/RotInf.js"></script>
		
				<script type="text/javascript"
					src="https://kobus.co.kr/js/kor/mrs/mrscfm/MrsCfmLgn.js"></script>

				<!-- 부모페이지에 아래의 hidden 필드를 선언해주어야 한다. 참고 : RotInf.jsp-->
				<!-- 출/도착지 선택 레이어팝업 -->
				<div class="remodal pop_place full" data-remodal-id="popPlace"
					role="dialog">
					<div class="title">
						출/도착지 선택
						<button data-remodal-action="close" class="remodal-close"
							aria-label="Close"></button>
					</div>
					<div class="cont">
						<div class="place">
							<!-- focus -->
							<ul>
								<li class="" id="popDeprChc">
									<!--  class="focuson" --> <span class="stit">출발지</span></a>
									<p class="text">
										<span class="empty_txt">선택</span><span class="val_txt"
											id="popDeprNmSpn"></span>
									</p>
								</li>
								<li class = "" id="popArvlChc"><span class="stit">도착지</span>
									<p class="text">
										<span class="empty_txt">선택</span><span class="val_txt"
											id="popArvlNmSpn">출발지선택</span>
									</p></li>
							</ul>
							<p class="btn_change">출,도착지 교체</p>
						</div>
						<div class="search_wrap">
							<p>
								<!--  class="focus" -->
								<input type="text" id="terminalSearch" title="터미널/지역 이름 검색"
									placeholder="터미널/지역 이름을 검색하세요"><span class="btn">검색</span>
							</p>
						</div>

						
						<div class="terminal_wrap">
							<p class="stit">지역별 터미널</p>
							<div class="ternimal_box">
<!-- 								<div class="area_scroll scrollbar-inner" style = "position:relative;"> -->
									<div class="area_scroll scrollbar-inner" >
<!-- 								<div class = "area_scroll scrollbar-inner scroll-content" style="height: 433px; margin-right: -13px; margin-bottom: -13px; max-height: none;"> -->
									<ul class="area_list">
										<li class="active" id="areaListAll"><span
											onclick="fnDeprArvlViewList('all');">전체</span></a></li>
										<li><span onclick="fnDeprArvlViewList('11');">서울</span></li>
										<li><span onclick="fnDeprArvlViewList('28');">인천/경기</span></li>
										<li><span onclick="fnDeprArvlViewList('42');">강원</span></li>
										<li><span onclick="fnDeprArvlViewList('30');">대전/충남</span></li>
										<li><span onclick="fnDeprArvlViewList('43');">충북</span></li>
										<li><span onclick="fnDeprArvlViewList('29');">광주/전남</span></li>
										<li><span onclick="fnDeprArvlViewList('45');">전북</span></li>
										<li><span onclick="fnDeprArvlViewList('26');">부산/경남</span></li>
										<li><span onclick="fnDeprArvlViewList('27');">대구/경북</span></li>
									</ul>
									<div>
							</div>
								</div>
<!-- 								<div class="terminal_list" id="terminalList"> -->
<!-- <!-- 							<div class="terminal_scroll scrollbar-inner"> --> 
<!-- 								<ul class="clear" id="tableTrmList"> 출발지 터미널 -->
<%-- 									<% for( ScheduleModel SM : mList ) { %> --%>
<!-- 											<li class="over"> -->
<%-- 											<span><%=SM.getDepplacenm() %></span> --%>
<!-- 											</li> -->
<%-- 											<% }%> --%>
<!-- 								</ul> -->
<!-- <!-- 							</div> -->
<!-- 						</div> -->
							
					
							</div>
							<div class="start_wrap" id="imptDepr">
					<p class="stit">주요출발지</p>
					<% if(mList != null) { %>
					<p class="tags">
					<% for( ScheduleModel SM : mList ) { %> 
						<a href="<%= pjName %>/reser?cmd=list-last&dep_placenm=<%=SM.getDepplacenm() %>"><span><%=SM.getDepplacenm() %></span></a>
						<% } %>
				<% }else if(mList2 !=null){ %>

				<% for( ScheduleModel SM2 : mList2 ) { %> 
				<a href="<%= pjName %>/view/Reservation/mainSearch.jsp?arr_placenm=<%=SM2.getArrplacenm() %>&dep_placenm=<%=depplacenm%>"><span><%=SM2.getArrplacenm() %></span></a>
				<% }%>
				<%} %>
							</div>
						</div>
						

					</div>

<!-- 								<div class="terminal_list" id="terminalList">  -->
<!-- <!-- 									<div class="scroll-wrapper terminal_scroll scrollbar-inner" style="position:relavtive;"> --> 
<!-- <!-- 									<div class = "terminal_scroll scrollbar-inner scroll-content scroll-scrolly_visible" style="height: auto; margin-right: -13px; margin-bottom: -13px; max-height: 433px;"> --> 
<!-- 										<ul id="tableTrmList"> -->
<!-- <!-- 											 출발지 터미널 -->
<!-- 										</ul> -->
<!-- 									</div> -->

					<div class="btns">
						<!-- <button data-remodal-action="confirm" class="remodal-confirm ready" id="cfmBtn" onclick="fncfmBtnChc()">선택완료</button> 버튼활성화시 'ready' class가 없음 -->
					</div>
				</div>
				<div class="main_box clfix">
					<p class="main_tab">
						<a href="#" class="tab1 on"><span>고속버스예매</span></a> <a href="#"
							class="tab2"><span>예매확인</span> </a>
					</p>
					<div class="main_cont">
						<div class="route_box">
							<div class="tab_wrap tab_type1" id="rtrpYnAll">
								<div class="tab_cont">
									<ul class="place">
										<li><a href="#" id="readDeprInfoList"
											onclick="fnReadDeprInfoList(event);"> <span class="name">출발지</span>
												<p class="text empty">
												<%if(mList != null){ %>
													<span class="empty_txt">선택</span>
													<%}else{ %>
													<span class="val_txt" id="deprNmSpn"><%=depplacenm %></span>
													<%} %>
												</p> <!-- 값이 있을경우 'empty' class가 없음 -->
										</a>
										<li><a href="#" id="readArvlInfoList"
											onclick="fnReadArvlInfoList(event);"> <span class="name">도착지</span>
												<p class="text empty">
												<%if(mList2 != null || mList !=null){ %>
													<span class="empty_txt">선택</span>
													<%}else{ %>
													<span class="val_txt" id="arvlNmSpn"><%=arrplacenm %></span>
												<%} %>
												</p> <!-- 값이 없을경우 'empty' class가 있음 -->
										</a></li>
									</ul>
									<ul class="date">
										<li>
											<div class="date_picker_wrap">
												<span class="name">가는날</span>
												<p class="text">
													<span class="text_date text_date1"></span><input
														type="text" id="datepicker1" readonly=""
														class="hasDatepicker"><img
														class="ui-datepicker-trigger"
														src="https://kobus.co.kr/images/page/ico_calender.png"
														alt="달력" title="달력">
												</p>
												<span class="date_wrap"> <a href="#" id="deprThddChc"
													class="" onclick="fnYyDtmStup(0,'text_date1','0');">오늘</a>
													<a href="#" id="deprNxdChc"
													onclick="fnYyDtmStup(1,'text_date1','0');">내일</a>
												</span>
											</div>
										</li>
										<li class="return">
											<div class="date_picker_wrap">
												<span class="name">오는날</span>
												<p class="text">
													<span class="text_date text_date2"></span><input
														type="text" id="datepicker2" readonly>
												</p>
												<span class="date_wrap"> <a href="#" id="arvlThddChc"
													class="active" onclick="fnYyDtmStup(0,'text_date2','0');">오늘</a>
													<a href="#" id="arvlNxdChc"
													onclick="fnYyDtmStup(1,'text_date2','0');">내일</a>
												</span>
											</div>
										</li>
									</ul>
									<div class="grade">
										<span class="name">등급</span>
										<p>
											<span class="custom_radio gradeAll"> <input
												type="radio" id="busClsCd0" name="busClsCdR"
												onclick="fnBusClsCd(this)" value="0" /> <label
												for="busClsCd0">전체</label>
											</span> <span class="custom_radio grade1"> <input
												type="radio" id="busClsCd7" name="busClsCdR"
												onclick="fnBusClsCd(this)" value="7" /> <label
												for="busClsCd7">프리미엄</label>
											</span> <span class="custom_radio grade2"> <input
												type="radio" id="busClsCd1" name="busClsCdR"
												onclick="fnBusClsCd(this)" value="1" /> <label
												for="busClsCd1">우등</label>
											</span> <span class="custom_radio grade3"> <input
												type="radio" id="busClsCd5" name="busClsCdR"
												onclick="fnBusClsCd(this)" value="2" /> <label
												for="busClsCd5">일반</label>
											</span>
										</p>
									</div>
									<form name="rotInfFrm" id="rotInfFrm" method="post" action="<%= pjName %>/reser?cmd=list-view">

	
		<input type="hidden" name="dep_placenm"        id="depplacenm"        value="<%=depplacenm %>" />
		<input type="hidden" name="arr_placenm"       id="arrplacenm"       value="<%=arrplacenm %>" />
			<p class="check" >
										<button type="submit" >조회하기</button>
<!-- 										id="alcnSrchBtn"  -->
<!-- 										class="btn_confirm ready" -->
									</p>
	</form>
				
							
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>