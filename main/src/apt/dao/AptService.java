package apt.dao;

import apt.classes.LoginCheck;
import java.util.List;

import apt.classes.Candidate;
import apt.classes.Member;

public class AptService {
	
	public static ManagementFeeDao mfd;
	public static MemberDao memberdao; 
	public static VoteDao votedao;
	public static AptService service = new AptService();
	
	
	public static AptService getInstance(){
		votedao = VoteDao.getInstance();
		memberdao = MemberDao.getInstance();
		mfd=ManagementFeeDao.getInstance();
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

	// 경태

	// 기대
	public void selectmanagementfee(){
		mfd.selectManagementFee();
		
	}

	// 경운
	
	
}	
