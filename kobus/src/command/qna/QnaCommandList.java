package command.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.protocol.soap.MessageCreationException;

import command.Command;
import command.CommandException;

public class QnaCommandList implements Command {
	private String next;

	public QnaCommandList( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		try {
			
		}catch (MessageCreationException ex) {
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}

		return null;
	}

}
