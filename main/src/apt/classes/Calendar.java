package apt.classes;

import java.io.Serializable;
import java.sql.Timestamp;

public class Calendar implements Serializable {
	private int c_calendarNo;
	private String Schedule;
	private String c_startDate;
	private String c_endDate;
	private int apt_APTGNo;
	
	
	public int getC_calendarNo() {
		return c_calendarNo;
	}
	public void setC_calendarNo(int c_calendarNo) {
		this.c_calendarNo = c_calendarNo;
	}
	public String getSchedule() {
		return Schedule;
	}
	public void setSchedule(String schedule) {
		Schedule = schedule;
	}
	public String getC_startDate() {
		return c_startDate;
	}
	public void setC_startDate(String c_startDate) {
		this.c_startDate = c_startDate;
	}
	public String getC_endDate() {
		return c_endDate;
	}
	public void setC_endDate(String c_endDate) {
		this.c_endDate = c_endDate;
	}
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	
	
}
