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
//		mm.setM_gubun(request.getParameter("m_gubun"));
		
		int loginCnt = MemberService.getInstance().selectLogin(mm);
		
		if(loginCnt == 0) {
			next = "login.jsp";
		}
		String m_id = request.getParameter("m_id");
		String m_gubun = MemberService.getInstance().selectGubun(m_id);
		
		request.setAttribute("loginId", m_id);
		request.setAttribute("m_gubun", m_gubun);
		
		return next;
	}
}
