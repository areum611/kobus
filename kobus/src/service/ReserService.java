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
	
	public List<ScheduleModel> ReserList2(String dep_placenm){
		System.out.println(dep_placenm+"서비스");
		return (List<ScheduleModel>)repo.reserList2(dep_placenm);
	}
	public List<ScheduleModel> ReserList3(String dep_placenm, String arr_placenm){
		System.out.println(dep_placenm+"서비스");
		return repo.reserList3(dep_placenm,arr_placenm);
	}
	
}
