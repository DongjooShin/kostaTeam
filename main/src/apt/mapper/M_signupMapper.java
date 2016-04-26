package apt.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import apt.classes.Message;
import apt.classes.Property;
import apt.classes.Search;
import apt.classes.Search2;



public interface M_signupMapper {


	public int insertAPTsale(Property property);

	public int countSale(Search search);
	
	public int countSale2(Search2 search);

	public List<Property> listSale(RowBounds rowBounds, Search search);
	
	/*public List<Message> listSale2(RowBounds rowBounds, Search search);*/
	//public List<Message> listSale2(RowBounds rowBounds, Search2 id);
	
	
	public Property selectAPT(int pr_propertyNo);

	public Integer selectPr_id();

	public Property selectM_id(String m_id);

	
	public int insertMsg2(Message message);

	public Integer countBoard();

	public List<Message> listSale2(RowBounds rowBounds, Search2 search);

	





	

}
