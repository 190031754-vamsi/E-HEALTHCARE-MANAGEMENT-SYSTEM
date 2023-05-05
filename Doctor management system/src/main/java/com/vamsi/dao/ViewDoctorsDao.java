package com.vamsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.vamsi.model.ViewDoctorsModel;

public class ViewDoctorsDao {

    	public ViewDoctorsModel getviewdoctorsbyid(int did) {
    		ViewDoctorsModel vdm = null;
    	    Connection con = null;
    	    PreparedStatement st = null;
    	    ResultSet resultSet = null;
    	    
    	    try {
    	        vdm = new ViewDoctorsModel();
    	        String query = "SELECT * FROM doctors WHERE did = ?";
    	        Class.forName("com.mysql.cj.jdbc.Driver");
    	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
    	        st = con.prepareStatement(query);
    	        st.setInt(1, did);
    	        resultSet = st.executeQuery();
    	        while (resultSet.next()) {
    	            vdm.setDid(resultSet.getInt("did"));
    	            vdm.setDname(resultSet.getString("dname"));
    	            vdm.setQualification(resultSet.getString("qualification"));
    	            vdm.setSpecdoctor(resultSet.getString("specdoctor"));
    	            vdm.setEmail(resultSet.getString("email"));
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
    	    
    	    return vdm;
    	}


}



