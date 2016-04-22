package apt.dao;

public class M_signup {
	private String m_memberNo, m_pass ,m_name ,m_email ,m_addr,postadress,postdetail;
	private int m_buildingNo, m_roomNo, m_age ,m_grade,m_homeTel,m_tel,apt_APTGNo
				,s_phon1,s_phon2,s_phon3,s_mphon1,s_mphon2,s_mphon3;
			
	public M_signup(){}

	
	
	
	public M_signup(String m_memberNo, String m_pass, String m_name,
			String m_email, String m_addr, String postadress,
			String postdetail, int m_buildingNo, int m_roomNo, int m_age,
			int m_grade, int m_homeTel, int m_tel, int apt_APTGNo, int s_phon1,
			int s_phon2, int s_phon3, int s_mphon1, int s_mphon2, int s_mphon3) {
		super();
		this.m_memberNo = m_memberNo;
		this.m_pass = m_pass;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_addr = m_addr;
		this.postadress = postadress;
		this.postdetail = postdetail;
		this.m_buildingNo = m_buildingNo;
		this.m_roomNo = m_roomNo;
		this.m_age = m_age;
		this.m_grade = m_grade;
		this.m_homeTel = m_homeTel;
		this.m_tel = m_tel;
		this.apt_APTGNo = apt_APTGNo;
		this.s_phon1 = s_phon1;
		this.s_phon2 = s_phon2;
		this.s_phon3 = s_phon3;
		this.s_mphon1 = s_mphon1;
		this.s_mphon2 = s_mphon2;
		this.s_mphon3 = s_mphon3;
		
		setm_addr(method(postadress,postdetail));
		
	}

	public String method(String postadress,String postdetail){
		return postadress+postdetail;
	}


	public String getm_memberNo() {
		return m_memberNo;
	}

	public void setm_memberNo(String m_memberNo) {
		this.m_memberNo = m_memberNo;
	}

	public String getm_pass() {
		return m_pass;
	}

	public void setm_pass(String m_pass) {
		this.m_pass = m_pass;
	}

	public String getm_name() {
		return m_name;
	}

	public void setm_name(String m_name) {
		this.m_name = m_name;
	}

	public String getm_email() {
		return m_email;
	}

	public void setm_email(String m_email) {
		this.m_email = m_email;
	}

	public String getm_addr() {
		return m_addr;
	}

	public void setm_addr(String m_addr) {
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

	public int getm_buildingNo() {
		return m_buildingNo;
	}

	public void setm_buildingNo(int m_buildingNo) {
		this.m_buildingNo = m_buildingNo;
	}

	public int getm_roomNo() {
		return m_roomNo;
	}

	public void setm_roomNo(int m_roomNo) {
		this.m_roomNo = m_roomNo;
	}

	public int getm_age() {
		return m_age;
	}

	public void setm_age(int m_age) {
		this.m_age = m_age;
	}

	public int getm_grade() {
		return m_grade;
	}

	public void setm_grade(int m_grade) {
		this.m_grade = m_grade;
	}

	public int getm_homeTel() {
		return m_homeTel;
	}

	public void setm_homeTel(int m_homeTel) {
		this.m_homeTel = m_homeTel;
	}

	public int getm_tel() {
		return m_tel;
	}

	public void setm_tel(int m_tel) {
		this.m_tel = m_tel;
	}

	public int getapt_APTGNo() {
		return apt_APTGNo;
	}

	public void setapt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}

	public int getS_phon1() {
		return s_phon1;
	}

	public void setS_phon1(int s_phon1) {
		this.s_phon1 = s_phon1;
	}

	public int getS_phon2() {
		return s_phon2;
	}

	public void setS_phon2(int s_phon2) {
		this.s_phon2 = s_phon2;
	}

	public int getS_phon3() {
		return s_phon3;
	}

	public void setS_phon3(int s_phon3) {
		this.s_phon3 = s_phon3;
	}

	public int getS_mphon1() {
		return s_mphon1;
	}

	public void setS_mphon1(int s_mphon1) {
		this.s_mphon1 = s_mphon1;
	}

	public int getS_mphon2() {
		return s_mphon2;
	}

	public void setS_mphon2(int s_mphon2) {
		this.s_mphon2 = s_mphon2;
	}

	public int getS_mphon3() {
		return s_mphon3;
	}

	public void setS_mphon3(int s_mphon3) {
		this.s_mphon3 = s_mphon3;
	}


	
	
	
	
	
	
	
	
	
	
	
	

	
}
