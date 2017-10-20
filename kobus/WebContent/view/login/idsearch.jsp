<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/kobus";
String m_id = (String)request.getAttribute("m_checkId");
%>
<!--  메뉴바 가져오기 -->
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>
<link href="/kobus/css/idsearch.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/kobus/js/idsearch.js"></script>

<script type="text/javascript">
window.onload = function(){
	
	var check = document.getElementById('check')
	var searchid = document.getElementById('searchid');
	
	check.onclick = function(){
	searchid.style.display='block';
	}
}
</script>
</head>
<body>
<hr/>
<form method='post' action='<%=pjName%>/login?cmd=id-searchOk' name='idcheck'>
	<div class="container">
		<div class="row">
			<h2>회원가입 시 입력한 휴대폰번호를 입력하세요</h2>	
			<div class="mat-input">
				<div class="mat-input-outer">
					<input type="text" autocomplete="off" placeholder="휴대폰번호를 입력하세요 	Ex)010-XXXX-XXXX" id='m_tell' name='m_tell'/>
					<div class="border"></div>
				</div>
				<input type='submit' class="btn btn-block btn-warning" id='check' value='확인'/>
			</div>
		</div>
	</div>
	</form>
	<div id="searchid" class='searchid'>
	<%if(m_id != null){ %>
	<div id='searching' name='searching'>
	회원님의 아이디는 다음과 같습니다.<br/><br>
	<%=m_id%></div>
	<%}else{ %>
	<div id='searching' name='searching'>
	등록된 아이디가 없습니다.
	</div>
	<%} %>
	
	
<%-- 	<form method='post' action='<%=pjName%>/login?cmd=id-searchOk' name='idcheck'> --%>
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 		<div class="mat-input"> -->
<!-- 	<input type='submit' class="btn btn-block btn-warning" id='check' value='비밀번호 찾기'/> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</form> -->
	</div>
	
	<!-- Footer -->
	<footer>
	<div class="footerHeader"></div>
	<div class="container" >
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