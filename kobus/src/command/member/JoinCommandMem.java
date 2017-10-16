package command.member;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.MemberModel;
import service.MemberService;

public class JoinCommandMem implements Command{
	public String next;
	
	public JoinCommandMem(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		
		String m_id = request.getParameter("join_id");
		String m_tel1 = request.getParameter("join_tel1");
		String m_tel2 = request.getParameter("join_tel2");
		String m_tel3 = request.getParameter("join_tel3");
		
		MemberModel mm = new MemberModel();
		
		mm.setM_id(request.getParameter("join_id"));
		mm.setM_password(request.getParameter("join_password"));
		mm.setM_tel(m_tel1+"-"+m_tel2+"-"+m_tel3);
		mm.setM_email(request.getParameter("join_email"));
		mm.setM_born(Integer.parseInt(request.getParameter("join_born")));
		
		MemberService.getInstance().insertMember(mm);
		
		request.setAttribute("m_id", m_id);
		request.setAttribute("joinResult", mm);
		
		return next;
	}
	
	
}
