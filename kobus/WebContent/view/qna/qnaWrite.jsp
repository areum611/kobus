<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Teko:400,700"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/kobus/css/qnaWrite.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<section id="contact">
	<div class="section-content">
		<h1 class="section-header">
			<span class="content-header wow fadeIn " data-wow-delay="0.2s"
				data-wow-duration="2s">Q & A</span>
		</h1>
		<h3>답변 소요시간은 평균 1~2일 입니다.</h3>
	</div>
	<div class="contact-section">
		<div class="container">
			<form method='post' action='kobus/qna?cmd='>
				<div id='labeldiv'>
					<label for="description"> Message</label>
				</div>
				<div class="form-group">
					<textarea class="form-control" id="description"
						placeholder="메세지를 입력하세요"></textarea>
				</div>
				<div id='sbButton'>
					<button type="submit" class="btn btn-default submit">
						<i class="fa fa-paper-plane" aria-hidden="true"></i> 보내기
					</button>
					<button type="button" class="btn btn-default submit">뒤로가기</button>
				</div>
			</form>
		</div>
	</section>
</body>
</html>