<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
<link rel="stylesheet" type="text/css" href="../css/reserOk.css" />
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
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
                    <h4 class="list-group-item-heading">고속버스 예매</h4>
                </a></li>
                <li class="active"><a href="#">
                    <h4 class="list-group-item-heading">예약확인</h4>
                </a></li>
            </ul>
        </div>
	</div>
</div>
  <section id="login">
    <div class="container">
    	<div class="row">
    	    <div class="col-xs-12">
        	    <div class="form-wrap">
                <h1>회원 로그인</h1>
                    <form role="form" action="javascript:;" method="post" id="login-form" autocomplete="off">
                        <div class="form-group">
<!--                             <label for="email" class="sr-only">Email</label> -->
                            <input type="email" name="email" id="email" class="form-control" placeholder="아이디를 입력하세요">
                        </div>
                        <div class="form-group">
<!--                             <label for="key" class="sr-only">Password</label> -->
                            <input type="password" name="key" id="key" class="form-control" placeholder="패스워드를 입력하세요">
                        </div>
                        
                        <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="로그인">
                    </form style='distplay:inline'>
                    <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">아이디찾기</a>
                    <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">비밀번호찾기</a>
                    <hr>
        	    </div>
    		</div> <!-- /.col-xs-12 -->
    	</div> <!-- /.row -->
    </div> <!-- /.container -->
</section>

<div class="modal fade forget-modal" tabindex="-1" role="dialog" aria-labelledby="myForgetModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span>
					<span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title">비밀번호 찾기</h4>
			</div>
			<div class="modal-body">
				<p>아이디를 입력하세요</p>
				<input type="email" name="recovery-email" id="recovery-email" class="form-control" autocomplete="off">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				<button type="button" class="btn btn-custom">확인</button>
			</div>
		</div> <!-- /.modal-content -->
	</div> <!-- /.modal-dialog -->
</div> <!-- /.modal -->
</body>
</html>