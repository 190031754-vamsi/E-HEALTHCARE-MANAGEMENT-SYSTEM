package com.vamsi.controller;

import java.io.IOException;

import com.vamsi.dao.AppointmentConfirmationDao;
import com.vamsi.model.AppointmentConfirmationModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AppointmentConfirmationController")
public class AppointmentConfirmationController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Retrieve the full name parameter from the request
    	
        String fullname = request.getParameter("fullname");

        // Call a method in your DAO class to retrieve appointments by full name
        AppointmentConfirmationDao acd = new AppointmentConfirmationDao();
        AppointmentConfirmationModel acm = acd.getAppointmentsByFullName(fullname);
		acm.setFullname(fullname);
        System.out.println("Appointment retrieved: " + acm);
        
        
		request.setAttribute("appointments", acm);
		
		RequestDispatcher rd = request.getRequestDispatcher("AppointmentConfirmation.jsp");
		rd.forward(request, response);
    }
}

