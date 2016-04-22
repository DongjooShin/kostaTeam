package apt.classes;

import java.io.Serializable;

public class Candidate implements Serializable {
	private int cd_candidateNo;
	private int cd_voteHit;
	private int cd_group;
	private int cd_symbol;
	private String cd_eduLevel;
	private String cd_job;
	private String cd_career;
	private String cd_promise;
	private int m_memberNo;
	
	
	public int getCd_candidateNo() {
		return cd_candidateNo;
	}
	public void setCd_candidateNo(int cd_candidateNo) {
		this.cd_candidateNo = cd_candidateNo;
	}
	public int getCd_voteHit() {
		return cd_voteHit;
	}
	public void setCd_voteHit(int cd_voteHit) {
		this.cd_voteHit = cd_voteHit;
	}
	public int getCd_group() {
		return cd_group;
	}
	public void setCd_group(int cd_group) {
		this.cd_group = cd_group;
	}
	public int getCd_symbol() {
		return cd_symbol;
	}
	public void setCd_symbol(int cd_symbol) {
		this.cd_symbol = cd_symbol;
	}
	public String getCd_eduLevel() {
		return cd_eduLevel;
	}
	public void setCd_eduLevel(String cd_eduLevel) {
		this.cd_eduLevel = cd_eduLevel;
	}
	public String getCd_job() {
		return cd_job;
	}
	public void setCd_job(String cd_job) {
		this.cd_job = cd_job;
	}
	public String getCd_career() {
		return cd_career;
	}
	public void setCd_career(String cd_career) {
		this.cd_career = cd_career;
	}
	public String getCd_promise() {
		return cd_promise;
	}
	public void setCd_promise(String cd_promise) {
		this.cd_promise = cd_promise;
	}
	public int getM_memberNo() {
		return m_memberNo;
	}
	public void setM_memberNo(int m_memberNo) {
		this.m_memberNo = m_memberNo;
	}
	
}
