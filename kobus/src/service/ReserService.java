package service;

import java.util.List;

import model.ScheduleModel;
import session.ReserRepository;

public class ReserService {
private static ReserService service;
	
	public static ReserService getInstance() {
		if(service == null) service = new ReserService();
		return service;
	}
	
	private ReserService() {
		
	}
	
	ReserRepository repo = new ReserRepository();
	
	public List<ScheduleModel> ReserList(){
		return (List<ScheduleModel>)repo.reserList();
	}
	
}
