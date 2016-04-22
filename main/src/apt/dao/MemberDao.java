package apt.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import apt.classes.Member;
import apt.mapper.M_signupMapper;

public class MemberDao {
	public static MemberDao memberdao = new MemberDao();
	
	public static MemberDao getInstance(){
		return memberdao;
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
	
	public int insertMember(Member member) {

		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(M_signupMapper.class).insertMember(member);
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
