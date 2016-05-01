package apt.classes;

import java.io.Serializable;

import java.util.GregorianCalendar;
import java.util.Locale;

public class SurveyDB implements Serializable {
	
	private int su_group; //설문지
	private int su_startdate; //시작날짜
	private int su_enddate; //마지막날짜
	private int apt_APTGNo;
	private int su_date;
	
	private int susususu2 = 300000000;
	

	
	public int getSu_date() {
		return su_date;
	}
	public void setSu_date(int su_date) {
		this.su_date = su_date;
	}
	public int getSu_group() {
		return su_group;
	}
	public void setSu_group(int su_group) {
		this.su_group = su_group;
	}
	public int getSu_startdate() {
		return su_startdate;
	}
	public void setSu_startdate(int su_startdate) {
		this.su_startdate = su_startdate;
	}
	public int getSu_enddate() {
		return su_enddate;
	}
	public void setSu_enddate(int su_enddate) {
		this.su_enddate = su_enddate;
	}
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	
	
}
