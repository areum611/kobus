package command.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.QnaModel;

import service.QnaService;

public class QnaCommandInput implements Command {
	private String next;
	
	public QnaCommandInput( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
		
			QnaModel qm = new QnaModel();
			qm.setQ_content( request.getParameter("q_content"));
			
			QnaService.getInstance().qnaInsert(qm);
			
		}catch(Exception ex){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
