package apt.dao;


import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import apt.classes.Graph;
import apt.classes.PublicManagementFee;
import apt.mapper.Management;

public class PublicManagementDao {
	public static PublicManagementDao mfdao = new PublicManagementDao();
	
	
	public static PublicManagementDao getInstance(){
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
			
			return re;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
       return null;
	}
	public Object selectPublicmanage(){
		SqlSession sqlsession = getsqlsessionFactory().openSession();
		
		 Calendar calendar = new GregorianCalendar(Locale.KOREA);
		int year= calendar.get(Calendar.YEAR);
		int a =(year-1)*100;
		
		
		List<PublicManagementFee> list = sqlsession.getMapper(Management.class).selectPublicmanage(a);
		System.out.println(list.toString());
		sqlsession.close();
		
		List list2 = new ArrayList();
		JSONParser parser = new JSONParser();

		net.sf.json.JSONArray jArray = new net.sf.json.JSONArray();        /* row별로 데이터를 담을 배열 */
		for(int i=0;i<list.size();i++){
			Graph g = new Graph();
			System.out.println(list.get(i).getPm_publicFeeNo());
			g.setD(list.get(i).getPm_publicFeeNo());
			g.set관리비(list.get(i).getPm_clean()+list.get(i).getPm_general()+list.get(i).getPm_maintain()+
					list.get(i).getPm_liftMaintain()+list.get(i).getPm_security()+list.get(i).getPm_foodWaste()+
					list.get(i).getPm_fireInsurance()+list.get(i).getPm_commission()+list.get(i).getPm_meeting()+
					list.get(i).getPm_publicElectric()+list.get(i).getPm_liftElectric()+list.get(i).getPm_TVFee()+
					list.get(i).getPm_disinfection());
			list2.add(g);
			
			
		}
		
		
		String str= jArray.fromObject(list2).toString();
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
		 String day= "";
		 day += calendar.get(Calendar.YEAR);
		 int   month = calendar.get(Calendar.MONTH);
		 if(month<10){
			 day +="0"+month;
		 }else{
			 day += month;
		 }
		 int year = Integer.parseInt(day);
		List list = sqlsession.getMapper(Management.class).selectMonthPublicmanage(year);
		System.out.println(list.size());
		sqlsession.close();
		
		
		
		return list;
		
	}
	
}
