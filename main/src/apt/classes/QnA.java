package apt.classes;

import java.io.Serializable;
import java.sql.Timestamp;

public class QnA implements Serializable {
	private int q_QnANo;
	private String q_name;
	private String q_email;
	private String q_title;
	private String q_content;
	private String q_date;
	private String q_fileName;
	private int q_ref;
	private int q_state;
	private String m_memberNo;
	
	
	public int getQ_QnANo() {
		return q_QnANo;
	}
	public void setQ_QnANo(int q_QnANo) {
		this.q_QnANo = q_QnANo;
	}
	public String getQ_name() {
		return q_name;
	}
	public void setQ_name(String q_name) {
		this.q_name = q_name;
	}
	public String getQ_email() {
		return q_email;
	}
	public void setQ_email(String q_email) {
		this.q_email = q_email;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public String getQ_date() {
		return q_date;
	}
	public void setQ_date(String q_date) {
		this.q_date = q_date;
	}
	public String getQ_fileName() {
		return q_fileName;
	}
	public void setQ_fileName(String q_fileName) {
		this.q_fileName = q_fileName;
	}
	public int getQ_ref() {
		return q_ref;
	}
	public void setQ_ref(int q_ref) {
		this.q_ref = q_ref;
	}
	public int getQ_state() {
		return q_state;
	}
	public void setQ_state(int q_state) {
		this.q_state = q_state;
	}
	public String getM_memberNo() {
		return m_memberNo;
	}
	public void setM_memberNo(String m_memberNo) {
		this.m_memberNo = m_memberNo;
	}
	
}
