package command.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import command.CommandException;
import model.NoticeModel;
import service.NoticeService;

public class NoticeCommandView implements Command {
	public String next;

	public NoticeCommandView(String _next) {
		next = _next;
	}

	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {

		int nId = Integer.parseInt(request.getParameter("nId"));
		NoticeModel noticeView = (NoticeModel) NoticeService.getInstance().noticeSelectView(nId);

		request.setAttribute("noticeView", noticeView);

		return next;
	}

}
