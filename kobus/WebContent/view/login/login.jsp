<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.MemberModel.*, command.*"%>
<%
	String pjName = "/kobus";
%>
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
</body>
</html>