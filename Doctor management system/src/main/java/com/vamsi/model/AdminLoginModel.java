package com.vamsi.model;

public class AdminLoginModel {
	String uname;
	String pwd;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "AdminLoginModel [uname=" + uname + ", pwd=" + pwd + "]";
	}
	
	
}
