package apt.dao;


import java.io.InputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.json.simple.parser.JSONParser;

import apt.classes.PublicManagementFee;
import apt.mapper.Management;

public class ManagementFeeDao {
	public static ManagementFeeDao mfdao = new ManagementFeeDao();
	
	
	public static ManagementFeeDao getInstance(){
		return mfdao;
	}
	
	public static SqlSessionFactory getsqlsessionFactory(){
		String resource = "mybatis-config.xml";
		InputStream input=null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return new SqlSessionFactoryBuilder().build(input);
		
	}
	
	public Object selectManagementFee(){
		SqlSession sqlsession = getsqlsessionFactory().openSession();
		
		List list = sqlsession.getMapper(Management.class).selectManagementFee();
		sqlsession.close();
		
        net.sf.json.JSONArray jArray = new net.sf.json.JSONArray();        /* row별로 데이터를 담을 배열 */
        
        String str= jArray.fromObject(list).toString();
        JSONParser parser = new JSONParser();
		try {
			Object re= parser.parse(str);
			
			System.out.println(re);
			return re;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
       return null;
	}
	public Object selectPublicmanage(){
		SqlSession sqlsession = getsqlsessionFactory().openSession();
		
		List list = sqlsession.getMapper(Management.class).selectPublicmanage();
		System.out.println(list.toString());
		sqlsession.close();
		
		net.sf.json.JSONArray jArray = new net.sf.json.JSONArray();        /* row별로 데이터를 담을 배열 */
		
		String str= jArray.fromObject(list).toString();
		JSONParser parser = new JSONParser();
		try {
			Object re= parser.parse(str);
			
			System.out.println(re);
			return re;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	public List<PublicManagementFee> selectYearPublicmanage(){
		SqlSession sqlsession = getsqlsessionFactory().openSession();
		
		 Calendar calendar = new GregorianCalendar(Locale.KOREA);
		 int   year = calendar.get(Calendar.YEAR);
		 
		List list = sqlsession.getMapper(Management.class).selectMonthPublicmanage(year);
		sqlsession.close();
		
		
		
		return list;
	}
	
}
