package apt.classes;

import java.io.Serializable;

public class Store implements Serializable {
	private int s_storeNo;
	private String s_name;
	private String s_tel;
	private String s_content;
	private String s_group;
	private String s_openTime;
	private String s_closeTime;
	private int apt_APTGNo;
	
	public int getS_storeNo() {
		return s_storeNo;
	}
	public void setS_storeNo(int s_storeNo) {
		this.s_storeNo = s_storeNo;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_tel() {
		return s_tel;
	}
	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}
	public String getS_content() {
		return s_content;
	}
	public void setS_content(String s_content) {
		this.s_content = s_content;
	}
	public String getS_group() {
		return s_group;
	}
	public void setS_group(String s_group) {
		this.s_group = s_group;
	}
	public String getS_openTime() {
		return s_openTime;
	}
	public void setS_openTime(String s_openTime) {
		this.s_openTime = s_openTime;
	}
	public String getS_closeTime() {
		return s_closeTime;
	}
	public void setS_closeTime(String s_closeTime) {
		this.s_closeTime = s_closeTime;
	}
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	
	
}
