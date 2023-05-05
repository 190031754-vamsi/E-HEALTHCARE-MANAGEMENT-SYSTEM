package com.vamsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.vamsi.model.AppointmentBookModel;

public class AppointmentBookDao {
    public int getBook(AppointmentBookModel abm) {
        int result = 0;
        try {
            String query = "insert into appointmentbook values (?,?,?,?,?,?,?,?,?,?)";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "Vamsi2511@");
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, abm.getFullname());
            st.setLong(2, abm.getPhnum());
            st.setString(3, abm.getEmail());
            st.setString(4, abm.getSpecdoctor());
            st.setString(5, abm.getDate());
            st.setString(6, abm.getTime());
            st.setString(7, abm.getArea());
            st.setString(8, abm.getCity());
            st.setString(9, abm.getState());
            st.setInt(10, abm.getPostcode());
            result = st.executeUpdate();
            System.out.println(abm);
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
