package com.vamsi.model;

public class ViewDoctorsModel {
	int did;
	String dname;
	String qualification;
	String specdoctor;
	String email;
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSpecdoctor() {
		return specdoctor;
	}
	public void setSpecdoctor(String specdoctor) {
		this.specdoctor = specdoctor;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "ViewDoctorsModel [did=" + did + ", dname=" + dname + ", qualification=" + qualification
				+ ", specdoctor=" + specdoctor + ", email=" + email + "]";
	}
	
	

}
