<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.NoticeModel"%>
<%@ page import="service.NoticeService"%>
<%@ page import="java.util.*, java.text.*"%>
<%
	String pjName = "/kobus";
	NoticeModel noticeView = (NoticeModel) request.getAttribute("noticeView");
%>
<!--  메뉴바 가져오기 -->
<jsp:include page="/view/MainMenu/header.jsp" flush="true"></jsp:include>

<!DOCTYPE>
<html>
<head>
<title>버스터미널 공지사항</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/rss+xml"
	href="http://www.exterminal.co.kr/fsboard/index.asp?id=board_bbs&amp;mode=rss.xml"
	title="Syndicate this site using RSS 2.0" />
<link rel="stylesheet" type="text/css"
	href="http://www.exterminal.co.kr/fsboard/skin/div_board/style.asp?w=95%25&amp;a=center&amp;u=False" />
	<link rel="stylesheet" href="/kobus/css/noticeView.css">
<script type="text/javascript"
	src="http://www.exterminal.co.kr/fsboard/lib/javascript.asp?id=board_bbs&amp;mode=view&amp;srhctgr=&amp;srhstr=&amp;ctgrstr=&amp;page=1"></script>

<style>
#inneriframe {
	position: absolute;
	top: 0px;
	left: 0px;
	visibility: hidden;
}
</style>
<style type="text/css">
body {
	overflow-y: auto;
	scrollbar-arrow-color: #228b22; scrollbar-face-color; white;
	scrollbar-highlight-color: white;
	scrollbar-3dlight-color: white;
	scrollbar-shadow-color: white;
	scrollbar-darkshadow-color: white;
	scrollbar-track-color: white)
}
</style>
<body class="body">
	<div id="ifmContent">
</body>

</head>
<body>



	<div id="vc_frame">
		<div id="vc_layout">

			<div class="vc_row">
				<div class="vc_label">작성자</div>
				<div class="vc_right">
					<a href="javascript:void(0);"
						onclick="window.open('http://www.exterminal.co.kr/fsboard/lib/members.asp?mode=MemInfo&amp;mx=1&amp;id=board_bbs&amp;ref=86&amp;vw=0','','width=500,height=300,resizable=1,scrollbars=1');"
						class="vc_namelnk" title="작성자 정보 보기"><strong>관리자</strong></a>
				</div>
				<!-- div id="vc_body_info">Type:text, Line:2, Vote:0, Read:<strong><span style="color:green;">231</span></strong></div -->
			</div>

			<div class="vc_row">
				<div class="vc_label">작성일</div>
				<div class="vc_right" id="vc_date1">
					<%=noticeView.getN_date()%>
				</div>
			</div>

			<div class="vc_row">
				<div class="vc_label">글제목</div>
				<div class="vc_right" id="vc_subject"><%=noticeView.getN_title()%></div>
			</div>


			<div id="vc_body">
				<div id="vc_body_vtfix"></div>
				<div id="vc_body_content">


					<script type="text/javascript">
						//<![CDATA[
					</script>
					<%=noticeView.getN_content()%>
					<script type="text/javascript">
						//]]>
					</script>
				</div>
			</div>

			<p class="btns col1">
				<a href="<%= pjName %>/notice?cmd=notice-list" class="btnL btn_normal">목록</a>
			</p>


		</div>
	</div>

	<br />
	<br />
	<br />

	<script type="text/javascript">
		//<![CDATA[
		function chkField(frm) { //메모 필드 체크
			if (!frm.memo.value) {
				alert('댓글 내용을 입력해 주세요.');
				frm.memo.focus();
				return false;
			}

			if (!frm.passwd.value) {
				alert('암호를 입력해 주세요.');
				frm.passwd.focus();
				return false;
			}
			if (!frm.name.value) {
				alert('이름을 입력해 주세요.');
				frm.name.focus();
				return false;
			}
			if (frm.e_mail.value) {
				if (!chkEmail(frm.e_mail.value)) {
					alert('이메일 주소를 정확히 입력해 주세요.');
					frm.e_mail.focus();
					return false;
				}
			}

			return true;
		}

		function chkEmail(strObj) { //이메일 패턴 체크
			var email = strObj
					.match(/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9._-]+)/gi);
			if (!email)
				return false;
			return true;
		}

		function postMemo(frm, btnId) { //메모글 전송
			var chk = chkField(frm);

			if (chk) {
				document.getElementById(btnId).style.visibility = "hidden";
				frm.submit();
			} else
				return;
		}

		var tempSeq = 0;
		function ModifyMemo(seq, vmode) {
			var memocmt = document.getElementById("memoCmt_" + seq);
			var editcmt = document.getElementById("editCmt_" + seq);

			if (vmode == "edit") {
				//		for(var i=1; i<=1; i++) {
				//			if(document.getElementById("memoCmt_" + i) && document.getElementById("memoCmt_" + i).style.display=="none") document.getElementById("memoCmt_" + i).style.display = "block";
				//			if(document.getElementById("editCmt_" + i) && document.getElementById("editCmt_" + i).style.display!="none") document.getElementById("editCmt_" + i).style.display = "none";
				//		}
				if (document.getElementById("memoCmt_" + tempSeq)
						&& document.getElementById("memoCmt_" + tempSeq).style.display == "none")
					document.getElementById("memoCmt_" + tempSeq).style.display = "block";
				if (document.getElementById("editCmt_" + tempSeq)
						&& document.getElementById("editCmt_" + tempSeq).style.display != "none")
					document.getElementById("editCmt_" + tempSeq).style.display = "none";
				tempSeq = seq;

				memocmt.style.display = "none";
				editcmt.style.display = "block";
			} else {
				memocmt.style.display = "block";
				editcmt.style.display = "none";
			}
		}

		function init() {
			for (var i = 1; i <= 20; i++) {
				if (document.getElementById('uploaded_image' + i))
					controlImage('uploaded_image' + i, 600); //큰이미지크기 보정
			}

			//	for(var i=0; i<document.images.length; i++) {
			//		if(document.images[i]) controlImage(document.images[i].id, 600);
			//	}

			document.getElementById("vc_body").style.visibility = "visible"; //글내용 보이기
		}

		window.onload = init;
		//]]>
	</script>

	<!-- Footer -->
	<footer>
		<div class="footerHeader"></div>
		<div class="containerWidth">
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

