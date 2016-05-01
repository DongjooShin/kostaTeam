package apt.dao;

import java.io.InputStream;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import apt.classes.Complaint;
import apt.classes.LoginCheck;
import apt.classes.Member;
import apt.mapper.M_signupMapper;
import apt.mapper.MemberMapper;
import apt.mapper.VoterMapper;

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
	
	

	//건의사항 저장
	public int insertComplaint(Complaint complain) {
		// TODO Auto-generated method stub
		
		Integer nextCOMPLAINTNO =nextCOMPLAINTNO();
		if(nextCOMPLAINTNO==null){
			nextCOMPLAINTNO=0;
		}
		int aptno = aptno(complain.getM_memberNo());
		 Calendar calendar = new GregorianCalendar(Locale.KOREA);
		 String day= "";
		int year= calendar.get(Calendar.YEAR);
		int month = calendar.get(calendar.MONTH);
		int day3  = calendar.get(calendar.DAY_OF_MONTH);
		day+=year+"-"+month+"-"+day3;
		
		complain.setCp_date(day);
		complain.setApt_APTGNo(aptno);
		complain.setCp_complaintNo(nextCOMPLAINTNO+1);
		
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		int re = 0;
		re=sqlssession.getMapper(MemberMapper.class).insertComplaint(complain);
		
		if(re >0){
			sqlssession.commit();
		}else{
			sqlssession.rollback();
		}
		sqlssession.close();
		return re;
		
	}
	//건의사항  글번호 구하는 메소드
	public Integer nextCOMPLAINTNO(){
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		Integer re=0;
		re= sqlssession.getMapper(MemberMapper.class).nextCOMPLAINTNO();
		
		sqlssession.close();
		return re;
		
		
		  }
	//건의사항 String aptno 구하는 메소드
	public Integer aptno(String id){
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		Integer aptno = 0;
					aptno=sqlssession.getMapper(MemberMapper.class).aptno(id);
		sqlssession.close();
		return aptno;
	}

	//complaint 목록보기
	public List<Complaint> listComplaint(int startpage,String id) {
		// TODO Auto-generated method stub
		
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		List<Complaint> list=sqlssession.getMapper(MemberMapper.class).listManageComplaint(new RowBounds(startpage, 5));
			sqlssession.close();
		return list;
	}

	public Integer countComplaint(String id) {
		// TODO Auto-generated method stub
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		Integer re =sqlssession.getMapper(MemberMapper.class).countComplaint(id);
		sqlssession.close();
		return re;
	}

	public Complaint selectComplaint(String cp_complaintNo) {
		// TODO Auto-generated method stub
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		Complaint complaint=sqlssession.getMapper(MemberMapper.class).selectComplaint(cp_complaintNo);
			sqlssession.close();
		return complaint;
	}

	public Integer countComplaintManage() {
		SqlSession sqlssession = getSqlSessionFactory().openSession();
				Integer	re =sqlssession.getMapper(MemberMapper.class).countComplaintManage();
		sqlssession.close();
		return re;
	}

	public List<Complaint> listComplaintManage(int startpage) {
		// TODO Auto-generated method stub
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		List<Complaint> list=sqlssession.getMapper(MemberMapper.class).listComplaintManage(new RowBounds(startpage, 5));
			sqlssession.close();
			System.out.println(list.get(0).toString());
		return list;
	}

	public List<Complaint> listmypageComplaint(String id) {
		// TODO Auto-generated method stub
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		List<Complaint> com=sqlssession.getMapper(MemberMapper.class).listmypageComplaint(id);
			sqlssession.close();
		return com;
	}

	public int countManageComplaint() {
		// TODO Auto-generated method stub
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		int re =0;
				if(sqlssession.getMapper(MemberMapper.class).countComplaintManage() !=null){
					re =sqlssession.getMapper(MemberMapper.class).countComplaintManage();
				}
		sqlssession.close();
		return re;
	}

	public void updateComplaint(Complaint complain) {
		// TODO Auto-generated method stub
		System.out.println(complain.getCp_state()+"상태임2222222222222222s");
		SqlSession sqlssession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re=	sqlssession.getMapper(MemberMapper.class).updateComplaint(complain);
			System.out.println("저장됬는지 안됬는지"+re);
			if(re>0){
				sqlssession.commit();
			}else{
				sqlssession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlssession.close();
		}
			
			
	}

		 
}
