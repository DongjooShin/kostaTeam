package apt.classes;

import java.io.Serializable;

public class Member implements Serializable {
	private String m_memberNo;
	private String m_pass;
	private int m_age;
	private int m_buildingNo;
	private int m_roomNo;
	private String m_name;
	private String m_email;
	private int m_grade;
	//private String m_addr;
	private String m_homeTel;
	private String m_tel;
	private int apt_APTGNo;
	private int v_flag=1;	
	
	//case:manager
	//1: there is no election. candidate register button is here.
	//2: manager is ongoing to put candidate. there are modify and registry button.
	//3: election is registered. there is image that vote is processing
	//4: election is ended. there is a button for returning to flag 1
							//case:resident
	//1: there is no election. two pictures are here.
	//2: election is starting. there is vote button.
	//3: election is ongoing but this resident already vote. 
	//4: election is ending. vote result is noticing. if manager click the end noticing button, flag return to 1

	public Member() {
		super();
	}
	
	public Member(String m_memberNo, String m_pass, int m_age, int m_buildingNo, int m_roomNo, String m_name,
			String m_email, int m_grade, String m_addr, String m_homeTel, String m_tel, int apt_APTGNo) {
		super();
		this.m_memberNo = m_memberNo;
		this.m_pass = m_pass;
		this.m_age = m_age;
		this.m_buildingNo = m_buildingNo;
		this.m_roomNo = m_roomNo;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_grade = m_grade;
		//this.m_addr = m_addr;
		this.m_homeTel = m_homeTel;
		this.m_tel = m_tel;
		this.apt_APTGNo = apt_APTGNo;
		
	}


	public String getM_memberNo() {
		return m_memberNo;
	}

	public void setM_memberNo(String m_memberNo) {
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
//	public String getM_addr() {
//		return m_addr;
//	}
//	public void setM_addr(String m_addr) {
//		this.m_addr = m_addr;
//	}
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
	public int getV_flag() {
		return v_flag;
	}
	public void setV_flag(int v_mflag) {
		this.v_flag = v_mflag;
	}
	
	
}
