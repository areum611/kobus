package command.reser;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.ScheduleModel;
import service.ReserService;


public class ReserCommandListView implements Command{
	public String next;
	
	public ReserCommandListView(String _next) {
		next = _next;
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			List <ScheduleModel> mList = ReserService.getInstance().ReserList();	
		    request.setAttribute("reserList", mList );
		}catch (Exception ex) {
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}

		return next;
	}

}
