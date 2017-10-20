package command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.MemberModel;
import service.MemberService;

public class LoginCommnadPwSearch implements Command{
public String next;
	
	public LoginCommnadPwSearch(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		MemberModel mm = new MemberModel();

		MemberService service = MemberService.getInstance();
	
		String m_id = request.getParameter("m_id");
		
		mm.setM_id(m_id);
		mm = service.getInstance().selectPw(m_id);
		
		String email = mm.getM_email();
		String password = mm.getM_password();
		
		request.setAttribute("m_tell", m_id);
		request.setAttribute("email", email);
		request.setAttribute("m_password", password);
		return next;
	}

}
