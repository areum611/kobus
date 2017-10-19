package command.pay;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.PayModel;
import service.PayService;

public class PayCommandCancelSubmit implements Command {

	private String next;
	
	public PayCommandCancelSubmit(String _next) {
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {

		PayModel pm = new PayModel();
		pm.setR_no(Integer.parseInt(request.getParameter("rNo")));
		int CancelResult = PayService.getInstance().payUpdateCancel(pm);
		request.setAttribute("CancelResult", CancelResult);
		
		return next;
	}

}
