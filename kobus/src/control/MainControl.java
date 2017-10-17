package control;

import java.util.HashMap;

import javax.servlet.http.HttpServlet;

public class MainControl extends HttpServlet  {

	private HashMap commandMap;
	private String jspDir = "/view/MainMenu/";
	private String error = "error.jsp";
	
	public MainControl() {
		super();
		initCommand();
	}
	
	private void initCommand() {
		commandMap = new HaspMap(); 
		
		commandMap.put("main-page", new )
		
	}
}
