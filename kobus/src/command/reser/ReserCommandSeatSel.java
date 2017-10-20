package command.reser;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.ScheduleModel;
import service.ReserService;

public class ReserCommandSeatSel implements Command{
	public String next;
	
	public ReserCommandSeatSel(String _next) {
		next = _next;
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {

			int s_id = Integer.parseInt(request.getParameter("s_id"));
			
			List <ScheduleModel> mList4 = ReserService.getInstance().ReserList4(s_id);	
		    request.setAttribute("reserList4", mList4);
		    
		}catch (Exception ex) {
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}

		return next;
	}

}
