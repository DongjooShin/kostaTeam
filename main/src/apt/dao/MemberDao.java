package apt.dao;

public class MemberDao {
	public static MemberDao memberdao = new MemberDao();
	
	public static MemberDao getInstance(){
		return memberdao;
	}
	
}
