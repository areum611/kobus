<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/kobus";
%>
<%
	String m_id = (String)session.getAttribute("m_id");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고속버스통합예매</title>
</head>
<body>
<% if( m_id==null ) {
	response.sendRedirect(pjName + "/login?cmd=login-page");
} else {
	response.sendRedirect(pjName + "/pay?cmd=pay-confirm");
} %>

</body>
</html>