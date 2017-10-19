package command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.MemberModel;
import service.MemberService;

public class LoginCommandIdSearch implements Command{
	public String next;
	
	public LoginCommandIdSearch(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {

		MemberModel mm = new MemberModel();

		MemberService service = MemberService.getInstance();
		String m_tel = request.getParameter("m_tel");
		
		request.setAttribute("m_tel", m_tel);
		
		mm.setM_tel(request.getParameter("m_tel"));
		
		
		service.getInstance().selectId(m_tel);
		
		return next;
	}

}
