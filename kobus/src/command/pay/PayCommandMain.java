package command.pay;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import command.CommandException;
import model.PayModel;
import service.PayService;

public class PayCommandMain implements Command {
	private String next;

	public PayCommandMain(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			HttpSession session = request.getSession();
			String m_id = (String) session.getAttribute("m_id");
			
			List<PayModel> payList = PayService.getInstance().payList(m_id);
			request.setAttribute("payList", payList);
		} catch (Exception e) {
			throw new CommandException("PayCommandMain.java<예매확인리스트> " + e.toString());
		}
		return next;
	}

}
