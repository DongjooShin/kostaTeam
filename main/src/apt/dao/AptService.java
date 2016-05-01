package apt.dao;

import java.io.File;
import java.nio.channels.SeekableByteChannel;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.java.swing.plaf.windows.resources.windows;

import apt.classes.ImageUtil;
import apt.classes.ListModel;
import apt.classes.ListModel2;

import java.util.HashMap;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import apt.classes.Candidate;
import apt.classes.ListModel1;
import apt.classes.ListModel3;
import apt.classes.Complaint;
import apt.classes.ListModel;
import apt.classes.LoginCheck;


import apt.classes.ManagementFee;
import apt.classes.Member;
import apt.classes.Message;
import apt.classes.Property;
import apt.classes.Search;
import apt.classes.Search2;
import apt.classes.PublicManagementFee;
import apt.classes.Survey;
import apt.classes.SurveyDB;


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
      propertdao = M_PropertDao.getInstance();
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
	public static M_PropertDao propertdao;
	private static final int PAGE_SIZE = 2; //페이징처리부분
	
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

	// 정화



	// 수연

	// 경태

	// 기대

	// 경운
	
 //삽입파트 

	//설문지DB의 그룹번호를 출력할꾸얌 
 
	public SurveyDB surveygroup(HttpServletRequest request, int Aptno1){
		HttpSession session = request.getSession();
		SurveyDB surveyDB = new SurveyDB();
		
		
//모든 dao의 파라미터값은 세션ID(아니면그룹번호)에서 select해서 가져오는 현재날짜 >=시작 and 현재 <=끝날짜 일경우 그룹번호랑 apt번호가져온다.
		
		
		int sur_group = Aptno1; //아이디에서 세션값을 리턴해라 ===> 세션 그룹번호값
		int sysdate2 = 0; //현재날짜 값
		
		//자바에서 가져온 현재날짜  ==>시작일일때 메인화면에 띄우기위해서
		Calendar calendar = new GregorianCalendar(Locale.KOREA);
		String sysdate ="";
		int year1 = calendar.get(calendar.YEAR);
		//System.out.println(year1+"년");
		int month1 = calendar.get(calendar.MONTH);
		int day1 = calendar.get(calendar.DAY_OF_MONTH);
		
		String month2 = "";
		String day2 = "";
	
		if(month1<10){
			month2 = Integer.toString(0)+Integer.toString(month1);
		}else{
			month2 = Integer.toString(month1);
		}
		if(day1<10){
			day2 =Integer.toString(0)+Integer.toString(day1);
		}else{
			day2 = Integer.toString(day1);
		}
		
		sysdate = Integer.toString(year1)+month2+day2;
		sysdate2 = Integer.parseInt(sysdate); 
		
		surveyDB.setSu_date(sysdate2);		
		
		System.out.println(surveyDB.getSu_date()+"겟데이트"); 
		
		surveyDB.setSu_date(20160330);
		surveyDB.setSu_group(sur_group); //세션그룹번호값
		
		
	//sur_group = propertdao.surveygroup1(sur_group); //세션 그룹번호가 들어가야대
		
		//sur_group = propertdao.seyveyapt(sur_group);
		
		
		surveyDB = propertdao.surveyDB1(surveyDB);
		System.out.println(sur_group+"겟데이트2"); 
		
	return surveyDB; //맞을경우 그룹번호리턴 아닐경우 -1리턴하도록하자.
	
}
	
	public ListModel3 surveyDeliver(HttpServletRequest request , int abc2){
	/*	
		HttpSession session = request.getSession();
		SurveyDB surveyDB = new SurveyDB();
		
		int sur_group = 0;
		
		surveyDB.setSu_group(sur_group);
		sur_group = propertdao.surveygroup1(sur_group);
		*/
		
		
		
		Survey survey = new Survey();
		
		//*******************그룹번호를 ref로사용할경우 where절 아파트그룹번호 = {파라미터아파트번호} AND 설문지번호 ={파라미터설문지번호}
		//그룹번호가 있을시 서베이객체에 setAPTNo=그룹번호 넣어라 
		//survey.setApt_APTGNo(아파트그룹번호);
		//survey.setsu_group(abc2);
		//int totalCount = propertdao.countsurvey(survey);
		survey.setSu_group(abc2);
		
		List<Survey> list = propertdao.surveyDeliver(survey);
		ListModel3 listModel3 = new ListModel3(list);
				
		return listModel3;
		
		
	}

	
	
   
 	//설문지 질문 삽입하기
 	
 	public int insertSurvey(HttpServletRequest request, int APTNO1) throws Exception {
 		Survey survey = new Survey();
 		SurveyDB surveyDB = new SurveyDB();
 		int maxcount =0; //설문지 개수 뀨뀨
 		String maxcount1 = "";
 		
 		maxcount = (int) propertdao.updategroup();
 		
 		System.out.println(maxcount);
 		survey.setSu_group(maxcount+1);
 		
 		
 		
 	      Calendar calendar = new GregorianCalendar(Locale.KOREA);
 	      int year= calendar.get(Calendar.YEAR);
 	      int month = calendar.get(calendar.MONTH+1);
 	      int day3  = calendar.get(calendar.DAY_OF_MONTH);
 	      
 	       
 	      //날짜형식 20160131 총 8숫자로 만들기위해서하는 부분 시작날짜
 	     String st_date=""; //st_date = 월+일 ;
 	     int st_date1=0;
  		
 	      String bb= request.getParameter("st1");
 	      String bb2 = request.getParameter("st2");
 	      if(bb !=null || bb2 !=null){
 	    	 int b =0; 
 	    	 int b2 =0;
 	    	b = Integer.parseInt(bb);
 	    	b2 = Integer.parseInt(bb2);
 	    	if(b<10&&b2<10){
 	    		st_date = ""+year+0+b+0+b2;
 	    		st_date1=Integer.parseInt(st_date);
 	    		survey.setSu_startdate(st_date1);
 	    	
 	    	}
 	    	else if(b>=10 && b2>=10){
 	    		st_date = ""+year+b+b2;
 	    		st_date1=Integer.parseInt(st_date);
 	    		survey.setSu_startdate(st_date1);
 	    		
 	    	}
 	    	else if(b<10&&b2>10){
 	    		st_date = ""+year+0+b+b2;
 	    		st_date1=Integer.parseInt(st_date);
 	    		survey.setSu_startdate(st_date1);
 	    		
 	    	}
 	    	else if(b>10&&b2<10){
 	    		st_date = ""+year+b+0+b2;
 	    		st_date1=Integer.parseInt(st_date);
 	    		survey.setSu_startdate(st_date1);
 	    
 	    	}
 	    	
 	    	
 	      }
 	      
 	     //날짜형식 20160131 총 8숫자로 만들기위해서하는 부분 끝날짜
  	     String ed_date=""; //st_date = 월+일 ;
  	     int ed_date1=0;
   		
  	      String ed_bb= request.getParameter("end1");
  	      String ed_bb2 = request.getParameter("end2");
  	      if(bb !=null || bb2 !=null){
  	    	 int b =0; 
  	    	 int b2 =0;
  	    	b = Integer.parseInt(ed_bb);
  	    	b2 = Integer.parseInt(ed_bb2);
  	    	if(b<10 && b2<10){
  	    		ed_date = ""+year+0+b+0+b2;
  	    		ed_date1 =Integer.parseInt(ed_date);
  	    		survey.setSu_enddate(ed_date1);
  	    	}
  	    	else if(b>=10 && b2>=10){
  	    		ed_date = ""+year+b+b2;
  	    		ed_date1=Integer.parseInt(ed_date);
	    		survey.setSu_enddate(ed_date1);
	    		
	    	}
  	    	else if(b<10&&b2>10){
  	    		ed_date = ""+year+0+b+b2;
  	    		ed_date1=Integer.parseInt(ed_date);
  	    		survey.setSu_enddate(ed_date1);
  	    	}
  	    	else if(b>10 && b2<10){
  	    		ed_date = ""+year+b+0+b2;
  	    		ed_date1=Integer.parseInt(ed_date);
  	    		survey.setSu_enddate(ed_date1);
  	    	}
  	    	
  	    	
  	      }
  	      

 	/*	String st_end = "";
 		st_end = "9"+request.getParameter("end1")+0+request.getParameter("end2");
 		
 		
 		int st_end1 = 0;
 		if(st_end !=null){
 			st_end1 = Integer.parseInt(st_end);
 			System.out.println(st_end1+"서비스의마지막날짜입니다.");
 			survey.setSu_enddate(st_end1);
 		}
 		*/
  	      
 		int  i = 1; // 설문지 문항수 만큼 DB를 넣으꺼 임의의 변수값
 		
 		int surveygroup =0; //설문지 고유번호 0부터시작
 		if(i ==1){ //surveyDB에 저장할데이터들 
 			
 			surveygroup = (int) propertdao.updateSurveyGru(); //그룹번호 자동증가
 	 		
/* 			String s_date = "";
 			String e_date = "";
 			s_date = request.getParameter("st1")+"월"+request.getParameter("st2")+"일";
 			e_date = request.getParameter("end1")+"월"+request.getParameter("end2")+"일";*/
 			
 			 int b =0; 
 	    	 int b2 =0;
 	    	b = Integer.parseInt(bb);
 	    	b2 = Integer.parseInt(bb2);
 	    
 	    	
 			
 			surveyDB.setSu_startdate(st_date1);
 			System.out.print(surveyDB.getSu_startdate()+"시작날짜인가");
 			surveyDB.setSu_enddate(ed_date1);
 			surveyDB.setApt_APTGNo(APTNO1); //세션으로 가져와야할 아파트 그룹번호
 			
 			surveyDB.setSu_group(surveygroup+1);
 			surveygroup++;
 			
 			propertdao.insertSurveyDB(surveyDB);
 			
 		}
 		
 		String str_i="";
 		String str_i2="";
 		
 		do{
 		if(i>0){
 			str_i = Integer.toString(i);
 			str_i2 = request.getParameter(str_i);
 		}
 		String context = ""; //context값을 넣으려고
 		if(str_i2 !=null){
 		context = str_i2;
 		System.out.println(context+"내용입니다.");
 		survey.setSu_context(context);
 		
 		}
 		
 		i++;
 		survey.setSu_surveyNo(survey.getSu_surveyNo()+1);
 		
 		propertdao.insertSurvey(survey);
 		
 		}while(request.getParameter(Integer.toString(i)) != null);
 		
 		
 		return 1;
 		
 	}
 	
 	//설문지 답변한거 삽입하기
 	
 	/*public int insertSurvey(HttpServletRequest request) throws Exception {
 		Survey survey = new Survey();
 		String value = "";
 		for(int i=1; i<100; i++){
 		if(request.getParameter("check"+i)!=null){
 			value = request.getParameter("check"+i);
 			System.out.println(value);
 			survey.get
 		}else{
 			break;
 		}
 		}
 		
 		
 	}*/
 	
 	//부동산매물 삽입
	public int insertProperty(HttpServletRequest request) throws Exception{
		
		Property property = new Property();
		
		String uplodaPath = request.getRealPath("M_upload1");
		
		System.out.println(uplodaPath);
		int size = 20 * 1024 * 1024;
		MultipartRequest multi =
				new MultipartRequest(request, uplodaPath, size, "utf-8", new DefaultFileRenamePolicy());
		
		property.setPr_APTName(multi.getParameter("pr_APTName"));
		property.setPr_addr(multi.getParameter("pr_addr"));
		property.setPr_tel(multi.getParameter("pr_tel1")+multi.getParameter("pr_tel2")+multi.getParameter("pr_tel3"));
		property.setPr_doorStruct(multi.getParameter("pr_doorStruct"));
		property.setPr_company(multi.getParameter("pr_company"));
		property.setPr_imageName(multi.getParameter("pr_imageName"));
		property.setPr_content(multi.getParameter("pr_content"));
		property.setPr_group(multi.getParameter("pr_group"));
		property.setM_memberNo(multi.getParameter("id"));
		
	//	System.out.println(property.getM_memberNo()+"서비스의 넘번호입니다.");
		property.setPr_propertyNo(Integer.parseInt(multi.getParameter("pr_propertyNo")));
	//	property.setPr_group(Integer.parseInt(multi.getParameter("pr_group")));
		
		property.setPr_price(Integer.parseInt(multi.getParameter("pr_price")));
		property.setPr_deposit(Integer.parseInt(multi.getParameter("pr_deposit")));
		property.setPr_level(Integer.parseInt(multi.getParameter("pr_level")));
		property.setPr_totalLevel(Integer.parseInt(multi.getParameter("pr_totalLevel")));
		property.setPr_roomNum(Integer.parseInt(multi.getParameter("pr_roomNum")));
		property.setPr_bathNum(Integer.parseInt(multi.getParameter("pr_bathNum")));
		property.setPr_roomArea(Integer.parseInt(multi.getParameter("pr_roomArea")));
		property.setPr_scale(Integer.parseInt(multi.getParameter("pr_scale")));

		
		if(multi.getFilesystemName("pr_imageName")!=null){
			
			String pr_imageName = multi.getFilesystemName("pr_imageName");
			
			property.setPr_imageName(pr_imageName);
			
			System.out.println(pr_imageName);
			
			
			String pattern = pr_imageName.substring(pr_imageName.lastIndexOf(".")+1);
			String headName = pr_imageName.substring(0, pr_imageName.lastIndexOf("."));
			
			System.out.println(pattern);
			System.out.println(headName);
			
			
			String imgPath = uplodaPath+"\\"+pr_imageName;
			File src = new File(imgPath);
			
			String thumImagePath = uplodaPath+"\\"+headName+"_small."+pattern;
			File dest = new File(thumImagePath);
			
			if(pattern.equals("jpg")|| pattern.equals("gif")){
				ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			}
			
		}else{
			property.setPr_imageName("");
		}
		
		property.setPr_propertyNo(propertdao.selectPr_id() + 1);
		
		
		return propertdao.insertAPTsale(property);
		
		
	}
	
	//리스트 출력
	
	
	//매물정보 출력
	public ListModel1 listAPTSale(int requestPage, HttpServletRequest request ){
		
		Search search = new Search();
		HttpSession session = request.getSession();
		
		if(request.getParameter("temp") != null){
			session.removeAttribute("search");
		}
		
		if(request.getParameter("area") !=null){
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
			
		}else if((Search)session.getAttribute("search") != null){
			
			search =(Search)session.getAttribute("search");
		}
		
		int totalCount = propertdao.countAPTSale(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if (totalCount%PAGE_SIZE >0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage -1)%5 ;
		
		int endPage = startPage+4;
		
		if(endPage>totalPageCount){
			endPage = totalPageCount;
		}
		
		List<Property> list = propertdao.listSalelist((requestPage-1)*PAGE_SIZE,search);
		ListModel1 listModel1 = new ListModel1(list, requestPage, totalPageCount, startPage, endPage);
		
		return listModel1;
		
	}

	//설문지 배달부분 출력
	
/*	public ListModel3 surveyDeliver(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		
		//그룹번호가 있을시 서베이객체에 setAPTNo=그룹번호 넣어라
		
		Survey survey = new Survey();
		
		survey.setApt_APTGNo(1);
		//int totalCount = propertdao.countsurvey(survey);
	
		
		List<Survey> list = propertdao.surveyDeliver(survey);
		ListModel3 listModel3 = new ListModel3(list);
				
		return listModel3;
		
		
	}*/
	
	
	//받은메세지 출력
public ListModel2 listAPTSale2(int requestPage, HttpServletRequest request,String id){
		
		Search2 search = new Search2();
		
		HttpSession session = request.getSession();
		
		if(id !=null){
			search.setM_memberNo(id);
		}
	
		if(request.getParameter("temp")!=null){
			session.removeAttribute("search");
		}
		
		if(request.getParameter("area") !=null){
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
		}else if((Search2)(session.getAttribute("search")) != null){
			search=(Search2)session.getAttribute("search");
			
		}
		
		
		
		if(request.getParameterValues("delect")!=null){
			String[] delect;
			
			delect = request.getParameterValues("delect");
		
			
			int mg_messageNo =0;
			
			for(int i=0; i <delect.length; i++  ){
			mg_messageNo = Integer.parseInt(delect[i]);
			search.setMg_messageNo(mg_messageNo);
			System.out.println("이것은 list3의 삭제번호"+mg_messageNo);
			propertdao.delectsender(mg_messageNo);
			}
		}
		

		
		int totalCount = propertdao.countAPTSale2(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if (totalCount%PAGE_SIZE >0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage -1)%5 ;
		
		int endPage = startPage+4;
		
		if(endPage>totalPageCount){
			endPage = totalPageCount;
		}
		
		List<Message> list = propertdao.listSalelist2((requestPage-1)*PAGE_SIZE,search);
		ListModel2 listModel2 = new ListModel2(list, requestPage, totalPageCount, startPage, endPage);
		
		
	
		System.out.println(search.getM_memberNo());
		
		return listModel2;
		
		
	}




public ListModel2 listAPTSale3(int requestPage, HttpServletRequest request,String id){
		
		Search2 search = new Search2();
		
		if(id !=null){
			search.setM_memberNo(id);
		}
		
		
		HttpSession session = request.getSession();
		
		if(request.getParameter("temp")!=null){
			session.removeAttribute("search");
		}
		
		if(request.getParameter("area") !=null){
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
		}else if((Search2)(session.getAttribute("search")) != null){
			search=(Search2)session.getAttribute("search");
			
		}
		
		
		
		if(request.getParameterValues("delect")!=null){
			String[] delect;
			
			delect = request.getParameterValues("delect");
		
			
			int mg_messageNo =0;
			
			for(int i=0; i <delect.length; i++  ){
			mg_messageNo = Integer.parseInt(delect[i]);
			search.setMg_messageNo(mg_messageNo);
			System.out.println("이것은 list3의 삭제번호"+mg_messageNo);
			propertdao.delectsender(mg_messageNo);
			}
		}
		

		
		int totalCount = propertdao.countAPTSale2(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if (totalCount%PAGE_SIZE >0){
			totalPageCount++;
		}
		
		int startPage = requestPage - (requestPage -1)%5 ;
		
		int endPage = startPage+4;
		
		if(endPage>totalPageCount){
			endPage = totalPageCount;
		}
		search.setM_memberNo("qwe123");  //이거나중에 삭제하고  세션값 넣어라
	
		List<Message> list = propertdao.listSalelist3((requestPage-1)*PAGE_SIZE,search);
		ListModel2 listModel2 = new ListModel2(list, requestPage, totalPageCount, startPage, endPage);
		
		
	
		System.out.println(search.getM_memberNo());
		
		return listModel2;
		
		
	}



	
	//글번호선택시?? 몰르겟네
	
	public Property selectBoardService(int pr_propertyNo){
		Property property = propertdao.selectAPT(pr_propertyNo);
	
		return propertdao.selectAPT(pr_propertyNo);
	}
	
	
	
	
	
	public Property selectM_id(String m_id){
		Property property = propertdao.selectM_id(m_id);
		
		return propertdao.selectM_id(m_id);
	}
	
	
	public int insertMsg(Message message){
		
		return propertdao.insertMsg2(message);
	
	}
	
	public Message selectMsg(int m_no){
		
		Message message = propertdao.selectMsg(m_no);
		propertdao.updateState(message);
		
		return propertdao.selectMsg(m_no);
		
	}
	
	
	public Member selectAptgroup(String id){
		
		Member member = new Member();
		member.setM_memberNo(id);
		member = propertdao.selectAPTNo(id); 
		
		return member;
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