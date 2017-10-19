package command.reser;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.ScheduleModel;
import service.ReserService;

public class ReserCommandMain implements Command{
	public String next;
	
	public ReserCommandMain(String _next) {
		next = _next;
	}
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			String dep_placenm = request.getParameter("dep_placenm");
			String arr_placenm = request.getParameter("arr_placenm");
			
			System.out.println(dep_placenm);
			
			List <ScheduleModel> mList3 = ReserService.getInstance().ReserList3(dep_placenm,arr_placenm);	
		    request.setAttribute("reserList3", mList3 );
		    
		}catch (Exception ex) {
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}

		return next;
	}

}