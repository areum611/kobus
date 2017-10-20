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

		return (List<ScheduleModel>)repo.reserList2(dep_placenm);
	}
	public List<ScheduleModel> ReserList3(String dep_placenm, String arr_placenm){

		return repo.reserList3(dep_placenm,arr_placenm);
	}
	public List<ScheduleModel> ReserList4(int s_id){
	
		return (List<ScheduleModel>)repo.reserList4(s_id);
	}
}
