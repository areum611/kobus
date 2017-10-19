package command.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import command.CommandException;
import model.QnaModel;
import service.QnaService;

public class QnaCommandList implements Command {
	private String next;

	public QnaCommandList( String _next){
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		 String m_id=null;
		 String m_gubun=null;
		 String m_a=Character.toString('A');
		 
		try {
			HttpSession session = request.getSession();
	         m_id = (String)session.getAttribute("m_id");
	         m_gubun = (String)session.getAttribute("m_gubun");

			if(m_id == null) {
				next="qnaLogin.jsp";
			
			}else if(m_gubun.equals(m_a)) {		
				List <QnaModel> mList = QnaService.getInstance().qnaAdminList(m_gubun);	
			    request.setAttribute("qnaList", mList);
			    request.setAttribute("m_gubun", m_gubun);
			    next="qnaList.jsp";
			}
			
			else {
				List <QnaModel> mList = QnaService.getInstance().qnaList(m_id);	
			    request.setAttribute("qnaList", mList );
			    next="qnaList.jsp";
			}
		}catch (Exception ex) {
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}
}