<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.QnaModel" %>    
<%@ page import="service.QnaService" %>  
  <% String pjName="/kobus"; %>
  <!-- 서비스의 메소드 호출  -->
  <%
  List <QnaModel> mList = ( List <QnaModel>)request.getAttribute("qnaList");
 
 %>
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>

 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href="/kobus/css/qnamain.css" rel="stylesheet" />


</head>
<body>
	<div class="container">
		<hr />
		<a href="<%=pjName %>/qna?cmd=qnaWrite-page" id="write" name='write'><input type='button' value='글쓰기' id='bWrite'></a>
		<% for( QnaModel qnamodel : mList ) { %>
		<div class="row">
			<div class="col-md-6">
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a class="" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne"> 
									<i class="fa fa-bars"></i> <%=qnamodel.getQ_content()%>
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body"></div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<% } %>
		<hr />
	</div>
</body>
</html>