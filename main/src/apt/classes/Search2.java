package apt.classes;

import java.io.Serializable;

public class Search2 implements Serializable {
	private String[] area;
	private String searchKey;
	private String m_memberNo;
	private String mg_to;
	private int mg_messageNo;
	
	
	
	public int getMg_messageNo() {
		return mg_messageNo;
	}
	public void setMg_messageNo(int mg_messageNo) {
		this.mg_messageNo = mg_messageNo;
	}
	public String getMg_to() {
		return mg_to;
	}
	public void setMg_to(String mg_to) {
		this.mg_to = mg_to;
	}
	public String getM_memberNo() {
		return m_memberNo;
	}
	public void setM_memberNo(String m_memberNo) {
		this.m_memberNo = m_memberNo;
	}
	
	
	public String[] getArea() {
		return area;
	}
	public void setArea(String[] area) {
		this.area = area;
	}
	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	
	
}
