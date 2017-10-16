<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	session.removeAttribute("m_id");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>
</head>
<body>
	<%
		response.sendRedirect("/kobus/view/MainMenu/Main.jsp");
	%>
</body>
</html>