<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.PayModel"%>
<%@ page import="service.PayService"%>
<%
	String pjName = "/kobus";
%>
<%
	List<PayModel> payCancleList = (List<PayModel>) request.getAttribute("payCancleList");
%>

<!--  메뉴바 가져오기 -->
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
<link rel="stylesheet" href="<%= pjName %>/css/reserOk.css" />
<link rel="stylesheet" href="<%= pjName %>/css/bootstrap.min2.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="<%= pjName %>/js/reserOk.js"></script>
<style type="text/css">
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul class="nav nav-pills nav-justified thumbnail">
					<li id="reser"><a href="<%=pjName%>/pay?cmd=pay-confirm">
							<h4 class="list-group-item-heading">예약내역</h4>
					</a></li>
					<li id="cancel" class="active" ><a 
						href="<%=pjName%>/pay?cmd=calcleList-page">
							<h4 class="list-group-item-heading">취소내역</h4>
					</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
	<% if(payCancleList.isEmpty()){ %>
	<center>취소내역이 없습니다.</center>
	<%}else{ %>
		<%
			for (PayModel paymodel : payCancleList) {
		%>
		<div class="">
			<div class="col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="text-center">
							<strong><%= paymodel.getDepplacenm() %>&nbsp;-&nbsp;<%= paymodel.getArrplacenm() %></strong>
						</h4>
					</div>
					<div class="panel-body text-center">
						<p class="lead">
							<strong><%=paymodel.getRdate()%><br/><%=paymodel.getDepplandtime()%>&nbsp;출발</strong>
						</p>
					</div>
					<ul class="list-group list-group-flush text-center">
						<li class="list-group-item"><i class="icon-ok text-danger"></i>예매번호
							: <%=paymodel.getR_no()%></li>
						<li class="list-group-item"><i class="icon-ok text-danger"></i>결제금
							: <%=paymodel.getPrice()%>원</li>
					</ul>
					<!--                 <div class="panel-footer"> -->
					<!--                     <a class="btn btn-lg btn-block btn-danger" href="http://www.jquery2dotnet.com">예매취소</a> -->
					<!--                 </div> -->
				</div>
			</div>
		</div>
		<%
			} } // end of for
		%>
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