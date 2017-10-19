package command.pay;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.MemberModel;
import service.MemberService;

public class PayCommandMemCh implements Command {
	public String next;

	public PayCommandMemCh(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {

		MemberModel mm = new MemberModel();
		mm.setM_id(request.getParameter("m_id"));
		mm.setM_password(request.getParameter("m_password"));

		int loginCnt = MemberService.getInstance().selectLogin(mm);

		if (loginCnt == 0) {
			next = "login.jsp";
		}

		String m_id = request.getParameter("m_id");

		request.setAttribute("loginId", m_id);

		return next;
	}

}
