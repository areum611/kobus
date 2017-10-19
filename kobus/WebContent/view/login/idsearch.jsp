<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/kobus";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>
<link href="/kobus/css/idsearch.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/kobus/js/idsearch.js"></script>

</head>


<body>
	<div class="container">
		<div class="row">
			<h2>아이디 찾기</h2>
			<div class="mat-input">
				<div class="mat-input-outer">
					<input type="text" autocomplete="off" placeholder="휴대폰번호를 입력하세요" />
					<div class="border"></div>
				</div>
				<a href="<%=pjName%>/login?cmd=id-search" class="btn btn-block btn-warning">확인</a>
			</div>
		</div>
	</div>
</body>
</html>