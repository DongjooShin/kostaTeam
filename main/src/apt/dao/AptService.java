package apt.dao;

public class AptService {
	
	public static ManagementFeeDao mfd;
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
	public void selectmanagementfee(){
		mfd.selectManagementFee();
		
	}
	
	// 경운
}
