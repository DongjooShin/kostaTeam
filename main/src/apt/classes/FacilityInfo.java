package apt.classes;

import java.io.Serializable;
import java.sql.Timestamp;

public class FacilityInfo implements Serializable {
	private int f_facilityNo;
	private char f_mainDoorLock;
	private char f_groundParking;
	private char f_basementParking;
	private char f_vehicleControl;
	private int f_totalFamilyNum;
	private int f_playground;
	private int f_totalBuildingNum;
	private Timestamp f_completionDate;
	private String f_constructFirm;
	private String f_heatingMeans;
	private String f_heatingFuel;
	private int f_totalParkingNum;
	private String f_groupName;
	private String f_addr;
	private int apt_APTGNo;
	
	
	public int getF_facilityNo() {
		return f_facilityNo;
	}
	public void setF_facilityNo(int f_facilityNo) {
		this.f_facilityNo = f_facilityNo;
	}
	public char getF_mainDoorLock() {
		return f_mainDoorLock;
	}
	public void setF_mainDoorLock(char f_mainDoorLock) {
		this.f_mainDoorLock = f_mainDoorLock;
	}
	public char getF_groundParking() {
		return f_groundParking;
	}
	public void setF_groundParking(char f_groundParking) {
		this.f_groundParking = f_groundParking;
	}
	public char getF_basementParking() {
		return f_basementParking;
	}
	public void setF_basementParking(char f_basementParking) {
		this.f_basementParking = f_basementParking;
	}
	public char getF_vehicleControl() {
		return f_vehicleControl;
	}
	public void setF_vehicleControl(char f_vehicleControl) {
		this.f_vehicleControl = f_vehicleControl;
	}
	public int getF_totalFamilyNum() {
		return f_totalFamilyNum;
	}
	public void setF_totalFamilyNum(int f_totalFamilyNum) {
		this.f_totalFamilyNum = f_totalFamilyNum;
	}
	public int getF_playground() {
		return f_playground;
	}
	public void setF_playground(int f_playground) {
		this.f_playground = f_playground;
	}
	public int getF_totalBuildingNum() {
		return f_totalBuildingNum;
	}
	public void setF_totalBuildingNum(int f_totalBuildingNum) {
		this.f_totalBuildingNum = f_totalBuildingNum;
	}
	public Timestamp getF_completionDate() {
		return f_completionDate;
	}
	public void setF_completionDate(Timestamp f_completionDate) {
		this.f_completionDate = f_completionDate;
	}
	public String getF_constructFirm() {
		return f_constructFirm;
	}
	public void setF_constructFirm(String f_constructFirm) {
		this.f_constructFirm = f_constructFirm;
	}
	public String getF_heatingMeans() {
		return f_heatingMeans;
	}
	public void setF_heatingMeans(String f_heatingMeans) {
		this.f_heatingMeans = f_heatingMeans;
	}
	public String getF_heatingFuel() {
		return f_heatingFuel;
	}
	public void setF_heatingFuel(String f_heatingFuel) {
		this.f_heatingFuel = f_heatingFuel;
	}
	public int getF_totalParkingNum() {
		return f_totalParkingNum;
	}
	public void setF_totalParkingNum(int f_totalParkingNum) {
		this.f_totalParkingNum = f_totalParkingNum;
	}
	public String getF_groupName() {
		return f_groupName;
	}
	public void setF_groupName(String f_groupName) {
		this.f_groupName = f_groupName;
	}
	public String getF_addr() {
		return f_addr;
	}
	public void setF_addr(String f_addr) {
		this.f_addr = f_addr;
	}
	public int getApt_APTGNo() {
		return apt_APTGNo;
	}
	public void setApt_APTGNo(int apt_APTGNo) {
		this.apt_APTGNo = apt_APTGNo;
	}
	
	
}
