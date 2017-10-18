<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String pjName = "/kobus";
%>
<%
	String m_id = (String)session.getAttribute("m_id");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 부트스트랩 링크 -->
<link rel="stylesheet" href="/kobus/css/bootstrap.min2.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩 끝-->

<!-- bxSlider Javascript file -->
<script src="/kobus/js/jquery.bxslider.min.js"></script>
<!-- bxSlider CSS file -->
<link href="/kobus/css/jquery.bxslider.css" rel="stylesheet" />

<script type="text/javascript">
	$(function() {
		var slider = $('#slide_banner').bxSlider({
			maxSlides : 1,
			slideWidth : 800,
			slideMargin : 0,
			//ticker: true,
			speed : 400,
			auto : true,
			//pager : true
			//autoHover : true,
			moveSlides : 1,
		});

		$('#prevBtn').click(function() {
			slider.goToPrevSlide();
			return false; // <a>태그의 이벤트 차단하기
		});

		$('#nextBtn').click(function() {
			slider.goToNextSlide();
			return false; // <a>태그의 이벤트 차단하기
		});
	});
</script>
</head>
<body>
	<!-- Menu Bar -->
	<div class="navbar-wrapper">
		<div class="container-fluid">
			<nav class="navbar navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img
						src='/kobus/image/logo.png' width=50px /></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<%=pjName %>/notice?cmd=notice-list">공지사항</a></li>
						<li class=" dropdown"><a href="#" class="dropdown-toggle "
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">운행정보 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li class=" dropdown"><a href="#" class="dropdown-toggle "
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">test </a></li>
								<li><a href="#">Add New</a></li>
							</ul></li>
						<li><a href="<%= pjName %>/reser?cmd=reser-main">예매</a></li>
						<li class=" dropdown"><a href="<%=pjName %>/view/floorinfo/FloorView.jsp">층별안내 <span class="caret"></span></a>
						<li class=" dropdown"><a href="<%=pjName %>/qna?cmd=qna-page">고객센터</a></li>

					</ul>
					<ul class="nav navbar-nav pull-right">
						<%
							if (m_id == null) {
						%>
						<li><a href="<%=pjName%>/login?cmd=login-page" id="login"
							name='login'>로그인 </a>
						<li><a href="#" id='join' name='join'>회원가입 </a></li>
						<%
							} // end of if 
							else {
						%>
						<li><a href="#" id='login_id' name='login_id'><%= m_id %>님</a></li>
						<li><a href="<%= pjName %>/login?cmd=logout-page" id='logout' name='logout'>로그아웃 </a></li>
						<%
							}
						%>

					</ul>
				</div>
			</div>
			</nav>
		</div>
	</div>

	<!-- BXSlider -->
	<div id="banner_wrap">
		<ul id="slide_banner">
			<li><a href="#"><img src="/kobus/image/고터1.png" alt="고터1" /></a></li>
			<li><a href="#"><img src="/kobus/image/고터2.png" alt="고터2" /></a></li>
			<li><a href="#"><img src="/kobus/image/고터3.png" alt="고터3" /></a></li>
		</ul>
		<p>
			<a href="#" id="prevBtn"><img src="/kobus/image/prev_btn.png"
				alt="이전버튼" /></a>
		</p>
		<p>
			<a href="#" id="nextBtn"><img src="/kobus/image/next_btn.png"
				alt="다음버튼" /></a>
		</p>
	</div>
	<!-- Footer -->
	<footer>
	<div class="footerHeader"></div>
	<div class="container">
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