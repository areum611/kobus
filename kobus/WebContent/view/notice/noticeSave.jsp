<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% String pjName="/kobus"; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
<link rel="stylesheet" href="/kobus/css/bootstrap.min2.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
        <br><br> <h2 style="color:#0fad00">SUCCESS</h2>
        <img src="http://osmhotels.com//assets/check-true.jpg">
        <h3>공지사항을 입력 성공하였습니다.</h3>
        <a href="<%=pjName %>/notice?cmd=notice-list"  class="btn btn-success">     목록보기      </a>
    <br><br>
        </div>
        
	</div>
</div>
</body>
</html>