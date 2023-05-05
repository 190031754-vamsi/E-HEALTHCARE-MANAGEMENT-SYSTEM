package com.vamsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vamsi.model.AppointmentConfirmationModel;

public class AppointmentConfirmationDao {

    	public AppointmentConfirmationModel getAppointmentsByFullName(String fullname) {
    	    AppointmentConfirmationModel acm = null;
    	    Connection con = null;
    	    PreparedStatement st = null;
    	    ResultSet resultSet = null;
    	    
    	    try {
    	        acm = new AppointmentConfirmationModel();
    	        String query = "SELECT * FROM appointmentbook WHERE fullname = ?";
    	        Class.forName("com.mysql.cj.jdbc.Driver");
    	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
    	        st = con.prepareStatement(query);
    	        st.setString(1, fullname);
    	        resultSet = st.executeQuery();
    	        while (resultSet.next()) {
    	            acm.setFullname(resultSet.getString("fullname"));
    	            acm.setPhnum(resultSet.getLong("phnum"));
    	            acm.setEmail(resultSet.getString("email"));
    	            acm.setSpecdoctor(resultSet.getString("specdoctor"));
    	            acm.setDate(resultSet.getString("date"));
    	            acm.setTime(resultSet.getString("time"));
    	            acm.setArea(resultSet.getString("area"));
    	            acm.setCity(resultSet.getString("city"));
    	            acm.setState(resultSet.getString("state"));
    	            acm.setPostcode(resultSet.getInt("postcode"));
    	        }
    	        
    	    } catch (SQLException ex) {
    	        ex.printStackTrace();
    	    } catch (ClassNotFoundException e) {
    	        e.printStackTrace();
    	    } 
    	    catch (Exception exception) {
    	        if (exception != null) {
    	            String errorMessage = exception.getMessage();
    	            // Handle the error message
    	        } else {
    	            // Handle the case where the exception is null
    	        }
    	    }
    	    finally {
    	        try { resultSet.close(); } catch (Exception e) {}
    	        try { st.close(); } catch (Exception e) {}
    	        try { con.close(); } catch (Exception e) {}
    	    }
    	    
    	    return acm;
    	}


}



