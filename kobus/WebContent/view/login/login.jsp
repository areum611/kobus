<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.MemberModel.*, command.*"%>
<%
	String pjName = "/kobus";
%>

<!--  메뉴바 가져오기 -->
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
<link href="/kobus/css/login.css" rel="stylesheet" />
<script src="/kobus/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/kobus/js/login.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<!-- Mixins-->
			<!-- Pen Title-->
			<div class="pen-title">
				<h1>코버스 로그인</h1>
			</div>
			<div class="container">
				<div class="card"></div>
				<div class="card">
					<h1 class="title">로그인</h1>
					<form name="login-form" method="post"
						action="<%=pjName%>/login?cmd=login-ok">
						<div class="input-container">
							<input type="text" id="m_id" name="m_id" required="required" />
							<label for="m_id">아이디</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="m_password" name="m_password"
								required="required" /> <label for="m_password">비밀번호</label>
							<div class="bar"></div>
						</div>
						<div class="button-container">
							<button type="submit" >
								<span>Go</span>
							</button>
						</div>
					</form>
					<div class="footer">
						<a href="<%=pjName%>/login?cmd=id-search">아이디 찾기</a> &nbsp; 
						<a href="<%=pjName%>/login?cmd=pw-search">비밀번호찾기</a>
					</div>
				</div>
				<div class="card alt">
					<div class="toggle"></div>
					<h1 class="title">
						회원가입
						<div class="close"></div>
					</h1>
					<form method="post" id="join_form"
						action="<%=pjName%>/login?cmd=join-complete">
						<div class="input-container">
							<input type="text" id="join_id" name="join_id"
								required="required" /> <label for="join_id">아이디</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="join_password" name="join_password"
								required="required" /> <label for="join_password">비밀번호</label>
							<div class="bar"></div>
						</div>
						<div class="input-container ">
							<input type="password" id="join_password_repeat"
								name="join_password_repeat" required="required" /> <label
								for="join_password_repeat">비밀번호 확인</label>
							<div class="bar"></div>
						</div>
						<div class="input-container tel">
							<input type="tel" id="join_tel1" name="join_tel1"
								required="required" /> - <input type="tel" id="join_tel2"
								name="join_tel2" required="required" /> - <input type="tel"
								id="join_tel3" name="join_tel3" required="required" /> <label
								for="join_tel">전화번호</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="email" id="join_email" name="join_email"
								required="required" /> <label for="join_email">이메일</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="text" id="join_born" name="join_born"
								required="required" /> <label for="join_born">생년월일(YYYYMMDD)</label>
							<div class="bar"></div>
						</div>
						<div class="button-container">
							<button type="submit" form="join_form">
								<span>Next</span>
							</button>
						</div>
					</form>
				</div>
			</div>
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