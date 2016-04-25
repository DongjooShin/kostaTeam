package apt.dao;

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
		memberdao=MemberDao.getInstance();
		mfd=ManagementFeeDao.getInstance();
		return service;
	}
	
	
	
	
	
	
	
	// 동주

	
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
	public List<Candidate> selectAllGPreCandiService(){
		return votedao.selectAllGPreCandi();
	}
	public void levelDownGroupPresiService(int cd_candidateNo){
		votedao.levelDownGroupPresi(cd_candidateNo);
	}
	// 수연

	// 경태

	// 기대
	public void selectmanagementfee(){
		mfd.selectManagementFee();
		
	}

	// 경운
	public int insertMemberService(Member member){
		return memberdao.insertMember(member);
		
	}
	public void aaaa(){
		System.out.println("test");
	}
}	
