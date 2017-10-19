<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.PayModel"%>
<%@ page import="service.PayService"%>
<%
	String pjName = "/kobus";
%>
<%
	List<PayModel> payCancleList = (List<PayModel>) request.getAttribute("payCancleList");
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
<link rel="stylesheet" href="<%= pjName %>/css/reserOk.css" />
<link rel="stylesheet" href="<%= pjName %>/css/bootstrap.min2.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="<%= pjName %>/js/reserOk.js"></script>
<style type="text/css">
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul class="nav nav-pills nav-justified thumbnail">
					<li id="reser"><a href="<%=pjName%>/pay?cmd=pay-confirm">
							<h4 class="list-group-item-heading">예약내역</h4>
					</a></li>
					<li id="cancel" class="active" ><a 
						href="<%=pjName%>/pay?cmd=calcleList-page">
							<h4 class="list-group-item-heading">취소내역</h4>
					</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
	<% if(payCancleList.isEmpty()){ %>
	<center>취소내역이 없습니다.</center>
	<%}else{ %>
		<%
			for (PayModel paymodel : payCancleList) {
		%>
		<div class="row">
			<div class="col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="text-center">
							<strong><%= paymodel.getDepplacenm() %>&nbsp;-&nbsp;<%= paymodel.getArrplacenm() %></strong>
						</h4>
					</div>
					<div class="panel-body text-center">
						<p class="lead">
							<strong><%=paymodel.getRdate()%><br/><%=paymodel.getDepplandtime()%>&nbsp;출발</strong>
						</p>
					</div>
					<ul class="list-group list-group-flush text-center">
						<li class="list-group-item"><i class="icon-ok text-danger"></i>예매번호
							: <%=paymodel.getR_no()%></li>
						<li class="list-group-item"><i class="icon-ok text-danger"></i>결제금
							: <%=paymodel.getPrice()%>원</li>
					</ul>
					<!--                 <div class="panel-footer"> -->
					<!--                     <a class="btn btn-lg btn-block btn-danger" href="http://www.jquery2dotnet.com">예매취소</a> -->
					<!--                 </div> -->
				</div>
			</div>
		</div>
		<%
			} } // end of for
		%>
	</div>
</body>
</html>