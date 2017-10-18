<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String m_id = (String) request.getAttribute("loginId");
%>
<%
	String pjName = "/kobus";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고속버스통합예매</title>
</head>
<body>
	<%
		if (m_id.equals("")) {
	%>
	<script type="text/javascript">
		alert("아이디와 비밀번호를 확인해주세요.");
	</script>
	<%
		response.sendRedirect(pjName + "/pay?cmd=pay-login");

		} // end of if 
		else {
			session.setAttribute("m_id", m_id);
			response.sendRedirect(pjName + "/pay?cmd=pay-main");
		} // end of else
	%>
</body>
</html>