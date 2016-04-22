package apt.classes;

import java.io.Serializable;
import java.sql.Timestamp;

//long-term repair appropriation money
public class Appropriation implements Serializable {
	private int a_appropriationNo;
	private int a_usedAmount;
	private String a_usedList;	//where we used.
	private int a_thisAppro;		//this month's money
	private Timestamp a_date;
	private int apt_APTGNo;
	
	
	
	
	
	public int getA_appropriationNo() {
		return a_appropriationNo;
	}
	public void setA_appropriationNo(int a_appropriationNo) {
		this.a_appropriationNo = a_appropriationNo;
	}
	public int getA_usedAmount() {
		return a_usedAmount;
	}
	public void setA_usedAmount(int a_usedAmount) {
		this.a_usedAmount = a_usedAmount;
	}
	public String getA_usedList() {
		return a_usedList;
	}
	public void setA_usedList(String a_usedList) {
		this.a_usedList = a_usedList;
	}
	public int getA_thisAppro() {
		return a_thisAppro;
	}
	public void setA_thisAppro(int a_thisAppro) {
		this.a_thisAppro = a_thisAppro;
	}
	public Timestamp getA_date() {
		return a_date;
	}
	public void setA_date(Timestamp a_date) {
		this.a_date = a_date;
	}
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	
	
	
	
	
}
