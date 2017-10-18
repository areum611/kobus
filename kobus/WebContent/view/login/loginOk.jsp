<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String m_id = (String) request.getAttribute("loginId");

	String pjName = "/kobus";

		if (m_id.equals("")) {
			response.sendRedirect(pjName + "/login?cmd=login-page");

		} // end of if 
		else {
			session.setAttribute("m_id", m_id);
			response.sendRedirect("/kobus/view/MainMenu/Main.jsp");
		} // end of else
	%>
