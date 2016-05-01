package apt.mapper;

import java.util.List;

public interface Management {

	public List selectManagementFee();
	
	
	public List selectPublicmanage(int day2);
	public List selectMonthPublicmanage(int year);

}
