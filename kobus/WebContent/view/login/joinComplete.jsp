<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.MemberModel"%>
<%@ page import="service.MemberService"%>
<% String pjName="/kobus"; %>

<%
	String m_id = (String)request.getAttribute("m_id");
%>

<!--  메뉴바 가져오기 -->
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>
<link href="/kobus/css/fullscreen.css" rel="stylesheet" />
<link href="/kobus/css/bootstrap.min2.css" rel="stylesheet" />
</head>
<body>
	<div class="container">
		<div class="row text-center">
			<div class="col-sm-6 col-sm-offset-3">
				<br> <br>
				<h2 style="color: #0fad00">가입완료</h2>
				<img src="http://osmhotels.com//assets/check-true.jpg">
				<h3><%= m_id %></h3>
				<p style="font-size: 20px; color: #5C5C5C;">회원가입이 완료되었습니다.</p>
				<a href="/kobus/view/MainMenu/Main.jsp" class="btn btn-success">     홈으로     </a>
				<a href="<%=pjName %>/login?cmd=login-page" class="btn btn-success">     로그인     </a> <br>
				 <br>
			</div>

		</div>
	</div>
</body>

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
</html>