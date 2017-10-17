package command.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		try {
			List <QnaModel> mList = QnaService.getInstance().qnaList();	
		    request.setAttribute("qnaList", mList );
		}catch (Exception ex) {
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}

		return next;
	}

}
