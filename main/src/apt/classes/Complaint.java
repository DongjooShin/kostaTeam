package apt.classes;

import java.io.Serializable;

public class Complaint implements Serializable {
	private int cp_complaintNo;
	private String cp_title;
	private String cp_group;
	private String cp_content;
	private String cp_state;
	private int cp_ref;
	private String m_memberNo;
	private int apt_APTGNo;
	
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	
	public int getCp_complaintNo() {
		return cp_complaintNo;
	}
	public void setCp_complaintNo(int cp_complaintNo) {
		this.cp_complaintNo = cp_complaintNo;
	}
	public String getCp_title() {
		return cp_title;
	}
	public void setCp_title(String cp_title) {
		this.cp_title = cp_title;
	}
	public String getCp_group() {
		return cp_group;
	}
	public void setCp_group(String cp_group) {
		this.cp_group = cp_group;
	}
	public String getCp_content() {
		return cp_content;
	}
	public void setCp_content(String cp_content) {
		this.cp_content = cp_content;
	}
	public String getCp_state() {
		return cp_state;
	}
	public void setCp_state(String cp_state) {
		this.cp_state = cp_state;
	}
	public int getCp_ref() {
		return cp_ref;
	}
	public void setCp_ref(int cp_ref) {
		this.cp_ref = cp_ref;
	}
	public String getM_memberNo() {
		return m_memberNo;
	}
	public void setM_memberNo(String m_memberNo) {
		this.m_memberNo = m_memberNo;
	}
	
}
