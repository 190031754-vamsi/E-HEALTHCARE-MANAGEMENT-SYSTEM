package com.vamsi.controller;

import java.io.IOException;

import com.vamsi.dao.ViewDoctorsDao;
import com.vamsi.model.ViewDoctorsModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ViewDoctorsController")
public class ViewDoctorsController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Retrieve the full name parameter from the request
    	
        int did = Integer.parseInt(request.getParameter("did"));

        // Call a method in your DAO class to retrieve appointments by full name
        ViewDoctorsDao vdd = new  ViewDoctorsDao();
        ViewDoctorsModel vdm = vdd.getviewdoctorsbyid(did);
        vdm.setDid(did);
        
        
		request.setAttribute("viewDoctors", vdm);
		
		RequestDispatcher rd = request.getRequestDispatcher("ViewDoctors.jsp");
		rd.forward(request, response);
    }
}

