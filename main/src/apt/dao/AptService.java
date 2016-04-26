package apt.dao;

import java.io.File;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;











import apt.classes.ImageUtil;
import apt.classes.ListModel;
import apt.classes.ListModel2;
import apt.classes.Member;
import apt.classes.Message;
import apt.classes.Property;
import apt.classes.Search;
import apt.classes.Search2;

public class AptService {
//----------------------Singleton area--------------------------
	public static MemberDao memberdao; 
	public static VoteDao votedao;
	public static M_PropertDao propertdao;
	private static final int PAGE_SIZE = 2; //페이징처리부분
	
	public static AptService service = new AptService();
//	------------------------------------------------------------
	
//------------------getInstance------------------------------	
	public static AptService getInstance() {
		votedao = VoteDao.getInstance();
		memberdao = MemberDao.getInstance();
		propertdao = M_PropertDao.getInstance();
		return service;
	}	
//---------------------------------------------------------------	
	
	
	// 동주

	// 정화



	// 수연

	// 경태

	// 기대

	// 경운
	
	//삽입파트 
	
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
	//	property.setM_memberNo(multi.getParameter("m_memberNo"));
		
		System.out.println(multi.getParameter("pr_propertyNo"));
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
	//	property.setM_memberNo(Integer.parseInt(multi.getParameter("m_memberNo")));
		
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
	
	public ListModel listAPTSale(int requestPage, HttpServletRequest request ){
		
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
		ListModel listModel = new ListModel(list, requestPage, totalPageCount, startPage, endPage);
		
		return listModel;
		
	}
	
	/*
public ListModel2 listAPTSale2(int requestPage, HttpServletRequest request ){
		
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
		
		List<Message> list = propertdao.listSalelist2((requestPage-1)*PAGE_SIZE,search);
		ListModel2 listModel2 = new ListModel2(list, requestPage, totalPageCount, startPage, endPage);
		
		return listModel2;
		
	}*/
	

public ListModel2 listAPTSale2(int requestPage, HttpServletRequest request){
		
		Search2 search = new Search2();
		
		HttpSession session = request.getSession();
		
		if(request.getParameter("temp") != null){
			session.removeAttribute("search");
		}
		
		if(request.getParameter("area") !=null){  //m_memberNo바꿔보기 하자
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
		
			search.setM_memberNo("abc123"); //이거나중에 삭제하고  세션값 넣어라
			
			session.setAttribute("search", search);
			
		}else if((Search2)session.getAttribute("search") != null){
			search =(Search2)session.getAttribute("search");
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
	
		List<Message> list = propertdao.listSalelist2((requestPage-1)*PAGE_SIZE,search);
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
	
	
}
