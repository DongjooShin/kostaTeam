package apt.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import apt.classes.Message;
import apt.classes.Property;
import apt.classes.Search;
import apt.classes.Search2;
import apt.classes.LoginCheck;
import apt.classes.Member;
import apt.classes.Survey;
import apt.classes.SurveyDB;



public interface M_signupMapper {

	public int insertAPTsale(Property property);
	public int countSale(Search search);
	public int countSale2(Search2 search);
	public List<Property> listSale(RowBounds rowBounds, Search search); //매물리스트
	public List<Message> listSale2(RowBounds rowBounds, Search2 search);//받은메세지
	public List<Message> listSale3(RowBounds rowBounds, Search2 search);//보낸메세지
	public int insertMember(Member member);
	public Integer checkMemberId(String m_memberNo);
	public Integer checkMemberPass(LoginCheck loginCheck);
	public Property selectAPT(int pr_propertyNo);
	public Integer selectPr_id();
	public Property selectM_id(String m_id);
	public int insertMsg2(Message message);
	public Integer countBoard();
	public Message selectMsg(int m_no);
	public void updateState(Message message);
	public void delectsender(int mg_messageNo);
	

	public int insertSurvey(Survey survey);	 //서베이에 넣기
	public int insertSurveyDB(SurveyDB surveyDB); //서베이DB에넣기

	public Integer updategroup(); //현재 그룹번호의최고번호
	public Integer updateSurveyGru(); //현재 서베이DB의 고유번호의 최고번호 
	
	public List<Survey> surveyDeliver(Survey survey);

	public int countsurvey(Survey survey);


	public Integer seyveyapt(Integer sysdate2);
	public SurveyDB surveyDB1(SurveyDB surveyDB);
	public Member selectAPTNo(String id);


	
	
	

	
}
