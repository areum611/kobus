package service;


public class MemberService {

private static MemberService service;
	
	public static MemberService getInstance() {
		if(service == null) service = new MemberService();
		return service;
	}
	
	private MemberService() {
		
	}
	
	MemberRepository repo = new MemberRepository();
	
}
