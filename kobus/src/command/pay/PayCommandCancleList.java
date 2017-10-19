package command.pay;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import command.CommandException;
import model.PayModel;
import service.PayService;

public class PayCommandCancleList implements Command {
	private String next;

	public PayCommandCancleList(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			HttpSession session = request.getSession();
			String m_id = (String) session.getAttribute("m_id");
			
			List<PayModel> payCancleList = PayService.getInstance().payCancleList(m_id);
			request.setAttribute("payCancleList", payCancleList);
		} catch (Exception e) {
			throw new CommandException("PayCommandCalcleList.java <취소내역> " + e.toString());
		}
		return next;
	}

}
