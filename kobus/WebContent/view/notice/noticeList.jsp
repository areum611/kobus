<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.NoticeModel"%>
<%@ page import="service.NoticeService"%>
<%
	String pjName = "/kobus";
%>
<!-- 서비스의 메소드 호출  -->
<%
	String mGubun = (String) session.getAttribute("m_gubun");
	if (mGubun == null) {
		mGubun = Character.toString('M');
	}
	List<NoticeModel> mList = (List<NoticeModel>) request.getAttribute("noticeList");
%>

<!--  메뉴바 가져오기 -->
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반연습</title>
<link href="/kobus/css/notice.css" rel="stylesheet" />
<script src="/kobus/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/kobus/js/noticelist.js"></script>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
</head>
<body>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="table-responsive">


					<table id="mytable" class="table table-bordred table-striped">

						<thead>
							<%
								if (mGubun.equals(Character.toString('A'))) {
							%>
							<th><input type="checkbox" id="checkall" /></th>
							<%
								}
							%>
							<th>번 호</th>
							<th width="40%">제 목</th>
							<th>작성자</th>
							<th>등록일</th>
							<th>조회수</th>
							<%
								if (mGubun.equals(Character.toString('A'))) {
							%>
							<th>Edit</th>

							<th>Delete</th>
							<%
								}
							%>
						</thead>



						<tbody>
							<%
								for (NoticeModel NM : mList) {
							%>
							<tr>
								<%
									if (mGubun.equals(Character.toString('A'))) {
								%>
								<td><input type="checkbox" class="checkthis" /></td>
								<%
									}
								%>
								<td><%=NM.getN_id()%></td>
								<td id="tdLeft"><%=NM.getN_title()%></td>
								<td><%=NM.getN_writer()%></td>
								<td><%=NM.getN_date()%></td>
								<td><%=NM.getN_hit()%></td>
								<%
									if (mGubun.equals(Character.toString('A'))) {
								%>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Edit">
										<button class="btn btn-primary btn-xs" data-title="Edit"
											data-toggle="modal" data-target="#edit">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Delete">
										<button class="btn btn-danger btn-xs" data-title="Delete"
											data-toggle="modal" data-target="#delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</p></td>

							</tr>
							<%
								}
								}
							%>
						</tbody>

					</table>
					<%
						if (mGubun.equals(Character.toString('A'))) {
					%>
					<a href="<%=pjName%>/notice?cmd=input-form" id="write" name='write'><input
						type='button' value='글쓰기' id='bWrite'></a>
					<%
						}
					%>
					<div class="clearfix"></div>
					<ul class="pagination pull-right">
						<li class="disabled"><a href="#"><span
								class="glyphicon glyphicon-chevron-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>

				</div>

			</div>
		</div>
	</div>


	<div class="modal fade" id="edit" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Edit Your
						Detail</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<input class="form-control " type="text" placeholder="Mohsin">
					</div>
					<div class="form-group">

						<input class="form-control " type="text" placeholder="Irshad">
					</div>
					<div class="form-group">
						<textarea rows="2" class="form-control"
							placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>


					</div>
				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-warning btn-lg"
						style="width: 100%;">
						<span class="glyphicon glyphicon-ok-sign"></span> Update
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>



	<div class="modal fade" id="delete" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Delete this
						entry</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign"></span> 삭제하시겠습니까?
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success" name="noticeCancel" >
						<span class="glyphicon glyphicon-ok-sign"></span> Yes
					</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> No
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- Footer -->
	<footer>
		<div class="footerHeader"></div>
		<div class="container">
			<div class="col-md-4">
				<h3>또이또이 5조</h3>
				<p>허접들의 사이트에 오신것을 환영합니다</p>
			</div>

			<div class="col-md-4">
				<h3>Our Location</h3>
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3166.234914628765!2d126.87891451512434!3d37.478782479814384!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b61e3044a68bd%3A0x8f21e056c9253c97!2z64yA7ZWc66-86rWtIOyEnOyauO2KueuzhOyLnCDquIjsspzqtawg6rCA7IKw65SU7KeA7YS4MeuhnCAxNTE!5e0!3m2!1sko!2sjo!4v1507779193815"
					width="400" height="300" frameborder="0" style="border: 0"
					allowfullscreen></iframe>
			</div>
			<div class="col-md-4">
				<h3>Tell</h3>
				<ul>
					<li>이아름 : 010-2378-5199</li>
					<li>김민우 : 010-3060-9504</li>
					<li>류정욱 : 010-2741-4067</li>
				</ul>
				<p>집에가고싶다</p>
				<ul class="sm">
					<li><a href="#"><img
							src="https://www.facebook.com/images/fb_icon_325x325.png"
							class="img-responsive"></a></li>
					<li><a href="#"><img
							src="https://lh3.googleusercontent.com/00APBMVQh3yraN704gKCeM63KzeQ-zHUi5wK6E9TjRQ26McyqYBt-zy__4i8GXDAfeys=w300"
							class="img-responsive"></a></li>
					<li><a href="#"><img
							src="http://playbookathlete.com/wp-content/uploads/2016/10/twitter-logo-4.png"
							class="img-responsive"></a></li>
				</ul>
			</div>
		</div>
	</footer>
</body>
</html>