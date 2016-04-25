package apt.dao;

import apt.classes.LoginCheck;
import apt.classes.Member;

public class AptService {
	
	public static ManagementFeeDao mfd;
	public static MemberDao memberdao; 
	public static VoteDao votedao;
	public static AptService service = new AptService();
	
	
	public static AptService getInstance(){
		mfd=ManagementFeeDao.getInstance();
		return service;
		
	}
	
	public static AptService getMemberInstance(){
		memberdao=MemberDao.getInstance();
		return service;
		
	}
	
	
	
	
	
	
	
	// 동주
	public void insertMemberService(Member member){
		System.out.println("test2");
	memberdao.insertMember(member);
		
		System.out.println("test5");
	}
	
	public int checkMemberIdService(String m_memberNo){
		
		return memberdao.checkMemberId(m_memberNo);
	}
	
	public int checkLoginAndPassSerice(LoginCheck loginCheck){
		return memberdao.checkLoginAndPass(loginCheck);
	}
	
	// 정화



	// 수연

	// 경태

	// 기대
	public void selectmanagementfee(){
		mfd.selectManagementFee();
		
	}

	// 경운
	
	
}	
