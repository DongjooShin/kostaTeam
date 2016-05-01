package apt.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import apt.classes.Complaint;

public interface MemberMapper {
	public List<Complaint> listComplaint(RowBounds rowbounds,String id);

	public Integer insertComplaint(Complaint complain);
	public Integer nextCOMPLAINTNO();
	public Integer aptno(String id);

	public Integer countComplaint(String id);

	public Complaint selectComplaint(String cp_complaintNo);

	public Integer countComplaintManage();

	public List<Complaint> listComplaintManage(RowBounds rowBounds);

	public List<Complaint> listmypageComplaint(String id);

	public List<Complaint> listManageComplaint(RowBounds rowBounds);

	public Integer updateComplaint(Complaint complain);

}
