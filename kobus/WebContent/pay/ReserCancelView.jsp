<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
<link rel="stylesheet" href="../css/reserOk.css" />
<link rel="stylesheet"href="../css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="../js/reserOk.js"></script>

</head>
<body>
<div class="container">
	<div class="row">
        <div class="col-xs-12">
            <ul class="nav nav-pills nav-justified thumbnail">
                <li><a href="#">
                    <h4 class="list-group-item-heading">예약내역</h4>
                </a></li>
                <li class="active"><a href="#">
                    <h4 class="list-group-item-heading">취소내역</h4>
                </a></li>
            </ul>
        </div>
	</div>
</div>
<div class="pyo_wrap">
	<article>
		<p>2017.10.29(금) 22:00 출발   </p>
		<p>총 결제금액 9,600원 </p>
	</article>
	<article>
		<div class='pyo'>
		<div>
		<p><input type='image' src='../img/start.PNG'> <b>경주</b> </p>
		<p><input type='image' src='../img/end.PNG'> <b>부산</b> </p>
		<p>50분 소요</p>
		</div>
		</div>	
	</article>
</div>


<label id="nullReser"><h4>취소 자료가 존재하지 않습니다.</h4></label>
</body>
</html>