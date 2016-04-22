package apt.dao;

public class VoteDao {
	public static VoteDao dao = new VoteDao();

	public static VoteDao getInstance(){
		return dao;
	}
}
