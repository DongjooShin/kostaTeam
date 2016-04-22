package apt.mapper;



import apt.classes.Member;


public interface M_signupMapper {

	public int insertMember(Member member);

	public Member selectOneMember(String id);
	
	
}
