package apt.dao;

import java.io.InputStream;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;




import apt.mapper.M_signupMapper;

public class M_singupDao {
	
	private static M_singupDao dao = new M_singupDao();
	public  static M_singupDao getInstance(){
		return dao;
		
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
	String resource = "mybatis-config.xml"; 
	
		InputStream input = null;
	
		try {
			
			input = Resources.getResourceAsStream(resource);
			
		} catch (Exception e) {
				e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}
	
	public int insertBoard(M_signup M_signup) {

		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(M_signupMapper.class).insertBoard(M_signup);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}
	
	
	
	
		
	
	

}
