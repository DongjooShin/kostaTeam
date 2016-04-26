package apt.classes;

import java.io.Serializable;
import java.sql.Timestamp;

public class Transactions implements Serializable {
	private int t_transactionsNo;
	private String t_title;
	private String t_date;
	private String t_content;
	private int t_hit;
	private String t_imageName;
	private int apt_APTGNo;
	private String m_memberNo;
	
	public int getT_transactionsNo() {
		return t_transactionsNo;
	}
	public void setT_transactionsNo(int t_transactionsNo) {
		this.t_transactionsNo = t_transactionsNo;
	}
	public String getT_title() {
		return t_title;
	}
	public void setT_title(String t_title) {
		this.t_title = t_title;
	}
	public String getT_date() {
		return t_date;
	}
	public void setT_date(String t_date) {
		this.t_date = t_date;
	}
	public String getT_content() {
		return t_content;
	}
	public void setT_content(String t_content) {
		this.t_content = t_content;
	}
	public int getT_hit() {
		return t_hit;
	}
	public void setT_hit(int t_hit) {
		this.t_hit = t_hit;
	}
	public String getT_imageName() {
		return t_imageName;
	}
	public void setT_imageName(String t_imageName) {
		this.t_imageName = t_imageName;
	}
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	public String getM_memberNo() {
		return m_memberNo;
	}
	public void setM_memberNo(String m_memberNo) {
		this.m_memberNo = m_memberNo;
	}
	
}
