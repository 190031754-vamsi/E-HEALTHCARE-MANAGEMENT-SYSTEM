package com.vamsi.model;

public class AppointmentConfirmationModel {
    private String fullname;
    private long phnum;
    private String email;
    private String specdoctor;
    private String date;
    private String time;
    private String area;
    private String city;
    private String state;
    private int postcode;
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public long getPhnum() {
		return phnum;
	}
	public void setPhnum(long phnum) {
		this.phnum = phnum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSpecdoctor() {
		return specdoctor;
	}
	public void setSpecdoctor(String specdoctor) {
		this.specdoctor = specdoctor;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
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
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	@Override
	public String toString() {
		return "AppointmentConfirmationModel [fullname=" + fullname + ", phnum=" + phnum + ", email=" + email
				+ ", specdoctor=" + specdoctor + ", date=" + date + ", time=" + time + ", area=" + area + ", city="
				+ city + ", state=" + state + ", postcode=" + postcode + "]";
	}
	
    
    
}
