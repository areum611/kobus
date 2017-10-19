<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String m_id = (String) request.getAttribute("loginId");

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
			response.sendRedirect(pjName + "/login?cmd=login-page");

		} // end of if 
		else {
			session.setAttribute("m_id", m_id);
			response.sendRedirect("/kobus/view/qna/qnaList.jsp");
		} // end of else
	%>
</body>