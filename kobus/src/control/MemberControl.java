package control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import command.CommandNull;
import command.member.JoinCommandMem;
import command.member.LoginCommandIdSearch;
import command.member.LoginCommandOk;

public class MemberControl extends HttpServlet {
	private HashMap commandMap;
	private String jspDir = "/view/login/";
	private String error = "error.jsp";
	
	public MemberControl() {
		super();
		initCommand();
	} 
	
	private void initCommand() {
		commandMap = new HashMap();
		
		commandMap.put("login-page", new CommandNull("login.jsp"));
		commandMap.put("join-complete", new JoinCommandMem("joinComplete.jsp"));
		commandMap.put("login-ok", new LoginCommandOk("loginOk.jsp"));
		commandMap.put("logout-page", new CommandNull("logout.jsp"));
		commandMap.put("id-search", new CommandNull("idsearch.jsp"));
		commandMap.put("id-search", new LoginCommandIdSearch("idsearch.jsp"));
		
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
