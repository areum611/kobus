package command.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandException;
import model.MemberModel;
import service.MemberService;

public class QnaCommandOk {
public String next;
	
	public QnaCommandOk(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {

		MemberModel mm = new MemberModel();
		mm.setM_id(request.getParameter("m_id"));
		mm.setM_password(request.getParameter("m_password"));
		
		String m_id = MemberService.getInstance().selectLogin(mm);
		
		request.setAttribute("loginId", m_id);
		
		
		
		return next;
	}
}
