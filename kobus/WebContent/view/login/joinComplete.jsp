<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.MemberModel"%>
<%@ page import="service.MemberService"%>
<% String pjName="/kobus"; %>

<%
	String m_id = (String)request.getAttribute("m_id");
%>

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
</html>