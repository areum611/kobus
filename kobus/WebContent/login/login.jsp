<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.MemberModel.*, command.*" %>

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
					<form>
						<div class="input-container">
							<input type="text" id="Username" required="required" /> <label
								for="Username">아이디</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="Password" required="required" /> <label
								for="Password">비밀번호</label>
							<div class="bar"></div>
						</div>
						<div class="button-container">
							<button>
								<span>Go</span>
							</button>
						</div>
						<div class="footer">
							<a href="#forgotid">아이디 찾기</a> &nbsp; <a href="#forgotpassword">비밀번호
								찾기</a>
						</div>
					</form>
				</div>
				<div class="card alt">
					<div class="toggle"></div>
					<h1 class="title">
						회원가입
						<div class="close"></div>
					</h1>
					<form>
						<div class="input-container">
							<input type="text" id="Username" required="required" /> <label
								for="Username">아이디</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="Password" required="required" /> <label
								for="Password">비밀번호</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="Repeat Password" required="required" />
							<label for="Repeat Password">비밀번호 확인</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="email" id="email" required="required" /> <label
								for="email">이메일</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="text" id="born" required="required" /> <label
								for="born">생년월일(YYYYMMDD)</label>
							<div class="bar"></div>
						</div>
						<div class="button-container">
							<button>
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