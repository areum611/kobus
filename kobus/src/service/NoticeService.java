package service;

import java.util.List;

import model.NoticeModel;
import session.NoticeRepository;

public class NoticeService {
private static NoticeService service;
	
	public static NoticeService getInstance() {
		if(service == null) service = new NoticeService();
		return service;
	}
	
	private NoticeService() {
		
	}
	
	NoticeRepository repo = new NoticeRepository();
	
	public Integer insertNotice(NoticeModel NM) {
		return repo.insertNotice(NM);
	}
	public List<NoticeModel> noticeList(){
		return repo.noticeList();
	}

	public NoticeModel noticeSelectView(int nId) {
		return repo.noticeSelectView(nId);
		
	}
	
}
