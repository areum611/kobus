package service;

import java.util.List;

import model.QnaModel;
import service.QnaService;
import session.QnaRepository;

public class QnaService {

	private static QnaService service;

	public static QnaService getInstance() {
		if(service == null) service = new QnaService();
		return service;
	}

	private QnaService() {
	}
	
	QnaRepository repo = new QnaRepository();
	
	public List<QnaModel> qnaList(){
		return (List<QnaModel>)repo.qnaList();
	}
	
	public Integer qnaInsert(QnaModel qm) {
		return repo.qnaInsert(qm);
	}
	
}
