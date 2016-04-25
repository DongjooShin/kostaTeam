package apt.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import apt.classes.LoginCheck;
import apt.classes.Member;
import apt.mapper.M_signupMapper;

public class MemberDao {
	private static MemberDao memberdao = new MemberDao();

	public static MemberDao getInstance() {
		return memberdao;
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

	public void insertMember(Member member) {

		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		try {
			re = sqlSession.getMapper(M_signupMapper.class)
					.insertMember(member);
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
		System.out.println("test3");

	}

	public int checkMemberId(String m_memberNo) {

		SqlSession sqlsession = getSqlSessionFactory().openSession();
		if (sqlsession.getMapper(M_signupMapper.class)
				.checkMemberId(m_memberNo) == 0)// 보드에 값이 하나도 없을 경우
		{
			sqlsession.close();
			return 1;

		} else {
			sqlsession.close();
			return -1;

		}
	}

	public int checkLoginAndPass(LoginCheck loginCheck) {
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		if (checkMemberId(loginCheck.getM_memberNo()) == -1) {
			
			if (sqlsession.getMapper(M_signupMapper.class).checkMemberPass(loginCheck) == 1) {
				sqlsession.close();
				return 3; // 로그인 완료!
			} else {
				sqlsession.close();
				return 2; // 입력한 비밀번호가 틀렸을경우
			}

		} else {

			sqlsession.close();
			return 1; // 입력한 아이디가 없을결우
		}

	}
}
