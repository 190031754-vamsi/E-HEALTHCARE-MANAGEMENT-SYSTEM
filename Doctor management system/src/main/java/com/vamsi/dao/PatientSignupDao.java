package com.vamsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.vamsi.model.PatientSignupModel;

public class PatientSignupDao {
    public int getVamsi(PatientSignupModel sm) {
        int result = 0;
        try {
            String query = "insert into patientsignup values (?,?,?,?,?,?,?,?)";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, sm.getUname());
            st.setString(2, sm.getEmail());
            st.setLong(3, sm.getPhno());
            st.setString(4, sm.getArea());
            st.setString(5, sm.getCity());
            st.setString(6, sm.getState());
            st.setString(7, sm.getPwd());
            st.setString(8, sm.getCpwd());
            result = st.executeUpdate();
        } 
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        } 
        catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
