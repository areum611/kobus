<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	      <% String pjName="/kobus"; %>
	      <%@ page import="java.util.List" %>
<%@ page import="model.ScheduleModel" %>    
<%@ page import="service.ReserService" %>  
<%@ page import="java.util.*, java.text.*"%>
<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("HH:MM");
	String today = formatter.format(new java.util.Date());
%>
  <!-- 서비스의 메소드 호출  -->
  <%
  List <ScheduleModel> mList3 = ( List <ScheduleModel>)request.getAttribute("reserList3");
  String depplacenm = request.getParameter("dep_placenm"); 
  String arrplacenm = request.getParameter("arr_placenm");
 %>
 
<!--  메뉴바 가져오기 -->
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>

 
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


	<div class="page">
		<h3>배차조회</h3>

		<div class="buscheck_wrap clfix">
			<!-- 좌측 infoBox -->
			<div class="infoBox">


				<p class="date" id="alcnDeprDtm">2017. 10. 20. 금</p>

				<!-- //왕복시 노출 추가 2017-02-10 -->

				<div class="route_wrap" id="alcnRotInfo">
					<div class="inner">
						<p class="roundBox departure" id="alcnDeprTmlNm"><%=depplacenm %></p>

						<p class="roundBox arrive" id="alcnArvlTmlNm"><%=arrplacenm %></p>
					</div>
					<div class="detail_info">
						<span id="takeDrtm">1시간40분</span> <span id="dist">128km</span>
					</div>
				</div>

				<a href="#" class="btn_price">요금보기</a>
				<div class="price_info bottom" id="alcnPriceInf">
					<p class="stit">
						요금정보<span>(일반요금)</span>
					</p>
		
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
						<span class="date_cont" id="rideDate">2017. 10. 20. 금</span> <input
							type="text" id="busDate" readonly="" class="hasDatepicker"><img
							class="ui-datepicker-trigger" src="/kobus/image/ico_calender.png"
							alt="달력" title="달력"> <span class="calender"></span>
					</div>
				</div>
				<div class="detailBox_body clfix">

					<div class="bustime_wrap">
						<p class="bustime_head">
							<span class="start_time">출발시간</span> 
							<span class="bus_info">도착시간</span>
							<!-- tablet / mobile 사이즈에서 보임 -->
<!-- 							<span class="bus_com">출발지</span> -->
							<!-- pc 사이즈에서만 보임 -->
							<span class="grade">출발지</span>
							<!-- pc 사이즈에서만 보임 -->
							<span class="temp">도착지</span> 
							<span class="remain">비용</span> 
							<span class="status">선택</span>
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
								
								<% for( ScheduleModel SM3 : mList3 ) { %> 
									<%
										int dateResult = today.compareTo(SM3.getDepplandtime());
										if (dateResult < 0) {
								%>
							<p class="" data-time="05">
								<a href="<%= pjName %>/reser?cmd=list-seat&s_id=<%=SM3.getS_id() %>" class="">
<!-- 									onclick="fnSatsChc('20171014','060000','060000','010','200','1','06','N','Y');"> -->

									<span class="start_time"><%=SM3.getDepplandtime() %></span> 
									<span class="bus_info"><%=SM3.getArrplandtime() %></span>
<!-- 									<span style="font-size: 8pt; color: #333;"></span></span></span> tablet / mobile 사이즈에서 보임 -->
<%-- 									<span class="bus_com"><%=SM3.getDepplacenm() %></span></span><span style="font-size: 8pt; color: #333;"></span></span> <!-- pc 사이즈에서만 보임 --> --%>
									<span class="grade"><%=SM3.getDepplacenm() %></span>
									<span class="temp"><%=SM3.getArrplacenm() %></span> <!-- pc 사이즈에서만 보임 --> 
									<span class="remain"><%=SM3.getCharge() %></span> 
									<span class="status">			
									<span class="accent btn_arrow">선택</span> <!-- fnSatsChc(deprTime,alcnDeprTime,alcnDeprTrmlNo,alcnArvlTrmlNo,indVBusClsCd,cacmCd) -->
									
								</span>
<!-- 								</form> -->
								</a>
							</p>
								<%} %>	
							<%} %>
							
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
	
<!-- Footer -->
	<footer>
	<div class="footerHeader"></div>
	<div class="containerWidth" >
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