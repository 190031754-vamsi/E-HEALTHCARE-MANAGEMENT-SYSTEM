package com.vamsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.vamsi.model.DoctorLoginModel;

public class DoctorLoginDao {

	String sql = "select * from doctors where specdoctor=? and pwd=?";
	public boolean check(DoctorLoginModel dlm) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, dlm.getSpecdoctor());
			st.setString(2, dlm.getPwd());
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
