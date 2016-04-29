package apt.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import apt.classes.Candidate;
import apt.classes.Complaint;
import apt.classes.ListModel;
import apt.classes.LoginCheck;


import apt.classes.ManagementFee;
import apt.classes.Member;
import apt.classes.PublicManagementFee;


public class AptService {
   
   public static PublicManagementDao mfd;
   public static MemberDao memberdao; 
   public static VoteDao votedao;
   public static ManagementFeeDao mngDao;
   public static AptService service = new AptService();
   public final static int complaintSzie =5;
   
   
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
   public void insertMemberService(Member member){
	      memberdao.insertMember(member);
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
   
   public int inserComplaint(Complaint complain){
/*	   HttpSession session = request.getSession();
	   System.out.println( session.getAttribute("id"));*/
	   return memberdao.insertComplaint(complain);
	   
   }
   public apt.classes.ListModel listComplaint(HttpServletRequest requset,String pageNum){
	   
	   int requestPage = Integer.parseInt(pageNum);
	   HttpSession session = requset.getSession();
	   String id = (String)session.getAttribute("id");
	   int totalCount = memberdao.countComplaint(id);
		int totalPageCount = totalCount/complaintSzie;
		if(totalCount%complaintSzie>0){
			totalCount++;
		}
		int startPage = requestPage -(requestPage-1) %5;
		int endPage = startPage+4;
		
		if(endPage>totalPageCount){
			endPage = totalPageCount;
		}
		
		List<Complaint> list=memberdao.listComplaint((requestPage-1)*complaintSzie,id);
		  
	   return new apt.classes.ListModel(list, requestPage, totalPageCount, startPage, endPage);
   }
 
   public List<PublicManagementFee> selectYearPublicmanage(){
      return mfd.selectYearPublicmanage();
   }
   public Complaint selectcomplaint(String cp_complaintNo){
	   
	   return memberdao.selectComplaint(cp_complaintNo);
	   
   }
   public ListModel ListComplaintManage(HttpServletRequest requset,String pageNum){
	   int requestPage = Integer.parseInt(pageNum);
	   HttpSession session = requset.getSession();
	   int totalCount = memberdao.countComplaintManage();
		int totalPageCount = totalCount/complaintSzie;
		if(totalCount%complaintSzie>0){
			totalCount++;
		}
		int startPage = requestPage -(requestPage-1) %5;
		int endPage = startPage+4;
		
		if(endPage>totalPageCount){
			endPage = totalPageCount;
		}
		
		List<Complaint> list=memberdao.listComplaintManage((requestPage-1)*complaintSzie);
		  
	   return new apt.classes.ListModel(list, requestPage, totalPageCount, startPage, endPage);
   }
   
   public List<Complaint> mypageComplaint(HttpServletRequest requset){
	   HttpSession session = requset.getSession();
	   String id = (String)session.getAttribute("id");
	   System.out.println(id);
	   return memberdao.listmypageComplaint(id);
   }
 public apt.classes.ListModel ManageComplaint(HttpServletRequest requset,String pageNum){
	   
	   int requestPage = Integer.parseInt(pageNum);
	   HttpSession session = requset.getSession();
	   int totalCount = memberdao.countManageComplaint();
		int totalPageCount = totalCount/complaintSzie;
		if(totalCount%complaintSzie>0){
			totalCount++;
		}
		int startPage = requestPage -(requestPage-1) %5;
		int endPage = startPage+4;
		
		if(endPage>totalPageCount){
			endPage = totalPageCount;
		}
		
		List<Complaint> list=memberdao.listComplaintManage((requestPage-1)*complaintSzie);
		  
	   return new apt.classes.ListModel(list, requestPage, totalPageCount, startPage, endPage);
   }
 public void updateComplaint(Complaint complain){
	 memberdao.updateComplaint(complain);
 }
}   