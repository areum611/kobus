<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/kobus";
%>
<%
	String m_id = (String) session.getAttribute("m_id");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고속버스통합예매</title>
</head>
<body>
	<%
		if (m_id == null) {
	%>

	<script type="text/javascript">
		alert("로그인 후 예매확인 가능합니다.");
	</script>
	<%
		response.sendRedirect(pjName + "/pay?cmd=pay-login");

		} else {
			response.sendRedirect(pjName + "/pay?cmd=pay-confirm");
		}
	%>

</body>
</html>