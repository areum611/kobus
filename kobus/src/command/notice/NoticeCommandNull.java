package command.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;

public class NoticeCommandNull implements Command{

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {

		return null;
	}

}
