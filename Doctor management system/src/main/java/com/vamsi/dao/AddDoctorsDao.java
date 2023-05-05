package com.vamsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.vamsi.model.AddDoctorsModel;
import com.vamsi.model.ViewDoctorsModel;

public class AddDoctorsDao{
    public int getDoctors(AddDoctorsModel adm) {
        int result = 0;
        try {
            String query = "insert into doctors values (?,?,?,?,?,?,?)";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
            PreparedStatement st = con.prepareStatement(query);
            st.setInt(1, adm.getDid());
            st.setString(2, adm.getDname());
            st.setString(3, adm.getPwd());
            st.setString(4, adm.getRepwd());
            st.setString(5, adm.getQualification());
            st.setString(6, adm.getSpecdoctor());
            st.setString(7, adm.getEmail());
            
            result = st.executeUpdate();
            System.out.println(adm);
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
