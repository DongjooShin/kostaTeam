package apt.classes;

import java.io.Serializable;
import java.sql.Timestamp;

public class Message implements Serializable {
	private int mg_messageNo;
	private String mg_from;
	private String mg_to;
	private String mg_content;
	private String mg_date;
	private char mg_state;
	private int m_memberNo;
	
	
	public int getMg_messageNo() {
		return mg_messageNo;
	}
	public void setMg_messageNo(int mg_messageNo) {
		this.mg_messageNo = mg_messageNo;
	}
	public String getMg_from() {
		return mg_from;
	}
	public void setMg_from(String mg_from) {
		this.mg_from = mg_from;
	}
	public String getMg_to() {
		return mg_to;
	}
	public void setMg_to(String mg_to) {
		this.mg_to = mg_to;
	}
	public String getMg_content() {
		return mg_content;
	}
	public void setMg_content(String mg_content) {
		this.mg_content = mg_content;
	}
	public String getMg_date() {
		return mg_date;
	}
	public void setMg_date(String mg_date) {
		this.mg_date = mg_date;
	}
	public char getMg_state() {
		return mg_state;
	}
	public void setMg_state(char mg_state) {
		this.mg_state = mg_state;
	}
	public int getM_memberNo() {
		return m_memberNo;
	}
	public void setM_memberNo(int m_memberNo) {
		this.m_memberNo = m_memberNo;
	}
	
}
