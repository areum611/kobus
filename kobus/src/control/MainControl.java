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
<<<<<<< HEAD
//		commandMap = new HaspMap(); 
//		
//		commandMap.put("main-page", new )
=======
		commandMap = new HaspMap(); 
		
		commandMap.put("main-page", new )
>>>>>>> branch 'master' of https://github.com/areum611/kobus.git
		
	}
}
