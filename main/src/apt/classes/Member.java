package apt.classes;

import java.io.Serializable;

public class Member implements Serializable {
	

		private String m_memberNo;
		private String m_pass;
		private String m_name;
		private String m_email;
		private String m_addr;
		private String postadress;
		private String postdetail;
		private String s_phon1;
		private String s_phon2;
		private String s_phon3;
		private String s_mphon1;
		private String s_mphon2;
		private String s_mphon3;
		
		private int m_buildingNo;
		private int m_roomNo;
		private int m_age;
		private int m_grade;
		private int m_homeTel;
		private int m_tel;
		private int apt_APTGNo;
		
		public void sumPhoneNum(){
			String num1 = getS_mphon1();
			String num2 = getS_mphon2();
			String num3 = getS_mphon3();
			int num =Integer.parseInt((num1 + num2 + num3));
			setM_tel(num);
			
		}
		
		public void sumTellNum(){
			String num1 = getS_phon1();
			String num2 = getS_phon2();
			String num3 = getS_phon3();
			int num =Integer.parseInt((num1 + num2 + num3));
			setM_homeTel(num);
			
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
		public String getM_addr() {
			return m_addr;
		}
		public void setM_addr(String m_addr) {
			this.m_addr = m_addr;
		}
		public String getPostadress() {
			return postadress;
		}
		public void setPostadress(String postadress) {
			this.postadress = postadress;
		}
		public String getPostdetail() {
			return postdetail;
		}
		public void setPostdetail(String postdetail) {
			this.postdetail = postdetail;
		}
		public String getS_phon1() {
			return s_phon1;
		}
		public void setS_phon1(String s_phon1) {
			this.s_phon1 = s_phon1;
		}
		public String getS_phon2() {
			return s_phon2;
		}
		public void setS_phon2(String s_phon2) {
			this.s_phon2 = s_phon2;
		}
		public String getS_phon3() {
			return s_phon3;
		}
		public void setS_phon3(String s_phon3) {
			this.s_phon3 = s_phon3;
		}
		public String getS_mphon1() {
			return s_mphon1;
		}
		public void setS_mphon1(String s_mphon1) {
			this.s_mphon1 = s_mphon1;
		}
		public String getS_mphon2() {
			return s_mphon2;
		}
		public void setS_mphon2(String s_mphon2) {
			this.s_mphon2 = s_mphon2;
		}
		public String getS_mphon3() {
			return s_mphon3;
		}
		public void setS_mphon3(String s_mphon3) {
			this.s_mphon3 = s_mphon3;
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
		public int getM_age() {
			return m_age;
		}
		public void setM_age(int m_age) {
			this.m_age = m_age;
		}
		public int getM_grade() {
			return m_grade;
		}
		public void setM_grade(int m_grade) {
			this.m_grade = m_grade;
		}
		public int getM_homeTel() {
			return m_homeTel;
		}
		public void setM_homeTel(int m_homeTel) {
			this.m_homeTel = m_homeTel;
		}
		public int getM_tel() {
			return m_tel;
		}
		public void setM_tel(int m_tel) {
			this.m_tel = m_tel;
		}
		public int getApt_APTGNo() {
			return apt_APTGNo;
		}
		public void setApt_APTGNo(int apt_APTGNo) {
			this.apt_APTGNo = apt_APTGNo;
		}
		

		
	

	
}
