package command.member;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;

public class JoinCommandMem implements Command{
	public String next;
	
	public JoinCommandMem(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		String m_id = request.getParameter("m_id");
		String m_password = request.getParameter("m_password");
		String m_tel = request.getParameter("m_tel");
		String m_email = request.getParameter("m_email");
		String m_gubun = request.getParameter("m_gubun");
		
		return null;
	}
	
	
}
