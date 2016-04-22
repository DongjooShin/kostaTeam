package apt.classes;

import java.io.Serializable;
import java.sql.Timestamp;

public class SiteNotice implements Serializable {
	private int sn_siteNoticeNo;
	private String sn_title;
	private String sn_content;
	private Timestamp sn_date;
	private int sn_hit;
	private String sn_fileName;
	private int m_memberNo;
	
	
	public int getSn_siteNoticeNo() {
		return sn_siteNoticeNo;
	}
	public void setSn_siteNoticeNo(int sn_siteNoticeNo) {
		this.sn_siteNoticeNo = sn_siteNoticeNo;
	}
	public String getSn_title() {
		return sn_title;
	}
	public void setSn_title(String sn_title) {
		this.sn_title = sn_title;
	}
	public String getSn_content() {
		return sn_content;
	}
	public void setSn_content(String sn_content) {
		this.sn_content = sn_content;
	}
	public Timestamp getSn_date() {
		return sn_date;
	}
	public void setSn_date(Timestamp sn_date) {
		this.sn_date = sn_date;
	}
	public int getSn_hit() {
		return sn_hit;
	}
	public void setSn_hit(int sn_hit) {
		this.sn_hit = sn_hit;
	}
	public String getSn_fileName() {
		return sn_fileName;
	}
	public void setSn_fileName(String sn_fileName) {
		this.sn_fileName = sn_fileName;
	}
	public int getM_memberNo() {
		return m_memberNo;
	}
	public void setM_memberNo(int m_memberNo) {
		this.m_memberNo = m_memberNo;
	}
	
}
