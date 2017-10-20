package command.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.NoticeModel;
import service.NoticeService;

public class NoticeCommandList implements Command{
	public String next;
	
	public NoticeCommandList(String _next) {
		next = _next;
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			NoticeModel nm = new NoticeModel();
		
			List <NoticeModel> mList = NoticeService.getInstance().noticeList();	
		    int id= nm.getN_id();
			System.out.println(id);
			request.setAttribute("noticeList", mList );
		    
		    
		}catch (Exception ex) {
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}

		return next;
	}

}
