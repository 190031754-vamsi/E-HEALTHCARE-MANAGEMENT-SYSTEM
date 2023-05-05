package com.vamsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.vamsi.model.UpdateDoctorsModel;

public class UpdateDoctorsDao {

	public boolean update(UpdateDoctorsModel udm) throws ClassNotFoundException {
		boolean flag = false;
		try {
			// Build the SQL query string with the values from the UpdateDoctorsModel object
			String query = "UPDATE doctors SET dname = '"+udm.getDname()+"', pwd = '"+udm.getPwd()+"', repwd ='"+udm.getRepwd()+"', qualification ='"+udm.getQualification()+"', specdoctor='"+udm.getSpecdoctor()+"', email='"+udm.getEmail()+"' WHERE did="+udm.getDid();
			
			// Load the MySQL JDBC driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// Establish a connection to the database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
			
			// Create a prepared statement with the SQL query string
			PreparedStatement st = con.prepareStatement(query);
			
			// Execute the prepared statement to update the database
			st.executeUpdate();
			
			// Set the flag to true to indicate that the update was successful
			flag = true;
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

}
