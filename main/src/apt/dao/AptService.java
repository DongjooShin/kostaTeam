package apt.dao;

import java.util.List;

import apt.classes.Candidate;
import apt.classes.LoginCheck;
import apt.classes.Member;
import apt.classes.PublicManagementFee;

public class AptService {
   
   public static ManagementFeeDao mfd;
   public static MemberDao memberdao; 
   public static VoteDao votedao;
   public static AptService service = new AptService();
   
   
   
   public static AptService getInstance(){
      votedao = VoteDao.getInstance();
      memberdao=MemberDao.getInstance();
      mfd=ManagementFeeDao.getInstance();
      return service;
   }
   
   
   
   
   
   
   // 동주
   public int checkMemberIdService(String id){
	   return memberdao.checkMemberId(id);
   }
   public int checkLoginAndPassSerice(LoginCheck loginCheck){
	   return memberdao.checkLoginAndPass(loginCheck);
   }
   
   // 정화

   // 수연

   // 경태


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
	public void levelDownGroupPresiService(String cd_candidateNo){
		votedao.levelDownGroupPresi(cd_candidateNo);
	}

   // 기대
   public Object selectmanagementfee(){
      return mfd.selectManagementFee();
   }
   public Object selectPublicmanage(){
      return mfd.selectPublicmanage();
   }
   public List<PublicManagementFee> selectYearPublicmanage(){
      return mfd.selectYearPublicmanage();
   }

   // 경운
   public void insertMemberService(Member member){
       memberdao.insertMember(member);
      
   }
   public void aaaa(){
      System.out.println("test");
   }
}   