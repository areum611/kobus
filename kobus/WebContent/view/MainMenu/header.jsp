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
<!-- 부트스트랩 링크 -->
<link rel="stylesheet" href="/kobus/css/bootstrap.min2.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 부트스트랩 끝-->

</head>
<body >
<!-- Menu Bar -->
	<div  class="navbar-wrapper">
		<div class="container-fluid" style="height: 80px; background-color: white">
			<nav class="navbar ">
			<div class="containerWidth">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<%=pjName %>/main?cmd=main-page">
					<img src='/kobus/image/logo.png' width=50px /></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="<%=pjName %>/notice?cmd=notice-list">공지사항</a></li>
						
						<li class=" dropdown"><a href="#">운행정보 </a></li>
						<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">예매<span class="caret"></span></a>
						<ul class="dropdown-menu">
								<li class=" dropdown"><a href="<%= pjName %>/reser?cmd=reser-main">고속버스예매 </a></li>
								<li><a href="<%= pjName %>/pay?cmd=pay-main">예매확인</a></li>
							</ul></li>
						
						
						</li>
						<li class=" dropdown"><a href="<%=pjName %>/view/floorinfo/FloorView.jsp">층별안내</a>
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
	
</body>
</html>