package apt.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import apt.classes.Candidate;
import apt.classes.Member;
import apt.mapper.VoterMapper;

public class VoteDao {
	public static VoteDao dao = new VoteDao();

	public static VoteDao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";

		InputStream input = null;

		try {

			input = Resources.getResourceAsStream(resource);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}

	public Member selectOneMember(String id){
		Member m = new Member();
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			m = sqlSession.getMapper(VoterMapper.class).selectOneMember(id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return m;
	}

	public Member selectGroupPresi() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Member m = null;
		try {
			m = sqlSession.getMapper(VoterMapper.class).selectGroupPresi();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return m;
	}
	 public List<Member> selectBuildingPresi() {
		 SqlSession sqlSession = getSqlSessionFactory().openSession();
		 List<Member> list = null;
		 
		 try {
			list = sqlSession.getMapper(VoterMapper.class).selectBuildingPresi();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		 
		return list; 
	 }

	public List<Candidate> selectAllEachCandi(String c){
		List<Candidate> list=null;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			list = sqlSession.getMapper(VoterMapper.class).selectAllEachCandi(c);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	
	public void levelDownGroupPresi(String cd_candidate){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re=0;
		try { 
			re = sqlSession.getMapper(VoterMapper.class).levelDownGroupPresi(cd_candidate); 
			if(re>0){
				   sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
}
