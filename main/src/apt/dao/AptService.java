package apt.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import apt.classes.Candidate;
import apt.classes.LoginCheck;

import java.util.List;

import apt.classes.Candidate;
import apt.classes.Member;
import apt.classes.PublicManagementFee;

public class AptService {
	
	public static PublicManagementDao mfd;
	public static MemberDao memberdao; 
	public static VoteDao votedao;
	public static AptService service = new AptService();
	
	
	public static AptService getInstance(){
		votedao = VoteDao.getInstance();
		memberdao = MemberDao.getInstance();
		mfd=PublicManagementDao.getInstance();
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

   
   
   // 동주

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

	// 수연

   
   public Object selectPublicmanageServer(){
	   return mfd.selectPublicmanage();
   }
   // 정화
  public void levelDownGroupPresiService(int cd_candidateNo){
	  
      votedao.levelDownGroupPresi(Integer.toString(cd_candidateNo));
   }
   
   
   // 수연

   // 경태

   // 기대
   public Object selectmanagementfee(){
      return mfd.selectManagementFee();
   }
   
   
 
   public List<PublicManagementFee> selectYearPublicmanage(){
      return mfd.selectYearPublicmanage();
   }

/*   // 경운
   public int insertMemberService(Member member){
      return memberdao.insertMember(member);
      
   }*/
   public void aaaa(){
      System.out.println("test");
   }
}   