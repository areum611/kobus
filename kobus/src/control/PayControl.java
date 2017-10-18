package control;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import command.*;
import command.pay.*;

public class PayControl extends HttpServlet {
	private HashMap commandMap;
	private String jspDir = "/view/pay/";
	private String error = "error.jsp";

	public PayControl() {
		//super();
		initCommand();
	}

	public void init() {
		
	}
	private void initCommand() {
		commandMap = new HashMap();

		commandMap.put("pay-main", new CommandNull("payLoginCh.jsp"));
		commandMap.put("pay-login", new CommandNull("payLogin.jsp"));
		commandMap.put("login-ok",new PayCommandMemCh("payMemCh.jsp"));
		commandMap.put("pay-confirm", new PayCommandMain("ReserListView.jsp"));

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String nextPage = "";
		String cmdKey = request.getParameter("cmd");
		if( cmdKey == null ) {
			cmdKey = "main-page";
		}
		
		Command cmd = null;
		
		try {
			if (commandMap.containsKey(cmdKey)) {
				cmd = (Command) commandMap.get(cmdKey);
			} else {
				throw new CommandException("지정할 명령어가 존재하지 않음");
			}
			
			
			nextPage = cmd.execute(request, response);

		} catch (CommandException e) {
			request.setAttribute("javax.servlet.jsp.jspException", e);
			nextPage = error;
			System.out.println("오류 : " + e.getMessage());
		}
		
		RequestDispatcher reqDp = getServletContext().getRequestDispatcher(jspDir + nextPage);
		reqDp.forward(request, response);

	}

}
