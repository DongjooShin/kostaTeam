package apt.mapper;

import java.util.HashMap;
import java.util.List;

import apt.classes.ManagementFee;
import apt.classes.Member;
import apt.classes.PublicManagementFee;

public interface ManagementFeeMapper {

	public List<Member> selectMember(int buildingNo, int roomNo);
	public int insertManagementFee(HashMap map1, HashMap map2);
	public int insertPublicMntFee(HashMap map1, HashMap map2);
	public ManagementFee selectMntFee(String date);
	public PublicManagementFee selectPublicMntFee(String date);
	
}
