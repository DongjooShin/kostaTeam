package apt.dao;

import apt.classes.Member;

public class AptService {
//----------------------Singleton area--------------------------
	public static MemberDao memberdao; 
	public static VoteDao votedao;
	
	public static AptService service = new AptService();
//	------------------------------------------------------------
	
//------------------getInstance------------------------------	
	public static AptService getInstance() {
		votedao = VoteDao.getInstance();
		memberdao = MemberDao.getInstance();
		return service;
	}	
//---------------------------------------------------------------	
	
	
	// 동주

	// 정화



	// 수연

	// 경태

	// 기대

	// 경운
}
