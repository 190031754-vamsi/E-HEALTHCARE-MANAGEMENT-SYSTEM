package com.vamsi.model;

public class PatientSignupModel {
	
	private String uname;
	private String email;
	private long phno;
	private String area;
	private String city;
	private String state;
	private String pwd;
	private String cpwd;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhno() {
		return phno;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getCpwd() {
		return cpwd;
	}
	public void setCpwd(String cpwd) {
		this.cpwd = cpwd;
	}
	@Override
	public String toString() {
		return "PatientSignupModel [uname=" + uname + ", email=" + email + ", phno=" + phno + ", area=" + area
				+ ", city=" + city + ", state=" + state + ", pwd=" + pwd + ", cpwd=" + cpwd + "]";
	}
	
	
	
	
}
