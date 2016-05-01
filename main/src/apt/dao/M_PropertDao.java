package apt.dao;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;









import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sun.org.apache.bcel.internal.generic.CPInstruction;

import apt.classes.Member;
import apt.classes.Message;
import apt.classes.Property;
import apt.classes.Search;
import apt.classes.Search2;
import apt.classes.Survey;
import apt.classes.SurveyDB;
import apt.mapper.AptMapper;
import apt.mapper.M_signupMapper;

public class M_PropertDao {
	
	private static M_PropertDao dao = new M_PropertDao();
	
	public static M_PropertDao getInstance(){
		
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		//SQlclient와 같은 원리라생각하면되 A박스에다 B박스 B박스에다가 C박스 넣은것처럼
	String resource = "mybatis-config.xml"; //src==같은폴더에다 막넣으면 패스경로를 안적어도되 디폴트가src로되어있어
	
	//SQLconfig의 데이터를 뽑아서 SqlSessionFactory에 넣을것이다
	InputStream input = null;

	try {
		
		input = Resources.getResourceAsStream(resource);
		
	} catch (Exception e) {
			e.printStackTrace();
	}
	return new SqlSessionFactoryBuilder().build(input);
	 
}

	public int insertAPTsale(Property property) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(M_signupMapper.class).insertAPTsale(property);
			if(re >0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		
		return re;
	}

	public List<Property> listSalelist(int starRow, Search search) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Property> list = null;
		try{
			list = sqlSession.getMapper(M_signupMapper.class).listSale(
					new RowBounds(starRow, 2),search);
			
		}catch (Exception e){
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		
		return list;
	}

	
	
/*	public List<Message> listSalelist2(int starRow, Search search) {
	
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Message> list = null;
		try{
			list = sqlSession.getMapper(M_signupMapper.class).listSale2(
					new RowBounds(starRow, 2),search);
			
		}catch (Exception e){
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		
		return list;
	}*/
	
	
	public List<Message> listSalelist2(int starRow, Search2 search) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Message> list = null;
		try{
			//System.out.println(search.getM_memberNo()+"77777");
			list = sqlSession.getMapper(M_signupMapper.class).listSale2(new RowBounds(starRow, 2),search);
			
		}catch (Exception e){
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		
		return list;
	}
	
	

	public List<Message> listSalelist3(int starRow, Search2 search) {
	
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Message> list = null;
		try{
			System.out.println(search.getM_memberNo()+"이것은 보낸메세지");
			list = sqlSession.getMapper(M_signupMapper.class).listSale3(new RowBounds(starRow, 2),search);
			
		}catch (Exception e){
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		
		return list;
	}
	
	
	
	//매물 개수 찾기
	public int countAPTSale(Search search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int count = sqlSession.getMapper(M_signupMapper.class).countSale(search);
		return count;
	}

	
	//메세지 개수 찾기
	
	public int countAPTSale2(Search2 search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int count = sqlSession.getMapper(M_signupMapper.class).countSale2(search);
		return count;
	}
	
	//설문지 개수세보기
	
	public int countsurvey(Survey survey) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int count = sqlSession.getMapper(M_signupMapper.class).countsurvey(survey);
		return count;
	}

	
	
	public Property selectAPT(int pr_propertyNo) {
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		Property property =null;
		
		try {
			property = sqlsession.getMapper(M_signupMapper.class).selectAPT(pr_propertyNo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlsession.close();
		}
		
		return property;
	}


	public int selectPr_id() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		if(sqlSession.getMapper(M_signupMapper.class).selectPr_id() == null){
			sqlSession.close();
			return 0;
		}else {
			int num = sqlSession.getMapper(M_signupMapper.class).selectPr_id();
			sqlSession.close();
			return  num;
		}
		
	}

	
	public Property selectM_id(String m_id) {
		
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		Property property =null;
		
		try {
			property = sqlsession.getMapper(M_signupMapper.class).selectM_id(m_id);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlsession.close();
		}
		
		return property;
	}

	public int insertMsg2(Message message) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		int re = -1;
		 
		try {
			message.setMg_messageNo(countBoard());
			re = sqlSession.getMapper(M_signupMapper.class).insertMsg2(message);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return re;
	}
	

	public int countBoard() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int msgNum = 0;
		if (sqlSession.getMapper(M_signupMapper.class).countBoard() == null) {

			sqlSession.close();
			return 1;
		}else{
			msgNum = sqlSession.getMapper(M_signupMapper.class).countBoard();
			msgNum++;
			sqlSession.close();
			return msgNum;
			
		}
		
	}
	

	public int seyveyapt(int sysdate2) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int num = 0;
		try {
			num = sqlSession.getMapper(M_signupMapper.class).seyveyapt(sysdate2);
			sqlSession.commit();
		} catch (Exception e) {
		e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return num;
	}
	

	
	public Message selectMsg(int m_no) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Message message = null;
		try {
			message = sqlSession.getMapper(M_signupMapper.class).selectMsg(m_no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		
		return message;
	}

	public void updateState(Message message) {
	
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			sqlSession.getMapper(M_signupMapper.class).updateState(message);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
	}

	public void delectsender(int mg_messageNo) {
		
		SqlSession sqlsession = getSqlSessionFactory().openSession();
	
		
		try {
			sqlsession.getMapper(M_signupMapper.class).delectsender(mg_messageNo);
			sqlsession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlsession.close();
		}
		
		
	}
	
	

	public int updategroup() {
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		if(sqlsession.getMapper(M_signupMapper.class).updategroup() ==null){
			sqlsession.close();
			return 0;
		}else {
			int num = sqlsession.getMapper(M_signupMapper.class).updategroup();
			sqlsession.close();
			return num;
		}
			
		
	}

	//서베이에 데이터넣기
	public int insertSurvey(Survey survey) {
		
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try{
			re = sqlSession.getMapper(M_signupMapper.class).insertSurvey(survey);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		}catch (Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return re;
	}
	
	//서베이 DB에 데이터넣기
	public int insertSurveyDB(SurveyDB surveyDB) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(M_signupMapper.class).insertSurveyDB(surveyDB);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}

		return re;
	}
	

	public List<Survey> surveyDeliver(Survey survey) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Survey> list = null;
		
		try {
			list = sqlSession.getMapper(M_signupMapper.class).surveyDeliver(survey);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		
		return list;
	}

	public int updateSurveyGru() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		if(sqlSession.getMapper(M_signupMapper.class).updateSurveyGru() ==null){
			sqlSession.close();
			return 0;
		}else{
			int num = sqlSession.getMapper(M_signupMapper.class).updateSurveyGru();
			sqlSession.close();
			return num;
		}
	}

	public SurveyDB surveyDB1(SurveyDB surveyDB) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		SurveyDB surveyDB2 = null;
				
				try {
				 surveyDB2 = sqlSession.getMapper(M_signupMapper.class).surveyDB1(surveyDB);
				} catch (Exception e) {
					e.printStackTrace();
				}finally{
					sqlSession.close();
				}
		return surveyDB2;
	}

	public Member selectAPTNo(String id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Member member =null;
		try {
			member = sqlSession.getMapper(M_signupMapper.class).selectAPTNo(id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return member;
	}



	

	


	
}
