package service;

import java.util.*;

import model.PayModel;
import session.*;

public class PayService {
	
	private static PayService service = null;
	
	public static PayService getInstance() {
		if(service == null) service = new PayService();
		return service;
	}
	
	private PayService() {}
	
	PayRepository repo = new PayRepository();
	
	// 예매내역
	public List <PayModel> payList(String m_id){
		return (List<PayModel>)repo.payList(m_id);
	}

}
