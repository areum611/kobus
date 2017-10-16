<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
<script src="/kobus/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/kobus/js/notice.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    공지사항 <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form method='post' action='notice?cmd=input-firm'>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                작성자</label>
                            <input type="text" class="form-control" id="n_writer" name="n_writer" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="title">
                              제목</label>
                            <div class="input-group">
<!--                                 <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span> -->
<!--                                 </span> -->
                               <input type="text" class="form-control" id="n_title" name="n_title" placeholder="Enter title" required="required" /></div>
                        </div>
                  
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                내용</label>
                            <textarea id="n_content" name="n_content" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            글쓰기</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>