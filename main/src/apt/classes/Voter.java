package apt.classes;

import java.io.Serializable;

public class Voter implements Serializable {
	private int v_voterNo;
	private int v_buildingNo;
	private int v_roomNo;
	private int m_memberNo;
	private int apt_APTGNo;
	
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	public int getV_voterNo() {
		return v_voterNo;
	}
	public void setV_voterNo(int v_voterNo) {
		this.v_voterNo = v_voterNo;
	}
	public int getV_buildingNo() {
		return v_buildingNo;
	}
	public void setV_buildingNo(int v_buildingNo) {
		this.v_buildingNo = v_buildingNo;
	}
	public int getV_roomNo() {
		return v_roomNo;
	}
	public void setV_roomNo(int v_roomNo) {
		this.v_roomNo = v_roomNo;
	}
	public int getM_memberNo() {
		return m_memberNo;
	}
	public void setM_memberNo(int m_memberNo) {
		this.m_memberNo = m_memberNo;
	}
	
	
}
