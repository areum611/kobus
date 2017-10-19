package command.qna;

import java.text.DecimalFormat;

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
			
			// 그룹번호(group_id) 지정\
			QnaService service = QnaService.getInstance();
			
			int groupId = service.groupId();
			qm.setG_id(groupId);

			// 순서번호(sequence_no) 지정
			DecimalFormat dformat = new DecimalFormat("0000000000");
			qm.setS_id( dformat.format(groupId) + "999999");
			
			//내용 지정
			qm.setQ_content( request.getParameter("q_content"));
			
			//사용자 아이디 지정
			qm.setM_id(request.getParameter("m_id"));
			
			
			
			QnaService.getInstance().qnaInsert(qm);
			
			
			
		}catch(Exception ex){
			ex.printStackTrace();
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
