package command.reser;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.ScheduleModel;
import service.ReserService;

public class ReserCommandListView2 implements Command{
	public String next;
	
	public ReserCommandListView2(String _next) {
		next = _next;
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			String dep_placenm = request.getParameter("dep_placenm");
			System.out.println(dep_placenm);
			
			List <ScheduleModel> mList2 = ReserService.getInstance().ReserList2(dep_placenm);	
		    request.setAttribute("reserList2", mList2 );
		    
		}catch (Exception ex) {
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}

		return next;
	}

}