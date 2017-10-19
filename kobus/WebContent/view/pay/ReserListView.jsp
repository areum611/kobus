<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.PayModel"%>
<%@ page import="service.PayService"%>
<% String pjName="/kobus"; %>
<% List<PayModel> payList = (List <PayModel>)request.getAttribute("payList"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
<link rel="stylesheet" href="/kobus/css/reserOk.css" />
<link rel="stylesheet" href="/kobus/css/bootstrap.min2.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="/kobus/js/reserOk.js"></script>
<style type="text/css">
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul class="nav nav-pills nav-justified thumbnail">
					<li  class="active" id="reser"><a href="<%= pjName %>/pay?cmd=pay-confirm">
							<h4 class="list-group-item-heading">예약내역</h4>
					</a></li>
					<li id="cancel"><a href="<%= pjName %>/pay?cmd=calcleList-page">
							<h4 class="list-group-item-heading">취소내역</h4>
					</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
	<% for (PayModel paymodel : payList) { %>
		<div class="row">
			<div class="col-md-4">
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h4 class="text-center">
							<strong><%= paymodel.getDepplacenm() %> - <%= paymodel.getArrplacenm() %></strong>
						</h4>
					</div>
					<div class="panel-body text-center">
						<p class="lead">
							<strong><%= paymodel.getRdate() %><br/><%= paymodel.getDepplandtime() %> 출발</strong>
						</p>
					</div>
					<ul class="list-group list-group-flush text-center">
						<li class="list-group-item"><i class="icon-ok text-danger"></i>예매번호
							: <%= paymodel.getR_no() %></li>
						<li class="list-group-item"><i class="icon-ok text-danger"></i>등급번호
							: <%= paymodel.getGradenm() %></li>
						<li class="list-group-item"><i class="icon-ok text-danger"></i>매수
							: 일반 <%= paymodel.getCnt() %>명</li>
						<li class="list-group-item"><i class="icon-ok text-danger"></i>좌석
							: <%= paymodel.getSeatnum() %></li>
						<li class="list-group-item"><i class="icon-ok text-danger"></i>총
							결제금액 : <%= paymodel.getPrice() %>원</li>
					</ul>
					<div class="panel-footer">
						<a class="btn btn-lg btn-block btn-danger"
							href="<%= pjName %>/pay?cmd=reserCancle-page">예매취소</a>
					</div>
				</div>
			</div>
		</div>
		<% } // end of for %>
	</div>
</body>
</html>