package service;

import java.text.DecimalFormat;
import java.util.List;

import model.QnaModel;
import service.QnaService;
import session.QnaRepository;

public class QnaService {

	private static QnaService service = null;

	public static QnaService getInstance() {
		if(service == null) service = new QnaService();
		return service;
	}

	private QnaService() {
	}
	
	QnaRepository repo = new QnaRepository();
	
	public List<QnaModel> qnaList(String m_id){
		return (List<QnaModel>)repo.qnaList(m_id);
	}
	
	public int qnaInsert(QnaModel qm) {
		return repo.qnaInsert(qm);
	}
	
	public int groupId() {
		return repo.getGroupId();
	}
}
