package apt.classes;

import java.io.Serializable;
import java.sql.Timestamp;

public class Survey implements Serializable{

	private int su_surveyNo; //각각 설문지의 하위번호들
	private int su_date; //설문지의 날짜
	private int su_group; //설문지
	private String su_context; //질문내용 
	private int su_startdate; //시작날짜
	private int su_enddate; //마지막날짜
	private int apt_APTGNo;
	
	
	
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	public int getSu_surveyNo() {
		return su_surveyNo;
	}
	public void setSu_surveyNo(int su_surveyNo) {
		this.su_surveyNo = su_surveyNo;
	}
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
	public String getSu_context() {
		return su_context;
	}
	public void setSu_context(String su_context) {
		this.su_context = su_context;
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
	
	
	
	
	
	
}
