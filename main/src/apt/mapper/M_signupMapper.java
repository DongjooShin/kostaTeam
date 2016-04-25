package apt.mapper;



import apt.classes.LoginCheck;
import apt.classes.Member;


public interface M_signupMapper {

	public int insertMember(Member member);
	public Integer checkMemberId(String m_memberNo);
	public Integer checkMemberPass(LoginCheck loginCheck);


	
	
}
