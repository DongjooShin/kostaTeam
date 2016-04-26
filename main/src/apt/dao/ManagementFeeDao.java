package apt.dao;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import apt.classes.ManagementFee;
import apt.classes.Member;
import apt.classes.PublicManagementFee;
import apt.mapper.ManagementFeeMapper;

public class ManagementFeeDao {
	public static ManagementFeeDao mngDao = new ManagementFeeDao();
	
	public static ManagementFeeDao getInstance(){
		return mngDao;
	}
	
	public SqlSessionFactory getSQlSessionFactory(){
		String resource="mybatis-config.xml";
		InputStream input =null;
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}
	
	//동호수 입력해서 아이디 검색하는 메서드
	public List<Member> selectMember(int buildingNo, int roomNo){
		System.out.println(buildingNo+"2!"+roomNo);
		List<Member> list = null;
		SqlSession sqlSession = getSQlSessionFactory().openSession();
		try {
			list = sqlSession.getMapper(ManagementFeeMapper.class).selectMember(buildingNo, roomNo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	//관리비 입력하는 메서드
	public int insertManagementFee(HashMap map1, HashMap map2) {
		SqlSession sqlSession = getSQlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(ManagementFeeMapper.class).insertManagementFee(map1,map2);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}

	public int insertPublicMntFee(HashMap map1, HashMap map2) {
		SqlSession sqlSession = getSQlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(ManagementFeeMapper.class).insertPublicMntFee(map1, map2);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return 0;
	}


	public ManagementFee selectMntFee(String date) {
		System.out.println(date+"1");
		ManagementFee mntf = null;
		SqlSession session = getSQlSessionFactory().openSession();
		try {
			System.out.println(date+"2");
			mntf = session.getMapper(ManagementFeeMapper.class).selectMntFee(date);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return mntf;
	}

	public PublicManagementFee selectPublicMntFee(String date) {
		SqlSession sqlSession = getSQlSessionFactory().openSession();
		PublicManagementFee pmntf = null;
		try {
			pmntf = sqlSession.getMapper(ManagementFeeMapper.class).selectPublicMntFee(date);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
			
		return pmntf;
	}
	
}
