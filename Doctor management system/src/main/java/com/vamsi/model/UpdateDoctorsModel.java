package com.vamsi.model;

public class UpdateDoctorsModel {
    private int did;
    private String dname;
    private String pwd;
    private String repwd;
    private String qualification;
    private String specdoctor;
    private String email;

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

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getRepwd() {
        return repwd;
    }

    public void setRepwd(String repwd) {
        this.repwd = repwd;
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
        return "UpdateDoctorsModel [did=" + did + ", dname=" + dname + ", pwd=" + pwd + ", repwd=" + repwd
                + ", qualification=" + qualification + ", specdoctor=" + specdoctor + ", email=" + email + "]";
    }
}
