package command.pay;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.*;

public class PayCommandMain implements Command {
	private String next;

	public PayCommandMain(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			String jspDir = "/kobus";
			HttpSession session = request.getSession();
			String m_id =  (String) session.getAttribute("m_id");
			
			if(m_id.equals("")) {
				response.sendRedirect(jspDir + "/login?cmd=login-page");
			}
			
		} catch (Exception e) {
			throw new CommandException("PayCommandMain.java <리스트>" + e.toString());
		}
		
		return next;
	}
	

}
