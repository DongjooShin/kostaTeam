package apt.classes;

import java.io.Serializable;

public class Member implements Serializable {
	private int m_memberNo;
	private String m_pass;
	private int m_age;
	private int m_buildingNo;
	private int m_roomNo;
	private String m_name;
	private String m_email;
	private int m_grade;
	private String m_addr;
	private String m_homeTel;
	private String m_tel;
	private int apt_APTGNo;
	
	
	public int getM_memberNo() {
		return m_memberNo;
	}
	public void setM_memberNo(int m_memberNo) {
		this.m_memberNo = m_memberNo;
	}
	public String getM_pass() {
		return m_pass;
	}
	public void setM_pass(String m_pass) {
		this.m_pass = m_pass;
	}
	public int getM_age() {
		return m_age;
	}
	public void setM_age(int m_age) {
		this.m_age = m_age;
	}
	public int getM_buildingNo() {
		return m_buildingNo;
	}
	public void setM_buildingNo(int m_buildingNo) {
		this.m_buildingNo = m_buildingNo;
	}
	public int getM_roomNo() {
		return m_roomNo;
	}
	public void setM_roomNo(int m_roomNo) {
		this.m_roomNo = m_roomNo;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public int getM_grade() {
		return m_grade;
	}
	public void setM_grade(int m_grade) {
		this.m_grade = m_grade;
	}
	public String getM_addr() {
		return m_addr;
	}
	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}
	public String getM_homeTel() {
		return m_homeTel;
	}
	public void setM_homeTel(String m_homeTel) {
		this.m_homeTel = m_homeTel;
	}
	public String getM_tel() {
		return m_tel;
	}
	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	
}