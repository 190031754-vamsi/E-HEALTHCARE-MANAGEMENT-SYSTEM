package com.vamsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.vamsi.model.PatientLoginModel;

public class PatientLoginDao {
	public boolean check(PatientLoginModel lm) {
		try {
			String sql = "select * from patientsignup where uname=? and pwd=?";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, lm.getUname());
			st.setString(2, lm.getPwd());
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
