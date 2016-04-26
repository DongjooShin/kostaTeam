package apt.dao;

import java.util.HashMap;
import java.util.List;

import apt.classes.ManagementFee;
import apt.classes.Member;
import apt.classes.PublicManagementFee;

public class AptService {
//----------------------Singleton area--------------------------
	public static MemberDao memberdao; 
	public static VoteDao votedao;
	public static ManagementFeeDao mngDao;
	
	public static AptService service = new AptService();
//	------------------------------------------------------------
	
//------------------getInstance------------------------------	
	public static AptService getInstance() {
		votedao = VoteDao.getInstance();
		memberdao = MemberDao.getInstance();
		mngDao = ManagementFeeDao.getInstance();
		return service;
	}	
//---------------------------------------------------------------	
	
	
	// 동주

	// 정화
	


	// 수연

	// 경태
	public List<Member> selectMemberService(int buildingNo, int roomNo){
		System.out.println(buildingNo+"1!"+roomNo);
		return mngDao.selectMember(buildingNo, roomNo);
	}
	
	public int insertManagementFeeService(HashMap map1, HashMap map2){
		return mngDao.insertManagementFee(map1,map2);
	}
	
	public int insertPublicMntFeeService(HashMap map1, HashMap map2){
		return mngDao.insertPublicMntFee(map1,map2);
	}
	
	public ManagementFee selectMntFeeService(String date){
		System.out.println(date);
		return mngDao.selectMntFee(date);
	}
	
	public PublicManagementFee selectPublicMntFeeService(String date){
		return mngDao.selectPublicMntFee(date);
	}
	// 기대

	// 경운
}
