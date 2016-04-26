package apt.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import apt.classes.Candidate;
import apt.classes.LoginCheck;

import java.util.List;

import apt.classes.Candidate;
import apt.classes.ManagementFee;
import apt.classes.Member;
import apt.classes.PublicManagementFee;


public class AptService {
   
   public static PublicManagementDao mfd;
   public static MemberDao memberdao; 
   public static VoteDao votedao;
   public static ManagementFeeDao mngDao;
   public static AptService service = new AptService();
   
   
   public static AptService getInstance(){
      votedao = VoteDao.getInstance();
      memberdao = MemberDao.getInstance();
      mfd=PublicManagementDao.getInstance();
      mngDao = ManagementFeeDao.getInstance();
      return service;
      
   }
   
   
   // 동주
   
   public int checkMemberIdService(String m_memberNo){
      
      return memberdao.checkMemberId(m_memberNo);
   }
   
   public int checkLoginAndPassSerice(LoginCheck loginCheck){
      return memberdao.checkLoginAndPass(loginCheck);
   }
   
  
	public Member selectOneMemberService(String id){
		return votedao.selectOneMember(id);
	}
	public Member selectGroupPresiService(){
		return votedao.selectGroupPresi();
	}
	public List<Member> selectBuildingPresiService(){
		return votedao.selectBuildingPresi();
	}
	public List<Candidate> selectAllEachCandiService(String c){
		return votedao.selectAllEachCandi(c);
	}
	public void levelDownGroupPresiService(String candi){
		votedao.levelDownGroupPresi(candi);
	}
	public void levelDownGroupPresiService(int cd_candidateNo){
		  
      votedao.levelDownGroupPresi(Integer.toString(cd_candidateNo));
    }
	public Integer searchSymbolService(int s){
		return votedao.searchSymbol(s);
	}
	public int maxCandiNoService(){
		return votedao.maxCandiNo();
	}

   
   public Object selectPublicmanageServer(){
	   return mfd.selectPublicmanage();
   }
   
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
   public Object selectmanagementfee(){
      return mfd.selectManagementFee();
   }
   
   
 
   public List<PublicManagementFee> selectYearPublicmanage(){
      return mfd.selectYearPublicmanage();
   }

   public void aaaa(){
      System.out.println("test");
   }
}   