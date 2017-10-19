package command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.MemberModel;
import service.MemberService;

public class LoginCommandOk implements Command{
	public String next;
	
	public LoginCommandOk(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {

		MemberModel mm = new MemberModel();
		mm.setM_id(request.getParameter("m_id"));
		mm.setM_password(request.getParameter("m_password"));
//		mm.setM_gubun(request.getParameter("m_gubun"));
		
		String m_id = MemberService.getInstance().selectLogin(mm);
		String m_gubun = MemberService.getInstance().selectGubun(m_id);
		
		request.setAttribute("loginId", m_id);
		request.setAttribute("m_gubun", m_gubun);
		
		return next;
	}

}
