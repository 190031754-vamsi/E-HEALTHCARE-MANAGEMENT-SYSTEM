package com.vamsi.model;

public class DoctorLoginModel {
	String specdoctor;
	String pwd;
	public String getSpecdoctor() {
		return specdoctor;
	}
	public void setSpecdoctor(String specdoctor) {
		this.specdoctor = specdoctor;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "DoctorLoginModel [specdoctor=" + specdoctor + ", pwd=" + pwd + "]";
	}
	
	
}
