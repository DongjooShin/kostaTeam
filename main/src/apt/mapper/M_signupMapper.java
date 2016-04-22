package apt.mapper;

import org.apache.ibatis.session.RowBounds;

import apt.dao.M_signup;

public interface M_signupMapper {

	public int insertBoard(M_signup m_signup);
	
	
}
