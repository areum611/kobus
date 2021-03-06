package service;

import model.MemberModel;
import session.MemberRepository;

public class MemberService {

private static MemberService service;
	
	public static MemberService getInstance() {
		if(service == null) service = new MemberService();
		return service;
	}
	
	private MemberService() {
		
	}
	
	MemberRepository repo = new MemberRepository();
	
	public Integer insertMember(MemberModel m) {
		return repo.insertMember(m);
	}
	
	public int selectLogin(MemberModel mm) {
		return repo.selectLogin(mm);
	}
	
	public String selectGubun(String m_id) {
		return repo.selectGubun(m_id);
	}
	
	public String selectId(String m_tel) {
		return repo.selectId(m_tel);
	}
	
	public MemberModel selectPw (String m_id) {
		return repo.selectPw(m_id);
	}
	
}
