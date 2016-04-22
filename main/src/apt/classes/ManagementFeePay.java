package apt.classes;

import java.io.Serializable;
import java.sql.Timestamp;

public class ManagementFeePay implements Serializable {
	private int p_payNo;
	private int p_process;
	private Timestamp p_date;
	private int p_amount;
	private String p_means;
	private int mf_managementFeeNo;
	
	
	public int getP_payNo() {
		return p_payNo;
	}
	public void setP_payNo(int p_payNo) {
		this.p_payNo = p_payNo;
	}
	public int getP_process() {
		return p_process;
	}
	public void setP_process(int p_process) {
		this.p_process = p_process;
	}
	public Timestamp getP_date() {
		return p_date;
	}
	public void setP_date(Timestamp p_date) {
		this.p_date = p_date;
	}
	public int getP_amount() {
		return p_amount;
	}
	public void setP_amount(int p_amount) {
		this.p_amount = p_amount;
	}
	public String getP_means() {
		return p_means;
	}
	public void setP_means(String p_means) {
		this.p_means = p_means;
	}
	public int getMf_managementFeeNo() {
		return mf_managementFeeNo;
	}
	public void setMf_managementFeeNo(int mf_managementFeeNo) {
		this.mf_managementFeeNo = mf_managementFeeNo;
	}
	
	
}
