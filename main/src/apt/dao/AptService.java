package apt.dao;

public class AptService {
//----------------------Singleton area--------------------------

	public static VoteDao dao;
	public static AptService service = new AptService();
//	------------------------------------------------------------
	
//------------------getInstance------------------------------	
	public static AptService getInstance() {
		dao = VoteDao.getInstance();
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
