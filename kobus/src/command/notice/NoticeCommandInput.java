package command.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.NoticeModel;
import service.NoticeService;

public class NoticeCommandInput implements Command{
	public String next;
	
	public NoticeCommandInput(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		NoticeModel NM = new NoticeModel();
		
		NM.setN_writer(request.getParameter("n_writer"));
		NM.setN_title(request.getParameter("n_title"));
		NM.setN_content(request.getParameter("n_content"));
		
		NoticeService.getInstance().insertNotice(NM);

	return next;
	}

}
