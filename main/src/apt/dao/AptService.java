package apt.dao;

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
	
	
	
	
	
	
	
	// 동주

	// 정화



	// 수연

	// 경태

	// 기대
	public Object selectmanagementfee(){
		return mfd.selectManagementFee();
	}

	// 경운
}
