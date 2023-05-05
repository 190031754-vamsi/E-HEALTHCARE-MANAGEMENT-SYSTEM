package com.vamsi.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;

import com.vamsi.dao.AppointmentBookDao;
import com.vamsi.model.AppointmentBookModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AppointmentBookController")
public class AppointmentBookController extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String fullname = request.getParameter("fullname");
        long phnum = Long.parseLong(request.getParameter("phnum"));
        String email = request.getParameter("email");
        String specdoctor = request.getParameter("specdoctor");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String area = request.getParameter("area");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        int postcode = Integer.parseInt(request.getParameter("postcode"));
        
        
        AppointmentBookModel abm = new AppointmentBookModel();
        abm.setFullname(fullname);
        abm.setPhnum(phnum);
        abm.setEmail(email);
        abm.setSpecdoctor(specdoctor);
        abm.setDate(date);
        abm.setTime(time);
        abm.setArea(area);
        abm.setCity(city);
        abm.setState(state);
        abm.setPostcode(postcode);
        
        AppointmentBookDao abd = new AppointmentBookDao();
        
        try {
            abd.getBook(abm);
            
            HttpSession session = request.getSession();
			session.setAttribute("AppointmentBookModel", abm);
			
			response.sendRedirect("PatientHome.jsp");

            
        } 
        catch (Exception e) {
        	e.printStackTrace();

        	// set error message in request object
        	request.setAttribute("errorMessage", e.getMessage());

        	// forward the request to the error page
        	request.getRequestDispatcher("error.jsp").forward(request, response);
        	}
    }
}











